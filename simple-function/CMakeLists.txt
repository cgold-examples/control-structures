cmake_minimum_required(VERSION 2.8)
project(foo NONE)

function(foo)
  message("Calling 'foo' function")
endfunction()

foo()
foo()
