cmake_minimum_required(VERSION 3.0)
project(foo LANGUAGES NONE)

set("Jane Doe" "")
set(A "Jane Doe")

message("A = ${A}")

if("${A}" STREQUAL "")
  message("A is empty")
endif()
