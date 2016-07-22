cmake_minimum_required(VERSION 2.8)
project(foo NONE)

if(YES)
  message("Condition 1")
endif()

if(NO)
  message("Condition 2")
endif()

set(A "YES")
set(B "NO")

if(A)
  message("Condition 3")
endif()

if(B)
  message("Condition 4")
endif()
