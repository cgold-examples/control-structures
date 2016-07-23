cmake_minimum_required(VERSION 2.8)
project(foo NONE)

function(boo)
  set(A "123" PARENT_SCOPE)
endfunction()

set(A "333")
message("Before 'boo': ${A}")
boo()
message("After 'boo': ${A}")

function(bar arg1 result)
  set("${result}" "ABC-${arg1}-XYZ" PARENT_SCOPE)
endfunction()

message("Calling 'bar' with arguments: '123' 'var_out'")
bar("123" var_out)
message("Output: ${var_out}")
