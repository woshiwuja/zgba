//! By convention, main.zig is where your main function lives in the case that
//! you are building an executable. If you are making a library, the convention
//! is to delete this file and start with root.zig instead.
const gba = @import("tonc.zig");
pub fn main() !void {
    gba.video.m3_plot(120, 80, gba.color.RGB15(31, 0, 0));
    while (true) {}
}
