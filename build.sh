#!/bin/bash
[ -f .config ] || cp .config-ndsx .config
rm libbusybox.a
export PATH="$WONDERFUL_TOOLCHAIN/toolchain/gcc-arm-none-eabi/bin:$PATH"
make -j
set -eo pipefail
find -type f -name '*.o' \
	| xargs file \
	| grep -E '32-bit.+ARM' \
	| cut -d':' -f1 \
	| xargs ar rcs libbusybox.a