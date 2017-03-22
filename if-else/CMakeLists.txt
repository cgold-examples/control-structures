cmake_minimum_required(VERSION 2.8)
project(foo NONE)

set(A "TRUE")
set(B "FALSE")

if(A)
  message("Condition 1")
else()
  message("Condition 2")
endif()

if(B)
  message("Condition 3")
else()
  message("Condition 4")
endif()

set(C "OFF")
set(D "ON")

if(C)
  message("Condition 5")
elseif(D)
  message("Condition 6")
else()
  message("Condition 7")
endif()

set(E "0")
set(F "0")

if(E)
  message("Condition 8")
elseif(F)
  message("Condition 9")
else()
  message("Condition 10")
endif()
