# try to find tensorflow
find_package(PkgConfig)
find_path(TENSORFLOW_INCLUDE_DIR tensorflow/core/public/session.h
  PATH_SUFFIXES tensorflow
  )

set(TENSORFLOW_INCLUDE_DIR ${TENSORFLOW_INCLUDE_DIR})

find_library(TENSORFLOW_CC_LIBRARY
  NAMES tensorflow_cc
  )
find_library(TENSORFLOW_FRAMEWORK_LIBRARY
  NAMES tensorflow_framework
  )

set(TENSORFLOW_LIBRARY ${TENSORFLOW_CC_LIBRARY} ${TENSORFLOW_FRAMEWORK_LIBRARY})

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(MrtTensorflow  DEFAULT_MSG
                                  TENSORFLOW_LIBRARY TENSORFLOW_INCLUDE_DIR)

mark_as_advanced(TENSORFLOW_LIBRARY TENSORFLOW_INCLUDE_DIR)
set(TENSORFLOW_LIBRARIES ${TENSORFLOW_LIBRARY} )
set(TENSORFLOW_INCLUDE_DIRS ${TENSORFLOW_INCLUDE_DIR} )
