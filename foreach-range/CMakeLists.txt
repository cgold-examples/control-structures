cmake_minimum_required(VERSION 2.8)
project(foo NONE)

message("Simple range:")
foreach(x RANGE 10)
  message("  ${x}")
endforeach()

message("Range with limits:")
foreach(x RANGE 3 8)
  message("  ${x}")
endforeach()

message("Range with step:")
foreach(x RANGE 10 14 2)
  message("  ${x}")
endforeach()
