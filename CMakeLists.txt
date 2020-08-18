cmake_minimum_required(VERSION 3.5)

project ( sm8-sample-proj )

include_directories (
     contrib/VentCtrl/contrib/CStM/include
     contrib/VentCtrl/include
     .
     )

set(MCU stm8)
set(CMAKE_C_FLAGS "-m${MCU} -V --opt-code-size --verbose")

add_subdirectory(
	contrib/VentCtrl
	)

add_executable ( sm8-sample
     main.c          
     )

target_link_libraries( sm8-sample
     ventctrl
     fieldvalue
     cstm
     )
