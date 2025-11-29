WARN=-Wall -Wextra -Wno-unused-function -Wno-unused-parameter

# append -DUSE_PERF_EVENT to CFLAGS, if the cycle csr isn't exposed
# try -DUSE_PERF_EVENT_SLOW if the above doesn't work

CC=clang
CFLAGS=--target=riscv64-unknown-elf -march=rv64ima_zve64x -O3 ${WARN} --gcc-toolchain=${RISCV} --sysroot=${RISCV}/riscv64-unknown-elf

