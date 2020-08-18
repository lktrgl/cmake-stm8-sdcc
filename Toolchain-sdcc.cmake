# URL:
# https://gitlab.kitware.com/cmake/community/-/wikis/doc/cmake/cross_compiling/Sdcc

# the name of the target operating system
SET(CMAKE_SYSTEM_NAME Generic)

# which compilers to use for C and C++
SET(CMAKE_C_COMPILER $ENV{HOME}/App/sdcc-4.0.0/bin/sdcc)

# here is the target environment is located
SET(CMAKE_FIND_ROOT_PATH  $ENV{HOME}/App/sdcc-4.0.0 )

# adjust the default behaviour of the FIND_XXX() commands:
# search headers and libraries in the target environment, search
# programs in the host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
