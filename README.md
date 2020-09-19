# cmake-stm8-sdcc
## 1. Prerequisites
### 1.1. Installing the SDCC
```
cd \
&& mkdir -vp ${HOME}/App \
&& cd /var/tmp \
&& mkdir -vp sdcc-4.0.0-amd64-unknown-linux2.5 \
&& cd sdcc-4.0.0-amd64-unknown-linux2.5 \
&& wget https://jztkft.dl.sourceforge.net/project/sdcc/sdcc-linux-amd64/4.0.0/sdcc-4.0.0-amd64-unknown-linux2.5.tar.bz2 \
&& tar -xf sdcc-4.0.0-amd64-unknown-linux2.5.tar.bz2 \
&& cp -vfr sdcc-4.0.0 ${HOME}/App \
&& rm -vfr /var/tmp/sdcc-4.0.0-amd64-unknown-linux2.5
```
### 1.2. Installing the STM8FLASH
```
cd \
&& mkdir -vp ${HOME}/App \
&& cd /var/tmp \
&& mkdir -vp stm8flash \
&& cd stm8flash \
&& git clone https://github.com/vdudouyt/stm8flash.git \
&& cd stm8flash \
&& make -j \
&& export DESTDIR=${HOME}/App/stm8flash \
&& make install \
&& rm -vfr /var/tmp/stm8flash
```
### 1.3. Installing STM8 Bin Utils
The commands below are just for the reference, the stm8 bin utils do not compile with some unknown error
```
cd \
&& mkdir -vp ${HOME}/App/stm8_binutils \
&& cd /var/tmp \
&& mkdir -vp stm8-binutils-gdb-sources-2020-03-22 \
&& cd stm8-binutils-gdb-sources-2020-03-22 \
&& wget https://deac-fra.dl.sourceforge.net/project/stm8-binutils-gdb/stm8-binutils-gdb-sources-2020-03-22.tar.gz \
&& tar -xzf stm8-binutils-gdb-sources-2020-03-22.tar.gz \
&& cd stm8-binutils-gdb-sources \
&& ./patch_binutils.sh \
&& ./configure_binutils.sh \
&& cd binutils-2.30 \
&& make  \
&& export PREFIX=${HOME}/App/stm8_binutils \
&& make install \
&& rm -vfr /var/tmp/stm8-binutils-gdb-sources-2020-03-22

```
## 2. How to start:
```
git clone  --recurse-submodules --verbose --remote --progress https://github.com/lktrgl/cmake-stm8-sdcc.git \
  && cd cmake-stm8-sdcc \
  && mkdir build \
  && cd build \
  && cmake -DCMAKE_TOOLCHAIN_FILE=../Toolchain-sdcc.cmake .. \
  && make all
```
