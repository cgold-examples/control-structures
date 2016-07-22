cmake_minimum_required(VERSION 2.8)
project(foo NONE)

set(a "")
set(condition TRUE)

message("Loop with condition as variable:")
while(condition)
  set(a "${a}x")
  message("  a = ${a}")
  string(COMPARE NOTEQUAL "${a}" "xxxxx" condition)
endwhile()

set(a "")

message("Loop with explicit condition:")
while(NOT a STREQUAL "xxxxx")
  set(a "${a}x")
  message("  a = ${a}")
endwhile()
