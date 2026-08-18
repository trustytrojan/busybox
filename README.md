# ndsx-busybox
Fork of busybox intended to be built for [ndsx](https://github.com/trustytrojan/ndsx/tree/busybox).

A working build configuration is saved at [`.config-ndsx`](./.config-ndsx).

Copy it to `.config` and then run [`build.sh`](./build.sh) to build.

I don't feel like editing a Kbuild system, so let the linker fail and then construct a static library archive for ndsx's build system to consume.
