const std = @import("std");
pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const zgba_mod = b.addModule("zgba", .{
        .optimize = optimize,
        .target = target,
    });
    const zgba = b.addLibrary(.{
        .linkage = .static,
        .name = "zgba",
        .root_module = zgba_mod,
    });
    b.installArtifact(zgba);
}
