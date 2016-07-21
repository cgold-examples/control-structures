cmake_minimum_required(VERSION 3.1)
project(foo LANGUAGES NONE)

set("Jane Doe" "")
set("xJane Doe" "x")
set("!Jane Doe" "!")
set(" Jane Doe" " ")

set(A "Jane Doe")

message("A = ${A}")

if("x${A}" STREQUAL "x")
  message("A is empty (1)")
endif()

if("!${A}" STREQUAL "!")
  message("A is empty (2)")
endif()

if(" ${A}" STREQUAL " ")
  message("A is empty (3)")
endif()
