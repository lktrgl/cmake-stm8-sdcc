cmake_minimum_required(VERSION 3.5)

project ( sm8-sample-proj )

include_directories (
     .
     )

set(MCU stm8)
set(CMAKE_C_FLAGS "-m${MCU} -V --opt-code-size --verbose")

add_executable ( sm8-sample
     main.c          
     )
