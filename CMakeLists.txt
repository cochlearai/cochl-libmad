# Core source files
file(GLOB CORE_SRC
  ${CMAKE_CURRENT_LIST_DIR}/version.c
  ${CMAKE_CURRENT_LIST_DIR}/fixed.c
  ${CMAKE_CURRENT_LIST_DIR}/bit.c
  ${CMAKE_CURRENT_LIST_DIR}/timer.c
  ${CMAKE_CURRENT_LIST_DIR}/stream.c
  ${CMAKE_CURRENT_LIST_DIR}/frame.c
  ${CMAKE_CURRENT_LIST_DIR}/synth.c
  ${CMAKE_CURRENT_LIST_DIR}/decoder.c
  ${CMAKE_CURRENT_LIST_DIR}/layer12.c
  ${CMAKE_CURRENT_LIST_DIR}/layer3.c
  ${CMAKE_CURRENT_LIST_DIR}/huffman.c
)

add_library(mad STATIC ${CORE_SRC})

target_include_directories(mad PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/
  ${CMAKE_CURRENT_LIST_DIR}/android/
)

SET_TARGET_PROPERTIES(mad
                      PROPERTIES COMPILE_FLAGS "-DHAVE_CONFIG_H -DFPM_DEFAULT")
# Setting this to the library only avoids errors in 3rd party dependencies which are compile with e.g. -Werror
target_compile_options(mad PUBLIC -Wall -pedantic)