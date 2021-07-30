cmake_minimum_required(VERSION 3.16)
project(minilgl VERSION 1.0.0)

set(DEFAULT_NODE_MASS "1.0" CACHE STRING "This is the default mass size of each node.")
set(DEFAULT_SPRING_CONSTANT "10.0" CACHE STRING "The default value of k in F=-kx for casual interactions")
set(DEFAULT_WEIGHT_FORMAT "1" CACHE STRING "If this = 0 the input data has no connection strengths")
set(DIMENSION "2" CACHE STRING "2D or 3D layout")
set(INIT_RESISTANCE "1.0" CACHE STRING "This is an initial force term for the drag. The drag probably increases with each time step though.")
set(INTERACTION_RADIUS "1.0" CACHE STRING "The range that make casual interactions applicable")
set(MAXITER "250000" CACHE STRING "The program stops and writes to file at this count")
set(NODE_SIZE ".01" CACHE STRING "This is the size of each node. It is important to have a size since if a particle gets really really really close the unit vector -> infinite")
set(PART_TIME_STEP ".001" CACHE STRING "Time step for the force calcs")
set(SPRING_CONSTANT_FACTOR "1.0" CACHE STRING "This is the scale factor for all the spring constants (Scales col1 of the relational data)")
set(WRITE_INTERVAL "0" CACHE STRING "This automatically dums xcoords to file at these multiples")

configure_file(include/configs.h.in configs.h)
find_package(Boost REQUIRED COMPONENTS atomic)
find_package(Threads REQUIRED)

foreach(target lglayout lglbreakup lglfileconvert lglrebuild)
    add_executable(
        ${target}
        ${PROJECT_SOURCE_DIR}/src/calcFuncs.C
        ${PROJECT_SOURCE_DIR}/src/${target}.C
    )
    target_compile_features(${target} PUBLIC cxx_std_11)
    target_compile_options(${target} PRIVATE -Wall -Wextra -pedantic)
    target_include_directories(
        ${target} PRIVATE
        ${PROJECT_BINARY_DIR}
        ${PROJECT_SOURCE_DIR}/include
    )
    target_link_libraries(${target} PRIVATE Boost::atomic Threads::Threads)
endforeach()
