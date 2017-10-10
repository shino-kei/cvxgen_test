# AUX_SOURCE_DIRECTORY(${CMAKE_CURRENT_SOURCE_DIR} source)
# file(GLOB source "${CMAKE_CURRENT_SOURCE_DIR}/*.c")
# add_executable(example testsolver.c ldl.c util.c solver.c matrix_support.c )
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../include)
add_library(cvxgen testsolver.c ldl.c util.c solver.c matrix_support.c )
target_link_libraries(cvxgen m)

target_include_directories(cvxgen PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
