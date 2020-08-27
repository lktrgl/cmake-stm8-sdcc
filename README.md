# cmake-stm8-sdcc

How to start:

```
git clone  --recurse-submodules --verbose --remote --progress https://github.com/lktrgl/cmake-stm8-sdcc.git \
  && cd cmake-stm8-sdcc \
  && mkdir build \
  && cd build \
  && cmake -DCMAKE_TOOLCHAIN_FILE=../Toolchain-sdcc.cmake .. \
  && make all
```
