cmake_minimum_required(VERSION 2.8)
project(foo NONE)

function(foo A B)
  if(A)
    message("Exit on A")
    return()
  endif()

  if(B)
    message("Exit on B")
    return()
  endif()

  message("Exit")
endfunction()

foo(YES NO)
foo(NO YES)
foo(NO NO)
