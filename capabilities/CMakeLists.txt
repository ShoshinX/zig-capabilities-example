
include(${SEL4_TUTORIALS_DIR}/settings.cmake)
sel4_tutorials_regenerate_tutorial(${CMAKE_CURRENT_SOURCE_DIR})

cmake_minimum_required(VERSION 3.7.2)
# declare the capabilities CMake project and the languages it is written in
project(capabilities C ASM)

sel4_tutorials_setup_roottask_tutorial_environment()

# Name the executable and list source files required to build it
add_executable(capabilities src/main.c)

list(APPEND dirs_include "-I$<JOIN:$<TARGET_PROPERTY:capabilities,INCLUDE_DIRECTORIES>,$<SEMICOLON>-I>")

add_custom_target(main_custom
    BYPRODUCTS
    "${PROJECT_BINARY_DIR}/zig-lib.a"
    COMMAND zig build-lib ${dirs_include} -target x86_64-freestanding -femit-bin=${PROJECT_BINARY_DIR}/zig-lib.a "${PROJECT_SOURCE_DIR}/src/zig_helper.zig"
    COMMAND_EXPAND_LISTS
    )


# List of libraries to link with the application.
target_link_libraries(capabilities
    sel4
    muslc utils sel4tutorials
    sel4muslcsys sel4platsupport sel4utils sel4debug ${PROJECT_BINARY_DIR}/zig-lib.a)

# Tell the build system that this application is the root task. 
include(rootserver)
DeclareRootserver(capabilities)

# utility CMake functions for the tutorials (not required in normal, non-tutorial applications) 
set(FINISH_COMPLETION_TEXT "Failed to set priority")
set(START_COMPLETION_TEXT "Failed to set priority")
configure_file(${SEL4_TUTORIALS_DIR}/tools/expect.py ${CMAKE_BINARY_DIR}/check @ONLY)
include(simulation)
GenerateSimulateScript()
