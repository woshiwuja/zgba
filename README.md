# ZGBA

zig wrapper for libtonc or tonclib

## Installing

Simply fetch the repo

```bash
zig fetch --save git+https://github.com/woshiwuja/zgba
```

then add it to your build.zig

```zig
const zgba_dep = b.dependency("zgba", .{ .target, .optimize });
const zgba = zgba_dep.module("zgba");
const zgba_artifact = zgba_dep.artifact("zgba");
exe.linkLibrary(zgba_artifact);
exe.root_module.addImport("zgba", zgba);
```

You should be able to do something like this

```zig
const gba = @import("zgba");
pub fn main() !void {
    gba.video.m3_plot(120, 80, gba.color.RGB15(31, 0, 0));
    while (true) {}
}
```

Follow the tonc docs for more examples and tutorials https://gbadev.net/tonc/