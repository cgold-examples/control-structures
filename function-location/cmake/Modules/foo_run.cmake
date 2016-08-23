# Module cmake/Modules/foo_run.cmake

set(FOO_RUN_FILE_PATH "${CMAKE_CURRENT_LIST_FILE}")
set(FOO_RUN_DIR_PATH "${CMAKE_CURRENT_LIST_DIR}")

function(foo_run value)
  message("foo_run(${value})")

  message("Called from: ${CMAKE_CURRENT_LIST_DIR}")
  message("Defined in file: ${FOO_RUN_FILE_PATH}")
  message("Defined in directory: ${FOO_RUN_DIR_PATH}")
endfunction()
