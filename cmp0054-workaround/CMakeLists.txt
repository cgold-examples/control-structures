cmake_minimum_required(VERSION 3.0)
project(foo LANGUAGES NONE)

set("Jane Doe" "")
set("xJane Doe" "x")
set("!Jane Doe" "!")
set(" Jane Doe" " ")

set(A "Jane Doe")

message("A = ${A}")

string(COMPARE EQUAL "${A}" "" is_empty)
if(is_empty)
  message("A is empty")
else()
  message("A is not empty")
endif()
