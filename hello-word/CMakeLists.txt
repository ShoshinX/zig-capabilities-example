
include(${SEL4_TUTORIALS_DIR}/settings.cmake)
sel4_tutorials_regenerate_tutorial(${CMAKE_CURRENT_SOURCE_DIR})

cmake_minimum_required(VERSION 3.7.2)
# declare the hello-world CMake project and the languages it is written in (just C)
project(hello-world C ASM)

# In future tutorials, these setup steps will be replaced with
# sel4_tutorials_setup_roottask_tutorial_environment()
find_package(seL4 REQUIRED)
find_package(elfloader-tool REQUIRED)
find_package(musllibc REQUIRED)
find_package(util_libs REQUIRED)
find_package(seL4_libs REQUIRED)

sel4_import_kernel()
elfloader_import_project()

# This sets up environment build flags and imports musllibc and runtime libraries.
musllibc_setup_build_environment_with_sel4runtime()
sel4_import_libsel4()
util_libs_import_libraries()
sel4_libs_import_libraries()
sel4_tutorials_import_libsel4tutorials()

# Name the executable and list source files required to build it
add_executable(hello-world src/main.c)

list(APPEND dirs_include "-I$<JOIN:$<TARGET_PROPERTY:hello-world,INCLUDE_DIRECTORIES>,$<SEMICOLON>-I>")

add_custom_target(main_custom
    BYPRODUCTS
    "${PROJECT_BINARY_DIR}/zig-lib.a"
    COMMAND zig build-lib ${dirs_include} -target x86_64-freestanding -femit-bin=${PROJECT_BINARY_DIR}/zig-lib.a "${PROJECT_SOURCE_DIR}/src/zig_helper.zig" 
    COMMAND_EXPAND_LISTS
    )

# List of libraries to link with the application.
target_link_libraries(hello-world
    sel4runtime sel4
    muslc utils sel4tutorials
    sel4muslcsys sel4platsupport sel4utils sel4debug ${PROJECT_BINARY_DIR}/zig-lib.a)

# Tell the build system that this application is the root task. 
include(rootserver)
DeclareRootserver(hello-world)


# utility CMake functions for the tutorials (not required in normal, non-tutorial applications)
set(FINISH_COMPLETION_TEXT "
Hello, World!
")
set(START_COMPLETION_TEXT "
Hello, World!
")
configure_file(${SEL4_TUTORIALS_DIR}/tools/expect.py ${CMAKE_BINARY_DIR}/check @ONLY)
include(simulation)
GenerateSimulateScript()

