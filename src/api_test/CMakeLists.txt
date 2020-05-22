include( XRootDCommon )

add_executable(
  xrd_api_test
  xrd_api_test.cc )

target_link_libraries(
  xrd_api_test
  XrdCl
  XrdPosix
  XrdXml
  XrdAppUtils
  dl
  pthread )