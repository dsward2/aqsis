// Aqsis
// Copyright � 1997 - 2001, Paul C. Gregory
//
// Contact: pgregory@aqsis.com
//
// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU General Public
// License as published by the Free Software Foundation; either
// version 2 of the License, or (at your option) any later version.
//
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// General Public License for more details.
//
// You should have received a copy of the GNU General Public
// License along with this library; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA


/** \file
		\brief Implements the classes and structures for handling RenderMan options.
		\author Paul C. Gregory (pgregory@aqsis.com)
*/

#include	<math.h>

#include	"aqsis.h"
#include	"options.h"
#include	"renderer.h"
#include	"imagebuffer.h"
#include	"imagers.h"
#include	"ri.h"

START_NAMESPACE( Aqsis )


//---------------------------------------------------------------------
/** Copy constructor.
 */

CqSystemOption::CqSystemOption( const CqSystemOption& From ) :
		m_strName( From.m_strName )
{
	TqInt i = From.m_aParameters.size();
	while ( i-- > 0 )
	{
		m_aParameters.push_back( From.m_aParameters[ i ] ->Clone() );
	}
}


//---------------------------------------------------------------------
/** Constructor
 */

CqCamera::CqCamera() : m_iXResolution( 640 ),
		m_iYResolution( 480 ),
		m_fPixelAspectRatio( 1.0 ),
		m_fCropWindowXMin( 0.0 ),
		m_fCropWindowXMax( 1.0 ),
		m_fCropWindowYMin( 0.0 ),
		m_fCropWindowYMax( 1.0 ),
		m_fFrameAspectRatio( 4.0 / 3.0 ),
		m_fScreenWindowLeft( -( 4.0 / 3.0 ) ),
		m_fScreenWindowRight( 4.0 / 3.0 ),
		m_fScreenWindowTop( 1 ),
		m_fScreenWindowBottom( -1 ),
		m_eCameraProjection( ProjectionOrthographic ),
		m_fClippingPlaneNear( FLT_EPSILON ),
		m_fClippingPlaneFar( FLT_MAX ),
		m_ffStop( FLT_MAX ),
		m_fShutterOpen( 0.0 ),
		m_fShutterClose( 0.0 ),
		m_fFOV( 90 ),
		m_bFrameAspectRatioCalled( TqFalse ),
		m_bScreenWindowCalled( TqFalse ),
		m_bFormatCalled( TqFalse )
{
	// Initialise the matrices for this camera according to the
	// status of the camera attributes.
	//	InitialiseCamera();
}


//---------------------------------------------------------------------
/** Initialise the matrices for this camera according to the status of the camera attributes.
 */

void CqCamera::InitialiseCamera()
{
	// Setup the Normalising and projection matrices according to the projection
	// type
	CqMatrix	matCameraToScreen;
	CqMatrix	matScreenToCamera;
	CqMatrix	matScreenToNDC;
	CqMatrix	matNDCToRaster;
	switch ( m_eCameraProjection )
	{
			case	ProjectionOrthographic:
			{
				// Define a matrix to convert from right top left handed coordinate systems.
				CqMatrix Trl( 1, 1, -1 );

				TqFloat l = m_fScreenWindowLeft;
				TqFloat r = m_fScreenWindowRight;
				TqFloat t = m_fScreenWindowTop;
				TqFloat b = m_fScreenWindowBottom;
				TqFloat n = m_fClippingPlaneNear;
				TqFloat f = m_fClippingPlaneFar;

				matCameraToScreen.Identity();
				matCameraToScreen.SetfIdentity( TqFalse );
				matCameraToScreen.SetElement( 0, 0, 2.0f / ( r - l ) );
				matCameraToScreen.SetElement( 3, 0, ( r + l ) / ( r - l ) );
				matCameraToScreen.SetElement( 1, 1, 2.0f / ( t - b ) );
				matCameraToScreen.SetElement( 3, 1, ( t + b ) / ( t - b ) );
				matCameraToScreen.SetElement( 2, 2, -2.0f / ( f - n ) );
				matCameraToScreen.SetElement( 3, 2, ( f + n ) / ( f - n ) );
				matCameraToScreen.SetElement( 2, 3, 0 );
				matCameraToScreen.SetElement( 3, 3, 1 );

				// Combine with the right to left matrix.
				matCameraToScreen *= Trl;

				// Set up the screen to frame matrix
				TqFloat	FrameX = ( m_fFrameAspectRatio >= 1.0 ) ? m_iXResolution :
				                 ( m_iYResolution * m_fFrameAspectRatio ) / m_fPixelAspectRatio;
				TqFloat	FrameY = ( m_fFrameAspectRatio < 1.0 ) ? m_iYResolution :
				                 ( m_iXResolution * m_fPixelAspectRatio ) / m_fFrameAspectRatio;
				matScreenToNDC.Identity();
				matNDCToRaster.Identity();
				// Translate from -1,-1-->1,1 to 0,0-->2,2
				CqMatrix	T;
				T.Translate( 1, 1, 0 );
				// Scale by 0.5 (0,0 --> 1,1) NDC
				CqMatrix	S( 0.5, 0.5, 0 );
				CqMatrix	S2( FrameX, FrameY, 0 );
				// Invert y to fit top down format
				CqMatrix	S3( 1, -1, 1 );
				matScreenToNDC = S * T * S3; // S*T*S2
				matNDCToRaster = S2;

				break;
			}

			case	ProjectionPerspective:
			{
				TqFloat fov = m_fClippingPlaneNear * ( tan( RAD( m_fFOV / 2.0f ) ) );
				TqFloat l = m_fScreenWindowLeft * fov;
				TqFloat r = m_fScreenWindowRight * fov;
				TqFloat t = m_fScreenWindowTop * fov;
				TqFloat b = m_fScreenWindowBottom * fov;
				TqFloat n = m_fClippingPlaneNear;
				TqFloat f = m_fClippingPlaneFar;

				matCameraToScreen.Identity();
				matCameraToScreen.SetfIdentity( TqFalse );
				matCameraToScreen.SetElement( 0, 0, ( 2.0f * n ) / ( r - l ) );
				matCameraToScreen.SetElement( 2, 0, ( r + l ) / ( r - l ) );
				matCameraToScreen.SetElement( 1, 1, ( 2.0f * n ) / ( t - b ) );
				matCameraToScreen.SetElement( 2, 1, ( t + b ) / ( t - b ) );
				TqFloat a = f / ( f - n );
				//			matCameraToScreen.SetElement(2,2,-((f+n)/(f-n)));
				matCameraToScreen.SetElement( 2, 2, a );
				//			matCameraToScreen.SetElement(3,2,-((2.0f*f*n)/(f-n)));
				matCameraToScreen.SetElement( 3, 2, -n * a );
				matCameraToScreen.SetElement( 2, 3, 1 );
				matCameraToScreen.SetElement( 3, 3, 0 );

				// Set up the screen to frame matrix
				TqFloat	FrameX = ( m_fFrameAspectRatio >= 1.0f ) ? m_iXResolution :
				                 ( m_iYResolution * m_fFrameAspectRatio ) / m_fPixelAspectRatio;
				TqFloat	FrameY = ( m_fFrameAspectRatio < 1.0f ) ? m_iYResolution :
				                 ( m_iXResolution * m_fPixelAspectRatio ) / m_fFrameAspectRatio;
				matScreenToNDC.Identity();
				matNDCToRaster.Identity();
				// Translate from -1,-1-->1,1 to 0,0-->2,2
				CqMatrix	T;
				T.Translate( 1.0f, 1.0f, 0.0f );
				// Scale by 0.5 (0,0 --> 1,1) NDC
				CqMatrix	S( 0.5f, 0.5f, 1.0f );
				CqMatrix	S2( FrameX, FrameY, 1.0f );
				// Invert y to fit top down format
				CqMatrix	S3( 1.0f, -1.0f, 1.0f );
				matScreenToNDC = S * T * S3; // S*T*S2
				matNDCToRaster = S2;

				break;
			}
	}
	CqMatrix matWorldToCamera( QGetRenderContext() ->matWorldToCamera() );
	QGetRenderContext() ->SetmatScreen( matCameraToScreen * matWorldToCamera );
	QGetRenderContext() ->SetmatNDC( matScreenToNDC * matCameraToScreen * matWorldToCamera );
	QGetRenderContext() ->SetmatRaster( matNDCToRaster * matScreenToNDC * matCameraToScreen * matWorldToCamera );

	CqMatrix matWorldToScreen = matCameraToScreen * matWorldToCamera;

	CqVector3D	vecf( 0, 0, 7 );
	CqVector3D	vecn( 0, 0, -2 );

	vecf = vecf * matWorldToScreen;
	vecn = vecn * matWorldToScreen;

	// Set some additional information about the clip range.
	m_fClippingRange = fClippingPlaneFar() - fClippingPlaneNear();
}


//---------------------------------------------------------------------
/** Default constructor.
 */

CqOptions::CqOptions() : m_strHider( "Hidden" ),
		m_iColorSamples( 3 ),
		m_fRelativeDetail( 1.0 ),
		m_pErrorHandler( &RiErrorPrint ),
		m_pProgressHandler( NULL ),
		m_pPreRenderFunction( NULL )
{}


//---------------------------------------------------------------------
/** Copy constructor.
 */

CqOptions::CqOptions( const CqOptions& From )
{
	*this = From;
}


//---------------------------------------------------------------------
/** Destructor.
 */

CqOptions::~CqOptions()
{
	// Unreference the system options.
	TqInt i = m_aOptions.size();
	while ( i-- > 0 )
	{
		m_aOptions[ i ] ->Release();
		m_aOptions[ i ] = 0;
	}
}


//---------------------------------------------------------------------
/** Assignment operator.
 */

CqOptions& CqOptions::operator=( const CqOptions& From )
{
	CqDisplay::operator=( From );
	CqCamera::operator=( From );

	m_strHider = From.m_strHider;
	m_iColorSamples = From.m_iColorSamples;
	m_fRelativeDetail = From.m_fRelativeDetail;
	m_pErrorHandler = From.m_pErrorHandler;
	m_pProgressHandler = From.m_pProgressHandler;
	m_pPreRenderFunction = From.m_pPreRenderFunction;

	// Copy the system options.
	m_aOptions.resize( From.m_aOptions.size() );
	TqInt i = From.m_aOptions.size();
	while ( i-- > 0 )
	{
		m_aOptions[ i ] = From.m_aOptions[ i ];
		m_aOptions[ i ] ->AddRef();
	}
	return ( *this );
}


//---------------------------------------------------------------------
/** Get a system option parameter, takes name and parameter name.
 * \param strName The name of the option.
 * \param strParam The name of the paramter on the option.
 * \return CqParameter pointer or 0 if not found.
 */

const CqParameter* CqOptions::pParameter( const char* strName, const char* strParam ) const
{
	const CqSystemOption * pOpt;
	if ( ( pOpt = pOption( strName ) ) != 0 )
	{
		const CqParameter * pParam;
		if ( ( pParam = pOpt->pParameter( strParam ) ) != 0 )
			return ( pParam );
	}
	return ( 0 );
}


//---------------------------------------------------------------------
/** Get a system option parameter, takes name and parameter name.
 * \param strName The name of the option.
 * \param strParam The name of the paramter on the option.
 * \return CqParameter pointer or 0 if not found.
 */

CqParameter* CqOptions::pParameterWrite( const char* strName, const char* strParam )
{
	CqSystemOption * pOpt;
	if ( ( pOpt = pOptionWrite( strName ) ) != 0 )
	{
		CqParameter * pParam;
		if ( ( pParam = pOpt->pParameter( strParam ) ) != 0 )
			return ( pParam );
	}
	return ( 0 );
}


//---------------------------------------------------------------------
/** Get a float system option parameter.
 * \param strName The name of the attribute.
 * \param strParam The name of the paramter on the attribute.
 * \return Float pointer 0 if not found.
 */

TqFloat* CqOptions::GetFloatOptionWrite( const char* strName, const char* strParam )
{
	CqParameter * pParam = pParameterWrite( strName, strParam );
	if ( pParam != 0 )
		return ( static_cast<CqParameterTyped<TqFloat>*>( pParam ) ->pValue() );
	else
		return ( 0 );
}


//---------------------------------------------------------------------
/** Get an integer system option parameter.
 * \param strName The name of the attribute.
 * \param strParam The name of the paramter on the attribute.
 * \return Integer pointer 0 if not found.
 */

TqInt* CqOptions::GetIntegerOptionWrite( const char* strName, const char* strParam )
{
	CqParameter * pParam = pParameterWrite( strName, strParam );
	if ( pParam != 0 )
		return ( static_cast<CqParameterTyped<TqInt>*>( pParam ) ->pValue() );
	else
		return ( 0 );
}


//---------------------------------------------------------------------
/** Get a string system option parameter.
 * \param strName The name of the attribute.
 * \param strParam The name of the paramter on the attribute.
 * \return CqString pointer 0 if not found.
 */

CqString* CqOptions::GetStringOptionWrite( const char* strName, const char* strParam )
{
	CqParameter * pParam = pParameterWrite( strName, strParam );
	if ( pParam != 0 )
		return ( static_cast<CqParameterTyped<CqString>*>( pParam ) ->pValue() );
	else
		return ( 0 );
}


//---------------------------------------------------------------------
/** Get a point system option parameter.
 * \param strName The name of the attribute.
 * \param strParam The name of the paramter on the attribute.
 * \return CqVector3D pointer 0 if not found.
 */

CqVector3D* CqOptions::GetPointOptionWrite( const char* strName, const char* strParam )
{
	CqParameter * pParam = pParameterWrite( strName, strParam );
	if ( pParam != 0 )
		return ( static_cast<CqParameterTyped<CqVector3D>*>( pParam ) ->pValue() );
	else
		return ( 0 );
}


//---------------------------------------------------------------------
/** Get a color system option parameter.
 * \param strName The name of the attribute.
 * \param strParam The name of the paramter on the attribute.
 * \return CqColor pointer 0 if not found.
 */

CqColor* CqOptions::GetColorOptionWrite( const char* strName, const char* strParam )
{
	CqParameter * pParam = pParameterWrite( strName, strParam );
	if ( pParam != 0 )
		return ( static_cast<CqParameterTyped<CqColor>*>( pParam ) ->pValue() );
	else
		return ( 0 );
}


//---------------------------------------------------------------------
/** Get a float system option parameter.
 * \param strName The name of the attribute.
 * \param strParam The name of the paramter on the attribute.
 * \return Float pointer 0 if not found.
 */

const TqFloat* CqOptions::GetFloatOption( const char* strName, const char* strParam ) const
{
	const CqParameter * pParam = pParameter( strName, strParam );
	if ( pParam != 0 )
		return ( static_cast<const CqParameterTyped<TqFloat>*>( pParam ) ->pValue() );
	else
		return ( 0 );
}


//---------------------------------------------------------------------
/** Get an integer system option parameter.
 * \param strName The name of the attribute.
 * \param strParam The name of the paramter on the attribute.
 * \return Integer pointer 0 if not found.
 */

const TqInt* CqOptions::GetIntegerOption( const char* strName, const char* strParam ) const
{
	const CqParameter * pParam = pParameter( strName, strParam );
	if ( pParam != 0 )
		return ( static_cast<const CqParameterTyped<TqInt>*>( pParam ) ->pValue() );
	else
		return ( 0 );
}


//---------------------------------------------------------------------
/** Get a string system option parameter.
 * \param strName The name of the attribute.
 * \param strParam The name of the paramter on the attribute.
 * \return CqString pointer 0 if not found.
 */

const CqString* CqOptions::GetStringOption( const char* strName, const char* strParam ) const
{
	const CqParameter * pParam = pParameter( strName, strParam );
	if ( pParam != 0 )
		return ( static_cast<const CqParameterTyped<CqString>*>( pParam ) ->pValue() );
	else
		return ( 0 );
}


//---------------------------------------------------------------------
/** Get a point system option parameter.
 * \param strName The name of the attribute.
 * \param strParam The name of the paramter on the attribute.
 * \return CqVector3D pointer 0 if not found.
 */

const CqVector3D* CqOptions::GetPointOption( const char* strName, const char* strParam ) const
{
	const CqParameter * pParam = pParameter( strName, strParam );
	if ( pParam != 0 )
		return ( static_cast<const CqParameterTyped<CqVector3D>*>( pParam ) ->pValue() );
	else
		return ( 0 );
}


//---------------------------------------------------------------------
/** Get a color system option parameter.
 * \param strName The name of the attribute.
 * \param strParam The name of the paramter on the attribute.
 * \return Color pointer 0 if not found.
 */

const CqColor* CqOptions::GetColorOption( const char* strName, const char* strParam ) const
{
	const CqParameter * pParam = pParameter( strName, strParam );
	if ( pParam != 0 )
		return ( static_cast<const CqParameterTyped<CqColor>*>( pParam ) ->pValue() );
	else
		return ( 0 );
}


//---------------------------------------------------------------------
/** Force the imager shader to be executed
 * \param gx, gy the size of the bucket grid
 * \param x, y its origin 
 */
void CqDisplay::InitialiseColorImager(TqInt gx, TqInt gy, 
									  TqFloat x, TqFloat y,
									  CqColor *color, CqColor *opacity,
									  TqFloat *depth, TqFloat *coverage)
{
	// Each time with finished up a bucket; we will execute the imager shader
	// on the gridsize about the same size as the bucket
	if (m_pshadImager != NULL) 
	{
		m_pshadImager->Initialise(gx, gy, x, y, color, opacity, depth, coverage);
	}
}

//---------------------------------------------------------------------
/** Get a color from the imager shader.
 * \param x The X in raster coordinate system.
 * \param y The Y in raster coordiante system.
 * \return Color  Black if not found.
 * Right now it is returning the current background colour if found
 */
CqColor CqDisplay::GetColorImager(TqFloat x, TqFloat y)
{
	CqColor result(0,0,0);

	if (m_pshadImager != NULL)
	{
		// get the color from the current imager than
		result = m_pshadImager->Color(x,y);	
	}

	return result;
}

//---------------------------------------------------------------------
/** Get a color from the imager shader.
 * \param x The X in raster coordinate system.
 * \param y The Y in raster coordiante system.
 * \return Color  Black if not found.
 * Right now it is returning the current background colour if found
 */
TqFloat CqDisplay::GetAlphaImager(TqFloat x, TqFloat y)
{
	TqFloat result = 1.0;

	if (m_pshadImager != NULL)
	{
		// get the color from the current imager than
		result = m_pshadImager->Alpha(x,y);	
	}

	return result;
}


//---------------------------------------------------------------------
/** Get an opacity from the imager shader.
 * \param x The X in raster coordinate system.
 * \param y The Y in raster coordiante system.
 * \return Color  White right now
 * Right now it is returning the current background colour if found
 */

CqColor CqDisplay::GetOpacityImager(TqFloat x, TqFloat y)
{
	CqColor result = gColWhite;

	if (m_pshadImager != NULL)
	{
		// get the opacity from the current imager than
		result = m_pshadImager->Opacity(x,y);	
	}


	return result;
}

//---------------------------------------------------------------------
/** Load an Imager shader find it
 * 
 * \param strName the name of the shader like background.sl, 
 * Right now it is doing nothing.
 */
void CqDisplay::LoadImager(const char* strName)
{
	DeleteImager();
	TqFloat dummy = 0.0;
	

	IqShader* pShader=static_cast<IqShader*>(QGetRenderContext()->CreateShader(strName, Type_Imager));

	if(pShader==0)	return;

	m_pshadImager=new CqImagersource(pShader,RI_TRUE);
	m_pshadImager->pShader()->PrepareDefArgs();
	
}

void   CqDisplay::DeleteImager()
{

	if (m_pshadImager != NULL)
	{
		delete m_pshadImager; 
		m_pshadImager = NULL;
	}
}
void CqDisplay::SetValueImager(char *token, char *value)
{
	if (m_pshadImager != NULL) {
		
		m_pshadImager->pShader()->SetValue(token,value);
	}

}



//---------------------------------------------------------------------

END_NAMESPACE( Aqsis )
