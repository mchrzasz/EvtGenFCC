
# Set the build type (if not already specified)
if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
    message(STATUS "EvtGen: Setting build type to 'Release' as none was specified")
    set(CMAKE_BUILD_TYPE "Release" CACHE STRING "Choose the type of build, options are: Release, MinSizeRel, Debug, RelWithDebInfo" FORCE)
    set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS "Debug" "Release" "MinSizeRel" "RelWithDebInfo")
elseif(CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
    message(STATUS "EvtGen: Build type '${CMAKE_BUILD_TYPE}'")
endif()

#message(STATUS "Compiler is ${CMAKE_CXX_COMPILER_ID}")

# Set the optimise/debug flags for each build type
if( ${CMAKE_CXX_COMPILER_ID} STREQUAL "GNU" )
    message(STATUS "EvtGen: Customising optimise/debug flags for each build type")
    set(CMAKE_CXX_FLAGS_DEBUG          "-Og -g3")
    set(CMAKE_CXX_FLAGS_MINSIZEREL     "-Os -DNDEBUG")
    set(CMAKE_CXX_FLAGS_RELEASE        "-O3 -DNDEBUG")
    set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O2 -g3")
elseif( ${CMAKE_CXX_COMPILER_ID} MATCHES "Clang" )
    message(STATUS "EvtGen: Customising optimise/debug flags for each build type")
    set(CMAKE_CXX_FLAGS_DEBUG          "-O0 -g")
    set(CMAKE_CXX_FLAGS_MINSIZEREL     "-Os -DNDEBUG")
    set(CMAKE_CXX_FLAGS_RELEASE        "-O3 -DNDEBUG")
    set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O2 -g")
endif()

# Control verbosity of the build
set(CMAKE_VERBOSE_MAKEFILE OFF)

# C++ standard settings
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Warning flags etc.
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Wshadow -Woverloaded-virtual")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra")

# Special linker flags for MacOSX
if (APPLE)
    set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} -single_module -undefined dynamic_lookup")
endif()

# RPATH handling
set(CMAKE_MACOSX_RPATH TRUE)
set(CMAKE_SKIP_BUILD_RPATH FALSE)
set(CMAKE_BUILD_WITH_INSTALL_RPATH FALSE)
set(CMAKE_INSTALL_RPATH "${CMAKE_INSTALL_PREFIX}/${CMAKE_INSTALL_LIBDIR}")
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)

