#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "r_http::r_http" for configuration "Debug"
set_property(TARGET r_http::r_http APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(r_http::r_http PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libr_http.a"
  )

list(APPEND _cmake_import_check_targets r_http::r_http )
list(APPEND _cmake_import_check_files_for_r_http::r_http "${_IMPORT_PREFIX}/lib/libr_http.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
