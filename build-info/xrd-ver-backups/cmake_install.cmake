# Install script for directory: /Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/tarball/xrootd")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/build/src/XrdCl/libXrdCl.2.0.0.dylib"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/build/src/XrdCl/libXrdCl.2.dylib"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libXrdCl.2.0.0.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libXrdCl.2.dylib"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/build/src"
        "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/build/src/XrdCl/libXrdCl.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libXrdCl.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libXrdCl.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/build/src"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libXrdCl.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libXrdCl.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/build/src/XrdCl/xrdfs")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/xrdfs" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/xrdfs")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/build/src/XrdCl"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/xrdfs")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/build/src"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/xrdfs")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/xrdfs")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/build/src/XrdCl/xrdcp")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/xrdcp" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/xrdcp")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/build/src/XrdCl"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/xrdcp")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/build/src"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/xrdcp")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/xrdcp")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/xrootd/XrdCl" TYPE FILE FILES
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClAnyObject.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClBuffer.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClConstants.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClCopyProcess.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClDefaultEnv.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClEnv.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClFile.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClFileSystem.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClMonitor.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClStatus.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClURL.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClXRootDResponses.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClPlugInInterface.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClPlugInManager.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClPropertyList.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClLog.hh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/xrootd/private/XrdCl" TYPE FILE FILES
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClFileSystemUtils.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClMessage.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClPostMaster.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClPostMasterInterfaces.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClTransportManager.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClOperations.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClOperationHandlers.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClArg.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClFwd.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClParallelOperation.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClFileOperations.hh"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/src/XrdCl/XrdClFileSystemOperations.hh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE FILES
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/docs/man/xrdfs.1"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/docs/man/xrdcp.1"
    "/Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/xrootd/docs/man/xrdmapc.1"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
    EXECUTE_PROCESS(
      COMMAND ln -sf xrdcp xrdcopy
      WORKING_DIRECTORY "$ENV{DESTDIR}//Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/tarball/xrootd/bin ")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
    EXECUTE_PROCESS(
      COMMAND ln -sf xrdcp.1 xrdcopy.1
      WORKING_DIRECTORY" $ENV{DESTDIR}//Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/tarball/xrootd/share/man/man1 ")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
    FOREACH(MANPAGE xrdfs.1 xrdcp.1 xrdmapc.1)
      MESSAGE( "-- Processing: " "$ENV{DESTDIR}//Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/tarball/xrootd/share/man/man1/${MANPAGE}")
      EXECUTE_PROCESS(
        COMMAND cat ${MANPAGE}
        COMMAND sed  -e "s/__VERSION__/unknown/"
        OUTPUT_FILE ${MANPAGE}.new
        WORKING_DIRECTORY "$ENV{DESTDIR}//Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/tarball/xrootd/share/man/man1")
      EXECUTE_PROCESS(
        COMMAND mv -f ${MANPAGE}.new ${MANPAGE}
        WORKING_DIRECTORY "$ENV{DESTDIR}//Users/basavyr/Library/Mobile Documents/com~apple~CloudDocs/Work/Pipeline/DFCTI/CERN_project/0xrootd_project/tarball/xrootd/share/man/man1" )
    ENDFOREACH()
endif()

