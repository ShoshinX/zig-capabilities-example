const std = @import("std");
/// Zig version. When writing code that supports multiple versions of Zig, prefer
/// feature detection (i.e. with `@hasDecl` or `@hasField`) over version checks.
pub const zig_version = std.SemanticVersion.parse("0.8.0") catch unreachable;
/// Temporary until self-hosted is feature complete.
pub const zig_is_stage2 = false;
/// Temporary until self-hosted supports the `cpu.arch` value.
pub const stage2_arch: std.Target.Cpu.Arch = .x86_64;

pub const output_mode = std.builtin.OutputMode.Lib;
pub const link_mode = std.builtin.LinkMode.Static;
pub const is_test = false;
pub const single_threaded = false;
pub const abi = std.Target.Abi.eabi;
pub const cpu: std.Target.Cpu = .{
    .arch = .x86_64,
    .model = &std.Target.x86.cpu.x86_64,
    .features = std.Target.x86.featureSet(&[_]std.Target.x86.Feature{
        .@"64bit",
        .cmov,
        .cx8,
        .fxsr,
        .idivq_to_divl,
        .macrofusion,
        .mmx,
        .nopl,
        .slow_3ops_lea,
        .slow_incdec,
        .sse,
        .sse2,
        .vzeroupper,
        .x87,
    }),
};
pub const os = std.Target.Os{
    .tag = .freestanding,
    .version_range = .{ .none = {} }
};
pub const target = std.Target{
    .cpu = cpu,
    .os = os,
    .abi = abi,
};
pub const object_format = std.Target.ObjectFormat.elf;
pub const mode = std.builtin.Mode.Debug;
pub const link_libc = false;
pub const link_libcpp = false;
pub const have_error_return_tracing = true;
pub const valgrind_support = false;
pub const position_independent_code = false;
pub const position_independent_executable = false;
pub const strip_debug_info = false;
pub const code_model = std.builtin.CodeModel.default;
