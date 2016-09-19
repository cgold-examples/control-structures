cmake_minimum_required(VERSION 2.8)
project(foo NONE)

include(CMakeParseArguments) # cmake_parse_arguments

function(foo)
  set(optional FOO BOO)
  set(one X Y Z)
  set(multiple L1 L2)

  # Introduce:
  # * x_FOO
  # * x_BOO
  # * x_X
  # * x_Y
  # * x_Z
  # * x_L1
  # * x_L2
  cmake_parse_arguments(x "${optional}" "${one}" "${multiple}" "${ARGV}")

  string(COMPARE NOTEQUAL "${x_UNPARSED_ARGUMENTS}" "" has_unparsed)
  if(has_unparsed)
    message(FATAL_ERROR "Unparsed arguments: ${x_UNPARSED_ARGUMENTS}")
  endif()

  message("FOO: ${x_FOO}")
  message("BOO: ${x_BOO}")
  message("X: ${x_X}")
  message("Y: ${x_Y}")
  message("Z: ${x_Z}")

  message("L1:")
  foreach(item ${x_L1})
    message("  ${item}")
  endforeach()

  message("L2:")
  foreach(item ${x_L2})
    message("  ${item}")
  endforeach()
endfunction()

function(boo)
  set(optional "")
  set(one PARAM1 PARAM2)
  set(multiple "")

  # Introduce:
  # * foo_PARAM1
  # * foo_PARAM2
  cmake_parse_arguments(foo "${optional}" "${one}" "${multiple}" "${ARGV}")

  string(COMPARE NOTEQUAL "${foo_UNPARSED_ARGUMENTS}" "" has_unparsed)
  if(has_unparsed)
    message(FATAL_ERROR "Unparsed arguments: ${foo_UNPARSED_ARGUMENTS}")
  endif()

  message("{ param1, param2 } = { ${foo_PARAM1}, ${foo_PARAM2} }")
endfunction()

message("*** Run (1) ***")
foo(L1 item1 item2 item3 X value FOO)

message("*** Run (2) ***")
foo(L2 item1 item3 Y abc Z 123 FOO BOO)

message("*** Run (3) ***")
foo(L1 item1 L1 item2 L1 item3)

message("*** Run (4) ***")
boo(PARAM1 123 PARAM2 888)
