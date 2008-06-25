# Find the tinyxml library.  This isn't set up to find tinyxml on windows
# platforms, since we expect to only be interested in using an external version
# of tinyxml on platforms where it comes as a seperate package (eg, fedora
# linux)
SET(AQSIS_TINYXML_FOUND 0)

SET(AQSIS_TINYXML_INCLUDE_SEARCHPATH)
SET(AQSIS_TINYXML_LIBRARY_NAME tinyxml)

SET(AQSIS_TINYXML_LIBRARY_DIR CACHE PATH "Semi-colon separated list of paths to search for an external tinyxml library")
MARK_AS_ADVANCED(AQSIS_TINYXML_LIBRARY_DIR)

FIND_PATH(AQSIS_TINYXML_INCLUDE_DIR
			tinyxml.h
			PATHS ${AQSIS_TINYXML_INCLUDE_SEARCHPATH}
			DOC "Location of the external tinyxml headers"
			)
MARK_AS_ADVANCED(AQSIS_TINYXML_INCLUDE_DIR)

FIND_LIBRARY(AQSIS_TINYXML_LIBRARY
			NAMES ${AQSIS_TINYXML_LIBRARY_NAME}
			PATHS ${AQSIS_TINYXML_LIBRARY_DIR}
			DOC "Path to the external tinyxml library"
			)
MARK_AS_ADVANCED(AQSIS_TINYXML_LIBRARY)


STRING(COMPARE EQUAL "${AQSIS_TINYXML_INCLUDE_DIR}" "AQSIS_TINYXML_INCLUDE-NOTFOUND" AQSIS_TINYXML_INCLUDE_NOTFOUND)
STRING(COMPARE EQUAL "${AQSIS_TINYXML_LIBRARY}" "AQSIS_TINYXML_LIBRARY-NOTFOUND" AQSIS_TINYXML_LIBRARY_NOTFOUND)

IF(NOT AQSIS_TINYXML_LIBRARY_NOTFOUND AND NOT AQSIS_TINYXML_INCLUDE_NOTFOUND)
	SET(AQSIS_TINYXML_FOUND 1)
ENDIF(NOT AQSIS_TINYXML_LIBRARY_NOTFOUND AND NOT AQSIS_TINYXML_INCLUDE_NOTFOUND)
