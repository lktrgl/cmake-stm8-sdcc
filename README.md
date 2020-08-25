# cmake-stm8-sdcc

How to start:

```
script_file="${PWD}/do_tune_submodules"

cat << EOF_SCRIPT_FILE > "${script_file}"
git fetch --all --recurse-submodules \
    && git stash clear \
    && git stash \
    && git checkout master \
    && git rebase origin/master \
    && git stash pop || true
EOF_SCRIPT_FILE

chmod a+x "${script_file}"

git clone  --recurse-submodules --verbose --remote --progress https://github.com/lktrgl/cmake-stm8-sdcc.git \
  && cd cmake-stm8-sdcc \
  && git submodule foreach --recursive git status \
  && git submodule foreach --recursive "${script_file}" \
  && mkdir build \
  && cd build \
  && cmake -DCMAKE_TOOLCHAIN_FILE=../Toolchain-sdcc.cmake .. \
  && make all

rm -vf "${script_file}"

unset script_file
```
