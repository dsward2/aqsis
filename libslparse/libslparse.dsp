# Microsoft Developer Studio Project File - Name="libslparse" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=libslparse - Win32 Profile
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "libslparse.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "libslparse.mak" CFG="libslparse - Win32 Profile"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "libslparse - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "libslparse - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "libslparse - Win32 Profile" (based on "Win32 (x86) Static Library")
!MESSAGE "libslparse - Win32 Release_Static_MT" (based on "Win32 (x86) Static Library")
!MESSAGE "libslparse - Win32 Debug_Static_MT" (based on "Win32 (x86) Static Library")
!MESSAGE "libslparse - Win32 Release_Static_ST" (based on "Win32 (x86) Static Library")
!MESSAGE "libslparse - Win32 Debug_Static_ST" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName "libslparse"
# PROP Scc_LocalPath ".."
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "libslparse - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\lib"
# PROP Intermediate_Dir "..\Object\Release\libslparse"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GR /GX /O2 /I "..\libslparse" /I "..\libaqsistypes" /I "..\libaqsistypes\win32\intel" /I "..\..\win32libs\include" /D "NDEBUG" /D "PLUGINS" /D "_MBCS" /D "_LIB" /D "AQSIS_DYNAMIC_LINK" /D "WIN32" /D "NO_SYSLOG" /FR /YX /FD /c
# ADD BASE RSC /l 0x809 /d "NDEBUG"
# ADD RSC /l 0x809 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\lib\slparse.lib"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\lib"
# PROP Intermediate_Dir "..\Object\Debug\libslparse"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GR /GX /ZI /Od /I "..\libslparse" /I "..\libaqsistypes" /I "..\libaqsistypes\win32\intel" /I "..\..\win32libs\include" /D "_DEBUG" /D "_MBCS" /D "_LIB" /D "AQSIS_DYNAMIC_LINK" /D "WIN32" /D "NO_SYSLOG" /D "YYDEBUG" /FR /YX /FD /GZ /c
# ADD BASE RSC /l 0x809 /d "_DEBUG"
# ADD RSC /l 0x809 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\lib\slparse_d.lib"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "libslparse___Win32_Profile"
# PROP BASE Intermediate_Dir "libslparse___Win32_Profile"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\lib\Profile"
# PROP Intermediate_Dir "..\Object\Profile\libslparse"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GR /GX /O2 /I "..\libslparse" /I "..\libaqsistypes" /I "..\libaqsistypes\win32\intel" /D "NDEBUG" /D "_MBCS" /D "_LIB" /D "WIN32" /D "AQSIS_DYNAMIC_LINK" /D _qBUILDING=BUILD_LIBSLPARSE /D BUILD_LIBSLPARSE=1 /FR /YX /FD /c
# ADD CPP /nologo /MD /W3 /GR /GX /Zi /O2 /I "..\libslparse" /I "..\libaqsistypes" /I "..\libaqsistypes\win32\intel" /I "..\..\win32libs\include" /D "NDEBUG" /D "_MBCS" /D "_LIB" /D "AQSIS_DYNAMIC_LINK" /D "WIN32" /D "NO_SYSLOG" /FR /YX /FD /c
# ADD BASE RSC /l 0x809 /d "NDEBUG"
# ADD RSC /l 0x809 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\lib\Profile\slparse.lib"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "libslparse___Win32_Release_Static_MT"
# PROP BASE Intermediate_Dir "libslparse___Win32_Release_Static_MT"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\lib\Static_MT"
# PROP Intermediate_Dir "..\Object\Release_Static_MT\libslparse"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GR /GX /O2 /I "..\libslparse" /I "..\libaqsistypes" /I "..\libaqsistypes\win32\intel" /I "..\..\win32libs\include" /D "NDEBUG" /D "PLUGINS" /D "_MBCS" /D "_LIB" /D "AQSIS_DYNAMIC_LINK" /D "WIN32" /D "NO_SYSLOG" /FR /YX /FD /c
# ADD CPP /nologo /MT /W3 /GR /GX /O2 /I "..\libslparse" /I "..\libaqsistypes" /I "..\libaqsistypes\win32\intel" /I "..\..\win32libs\include" /D "NDEBUG" /D "PLUGINS" /D "_MBCS" /D "_LIB" /D "AQSIS_DYNAMIC_LINK" /D "WIN32" /D "NO_SYSLOG" /FR /YX /FD /c
# ADD BASE RSC /l 0x809 /d "NDEBUG"
# ADD RSC /l 0x809 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\lib\Static_MT\slparse.lib"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "libslparse___Win32_Debug_Static_MT"
# PROP BASE Intermediate_Dir "libslparse___Win32_Debug_Static_MT"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\lib\Static_MT"
# PROP Intermediate_Dir "..\Object\Debug_Static_MT\libslparse"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GR /GX /ZI /Od /I "..\libslparse" /I "..\libaqsistypes" /I "..\libaqsistypes\win32\intel" /I "..\..\win32libs\include" /D "_DEBUG" /D "_MBCS" /D "_LIB" /D "AQSIS_DYNAMIC_LINK" /D "WIN32" /D "NO_SYSLOG" /FR /YX /FD /GZ /c
# ADD CPP /nologo /MTd /W3 /Gm /GR /GX /ZI /Od /I "..\libslparse" /I "..\libaqsistypes" /I "..\libaqsistypes\win32\intel" /I "..\..\win32libs\include" /D "_DEBUG" /D "_MBCS" /D "_LIB" /D "AQSIS_DYNAMIC_LINK" /D "WIN32" /D "NO_SYSLOG" /FR /YX /FD /GZ /c
# ADD BASE RSC /l 0x809 /d "_DEBUG"
# ADD RSC /l 0x809 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\lib\Static_MT\slparse_d.lib"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "libslparse___Win32_Release_Static_ST"
# PROP BASE Intermediate_Dir "libslparse___Win32_Release_Static_ST"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\lib\Static_ST"
# PROP Intermediate_Dir "..\Object\Release_Static_ST\libslparse"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GR /GX /O2 /I "..\libslparse" /I "..\libaqsistypes" /I "..\libaqsistypes\win32\intel" /I "..\..\win32libs\include" /D "NDEBUG" /D "PLUGINS" /D "_MBCS" /D "_LIB" /D "AQSIS_DYNAMIC_LINK" /D "WIN32" /D "NO_SYSLOG" /FR /YX /FD /c
# ADD CPP /nologo /W3 /GR /GX /O2 /I "..\libslparse" /I "..\libaqsistypes" /I "..\libaqsistypes\win32\intel" /I "..\..\win32libs\include" /D "NDEBUG" /D "PLUGINS" /D "_MBCS" /D "_LIB" /D "AQSIS_DYNAMIC_LINK" /D "WIN32" /D "NO_SYSLOG" /FR /YX /FD /c
# ADD BASE RSC /l 0x809 /d "NDEBUG"
# ADD RSC /l 0x809 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\lib\Static_ST\slparse.lib"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "libslparse___Win32_Debug_Static_ST"
# PROP BASE Intermediate_Dir "libslparse___Win32_Debug_Static_ST"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\lib\Static_ST"
# PROP Intermediate_Dir "..\Object\Debug_Static_ST\libslparse"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GR /GX /ZI /Od /I "..\libslparse" /I "..\libaqsistypes" /I "..\libaqsistypes\win32\intel" /I "..\..\win32libs\include" /D "_DEBUG" /D "_MBCS" /D "_LIB" /D "AQSIS_DYNAMIC_LINK" /D "WIN32" /D "NO_SYSLOG" /FR /YX /FD /GZ /c
# ADD CPP /nologo /W3 /Gm /GR /GX /ZI /Od /I "..\libslparse" /I "..\libaqsistypes" /I "..\libaqsistypes\win32\intel" /I "..\..\win32libs\include" /D "_DEBUG" /D "_MBCS" /D "_LIB" /D "AQSIS_DYNAMIC_LINK" /D "WIN32" /D "NO_SYSLOG" /FR /YX /FD /GZ /c
# ADD BASE RSC /l 0x809 /d "_DEBUG"
# ADD RSC /l 0x809 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\lib\Static_ST\slparse_d.lib"

!ENDIF 

# Begin Target

# Name "libslparse - Win32 Release"
# Name "libslparse - Win32 Debug"
# Name "libslparse - Win32 Profile"
# Name "libslparse - Win32 Release_Static_MT"
# Name "libslparse - Win32 Debug_Static_MT"
# Name "libslparse - Win32 Release_Static_ST"
# Name "libslparse - Win32 Debug_Static_ST"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\funcdef.cpp
# End Source File
# Begin Source File

SOURCE=.\libslparse.cpp
# End Source File
# Begin Source File

SOURCE=.\optimise.cpp
# End Source File
# Begin Source File

SOURCE=.\parsenode.cpp
# End Source File
# Begin Source File

SOURCE=.\parser.yxx

!IF  "$(CFG)" == "libslparse - Win32 Release"

# Begin Custom Build - Building Parser from $(InputPath)
IntDir=.\..\Object\Release\libslparse
InputPath=.\parser.yxx

BuildCmds= \
	..\..\win32libs\bin\bison --no-lines --defines -o$(IntDir)\parser.cpp $(InputPath)

"$(IntDir)\parser.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(IntDir)\parser.hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

# Begin Custom Build - Building Parser from $(InputPath)
IntDir=.\..\Object\Debug\libslparse
InputPath=.\parser.yxx

BuildCmds= \
	..\..\win32libs\bin\bison --no-lines --defines -o$(IntDir)\parser.cpp $(InputPath)

"$(IntDir)\parser.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(IntDir)\parser.hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

# Begin Custom Build - Building Parser from $(InputPath)
IntDir=.\..\Object\Profile\libslparse
InputPath=.\parser.yxx

BuildCmds= \
	..\..\win32libs\bin\bison --no-lines --defines -o$(IntDir)\parser.cpp $(InputPath)

"$(IntDir)\parser.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(IntDir)\parser.hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

# Begin Custom Build - Building Parser from $(InputPath)
IntDir=.\..\Object\Release_Static_MT\libslparse
InputPath=.\parser.yxx

BuildCmds= \
	..\..\win32libs\bin\bison --no-lines --defines -o$(IntDir)\parser.cpp $(InputPath)

"$(IntDir)\parser.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(IntDir)\parser.hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

# Begin Custom Build - Building Parser from $(InputPath)
IntDir=.\..\Object\Debug_Static_MT\libslparse
InputPath=.\parser.yxx

BuildCmds= \
	..\..\win32libs\bin\bison --no-lines --defines -o$(IntDir)\parser.cpp $(InputPath)

"$(IntDir)\parser.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(IntDir)\parser.hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

# Begin Custom Build - Building Parser from $(InputPath)
IntDir=.\..\Object\Release_Static_ST\libslparse
InputPath=.\parser.yxx

BuildCmds= \
	..\..\win32libs\bin\bison --no-lines --defines -o$(IntDir)\parser.cpp $(InputPath)

"$(IntDir)\parser.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(IntDir)\parser.hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

# Begin Custom Build - Building Parser from $(InputPath)
IntDir=.\..\Object\Debug_Static_ST\libslparse
InputPath=.\parser.yxx

BuildCmds= \
	..\..\win32libs\bin\bison --no-lines --defines -o$(IntDir)\parser.cpp $(InputPath)

"$(IntDir)\parser.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(IntDir)\parser.hpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\scanner.lxx

!IF  "$(CFG)" == "libslparse - Win32 Release"

# Begin Custom Build - Building Lexical Scanner from $(InputPath)
IntDir=.\..\Object\Release\libslparse
InputPath=.\scanner.lxx

"$(IntDir)\scanner.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	..\..\win32libs\bin\flex -o$(IntDir)\scanner.cpp $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

# Begin Custom Build - Building Lexical Scanner from $(InputPath)
IntDir=.\..\Object\Debug\libslparse
InputPath=.\scanner.lxx

"$(IntDir)\scanner.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	..\..\win32libs\bin\flex -o$(IntDir)\scanner.cpp $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

# Begin Custom Build - Building Lexical Scanner from $(InputPath)
IntDir=.\..\Object\Profile\libslparse
InputPath=.\scanner.lxx

"$(IntDir)\scanner.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	..\..\win32libs\bin\flex -o$(IntDir)\scanner.cpp $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

# Begin Custom Build - Building Lexical Scanner from $(InputPath)
IntDir=.\..\Object\Release_Static_MT\libslparse
InputPath=.\scanner.lxx

"$(IntDir)\scanner.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	..\..\win32libs\bin\flex -o$(IntDir)\scanner.cpp $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

# Begin Custom Build - Building Lexical Scanner from $(InputPath)
IntDir=.\..\Object\Debug_Static_MT\libslparse
InputPath=.\scanner.lxx

"$(IntDir)\scanner.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	..\..\win32libs\bin\flex -o$(IntDir)\scanner.cpp $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

# Begin Custom Build - Building Lexical Scanner from $(InputPath)
IntDir=.\..\Object\Release_Static_ST\libslparse
InputPath=.\scanner.lxx

"$(IntDir)\scanner.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	..\..\win32libs\bin\flex -o$(IntDir)\scanner.cpp $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

# Begin Custom Build - Building Lexical Scanner from $(InputPath)
IntDir=.\..\Object\Debug_Static_ST\libslparse
InputPath=.\scanner.lxx

"$(IntDir)\scanner.cpp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	..\..\win32libs\bin\flex -o$(IntDir)\scanner.cpp $(InputPath)

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\typecheck.cpp
# End Source File
# Begin Source File

SOURCE=.\vardef.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\funcdef.h
# End Source File
# Begin Source File

SOURCE=.\ifuncdef.h
# End Source File
# Begin Source File

SOURCE=.\iparsenode.h
# End Source File
# Begin Source File

SOURCE=.\ivardef.h
# End Source File
# Begin Source File

SOURCE=.\libslparse.h
# End Source File
# Begin Source File

SOURCE=.\parsenode.h
# End Source File
# Begin Source File

SOURCE=.\vardef.h
# End Source File
# End Group
# Begin Group "Generated Files"

# PROP Default_Filter ""
# Begin Group "Release"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\Object\Release\libslparse\parser.cpp

!IF  "$(CFG)" == "libslparse - Win32 Release"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\Object\Release\libslparse\parser.hpp

!IF  "$(CFG)" == "libslparse - Win32 Release"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\Object\Release\libslparse\scanner.cpp

!IF  "$(CFG)" == "libslparse - Win32 Release"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# End Group
# Begin Group "Debug"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\Object\Debug\libslparse\parser.cpp

!IF  "$(CFG)" == "libslparse - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\Object\Debug\libslparse\parser.hpp

!IF  "$(CFG)" == "libslparse - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\Object\Debug\libslparse\scanner.cpp

!IF  "$(CFG)" == "libslparse - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# End Group
# Begin Group "Profile"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\Object\Profile\libslparse\parser.cpp

!IF  "$(CFG)" == "libslparse - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\Object\Profile\libslparse\parser.hpp

!IF  "$(CFG)" == "libslparse - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\Object\Profile\libslparse\scanner.cpp

!IF  "$(CFG)" == "libslparse - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# End Group
# Begin Group "Release_Static_MT"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\Object\Release_Static_MT\libslparse\parser.cpp

!IF  "$(CFG)" == "libslparse - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\Object\Release_Static_MT\libslparse\parser.hpp

!IF  "$(CFG)" == "libslparse - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\Object\Release_Static_MT\libslparse\scanner.cpp

!IF  "$(CFG)" == "libslparse - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# End Group
# Begin Group "Release_Static_ST"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\Object\Release_Static_ST\libslparse\parser.cpp

!IF  "$(CFG)" == "libslparse - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\Object\Release_Static_ST\libslparse\parser.hpp

!IF  "$(CFG)" == "libslparse - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\Object\Release_Static_ST\libslparse\scanner.cpp

!IF  "$(CFG)" == "libslparse - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# End Group
# Begin Group "Debug_Static_MT"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\Object\Debug_Static_MT\libslparse\parser.cpp

!IF  "$(CFG)" == "libslparse - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\Object\Debug_Static_MT\libslparse\parser.hpp

!IF  "$(CFG)" == "libslparse - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\Object\Debug_Static_MT\libslparse\scanner.cpp

!IF  "$(CFG)" == "libslparse - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
# End Group
# Begin Group "Debug_Static_ST"

# PROP Default_Filter ""
# Begin Source File

SOURCE=..\Object\Debug_Static_ST\libslparse\parser.cpp

!IF  "$(CFG)" == "libslparse - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\Object\Debug_Static_ST\libslparse\parser.hpp

!IF  "$(CFG)" == "libslparse - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\Object\Debug_Static_ST\libslparse\scanner.cpp

!IF  "$(CFG)" == "libslparse - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Profile"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_MT"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Release_Static_ST"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "libslparse - Win32 Debug_Static_ST"

!ENDIF 

# End Source File
# End Group
# End Group
# End Target
# End Project
