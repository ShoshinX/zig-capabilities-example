pub usingnamespace @import("std").c.builtins;
pub const wchar_t = c_int;
pub extern fn atoi([*c]const u8) c_int;
pub extern fn atol([*c]const u8) c_long;
pub extern fn atoll([*c]const u8) c_longlong;
pub extern fn atof([*c]const u8) f64;
pub extern fn strtof(noalias [*c]const u8, noalias [*c][*c]u8) f32;
pub extern fn strtod(noalias [*c]const u8, noalias [*c][*c]u8) f64;
pub extern fn strtold(noalias [*c]const u8, noalias [*c][*c]u8) c_longdouble;
pub extern fn strtol(noalias [*c]const u8, noalias [*c][*c]u8, c_int) c_long;
pub extern fn strtoul(noalias [*c]const u8, noalias [*c][*c]u8, c_int) c_ulong;
pub extern fn strtoll(noalias [*c]const u8, noalias [*c][*c]u8, c_int) c_longlong;
pub extern fn strtoull(noalias [*c]const u8, noalias [*c][*c]u8, c_int) c_ulonglong;
pub extern fn rand() c_int;
pub extern fn srand(c_uint) void;
pub extern fn malloc(usize) ?*c_void;
pub extern fn calloc(usize, usize) ?*c_void;
pub extern fn realloc(?*c_void, usize) ?*c_void;
pub extern fn free(?*c_void) void;
pub extern fn aligned_alloc(usize, usize) ?*c_void;
pub extern fn abort() void;
pub extern fn atexit(?fn () callconv(.C) void) c_int;
pub extern fn exit(c_int) void;
pub extern fn _Exit(c_int) void;
pub extern fn at_quick_exit(?fn () callconv(.C) void) c_int;
pub extern fn quick_exit(c_int) void;
pub extern fn getenv([*c]const u8) [*c]u8;
pub extern fn system([*c]const u8) c_int;
pub extern fn bsearch(?*const c_void, ?*const c_void, usize, usize, ?fn (?*const c_void, ?*const c_void) callconv(.C) c_int) ?*c_void;
pub extern fn qsort(?*c_void, usize, usize, ?fn (?*const c_void, ?*const c_void) callconv(.C) c_int) void;
pub extern fn abs(c_int) c_int;
pub extern fn labs(c_long) c_long;
pub extern fn llabs(c_longlong) c_longlong;
pub const div_t = extern struct {
    quot: c_int,
    rem: c_int,
};
pub const ldiv_t = extern struct {
    quot: c_long,
    rem: c_long,
};
pub const lldiv_t = extern struct {
    quot: c_longlong,
    rem: c_longlong,
};
pub extern fn div(c_int, c_int) div_t;
pub extern fn ldiv(c_long, c_long) ldiv_t;
pub extern fn lldiv(c_longlong, c_longlong) lldiv_t;
pub extern fn mblen([*c]const u8, usize) c_int;
pub extern fn mbtowc(noalias [*c]wchar_t, noalias [*c]const u8, usize) c_int;
pub extern fn wctomb([*c]u8, wchar_t) c_int;
pub extern fn mbstowcs(noalias [*c]wchar_t, noalias [*c]const u8, usize) usize;
pub extern fn wcstombs(noalias [*c]u8, noalias [*c]const wchar_t, usize) usize;
pub extern fn __ctype_get_mb_cur_max() usize;
pub extern fn posix_memalign([*c]?*c_void, usize, usize) c_int;
pub extern fn setenv([*c]const u8, [*c]const u8, c_int) c_int;
pub extern fn unsetenv([*c]const u8) c_int;
pub extern fn mkstemp([*c]u8) c_int;
pub extern fn mkostemp([*c]u8, c_int) c_int;
pub extern fn mkdtemp([*c]u8) [*c]u8;
pub extern fn getsubopt([*c][*c]u8, [*c]const [*c]u8, [*c][*c]u8) c_int;
pub extern fn rand_r([*c]c_uint) c_int;
pub extern fn realpath(noalias [*c]const u8, noalias [*c]u8) [*c]u8;
pub extern fn random() c_long;
pub extern fn srandom(c_uint) void;
pub extern fn initstate(c_uint, [*c]u8, usize) [*c]u8;
pub extern fn setstate([*c]u8) [*c]u8;
pub extern fn putenv([*c]u8) c_int;
pub extern fn posix_openpt(c_int) c_int;
pub extern fn grantpt(c_int) c_int;
pub extern fn unlockpt(c_int) c_int;
pub extern fn ptsname(c_int) [*c]u8;
pub extern fn l64a(c_long) [*c]u8;
pub extern fn a64l([*c]const u8) c_long;
pub extern fn setkey([*c]const u8) void;
pub extern fn drand48() f64;
pub extern fn erand48([*c]c_ushort) f64;
pub extern fn lrand48() c_long;
pub extern fn nrand48([*c]c_ushort) c_long;
pub extern fn mrand48() c_long;
pub extern fn jrand48([*c]c_ushort) c_long;
pub extern fn srand48(c_long) void;
pub extern fn seed48([*c]c_ushort) [*c]c_ushort;
pub extern fn lcong48([*c]c_ushort) void;
pub extern fn alloca(usize) ?*c_void;
pub extern fn mktemp([*c]u8) [*c]u8;
pub extern fn mkstemps([*c]u8, c_int) c_int;
pub extern fn mkostemps([*c]u8, c_int, c_int) c_int;
pub extern fn valloc(usize) ?*c_void;
pub extern fn memalign(usize, usize) ?*c_void;
pub extern fn getloadavg([*c]f64, c_int) c_int;
pub extern fn clearenv() c_int;
pub const struct___va_list_tag = extern struct {
    gp_offset: c_uint,
    fp_offset: c_uint,
    overflow_arg_area: ?*c_void,
    reg_save_area: ?*c_void,
};
pub const __builtin_va_list = [1]struct___va_list_tag;
pub const va_list = __builtin_va_list;
pub const __isoc_va_list = __builtin_va_list;
pub const off_t = c_long;
pub const struct__IO_FILE = opaque {};
pub const FILE = struct__IO_FILE;
pub const union__G_fpos64_t = extern union {
    __opaque: [16]u8,
    __align: f64,
};
pub const fpos_t = union__G_fpos64_t;
pub extern const stdin: ?*FILE;
pub extern const stdout: ?*FILE;
pub extern const stderr: ?*FILE;
pub extern fn fopen(noalias [*c]const u8, noalias [*c]const u8) ?*FILE;
pub extern fn freopen(noalias [*c]const u8, noalias [*c]const u8, noalias ?*FILE) ?*FILE;
pub extern fn fclose(?*FILE) c_int;
pub extern fn remove([*c]const u8) c_int;
pub extern fn rename([*c]const u8, [*c]const u8) c_int;
pub extern fn feof(?*FILE) c_int;
pub extern fn ferror(?*FILE) c_int;
pub extern fn fflush(?*FILE) c_int;
pub extern fn clearerr(?*FILE) void;
pub extern fn fseek(?*FILE, c_long, c_int) c_int;
pub extern fn ftell(?*FILE) c_long;
pub extern fn rewind(?*FILE) void;
pub extern fn fgetpos(noalias ?*FILE, noalias [*c]fpos_t) c_int;
pub extern fn fsetpos(?*FILE, [*c]const fpos_t) c_int;
pub extern fn fread(noalias ?*c_void, usize, usize, noalias ?*FILE) usize;
pub extern fn fwrite(noalias ?*const c_void, usize, usize, noalias ?*FILE) usize;
pub extern fn fgetc(?*FILE) c_int;
pub extern fn getc(?*FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn ungetc(c_int, ?*FILE) c_int;
pub extern fn fputc(c_int, ?*FILE) c_int;
pub extern fn putc(c_int, ?*FILE) c_int;
pub extern fn putchar(c_int) c_int;
pub extern fn fgets(noalias [*c]u8, c_int, noalias ?*FILE) [*c]u8;
pub extern fn fputs(noalias [*c]const u8, noalias ?*FILE) c_int;
pub extern fn puts([*c]const u8) c_int;
pub extern fn printf(noalias [*c]const u8, ...) c_int;
pub extern fn fprintf(noalias ?*FILE, noalias [*c]const u8, ...) c_int;
pub extern fn sprintf(noalias [*c]u8, noalias [*c]const u8, ...) c_int;
pub extern fn snprintf(noalias [*c]u8, usize, noalias [*c]const u8, ...) c_int;
pub extern fn vprintf(noalias [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn vfprintf(noalias ?*FILE, noalias [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn vsprintf(noalias [*c]u8, noalias [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn vsnprintf(noalias [*c]u8, usize, noalias [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn scanf(noalias [*c]const u8, ...) c_int;
pub extern fn fscanf(noalias ?*FILE, noalias [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias [*c]const u8, noalias [*c]const u8, ...) c_int;
pub extern fn vscanf(noalias [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn vfscanf(noalias ?*FILE, noalias [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn vsscanf(noalias [*c]const u8, noalias [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn perror([*c]const u8) void;
pub extern fn setvbuf(noalias ?*FILE, noalias [*c]u8, c_int, usize) c_int;
pub extern fn setbuf(noalias ?*FILE, noalias [*c]u8) void;
pub extern fn tmpnam([*c]u8) [*c]u8;
pub extern fn tmpfile() ?*FILE;
pub extern fn fmemopen(noalias ?*c_void, usize, noalias [*c]const u8) ?*FILE;
pub extern fn open_memstream([*c][*c]u8, [*c]usize) ?*FILE;
pub extern fn fdopen(c_int, [*c]const u8) ?*FILE;
pub extern fn popen([*c]const u8, [*c]const u8) ?*FILE;
pub extern fn pclose(?*FILE) c_int;
pub extern fn fileno(?*FILE) c_int;
pub extern fn fseeko(?*FILE, off_t, c_int) c_int;
pub extern fn ftello(?*FILE) off_t;
pub extern fn dprintf(c_int, noalias [*c]const u8, ...) c_int;
pub extern fn vdprintf(c_int, noalias [*c]const u8, [*c]struct___va_list_tag) c_int;
pub extern fn flockfile(?*FILE) void;
pub extern fn ftrylockfile(?*FILE) c_int;
pub extern fn funlockfile(?*FILE) void;
pub extern fn getc_unlocked(?*FILE) c_int;
pub extern fn getchar_unlocked() c_int;
pub extern fn putc_unlocked(c_int, ?*FILE) c_int;
pub extern fn putchar_unlocked(c_int) c_int;
pub extern fn getdelim(noalias [*c][*c]u8, noalias [*c]usize, c_int, noalias ?*FILE) isize;
pub extern fn getline(noalias [*c][*c]u8, noalias [*c]usize, noalias ?*FILE) isize;
pub extern fn renameat(c_int, [*c]const u8, c_int, [*c]const u8) c_int;
pub extern fn ctermid([*c]u8) [*c]u8;
pub extern fn tempnam([*c]const u8, [*c]const u8) [*c]u8;
pub extern fn cuserid([*c]u8) [*c]u8;
pub extern fn setlinebuf(?*FILE) void;
pub extern fn setbuffer(?*FILE, [*c]u8, usize) void;
pub extern fn fgetc_unlocked(?*FILE) c_int;
pub extern fn fputc_unlocked(c_int, ?*FILE) c_int;
pub extern fn fflush_unlocked(?*FILE) c_int;
pub extern fn fread_unlocked(?*c_void, usize, usize, ?*FILE) usize;
pub extern fn fwrite_unlocked(?*const c_void, usize, usize, ?*FILE) usize;
pub extern fn clearerr_unlocked(?*FILE) void;
pub extern fn feof_unlocked(?*FILE) c_int;
pub extern fn ferror_unlocked(?*FILE) c_int;
pub extern fn fileno_unlocked(?*FILE) c_int;
pub extern fn getw(?*FILE) c_int;
pub extern fn putw(c_int, ?*FILE) c_int;
pub extern fn fgetln(?*FILE, [*c]usize) [*c]u8;
pub extern fn asprintf([*c][*c]u8, [*c]const u8, ...) c_int;
pub extern fn vasprintf([*c][*c]u8, [*c]const u8, [*c]struct___va_list_tag) c_int;
pub const seL4_Int8 = i8;
pub const seL4_Uint8 = u8; // /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/macros.h:47:43: warning: ignoring StaticAssert declaration
// /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/macros.h:47:43: warning: ignoring StaticAssert declaration
pub const seL4_Int16 = c_short;
pub const seL4_Uint16 = c_ushort; // /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/macros.h:47:43: warning: ignoring StaticAssert declaration
// /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/macros.h:47:43: warning: ignoring StaticAssert declaration
pub const seL4_Int32 = c_int;
pub const seL4_Uint32 = c_uint; // /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/macros.h:47:43: warning: ignoring StaticAssert declaration
// /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/macros.h:47:43: warning: ignoring StaticAssert declaration
pub const seL4_Int64 = c_long;
pub const seL4_Uint64 = c_ulong;
pub const seL4_Bool = seL4_Int8;
pub const seL4_Word = seL4_Uint64;
pub const seL4_CPtr = seL4_Word; // /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/macros.h:47:43: warning: ignoring StaticAssert declaration
// /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/macros.h:47:43: warning: ignoring StaticAssert declaration
// /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/macros.h:47:43: warning: ignoring StaticAssert declaration
// /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/macros.h:47:43: warning: ignoring StaticAssert declaration
// /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/macros.h:47:43: warning: ignoring StaticAssert declaration
pub const seL4_VMFault_Msg = extern enum(c_ulong) {
    seL4_VMFault_IP = 0,
    seL4_VMFault_Addr = 1,
    seL4_VMFault_PrefetchFault = 2,
    seL4_VMFault_FSR = 3,
    seL4_VMFault_Length = 4,
    _enum_pad_seL4_VMFault_Msg = 9223372036854775807,
    _,
};
pub const seL4_VMFault_IP = @enumToInt(seL4_VMFault_Msg.seL4_VMFault_IP);
pub const seL4_VMFault_Addr = @enumToInt(seL4_VMFault_Msg.seL4_VMFault_Addr);
pub const seL4_VMFault_PrefetchFault = @enumToInt(seL4_VMFault_Msg.seL4_VMFault_PrefetchFault);
pub const seL4_VMFault_FSR = @enumToInt(seL4_VMFault_Msg.seL4_VMFault_FSR);
pub const seL4_VMFault_Length = @enumToInt(seL4_VMFault_Msg.seL4_VMFault_Length);
pub const _enum_pad_seL4_VMFault_Msg = @enumToInt(seL4_VMFault_Msg._enum_pad_seL4_VMFault_Msg);
pub const seL4_UnknownSyscall_Msg = extern enum(c_ulong) {
    seL4_UnknownSyscall_RAX = 0,
    seL4_UnknownSyscall_RBX = 1,
    seL4_UnknownSyscall_RCX = 2,
    seL4_UnknownSyscall_RDX = 3,
    seL4_UnknownSyscall_RSI = 4,
    seL4_UnknownSyscall_RDI = 5,
    seL4_UnknownSyscall_RBP = 6,
    seL4_UnknownSyscall_R8 = 7,
    seL4_UnknownSyscall_R9 = 8,
    seL4_UnknownSyscall_R10 = 9,
    seL4_UnknownSyscall_R11 = 10,
    seL4_UnknownSyscall_R12 = 11,
    seL4_UnknownSyscall_R13 = 12,
    seL4_UnknownSyscall_R14 = 13,
    seL4_UnknownSyscall_R15 = 14,
    seL4_UnknownSyscall_FaultIP = 15,
    seL4_UnknownSyscall_SP = 16,
    seL4_UnknownSyscall_FLAGS = 17,
    seL4_UnknownSyscall_Syscall = 18,
    seL4_UnknownSyscall_Length = 19,
    _enum_pad_seL4_UnknownSyscall_Msg = 9223372036854775807,
    _,
};
pub const seL4_UnknownSyscall_RAX = @enumToInt(seL4_UnknownSyscall_Msg.seL4_UnknownSyscall_RAX);
pub const seL4_UnknownSyscall_RBX = @enumToInt(seL4_UnknownSyscall_Msg.seL4_UnknownSyscall_RBX);
pub const seL4_UnknownSyscall_RCX = @enumToInt(seL4_UnknownSyscall_Msg.seL4_UnknownSyscall_RCX);
pub const seL4_UnknownSyscall_RDX = @enumToInt(seL4_UnknownSyscall_Msg.seL4_UnknownSyscall_RDX);
pub const seL4_UnknownSyscall_RSI = @enumToInt(seL4_UnknownSyscall_Msg.seL4_UnknownSyscall_RSI);
pub const seL4_UnknownSyscall_RDI = @enumToInt(seL4_UnknownSyscall_Msg.seL4_UnknownSyscall_RDI);
pub const seL4_UnknownSyscall_RBP = @enumToInt(seL4_UnknownSyscall_Msg.seL4_UnknownSyscall_RBP);
pub const seL4_UnknownSyscall_R8 = @enumToInt(seL4_UnknownSyscall_Msg.seL4_UnknownSyscall_R8);
pub const seL4_UnknownSyscall_R9 = @enumToInt(seL4_UnknownSyscall_Msg.seL4_UnknownSyscall_R9);
pub const seL4_UnknownSyscall_R10 = @enumToInt(seL4_UnknownSyscall_Msg.seL4_UnknownSyscall_R10);
pub const seL4_UnknownSyscall_R11 = @enumToInt(seL4_UnknownSyscall_Msg.seL4_UnknownSyscall_R11);
pub const seL4_UnknownSyscall_R12 = @enumToInt(seL4_UnknownSyscall_Msg.seL4_UnknownSyscall_R12);
pub const seL4_UnknownSyscall_R13 = @enumToInt(seL4_UnknownSyscall_Msg.seL4_UnknownSyscall_R13);
pub const seL4_UnknownSyscall_R14 = @enumToInt(seL4_UnknownSyscall_Msg.seL4_UnknownSyscall_R14);
pub const seL4_UnknownSyscall_R15 = @enumToInt(seL4_UnknownSyscall_Msg.seL4_UnknownSyscall_R15);
pub const seL4_UnknownSyscall_FaultIP = @enumToInt(seL4_UnknownSyscall_Msg.seL4_UnknownSyscall_FaultIP);
pub const seL4_UnknownSyscall_SP = @enumToInt(seL4_UnknownSyscall_Msg.seL4_UnknownSyscall_SP);
pub const seL4_UnknownSyscall_FLAGS = @enumToInt(seL4_UnknownSyscall_Msg.seL4_UnknownSyscall_FLAGS);
pub const seL4_UnknownSyscall_Syscall = @enumToInt(seL4_UnknownSyscall_Msg.seL4_UnknownSyscall_Syscall);
pub const seL4_UnknownSyscall_Length = @enumToInt(seL4_UnknownSyscall_Msg.seL4_UnknownSyscall_Length);
pub const _enum_pad_seL4_UnknownSyscall_Msg = @enumToInt(seL4_UnknownSyscall_Msg._enum_pad_seL4_UnknownSyscall_Msg);
pub const seL4_UserException_Msg = extern enum(c_ulong) {
    seL4_UserException_FaultIP = 0,
    seL4_UserException_SP = 1,
    seL4_UserException_FLAGS = 2,
    seL4_UserException_Number = 3,
    seL4_UserException_Code = 4,
    seL4_UserException_Length = 5,
    _enum_pad_seL4_UserException_Msg = 9223372036854775807,
    _,
};
pub const seL4_UserException_FaultIP = @enumToInt(seL4_UserException_Msg.seL4_UserException_FaultIP);
pub const seL4_UserException_SP = @enumToInt(seL4_UserException_Msg.seL4_UserException_SP);
pub const seL4_UserException_FLAGS = @enumToInt(seL4_UserException_Msg.seL4_UserException_FLAGS);
pub const seL4_UserException_Number = @enumToInt(seL4_UserException_Msg.seL4_UserException_Number);
pub const seL4_UserException_Code = @enumToInt(seL4_UserException_Msg.seL4_UserException_Code);
pub const seL4_UserException_Length = @enumToInt(seL4_UserException_Msg.seL4_UserException_Length);
pub const _enum_pad_seL4_UserException_Msg = @enumToInt(seL4_UserException_Msg._enum_pad_seL4_UserException_Msg); // /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/macros.h:47:43: warning: ignoring StaticAssert declaration
// /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/macros.h:47:43: warning: ignoring StaticAssert declaration
pub const seL4_X64_PML4 = seL4_CPtr;
pub const struct_seL4_UserContext_ = extern struct {
    rip: seL4_Word,
    rsp: seL4_Word,
    rflags: seL4_Word,
    rax: seL4_Word,
    rbx: seL4_Word,
    rcx: seL4_Word,
    rdx: seL4_Word,
    rsi: seL4_Word,
    rdi: seL4_Word,
    rbp: seL4_Word,
    r8: seL4_Word,
    r9: seL4_Word,
    r10: seL4_Word,
    r11: seL4_Word,
    r12: seL4_Word,
    r13: seL4_Word,
    r14: seL4_Word,
    r15: seL4_Word,
    fs_base: seL4_Word,
    gs_base: seL4_Word,
};
pub const seL4_UserContext = struct_seL4_UserContext_;
pub const seL4_X86_ASIDControl = seL4_CPtr;
pub const seL4_X86_ASIDPool = seL4_CPtr;
pub const seL4_X86_IOSpace = seL4_CPtr;
pub const seL4_X86_IOPort = seL4_CPtr;
pub const seL4_X86_IOPortControl = seL4_CPtr;
pub const seL4_X86_Page = seL4_CPtr;
pub const seL4_X86_PDPT = seL4_CPtr;
pub const seL4_X86_PageDirectory = seL4_CPtr;
pub const seL4_X86_PageTable = seL4_CPtr;
pub const seL4_X86_IOPageTable = seL4_CPtr;
pub const seL4_X86_EPTPML4 = seL4_CPtr;
pub const seL4_X86_EPTPDPT = seL4_CPtr;
pub const seL4_X86_EPTPD = seL4_CPtr;
pub const seL4_X86_EPTPT = seL4_CPtr;
pub const seL4_X86_VCPU = seL4_CPtr;
pub const seL4_X86_VMAttributes = extern enum(c_ulong) {
    seL4_X86_Default_VMAttributes = 0,
    seL4_X86_WriteBack = 0,
    seL4_X86_WriteThrough = 1,
    seL4_X86_CacheDisabled = 2,
    seL4_X86_Uncacheable = 3,
    seL4_X86_WriteCombining = 4,
    _enum_pad_seL4_X86_VMAttributes = 9223372036854775807,
    _,
};
pub const seL4_X86_Default_VMAttributes = @enumToInt(seL4_X86_VMAttributes.seL4_X86_Default_VMAttributes);
pub const seL4_X86_WriteBack = @enumToInt(seL4_X86_VMAttributes.seL4_X86_WriteBack);
pub const seL4_X86_WriteThrough = @enumToInt(seL4_X86_VMAttributes.seL4_X86_WriteThrough);
pub const seL4_X86_CacheDisabled = @enumToInt(seL4_X86_VMAttributes.seL4_X86_CacheDisabled);
pub const seL4_X86_Uncacheable = @enumToInt(seL4_X86_VMAttributes.seL4_X86_Uncacheable);
pub const seL4_X86_WriteCombining = @enumToInt(seL4_X86_VMAttributes.seL4_X86_WriteCombining);
pub const _enum_pad_seL4_X86_VMAttributes = @enumToInt(seL4_X86_VMAttributes._enum_pad_seL4_X86_VMAttributes);
pub const struct_seL4_VCPUContext_ = extern struct {
    eax: seL4_Word,
    ebx: seL4_Word,
    ecx: seL4_Word,
    edx: seL4_Word,
    esi: seL4_Word,
    edi: seL4_Word,
    ebp: seL4_Word,
};
pub const seL4_VCPUContext = struct_seL4_VCPUContext_;
pub extern fn __assert_fail(str: [*c]const u8, file: [*c]const u8, line: c_int, function: [*c]const u8) void;
pub const struct_seL4_Fault = extern struct {
    words: [20]seL4_Uint64,
};
pub const seL4_Fault_t = struct_seL4_Fault;
pub const enum_seL4_Fault_tag = extern enum(c_int) {
    seL4_Fault_NullFault = 0,
    seL4_Fault_CapFault = 1,
    seL4_Fault_UnknownSyscall = 2,
    seL4_Fault_UserException = 3,
    seL4_Fault_VMFault = 5,
    _,
};
pub const seL4_Fault_NullFault = @enumToInt(enum_seL4_Fault_tag.seL4_Fault_NullFault);
pub const seL4_Fault_CapFault = @enumToInt(enum_seL4_Fault_tag.seL4_Fault_CapFault);
pub const seL4_Fault_UnknownSyscall = @enumToInt(enum_seL4_Fault_tag.seL4_Fault_UnknownSyscall);
pub const seL4_Fault_UserException = @enumToInt(enum_seL4_Fault_tag.seL4_Fault_UserException);
pub const seL4_Fault_VMFault = @enumToInt(enum_seL4_Fault_tag.seL4_Fault_VMFault);
pub const seL4_Fault_tag_t = enum_seL4_Fault_tag;
pub fn seL4_Fault_get_seL4_FaultType(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    return @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 15)));
}
pub fn seL4_Fault_seL4_FaultType_equals(arg_seL4_Fault_1: seL4_Fault_t, arg_seL4_Fault_type_tag: seL4_Uint64) callconv(.C) c_int {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var seL4_Fault_type_tag = arg_seL4_Fault_type_tag;
    return @boolToInt((@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 15)) == @bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_type_tag)));
}
pub fn seL4_Fault_ptr_get_seL4_FaultType(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    return @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 15)));
}
pub fn seL4_Fault_NullFault_new() callconv(.C) seL4_Fault_t {
    var seL4_Fault_1: seL4_Fault_t = undefined;
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_NullFault)))) & ~@as(c_ulonglong, 15)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_NullFault)))) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("((seL4_Uint64)seL4_Fault_NullFault & ~0xfull) == ((0 && ((seL4_Uint64)seL4_Fault_NullFault & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 41), "seL4_Fault_NullFault_new");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] = @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_NullFault)))) & @as(c_ulonglong, 15)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 0))));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 1))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 2))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 3))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 4))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 5))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 6))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 7))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 8))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 9))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 10))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 11))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 12))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 13))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 14))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 15))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 16))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 17))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 18))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 19))] = 0;
    return seL4_Fault_1;
}
pub fn seL4_Fault_NullFault_ptr_new(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_NullFault)))) & ~@as(c_ulonglong, 15)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_NullFault)))) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("((seL4_Uint64)seL4_Fault_NullFault & ~0xfull) == ((0 && ((seL4_Uint64)seL4_Fault_NullFault & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 71), "seL4_Fault_NullFault_ptr_new");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] = @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_NullFault)))) & @as(c_ulonglong, 15)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 0))));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 1))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 2))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 3))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 4))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 5))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 6))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 7))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 8))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 9))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 10))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 11))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 12))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 13))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 14))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 15))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 16))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 17))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 18))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 19))] = 0;
}
pub fn seL4_Fault_CapFault_new(arg_IP: seL4_Uint64, arg_Addr: seL4_Uint64, arg_InRecvPhase: seL4_Uint64, arg_LookupFailureType: seL4_Uint64, arg_MR4: seL4_Uint64, arg_MR5: seL4_Uint64, arg_MR6: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var IP = arg_IP;
    var Addr = arg_Addr;
    var InRecvPhase = arg_InRecvPhase;
    var LookupFailureType = arg_LookupFailureType;
    var MR4 = arg_MR4;
    var MR5 = arg_MR5;
    var MR6 = arg_MR6;
    var seL4_Fault_1: seL4_Fault_t = undefined;
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_CapFault)))) & ~@as(c_ulonglong, 15)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_CapFault)))) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("((seL4_Uint64)seL4_Fault_CapFault & ~0xfull) == ((0 && ((seL4_Uint64)seL4_Fault_CapFault & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 101), "seL4_Fault_CapFault_new");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] = @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_CapFault)))) & @as(c_ulonglong, 15)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 0))));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 1))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (MR6 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 2))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (MR5 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 3))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (MR4 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 4))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (LookupFailureType << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 5))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (InRecvPhase << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 6))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (Addr << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 7))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (IP << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 8))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 9))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 10))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 11))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 12))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 13))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 14))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 15))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 16))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 17))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 18))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 19))] = 0;
    return seL4_Fault_1;
}
pub fn seL4_Fault_CapFault_ptr_new(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_IP: seL4_Uint64, arg_Addr: seL4_Uint64, arg_InRecvPhase: seL4_Uint64, arg_LookupFailureType: seL4_Uint64, arg_MR4: seL4_Uint64, arg_MR5: seL4_Uint64, arg_MR6: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var IP = arg_IP;
    var Addr = arg_Addr;
    var InRecvPhase = arg_InRecvPhase;
    var LookupFailureType = arg_LookupFailureType;
    var MR4 = arg_MR4;
    var MR5 = arg_MR5;
    var MR6 = arg_MR6;
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_CapFault)))) & ~@as(c_ulonglong, 15)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_CapFault)))) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("((seL4_Uint64)seL4_Fault_CapFault & ~0xfull) == ((0 && ((seL4_Uint64)seL4_Fault_CapFault & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 138), "seL4_Fault_CapFault_ptr_new");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] = @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_CapFault)))) & @as(c_ulonglong, 15)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 0))));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 1))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (MR6 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 2))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (MR5 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 3))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (MR4 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 4))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (LookupFailureType << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 5))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (InRecvPhase << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 6))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (Addr << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 7))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (IP << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 8))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 9))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 10))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 11))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 12))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 13))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 14))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 15))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 16))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 17))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 18))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 19))] = 0;
}
pub fn seL4_Fault_CapFault_get_IP(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 174), "seL4_Fault_CapFault_get_IP");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 7))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_CapFault_set_IP(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 187), "seL4_Fault_CapFault_set_IP");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 189), "seL4_Fault_CapFault_set_IP");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 7))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 7))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_CapFault_ptr_get_IP(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 200), "seL4_Fault_CapFault_ptr_get_IP");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 7))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_CapFault_ptr_set_IP(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 214), "seL4_Fault_CapFault_ptr_set_IP");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 217), "seL4_Fault_CapFault_ptr_set_IP");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 7))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 7))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_CapFault_get_Addr(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 227), "seL4_Fault_CapFault_get_Addr");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 6))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_CapFault_set_Addr(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 240), "seL4_Fault_CapFault_set_Addr");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 242), "seL4_Fault_CapFault_set_Addr");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 6))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 6))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_CapFault_ptr_get_Addr(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 253), "seL4_Fault_CapFault_ptr_get_Addr");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 6))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_CapFault_ptr_set_Addr(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 267), "seL4_Fault_CapFault_ptr_set_Addr");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 270), "seL4_Fault_CapFault_ptr_set_Addr");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 6))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 6))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_CapFault_get_InRecvPhase(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 280), "seL4_Fault_CapFault_get_InRecvPhase");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 5))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_CapFault_set_InRecvPhase(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 293), "seL4_Fault_CapFault_set_InRecvPhase");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 295), "seL4_Fault_CapFault_set_InRecvPhase");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 5))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 5))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_CapFault_ptr_get_InRecvPhase(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 306), "seL4_Fault_CapFault_ptr_get_InRecvPhase");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 5))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_CapFault_ptr_set_InRecvPhase(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 320), "seL4_Fault_CapFault_ptr_set_InRecvPhase");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 323), "seL4_Fault_CapFault_ptr_set_InRecvPhase");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 5))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 5))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_CapFault_get_LookupFailureType(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 333), "seL4_Fault_CapFault_get_LookupFailureType");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 4))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_CapFault_set_LookupFailureType(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 346), "seL4_Fault_CapFault_set_LookupFailureType");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 348), "seL4_Fault_CapFault_set_LookupFailureType");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 4))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 4))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_CapFault_ptr_get_LookupFailureType(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 359), "seL4_Fault_CapFault_ptr_get_LookupFailureType");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 4))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_CapFault_ptr_set_LookupFailureType(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 373), "seL4_Fault_CapFault_ptr_set_LookupFailureType");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 376), "seL4_Fault_CapFault_ptr_set_LookupFailureType");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 4))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 4))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_CapFault_get_MR4(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 386), "seL4_Fault_CapFault_get_MR4");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 3))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_CapFault_set_MR4(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 399), "seL4_Fault_CapFault_set_MR4");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 401), "seL4_Fault_CapFault_set_MR4");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 3))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 3))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_CapFault_ptr_get_MR4(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 412), "seL4_Fault_CapFault_ptr_get_MR4");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 3))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_CapFault_ptr_set_MR4(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 426), "seL4_Fault_CapFault_ptr_set_MR4");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 429), "seL4_Fault_CapFault_ptr_set_MR4");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 3))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 3))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_CapFault_get_MR5(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 439), "seL4_Fault_CapFault_get_MR5");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 2))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_CapFault_set_MR5(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 452), "seL4_Fault_CapFault_set_MR5");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 454), "seL4_Fault_CapFault_set_MR5");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 2))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 2))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_CapFault_ptr_get_MR5(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 465), "seL4_Fault_CapFault_ptr_get_MR5");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 2))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_CapFault_ptr_set_MR5(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 479), "seL4_Fault_CapFault_ptr_set_MR5");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 482), "seL4_Fault_CapFault_ptr_set_MR5");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 2))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 2))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_CapFault_get_MR6(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 492), "seL4_Fault_CapFault_get_MR6");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 1))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_CapFault_set_MR6(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 505), "seL4_Fault_CapFault_set_MR6");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 507), "seL4_Fault_CapFault_set_MR6");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 1))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 1))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_CapFault_ptr_get_MR6(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 518), "seL4_Fault_CapFault_ptr_get_MR6");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 1))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_CapFault_ptr_set_MR6(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_CapFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 532), "seL4_Fault_CapFault_ptr_set_MR6");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 535), "seL4_Fault_CapFault_ptr_set_MR6");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 1))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 1))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UnknownSyscall_new(arg_RAX: seL4_Uint64, arg_RBX: seL4_Uint64, arg_RCX: seL4_Uint64, arg_RDX: seL4_Uint64, arg_RSI: seL4_Uint64, arg_RDI: seL4_Uint64, arg_RBP: seL4_Uint64, arg_R8: seL4_Uint64, arg_R9: seL4_Uint64, arg_R10: seL4_Uint64, arg_R11: seL4_Uint64, arg_R12: seL4_Uint64, arg_R13: seL4_Uint64, arg_R14: seL4_Uint64, arg_R15: seL4_Uint64, arg_FaultIP: seL4_Uint64, arg_RSP: seL4_Uint64, arg_FLAGS: seL4_Uint64, arg_Syscall: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var RAX = arg_RAX;
    var RBX = arg_RBX;
    var RCX = arg_RCX;
    var RDX = arg_RDX;
    var RSI = arg_RSI;
    var RDI = arg_RDI;
    var RBP = arg_RBP;
    var R8 = arg_R8;
    var R9 = arg_R9;
    var R10 = arg_R10;
    var R11 = arg_R11;
    var R12 = arg_R12;
    var R13 = arg_R13;
    var R14 = arg_R14;
    var R15 = arg_R15;
    var FaultIP = arg_FaultIP;
    var RSP = arg_RSP;
    var FLAGS = arg_FLAGS;
    var Syscall = arg_Syscall;
    var seL4_Fault_1: seL4_Fault_t = undefined;
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_UnknownSyscall)))) & ~@as(c_ulonglong, 15)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_UnknownSyscall)))) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("((seL4_Uint64)seL4_Fault_UnknownSyscall & ~0xfull) == ((0 && ((seL4_Uint64)seL4_Fault_UnknownSyscall & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 546), "seL4_Fault_UnknownSyscall_new");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] = @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_UnknownSyscall)))) & @as(c_ulonglong, 15)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 0))));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 1))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (Syscall << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 2))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (FLAGS << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 3))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (RSP << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 4))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (FaultIP << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 5))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (R15 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 6))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (R14 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 7))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (R13 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 8))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (R12 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 9))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (R11 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 10))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (R10 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 11))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (R9 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 12))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (R8 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 13))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (RBP << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 14))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (RDI << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 15))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (RSI << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 16))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (RDX << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 17))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (RCX << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 18))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (RBX << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 19))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (RAX << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UnknownSyscall_ptr_new(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_RAX: seL4_Uint64, arg_RBX: seL4_Uint64, arg_RCX: seL4_Uint64, arg_RDX: seL4_Uint64, arg_RSI: seL4_Uint64, arg_RDI: seL4_Uint64, arg_RBP: seL4_Uint64, arg_R8: seL4_Uint64, arg_R9: seL4_Uint64, arg_R10: seL4_Uint64, arg_R11: seL4_Uint64, arg_R12: seL4_Uint64, arg_R13: seL4_Uint64, arg_R14: seL4_Uint64, arg_R15: seL4_Uint64, arg_FaultIP: seL4_Uint64, arg_RSP: seL4_Uint64, arg_FLAGS: seL4_Uint64, arg_Syscall: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var RAX = arg_RAX;
    var RBX = arg_RBX;
    var RCX = arg_RCX;
    var RDX = arg_RDX;
    var RSI = arg_RSI;
    var RDI = arg_RDI;
    var RBP = arg_RBP;
    var R8 = arg_R8;
    var R9 = arg_R9;
    var R10 = arg_R10;
    var R11 = arg_R11;
    var R12 = arg_R12;
    var R13 = arg_R13;
    var R14 = arg_R14;
    var R15 = arg_R15;
    var FaultIP = arg_FaultIP;
    var RSP = arg_RSP;
    var FLAGS = arg_FLAGS;
    var Syscall = arg_Syscall;
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_UnknownSyscall)))) & ~@as(c_ulonglong, 15)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_UnknownSyscall)))) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("((seL4_Uint64)seL4_Fault_UnknownSyscall & ~0xfull) == ((0 && ((seL4_Uint64)seL4_Fault_UnknownSyscall & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 595), "seL4_Fault_UnknownSyscall_ptr_new");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] = @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_UnknownSyscall)))) & @as(c_ulonglong, 15)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 0))));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 1))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (Syscall << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 2))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (FLAGS << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 3))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (RSP << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 4))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (FaultIP << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 5))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (R15 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 6))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (R14 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 7))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (R13 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 8))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (R12 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 9))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (R11 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 10))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (R10 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 11))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (R9 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 12))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (R8 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 13))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (RBP << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 14))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (RDI << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 15))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (RSI << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 16))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (RDX << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 17))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (RCX << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 18))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (RBX << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 19))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (RAX << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
}
pub fn seL4_Fault_UnknownSyscall_get_RAX(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 643), "seL4_Fault_UnknownSyscall_get_RAX");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 19))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_set_RAX(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 656), "seL4_Fault_UnknownSyscall_set_RAX");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 658), "seL4_Fault_UnknownSyscall_set_RAX");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 19))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 19))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UnknownSyscall_ptr_get_RAX(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 669), "seL4_Fault_UnknownSyscall_ptr_get_RAX");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 19))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_ptr_set_RAX(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 683), "seL4_Fault_UnknownSyscall_ptr_set_RAX");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 686), "seL4_Fault_UnknownSyscall_ptr_set_RAX");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 19))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 19))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UnknownSyscall_get_RBX(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 696), "seL4_Fault_UnknownSyscall_get_RBX");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 18))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_set_RBX(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 709), "seL4_Fault_UnknownSyscall_set_RBX");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 711), "seL4_Fault_UnknownSyscall_set_RBX");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 18))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 18))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UnknownSyscall_ptr_get_RBX(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 722), "seL4_Fault_UnknownSyscall_ptr_get_RBX");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 18))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_ptr_set_RBX(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 736), "seL4_Fault_UnknownSyscall_ptr_set_RBX");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 739), "seL4_Fault_UnknownSyscall_ptr_set_RBX");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 18))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 18))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UnknownSyscall_get_RCX(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 749), "seL4_Fault_UnknownSyscall_get_RCX");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 17))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_set_RCX(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 762), "seL4_Fault_UnknownSyscall_set_RCX");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 764), "seL4_Fault_UnknownSyscall_set_RCX");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 17))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 17))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UnknownSyscall_ptr_get_RCX(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 775), "seL4_Fault_UnknownSyscall_ptr_get_RCX");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 17))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_ptr_set_RCX(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 789), "seL4_Fault_UnknownSyscall_ptr_set_RCX");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 792), "seL4_Fault_UnknownSyscall_ptr_set_RCX");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 17))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 17))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UnknownSyscall_get_RDX(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 802), "seL4_Fault_UnknownSyscall_get_RDX");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 16))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_set_RDX(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 815), "seL4_Fault_UnknownSyscall_set_RDX");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 817), "seL4_Fault_UnknownSyscall_set_RDX");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 16))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 16))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UnknownSyscall_ptr_get_RDX(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 828), "seL4_Fault_UnknownSyscall_ptr_get_RDX");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 16))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_ptr_set_RDX(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 842), "seL4_Fault_UnknownSyscall_ptr_set_RDX");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 845), "seL4_Fault_UnknownSyscall_ptr_set_RDX");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 16))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 16))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UnknownSyscall_get_RSI(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 855), "seL4_Fault_UnknownSyscall_get_RSI");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 15))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_set_RSI(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 868), "seL4_Fault_UnknownSyscall_set_RSI");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 870), "seL4_Fault_UnknownSyscall_set_RSI");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 15))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 15))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UnknownSyscall_ptr_get_RSI(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 881), "seL4_Fault_UnknownSyscall_ptr_get_RSI");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 15))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_ptr_set_RSI(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 895), "seL4_Fault_UnknownSyscall_ptr_set_RSI");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 898), "seL4_Fault_UnknownSyscall_ptr_set_RSI");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 15))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 15))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UnknownSyscall_get_RDI(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 908), "seL4_Fault_UnknownSyscall_get_RDI");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 14))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_set_RDI(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 921), "seL4_Fault_UnknownSyscall_set_RDI");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 923), "seL4_Fault_UnknownSyscall_set_RDI");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 14))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 14))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UnknownSyscall_ptr_get_RDI(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 934), "seL4_Fault_UnknownSyscall_ptr_get_RDI");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 14))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_ptr_set_RDI(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 948), "seL4_Fault_UnknownSyscall_ptr_set_RDI");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 951), "seL4_Fault_UnknownSyscall_ptr_set_RDI");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 14))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 14))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UnknownSyscall_get_RBP(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 961), "seL4_Fault_UnknownSyscall_get_RBP");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 13))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_set_RBP(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 974), "seL4_Fault_UnknownSyscall_set_RBP");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 976), "seL4_Fault_UnknownSyscall_set_RBP");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 13))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 13))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UnknownSyscall_ptr_get_RBP(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 987), "seL4_Fault_UnknownSyscall_ptr_get_RBP");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 13))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_ptr_set_RBP(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1001), "seL4_Fault_UnknownSyscall_ptr_set_RBP");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1004), "seL4_Fault_UnknownSyscall_ptr_set_RBP");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 13))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 13))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UnknownSyscall_get_R8(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1014), "seL4_Fault_UnknownSyscall_get_R8");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 12))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_set_R8(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1027), "seL4_Fault_UnknownSyscall_set_R8");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1029), "seL4_Fault_UnknownSyscall_set_R8");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 12))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 12))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UnknownSyscall_ptr_get_R8(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1040), "seL4_Fault_UnknownSyscall_ptr_get_R8");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 12))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_ptr_set_R8(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1054), "seL4_Fault_UnknownSyscall_ptr_set_R8");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1057), "seL4_Fault_UnknownSyscall_ptr_set_R8");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 12))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 12))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UnknownSyscall_get_R9(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1067), "seL4_Fault_UnknownSyscall_get_R9");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 11))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_set_R9(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1080), "seL4_Fault_UnknownSyscall_set_R9");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1082), "seL4_Fault_UnknownSyscall_set_R9");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 11))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 11))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UnknownSyscall_ptr_get_R9(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1093), "seL4_Fault_UnknownSyscall_ptr_get_R9");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 11))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_ptr_set_R9(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1107), "seL4_Fault_UnknownSyscall_ptr_set_R9");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1110), "seL4_Fault_UnknownSyscall_ptr_set_R9");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 11))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 11))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UnknownSyscall_get_R10(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1120), "seL4_Fault_UnknownSyscall_get_R10");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 10))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_set_R10(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1133), "seL4_Fault_UnknownSyscall_set_R10");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1135), "seL4_Fault_UnknownSyscall_set_R10");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 10))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 10))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UnknownSyscall_ptr_get_R10(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1146), "seL4_Fault_UnknownSyscall_ptr_get_R10");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 10))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_ptr_set_R10(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1160), "seL4_Fault_UnknownSyscall_ptr_set_R10");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1163), "seL4_Fault_UnknownSyscall_ptr_set_R10");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 10))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 10))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UnknownSyscall_get_R11(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1173), "seL4_Fault_UnknownSyscall_get_R11");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 9))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_set_R11(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1186), "seL4_Fault_UnknownSyscall_set_R11");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1188), "seL4_Fault_UnknownSyscall_set_R11");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 9))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 9))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UnknownSyscall_ptr_get_R11(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1199), "seL4_Fault_UnknownSyscall_ptr_get_R11");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 9))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_ptr_set_R11(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1213), "seL4_Fault_UnknownSyscall_ptr_set_R11");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1216), "seL4_Fault_UnknownSyscall_ptr_set_R11");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 9))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 9))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UnknownSyscall_get_R12(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1226), "seL4_Fault_UnknownSyscall_get_R12");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 8))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_set_R12(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1239), "seL4_Fault_UnknownSyscall_set_R12");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1241), "seL4_Fault_UnknownSyscall_set_R12");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 8))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 8))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UnknownSyscall_ptr_get_R12(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1252), "seL4_Fault_UnknownSyscall_ptr_get_R12");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 8))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_ptr_set_R12(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1266), "seL4_Fault_UnknownSyscall_ptr_set_R12");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1269), "seL4_Fault_UnknownSyscall_ptr_set_R12");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 8))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 8))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UnknownSyscall_get_R13(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1279), "seL4_Fault_UnknownSyscall_get_R13");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 7))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_set_R13(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1292), "seL4_Fault_UnknownSyscall_set_R13");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1294), "seL4_Fault_UnknownSyscall_set_R13");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 7))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 7))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UnknownSyscall_ptr_get_R13(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1305), "seL4_Fault_UnknownSyscall_ptr_get_R13");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 7))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_ptr_set_R13(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1319), "seL4_Fault_UnknownSyscall_ptr_set_R13");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1322), "seL4_Fault_UnknownSyscall_ptr_set_R13");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 7))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 7))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UnknownSyscall_get_R14(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1332), "seL4_Fault_UnknownSyscall_get_R14");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 6))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_set_R14(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1345), "seL4_Fault_UnknownSyscall_set_R14");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1347), "seL4_Fault_UnknownSyscall_set_R14");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 6))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 6))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UnknownSyscall_ptr_get_R14(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1358), "seL4_Fault_UnknownSyscall_ptr_get_R14");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 6))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_ptr_set_R14(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1372), "seL4_Fault_UnknownSyscall_ptr_set_R14");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1375), "seL4_Fault_UnknownSyscall_ptr_set_R14");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 6))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 6))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UnknownSyscall_get_R15(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1385), "seL4_Fault_UnknownSyscall_get_R15");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 5))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_set_R15(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1398), "seL4_Fault_UnknownSyscall_set_R15");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1400), "seL4_Fault_UnknownSyscall_set_R15");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 5))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 5))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UnknownSyscall_ptr_get_R15(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1411), "seL4_Fault_UnknownSyscall_ptr_get_R15");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 5))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_ptr_set_R15(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1425), "seL4_Fault_UnknownSyscall_ptr_set_R15");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1428), "seL4_Fault_UnknownSyscall_ptr_set_R15");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 5))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 5))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UnknownSyscall_get_FaultIP(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1438), "seL4_Fault_UnknownSyscall_get_FaultIP");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 4))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_set_FaultIP(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1451), "seL4_Fault_UnknownSyscall_set_FaultIP");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1453), "seL4_Fault_UnknownSyscall_set_FaultIP");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 4))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 4))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UnknownSyscall_ptr_get_FaultIP(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1464), "seL4_Fault_UnknownSyscall_ptr_get_FaultIP");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 4))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_ptr_set_FaultIP(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1478), "seL4_Fault_UnknownSyscall_ptr_set_FaultIP");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1481), "seL4_Fault_UnknownSyscall_ptr_set_FaultIP");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 4))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 4))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UnknownSyscall_get_RSP(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1491), "seL4_Fault_UnknownSyscall_get_RSP");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 3))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_set_RSP(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1504), "seL4_Fault_UnknownSyscall_set_RSP");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1506), "seL4_Fault_UnknownSyscall_set_RSP");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 3))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 3))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UnknownSyscall_ptr_get_RSP(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1517), "seL4_Fault_UnknownSyscall_ptr_get_RSP");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 3))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_ptr_set_RSP(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1531), "seL4_Fault_UnknownSyscall_ptr_set_RSP");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1534), "seL4_Fault_UnknownSyscall_ptr_set_RSP");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 3))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 3))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UnknownSyscall_get_FLAGS(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1544), "seL4_Fault_UnknownSyscall_get_FLAGS");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 2))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_set_FLAGS(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1557), "seL4_Fault_UnknownSyscall_set_FLAGS");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1559), "seL4_Fault_UnknownSyscall_set_FLAGS");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 2))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 2))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UnknownSyscall_ptr_get_FLAGS(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1570), "seL4_Fault_UnknownSyscall_ptr_get_FLAGS");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 2))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_ptr_set_FLAGS(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1584), "seL4_Fault_UnknownSyscall_ptr_set_FLAGS");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1587), "seL4_Fault_UnknownSyscall_ptr_set_FLAGS");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 2))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 2))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UnknownSyscall_get_Syscall(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1597), "seL4_Fault_UnknownSyscall_get_Syscall");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 1))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_set_Syscall(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1610), "seL4_Fault_UnknownSyscall_set_Syscall");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1612), "seL4_Fault_UnknownSyscall_set_Syscall");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 1))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 1))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UnknownSyscall_ptr_get_Syscall(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1623), "seL4_Fault_UnknownSyscall_ptr_get_Syscall");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 1))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UnknownSyscall_ptr_set_Syscall(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UnknownSyscall", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1637), "seL4_Fault_UnknownSyscall_ptr_set_Syscall");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1640), "seL4_Fault_UnknownSyscall_ptr_set_Syscall");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 1))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 1))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UserException_new(arg_FaultIP: seL4_Uint64, arg_Stack: seL4_Uint64, arg_FLAGS: seL4_Uint64, arg_Number: seL4_Uint64, arg_Code: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var FaultIP = arg_FaultIP;
    var Stack = arg_Stack;
    var FLAGS = arg_FLAGS;
    var Number = arg_Number;
    var Code = arg_Code;
    var seL4_Fault_1: seL4_Fault_t = undefined;
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_UserException)))) & ~@as(c_ulonglong, 15)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_UserException)))) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("((seL4_Uint64)seL4_Fault_UserException & ~0xfull) == ((0 && ((seL4_Uint64)seL4_Fault_UserException & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1651), "seL4_Fault_UserException_new");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] = @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_UserException)))) & @as(c_ulonglong, 15)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 0))));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 1))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (Code << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 2))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (Number << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 3))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (FLAGS << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 4))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (Stack << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 5))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (FaultIP << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 6))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 7))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 8))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 9))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 10))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 11))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 12))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 13))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 14))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 15))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 16))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 17))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 18))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 19))] = 0;
    return seL4_Fault_1;
}
pub fn seL4_Fault_UserException_ptr_new(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_FaultIP: seL4_Uint64, arg_Stack: seL4_Uint64, arg_FLAGS: seL4_Uint64, arg_Number: seL4_Uint64, arg_Code: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var FaultIP = arg_FaultIP;
    var Stack = arg_Stack;
    var FLAGS = arg_FLAGS;
    var Number = arg_Number;
    var Code = arg_Code;
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_UserException)))) & ~@as(c_ulonglong, 15)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_UserException)))) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("((seL4_Uint64)seL4_Fault_UserException & ~0xfull) == ((0 && ((seL4_Uint64)seL4_Fault_UserException & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1686), "seL4_Fault_UserException_ptr_new");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] = @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_UserException)))) & @as(c_ulonglong, 15)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 0))));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 1))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (Code << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 2))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (Number << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 3))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (FLAGS << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 4))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (Stack << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 5))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (FaultIP << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 6))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 7))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 8))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 9))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 10))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 11))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 12))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 13))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 14))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 15))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 16))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 17))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 18))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 19))] = 0;
}
pub fn seL4_Fault_UserException_get_FaultIP(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UserException)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UserException", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1720), "seL4_Fault_UserException_get_FaultIP");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 5))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UserException_set_FaultIP(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UserException)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UserException", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1733), "seL4_Fault_UserException_set_FaultIP");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1735), "seL4_Fault_UserException_set_FaultIP");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 5))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 5))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UserException_ptr_get_FaultIP(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UserException)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UserException", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1746), "seL4_Fault_UserException_ptr_get_FaultIP");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 5))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UserException_ptr_set_FaultIP(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UserException)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UserException", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1760), "seL4_Fault_UserException_ptr_set_FaultIP");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1763), "seL4_Fault_UserException_ptr_set_FaultIP");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 5))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 5))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UserException_get_Stack(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UserException)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UserException", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1773), "seL4_Fault_UserException_get_Stack");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 4))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UserException_set_Stack(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UserException)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UserException", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1786), "seL4_Fault_UserException_set_Stack");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1788), "seL4_Fault_UserException_set_Stack");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 4))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 4))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UserException_ptr_get_Stack(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UserException)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UserException", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1799), "seL4_Fault_UserException_ptr_get_Stack");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 4))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UserException_ptr_set_Stack(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UserException)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UserException", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1813), "seL4_Fault_UserException_ptr_set_Stack");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1816), "seL4_Fault_UserException_ptr_set_Stack");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 4))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 4))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UserException_get_FLAGS(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UserException)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UserException", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1826), "seL4_Fault_UserException_get_FLAGS");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 3))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UserException_set_FLAGS(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UserException)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UserException", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1839), "seL4_Fault_UserException_set_FLAGS");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1841), "seL4_Fault_UserException_set_FLAGS");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 3))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 3))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UserException_ptr_get_FLAGS(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UserException)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UserException", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1852), "seL4_Fault_UserException_ptr_get_FLAGS");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 3))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UserException_ptr_set_FLAGS(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UserException)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UserException", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1866), "seL4_Fault_UserException_ptr_set_FLAGS");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1869), "seL4_Fault_UserException_ptr_set_FLAGS");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 3))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 3))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UserException_get_Number(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UserException)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UserException", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1879), "seL4_Fault_UserException_get_Number");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 2))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UserException_set_Number(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UserException)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UserException", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1892), "seL4_Fault_UserException_set_Number");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1894), "seL4_Fault_UserException_set_Number");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 2))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 2))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UserException_ptr_get_Number(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UserException)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UserException", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1905), "seL4_Fault_UserException_ptr_get_Number");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 2))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UserException_ptr_set_Number(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UserException)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UserException", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1919), "seL4_Fault_UserException_ptr_set_Number");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1922), "seL4_Fault_UserException_ptr_set_Number");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 2))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 2))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_UserException_get_Code(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UserException)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UserException", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1932), "seL4_Fault_UserException_get_Code");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 1))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UserException_set_Code(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UserException)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_UserException", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1945), "seL4_Fault_UserException_set_Code");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1947), "seL4_Fault_UserException_set_Code");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 1))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 1))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_UserException_ptr_get_Code(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UserException)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UserException", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1958), "seL4_Fault_UserException_ptr_get_Code");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 1))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_UserException_ptr_set_Code(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UserException)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_UserException", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1972), "seL4_Fault_UserException_ptr_set_Code");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1975), "seL4_Fault_UserException_ptr_set_Code");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 1))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 1))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_VMFault_new(arg_IP: seL4_Uint64, arg_Addr: seL4_Uint64, arg_PrefetchFault: seL4_Uint64, arg_FSR: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var IP = arg_IP;
    var Addr = arg_Addr;
    var PrefetchFault = arg_PrefetchFault;
    var FSR = arg_FSR;
    var seL4_Fault_1: seL4_Fault_t = undefined;
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_VMFault)))) & ~@as(c_ulonglong, 15)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_VMFault)))) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("((seL4_Uint64)seL4_Fault_VMFault & ~0xfull) == ((0 && ((seL4_Uint64)seL4_Fault_VMFault & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 1986), "seL4_Fault_VMFault_new");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] = @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_VMFault)))) & @as(c_ulonglong, 15)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 0))));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 1))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (FSR << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 2))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (PrefetchFault << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 3))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (Addr << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 4))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (IP << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 5))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 6))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 7))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 8))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 9))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 10))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 11))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 12))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 13))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 14))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 15))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 16))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 17))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 18))] = 0;
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 19))] = 0;
    return seL4_Fault_1;
}
pub fn seL4_Fault_VMFault_ptr_new(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_IP: seL4_Uint64, arg_Addr: seL4_Uint64, arg_PrefetchFault: seL4_Uint64, arg_FSR: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var IP = arg_IP;
    var Addr = arg_Addr;
    var PrefetchFault = arg_PrefetchFault;
    var FSR = arg_FSR;
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_VMFault)))) & ~@as(c_ulonglong, 15)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_VMFault)))) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("((seL4_Uint64)seL4_Fault_VMFault & ~0xfull) == ((0 && ((seL4_Uint64)seL4_Fault_VMFault & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2020), "seL4_Fault_VMFault_ptr_new");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] = @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, @bitCast(seL4_Uint64, @as(c_long, seL4_Fault_VMFault)))) & @as(c_ulonglong, 15)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 0))));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 1))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (FSR << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 2))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (PrefetchFault << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 3))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (Addr << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 4))] = @bitCast(c_ulong, @as(c_long, @as(c_int, 0))) | (IP << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 5))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 6))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 7))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 8))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 9))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 10))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 11))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 12))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 13))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 14))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 15))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 16))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 17))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 18))] = 0;
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 19))] = 0;
}
pub fn seL4_Fault_VMFault_get_IP(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_VMFault)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_VMFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2053), "seL4_Fault_VMFault_get_IP");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 4))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_VMFault_set_IP(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_VMFault)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_VMFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2066), "seL4_Fault_VMFault_set_IP");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2068), "seL4_Fault_VMFault_set_IP");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 4))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 4))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_VMFault_ptr_get_IP(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_VMFault)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_VMFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2079), "seL4_Fault_VMFault_ptr_get_IP");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 4))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_VMFault_ptr_set_IP(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_VMFault)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_VMFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2093), "seL4_Fault_VMFault_ptr_set_IP");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2096), "seL4_Fault_VMFault_ptr_set_IP");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 4))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 4))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_VMFault_get_Addr(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_VMFault)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_VMFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2106), "seL4_Fault_VMFault_get_Addr");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 3))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_VMFault_set_Addr(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_VMFault)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_VMFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2119), "seL4_Fault_VMFault_set_Addr");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2121), "seL4_Fault_VMFault_set_Addr");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 3))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 3))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_VMFault_ptr_get_Addr(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_VMFault)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_VMFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2132), "seL4_Fault_VMFault_ptr_get_Addr");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 3))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_VMFault_ptr_set_Addr(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_VMFault)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_VMFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2146), "seL4_Fault_VMFault_ptr_set_Addr");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2149), "seL4_Fault_VMFault_ptr_set_Addr");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 3))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 3))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_VMFault_get_PrefetchFault(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_VMFault)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_VMFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2159), "seL4_Fault_VMFault_get_PrefetchFault");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 2))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_VMFault_set_PrefetchFault(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_VMFault)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_VMFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2172), "seL4_Fault_VMFault_set_PrefetchFault");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2174), "seL4_Fault_VMFault_set_PrefetchFault");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 2))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 2))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_VMFault_ptr_get_PrefetchFault(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_VMFault)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_VMFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2185), "seL4_Fault_VMFault_ptr_get_PrefetchFault");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 2))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_VMFault_ptr_set_PrefetchFault(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_VMFault)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_VMFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2199), "seL4_Fault_VMFault_ptr_set_PrefetchFault");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2202), "seL4_Fault_VMFault_ptr_set_PrefetchFault");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 2))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 2))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub fn seL4_Fault_VMFault_get_FSR(arg_seL4_Fault_1: seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_VMFault)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_VMFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2212), "seL4_Fault_VMFault_get_FSR");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 1))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_VMFault_set_FSR(arg_seL4_Fault_1: seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) seL4_Fault_t {
    var seL4_Fault_1 = arg_seL4_Fault_1;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_VMFault)))) {
            __assert_fail("((seL4_Fault.words[0] >> 0) & 0xf) == seL4_Fault_VMFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2225), "seL4_Fault_VMFault_set_FSR");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2227), "seL4_Fault_VMFault_set_FSR");
        }
    }
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 1))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_1.words[@intCast(c_uint, @as(c_int, 1))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
    return seL4_Fault_1;
}
pub fn seL4_Fault_VMFault_ptr_get_FSR(arg_seL4_Fault_ptr: [*c]seL4_Fault_t) callconv(.C) seL4_Uint64 {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var ret: seL4_Uint64 = undefined;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_VMFault)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_VMFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2238), "seL4_Fault_VMFault_ptr_get_FSR");
        }
    }
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 1))])) & @as(c_ulonglong, 18446744073709551615)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_Fault_VMFault_ptr_set_FSR(arg_seL4_Fault_ptr: [*c]seL4_Fault_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_Fault_ptr = arg_seL4_Fault_ptr;
    var v64 = arg_v64;
    {
        if (!(((seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] >> @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 15)))) == @bitCast(c_ulong, @as(c_long, seL4_Fault_VMFault)))) {
            __assert_fail("((seL4_Fault_ptr->words[0] >> 0) & 0xf) == seL4_Fault_VMFault", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2252), "seL4_Fault_VMFault_ptr_set_FSR");
        }
    }
    {
        if (!((((~@as(c_ulonglong, 18446744073709551615) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffffull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/types_gen.h", @as(c_int, 2255), "seL4_Fault_VMFault_ptr_set_FSR");
        }
    }
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 1))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551615)));
    seL4_Fault_ptr.*.words[@intCast(c_uint, @as(c_int, 1))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 18446744073709551615)));
}
pub const seL4_Syscall_ID = extern enum(c_long) {
    seL4_SysCall = -1,
    seL4_SysReplyRecv = -2,
    seL4_SysSend = -3,
    seL4_SysNBSend = -4,
    seL4_SysRecv = -5,
    seL4_SysReply = -6,
    seL4_SysYield = -7,
    seL4_SysNBRecv = -8,
    seL4_SysDebugPutChar = -9,
    seL4_SysDebugDumpScheduler = -10,
    seL4_SysDebugHalt = -11,
    seL4_SysDebugCapIdentify = -12,
    seL4_SysDebugSnapshot = -13,
    seL4_SysDebugNameThread = -14,
    seL4_SysSetTLSBase = -29,
    _enum_pad_seL4_Syscall_ID = 9223372036854775807,
    _,
};
pub const seL4_SysCall = @enumToInt(seL4_Syscall_ID.seL4_SysCall);
pub const seL4_SysReplyRecv = @enumToInt(seL4_Syscall_ID.seL4_SysReplyRecv);
pub const seL4_SysSend = @enumToInt(seL4_Syscall_ID.seL4_SysSend);
pub const seL4_SysNBSend = @enumToInt(seL4_Syscall_ID.seL4_SysNBSend);
pub const seL4_SysRecv = @enumToInt(seL4_Syscall_ID.seL4_SysRecv);
pub const seL4_SysReply = @enumToInt(seL4_Syscall_ID.seL4_SysReply);
pub const seL4_SysYield = @enumToInt(seL4_Syscall_ID.seL4_SysYield);
pub const seL4_SysNBRecv = @enumToInt(seL4_Syscall_ID.seL4_SysNBRecv);
pub const seL4_SysDebugPutChar = @enumToInt(seL4_Syscall_ID.seL4_SysDebugPutChar);
pub const seL4_SysDebugDumpScheduler = @enumToInt(seL4_Syscall_ID.seL4_SysDebugDumpScheduler);
pub const seL4_SysDebugHalt = @enumToInt(seL4_Syscall_ID.seL4_SysDebugHalt);
pub const seL4_SysDebugCapIdentify = @enumToInt(seL4_Syscall_ID.seL4_SysDebugCapIdentify);
pub const seL4_SysDebugSnapshot = @enumToInt(seL4_Syscall_ID.seL4_SysDebugSnapshot);
pub const seL4_SysDebugNameThread = @enumToInt(seL4_Syscall_ID.seL4_SysDebugNameThread);
pub const seL4_SysSetTLSBase = @enumToInt(seL4_Syscall_ID.seL4_SysSetTLSBase);
pub const _enum_pad_seL4_Syscall_ID = @enumToInt(seL4_Syscall_ID._enum_pad_seL4_Syscall_ID);
pub const enum_api_object = extern enum(c_int) {
    seL4_UntypedObject,
    seL4_TCBObject,
    seL4_EndpointObject,
    seL4_NotificationObject,
    seL4_CapTableObject,
    seL4_NonArchObjectTypeCount,
    _,
};
pub const seL4_UntypedObject = @enumToInt(enum_api_object.seL4_UntypedObject);
pub const seL4_TCBObject = @enumToInt(enum_api_object.seL4_TCBObject);
pub const seL4_EndpointObject = @enumToInt(enum_api_object.seL4_EndpointObject);
pub const seL4_NotificationObject = @enumToInt(enum_api_object.seL4_NotificationObject);
pub const seL4_CapTableObject = @enumToInt(enum_api_object.seL4_CapTableObject);
pub const seL4_NonArchObjectTypeCount = @enumToInt(enum_api_object.seL4_NonArchObjectTypeCount);
pub const seL4_ObjectType = enum_api_object;
pub const seL4_AsyncEndpointObject: seL4_ObjectType = @import("std").meta.cast(seL4_ObjectType, seL4_NotificationObject);
pub const api_object_t = seL4_Word;
pub const enum__mode_object = extern enum(c_int) {
    seL4_X86_PDPTObject = 5,
    seL4_X64_PML4Object = 6,
    seL4_X64_HugePageObject = 7,
    seL4_ModeObjectTypeCount = 8,
    _,
};
pub const seL4_X86_PDPTObject = @enumToInt(enum__mode_object.seL4_X86_PDPTObject);
pub const seL4_X64_PML4Object = @enumToInt(enum__mode_object.seL4_X64_PML4Object);
pub const seL4_X64_HugePageObject = @enumToInt(enum__mode_object.seL4_X64_HugePageObject);
pub const seL4_ModeObjectTypeCount = @enumToInt(enum__mode_object.seL4_ModeObjectTypeCount);
pub const seL4_seL4ArchObjectType = enum__mode_object;
pub const enum__object = extern enum(c_int) {
    seL4_X86_4K = 8,
    seL4_X86_LargePageObject = 9,
    seL4_X86_PageTableObject = 10,
    seL4_X86_PageDirectoryObject = 11,
    seL4_ObjectTypeCount = 12,
    _,
};
pub const seL4_X86_4K = @enumToInt(enum__object.seL4_X86_4K);
pub const seL4_X86_LargePageObject = @enumToInt(enum__object.seL4_X86_LargePageObject);
pub const seL4_X86_PageTableObject = @enumToInt(enum__object.seL4_X86_PageTableObject);
pub const seL4_X86_PageDirectoryObject = @enumToInt(enum__object.seL4_X86_PageDirectoryObject);
pub const seL4_ObjectTypeCount = @enumToInt(enum__object.seL4_ObjectTypeCount);
pub const seL4_ArchObjectType = enum__object;
pub const object_t = seL4_Word;
pub const seL4_Error = extern enum(c_int) {
    seL4_NoError = 0,
    seL4_InvalidArgument = 1,
    seL4_InvalidCapability = 2,
    seL4_IllegalOperation = 3,
    seL4_RangeError = 4,
    seL4_AlignmentError = 5,
    seL4_FailedLookup = 6,
    seL4_TruncatedMessage = 7,
    seL4_DeleteFirst = 8,
    seL4_RevokeFirst = 9,
    seL4_NotEnoughMemory = 10,
    seL4_NumErrors = 11,
    _,
};
pub const seL4_NoError = @enumToInt(seL4_Error.seL4_NoError);
pub const seL4_InvalidArgument = @enumToInt(seL4_Error.seL4_InvalidArgument);
pub const seL4_InvalidCapability = @enumToInt(seL4_Error.seL4_InvalidCapability);
pub const seL4_IllegalOperation = @enumToInt(seL4_Error.seL4_IllegalOperation);
pub const seL4_RangeError = @enumToInt(seL4_Error.seL4_RangeError);
pub const seL4_AlignmentError = @enumToInt(seL4_Error.seL4_AlignmentError);
pub const seL4_FailedLookup = @enumToInt(seL4_Error.seL4_FailedLookup);
pub const seL4_TruncatedMessage = @enumToInt(seL4_Error.seL4_TruncatedMessage);
pub const seL4_DeleteFirst = @enumToInt(seL4_Error.seL4_DeleteFirst);
pub const seL4_RevokeFirst = @enumToInt(seL4_Error.seL4_RevokeFirst);
pub const seL4_NotEnoughMemory = @enumToInt(seL4_Error.seL4_NotEnoughMemory);
pub const seL4_NumErrors = @enumToInt(seL4_Error.seL4_NumErrors);
pub const enum_priorityConstants = extern enum(c_int) {
    seL4_InvalidPrio = -1,
    seL4_MinPrio = 0,
    seL4_MaxPrio = 255,
    _,
};
pub const seL4_InvalidPrio = @enumToInt(enum_priorityConstants.seL4_InvalidPrio);
pub const seL4_MinPrio = @enumToInt(enum_priorityConstants.seL4_MinPrio);
pub const seL4_MaxPrio = @enumToInt(enum_priorityConstants.seL4_MaxPrio);
pub const enum_seL4_MsgLimits = extern enum(c_int) {
    seL4_MsgLengthBits = 7,
    seL4_MsgExtraCapBits = 2,
    _,
};
pub const seL4_MsgLengthBits = @enumToInt(enum_seL4_MsgLimits.seL4_MsgLengthBits);
pub const seL4_MsgExtraCapBits = @enumToInt(enum_seL4_MsgLimits.seL4_MsgExtraCapBits);
const enum_unnamed_1 = extern enum(c_int) {
    seL4_MsgMaxLength = 120,
    _,
};
pub const seL4_MsgMaxLength = @enumToInt(enum_unnamed_1.seL4_MsgMaxLength);
pub const seL4_LookupFailureType = extern enum(c_ulong) {
    seL4_NoFailure = 0,
    seL4_InvalidRoot = 1,
    seL4_MissingCapability = 2,
    seL4_DepthMismatch = 3,
    seL4_GuardMismatch = 4,
    _enum_pad_seL4_LookupFailureType = 9223372036854775807,
    _,
};
pub const seL4_NoFailure = @enumToInt(seL4_LookupFailureType.seL4_NoFailure);
pub const seL4_InvalidRoot = @enumToInt(seL4_LookupFailureType.seL4_InvalidRoot);
pub const seL4_MissingCapability = @enumToInt(seL4_LookupFailureType.seL4_MissingCapability);
pub const seL4_DepthMismatch = @enumToInt(seL4_LookupFailureType.seL4_DepthMismatch);
pub const seL4_GuardMismatch = @enumToInt(seL4_LookupFailureType.seL4_GuardMismatch);
pub const _enum_pad_seL4_LookupFailureType = @enumToInt(seL4_LookupFailureType._enum_pad_seL4_LookupFailureType);
pub const struct_seL4_CNode_CapData = extern struct {
    words: [1]seL4_Uint64,
};
pub const seL4_CNode_CapData_t = struct_seL4_CNode_CapData;
pub fn seL4_CNode_CapData_new(arg_guard: seL4_Uint64, arg_guardSize: seL4_Uint64) callconv(.C) seL4_CNode_CapData_t {
    var guard = arg_guard;
    var guardSize = arg_guardSize;
    var seL4_CNode_CapData_1: seL4_CNode_CapData_t = undefined;
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, guard)) & ~@as(c_ulonglong, 288230376151711743)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, guard)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(guard & ~0x3ffffffffffffffull) == ((0 && (guard & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 17), "seL4_CNode_CapData_new");
        }
    }
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, guardSize)) & ~@as(c_ulonglong, 63)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, guardSize)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(guardSize & ~0x3full) == ((0 && (guardSize & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 18), "seL4_CNode_CapData_new");
        }
    }
    seL4_CNode_CapData_1.words[@intCast(c_uint, @as(c_int, 0))] = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, guard)) & @as(c_ulonglong, 288230376151711743)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 6))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, guardSize)) & @as(c_ulonglong, 63)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 0))));
    return seL4_CNode_CapData_1;
}
pub fn seL4_CNode_CapData_ptr_new(arg_seL4_CNode_CapData_ptr: [*c]seL4_CNode_CapData_t, arg_guard: seL4_Uint64, arg_guardSize: seL4_Uint64) callconv(.C) void {
    var seL4_CNode_CapData_ptr = arg_seL4_CNode_CapData_ptr;
    var guard = arg_guard;
    var guardSize = arg_guardSize;
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, guard)) & ~@as(c_ulonglong, 288230376151711743)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, guard)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(guard & ~0x3ffffffffffffffull) == ((0 && (guard & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 30), "seL4_CNode_CapData_ptr_new");
        }
    }
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, guardSize)) & ~@as(c_ulonglong, 63)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, guardSize)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(guardSize & ~0x3full) == ((0 && (guardSize & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 31), "seL4_CNode_CapData_ptr_new");
        }
    }
    seL4_CNode_CapData_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, guard)) & @as(c_ulonglong, 288230376151711743)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 6))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, guardSize)) & @as(c_ulonglong, 63)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 0))));
}
pub fn seL4_CNode_CapData_get_guard(arg_seL4_CNode_CapData_1: seL4_CNode_CapData_t) callconv(.C) seL4_Uint64 {
    var seL4_CNode_CapData_1 = arg_seL4_CNode_CapData_1;
    var ret: seL4_Uint64 = undefined;
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_CNode_CapData_1.words[@intCast(c_uint, @as(c_int, 0))])) & @as(c_ulonglong, 18446744073709551552)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 6)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_CNode_CapData_set_guard(arg_seL4_CNode_CapData_1: seL4_CNode_CapData_t, arg_v64: seL4_Uint64) callconv(.C) seL4_CNode_CapData_t {
    var seL4_CNode_CapData_1 = arg_seL4_CNode_CapData_1;
    var v64 = arg_v64;
    {
        if (!((((~@as(c_ulonglong, 18446744073709551552) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 6)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffc0ull >> 6 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 52), "seL4_CNode_CapData_set_guard");
        }
    }
    seL4_CNode_CapData_1.words[@intCast(c_uint, @as(c_int, 0))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551552)));
    seL4_CNode_CapData_1.words[@intCast(c_uint, @as(c_int, 0))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 6))) & @as(c_ulonglong, 18446744073709551552)));
    return seL4_CNode_CapData_1;
}
pub fn seL4_CNode_CapData_ptr_get_guard(arg_seL4_CNode_CapData_ptr: [*c]seL4_CNode_CapData_t) callconv(.C) seL4_Uint64 {
    var seL4_CNode_CapData_ptr = arg_seL4_CNode_CapData_ptr;
    var ret: seL4_Uint64 = undefined;
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_CNode_CapData_ptr.*.words[@intCast(c_uint, @as(c_int, 0))])) & @as(c_ulonglong, 18446744073709551552)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 6)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_CNode_CapData_ptr_set_guard(arg_seL4_CNode_CapData_ptr: [*c]seL4_CNode_CapData_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_CNode_CapData_ptr = arg_seL4_CNode_CapData_ptr;
    var v64 = arg_v64;
    {
        if (!((((~@as(c_ulonglong, 18446744073709551552) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 6)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xffffffffffffffc0ull >> 6) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 72), "seL4_CNode_CapData_ptr_set_guard");
        }
    }
    seL4_CNode_CapData_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709551552)));
    seL4_CNode_CapData_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] |= (v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 6)) & @as(c_ulong, 18446744073709551552);
}
pub fn seL4_CNode_CapData_get_guardSize(arg_seL4_CNode_CapData_1: seL4_CNode_CapData_t) callconv(.C) seL4_Uint64 {
    var seL4_CNode_CapData_1 = arg_seL4_CNode_CapData_1;
    var ret: seL4_Uint64 = undefined;
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_CNode_CapData_1.words[@intCast(c_uint, @as(c_int, 0))])) & @as(c_ulonglong, 63)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_CNode_CapData_set_guardSize(arg_seL4_CNode_CapData_1: seL4_CNode_CapData_t, arg_v64: seL4_Uint64) callconv(.C) seL4_CNode_CapData_t {
    var seL4_CNode_CapData_1 = arg_seL4_CNode_CapData_1;
    var v64 = arg_v64;
    {
        if (!((((~@as(c_ulonglong, 63) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0x3full >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 91), "seL4_CNode_CapData_set_guardSize");
        }
    }
    seL4_CNode_CapData_1.words[@intCast(c_uint, @as(c_int, 0))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 63)));
    seL4_CNode_CapData_1.words[@intCast(c_uint, @as(c_int, 0))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 63)));
    return seL4_CNode_CapData_1;
}
pub fn seL4_CNode_CapData_ptr_get_guardSize(arg_seL4_CNode_CapData_ptr: [*c]seL4_CNode_CapData_t) callconv(.C) seL4_Uint64 {
    var seL4_CNode_CapData_ptr = arg_seL4_CNode_CapData_ptr;
    var ret: seL4_Uint64 = undefined;
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_CNode_CapData_ptr.*.words[@intCast(c_uint, @as(c_int, 0))])) & @as(c_ulonglong, 63)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_CNode_CapData_ptr_set_guardSize(arg_seL4_CNode_CapData_ptr: [*c]seL4_CNode_CapData_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_CNode_CapData_ptr = arg_seL4_CNode_CapData_ptr;
    var v64 = arg_v64;
    {
        if (!((((~@as(c_ulonglong, 63) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0x3full >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 111), "seL4_CNode_CapData_ptr_set_guardSize");
        }
    }
    seL4_CNode_CapData_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 63)));
    seL4_CNode_CapData_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] |= (v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 63)));
}
pub const struct_seL4_CapRights = extern struct {
    words: [1]seL4_Uint64,
};
pub const seL4_CapRights_t = struct_seL4_CapRights;
pub fn seL4_CapRights_new(arg_capAllowGrantReply: seL4_Uint64, arg_capAllowGrant: seL4_Uint64, arg_capAllowRead: seL4_Uint64, arg_capAllowWrite: seL4_Uint64) callconv(.C) seL4_CapRights_t {
    var capAllowGrantReply = arg_capAllowGrantReply;
    var capAllowGrant = arg_capAllowGrant;
    var capAllowRead = arg_capAllowRead;
    var capAllowWrite = arg_capAllowWrite;
    var seL4_CapRights_1: seL4_CapRights_t = undefined;
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowGrantReply)) & ~@as(c_ulonglong, 1)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowGrantReply)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(capAllowGrantReply & ~0x1ull) == ((0 && (capAllowGrantReply & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 126), "seL4_CapRights_new");
        }
    }
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowGrant)) & ~@as(c_ulonglong, 1)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowGrant)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(capAllowGrant & ~0x1ull) == ((0 && (capAllowGrant & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 127), "seL4_CapRights_new");
        }
    }
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowRead)) & ~@as(c_ulonglong, 1)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowRead)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(capAllowRead & ~0x1ull) == ((0 && (capAllowRead & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 128), "seL4_CapRights_new");
        }
    }
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowWrite)) & ~@as(c_ulonglong, 1)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowWrite)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(capAllowWrite & ~0x1ull) == ((0 && (capAllowWrite & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 129), "seL4_CapRights_new");
        }
    }
    seL4_CapRights_1.words[@intCast(c_uint, @as(c_int, 0))] = @bitCast(seL4_Uint64, @truncate(c_ulong, (((@bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowGrantReply)) & @as(c_ulonglong, 1)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 3))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowGrant)) & @as(c_ulonglong, 1)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 2))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowRead)) & @as(c_ulonglong, 1)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 1))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowWrite)) & @as(c_ulonglong, 1)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 0))));
    return seL4_CapRights_1;
}
pub fn seL4_CapRights_ptr_new(arg_seL4_CapRights_ptr: [*c]seL4_CapRights_t, arg_capAllowGrantReply: seL4_Uint64, arg_capAllowGrant: seL4_Uint64, arg_capAllowRead: seL4_Uint64, arg_capAllowWrite: seL4_Uint64) callconv(.C) void {
    var seL4_CapRights_ptr = arg_seL4_CapRights_ptr;
    var capAllowGrantReply = arg_capAllowGrantReply;
    var capAllowGrant = arg_capAllowGrant;
    var capAllowRead = arg_capAllowRead;
    var capAllowWrite = arg_capAllowWrite;
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowGrantReply)) & ~@as(c_ulonglong, 1)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowGrantReply)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(capAllowGrantReply & ~0x1ull) == ((0 && (capAllowGrantReply & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 143), "seL4_CapRights_ptr_new");
        }
    }
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowGrant)) & ~@as(c_ulonglong, 1)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowGrant)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(capAllowGrant & ~0x1ull) == ((0 && (capAllowGrant & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 144), "seL4_CapRights_ptr_new");
        }
    }
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowRead)) & ~@as(c_ulonglong, 1)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowRead)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(capAllowRead & ~0x1ull) == ((0 && (capAllowRead & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 145), "seL4_CapRights_ptr_new");
        }
    }
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowWrite)) & ~@as(c_ulonglong, 1)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowWrite)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(capAllowWrite & ~0x1ull) == ((0 && (capAllowWrite & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 146), "seL4_CapRights_ptr_new");
        }
    }
    seL4_CapRights_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] = @bitCast(seL4_Uint64, @truncate(c_ulong, (((@bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowGrantReply)) & @as(c_ulonglong, 1)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 3))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowGrant)) & @as(c_ulonglong, 1)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 2))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowRead)) & @as(c_ulonglong, 1)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 1))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, capAllowWrite)) & @as(c_ulonglong, 1)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 0))));
}
pub fn seL4_CapRights_get_capAllowGrantReply(arg_seL4_CapRights_1: seL4_CapRights_t) callconv(.C) seL4_Uint64 {
    var seL4_CapRights_1 = arg_seL4_CapRights_1;
    var ret: seL4_Uint64 = undefined;
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_CapRights_1.words[@intCast(c_uint, @as(c_int, 0))])) & @as(c_ulonglong, 8)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 3)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_CapRights_set_capAllowGrantReply(arg_seL4_CapRights_1: seL4_CapRights_t, arg_v64: seL4_Uint64) callconv(.C) seL4_CapRights_t {
    var seL4_CapRights_1 = arg_seL4_CapRights_1;
    var v64 = arg_v64;
    {
        if (!((((~@as(c_ulonglong, 8) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 3)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0x8ull >> 3 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 169), "seL4_CapRights_set_capAllowGrantReply");
        }
    }
    seL4_CapRights_1.words[@intCast(c_uint, @as(c_int, 0))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 8)));
    seL4_CapRights_1.words[@intCast(c_uint, @as(c_int, 0))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 3))) & @as(c_ulonglong, 8)));
    return seL4_CapRights_1;
}
pub fn seL4_CapRights_ptr_get_capAllowGrantReply(arg_seL4_CapRights_ptr: [*c]seL4_CapRights_t) callconv(.C) seL4_Uint64 {
    var seL4_CapRights_ptr = arg_seL4_CapRights_ptr;
    var ret: seL4_Uint64 = undefined;
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_CapRights_ptr.*.words[@intCast(c_uint, @as(c_int, 0))])) & @as(c_ulonglong, 8)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 3)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_CapRights_ptr_set_capAllowGrantReply(arg_seL4_CapRights_ptr: [*c]seL4_CapRights_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_CapRights_ptr = arg_seL4_CapRights_ptr;
    var v64 = arg_v64;
    {
        if (!((((~@as(c_ulonglong, 8) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 3)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0x8ull >> 3) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 189), "seL4_CapRights_ptr_set_capAllowGrantReply");
        }
    }
    seL4_CapRights_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 8)));
    seL4_CapRights_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] |= (v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 3)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 8)));
}
pub fn seL4_CapRights_get_capAllowGrant(arg_seL4_CapRights_1: seL4_CapRights_t) callconv(.C) seL4_Uint64 {
    var seL4_CapRights_1 = arg_seL4_CapRights_1;
    var ret: seL4_Uint64 = undefined;
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_CapRights_1.words[@intCast(c_uint, @as(c_int, 0))])) & @as(c_ulonglong, 4)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 2)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_CapRights_set_capAllowGrant(arg_seL4_CapRights_1: seL4_CapRights_t, arg_v64: seL4_Uint64) callconv(.C) seL4_CapRights_t {
    var seL4_CapRights_1 = arg_seL4_CapRights_1;
    var v64 = arg_v64;
    {
        if (!((((~@as(c_ulonglong, 4) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 2)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0x4ull >> 2 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 208), "seL4_CapRights_set_capAllowGrant");
        }
    }
    seL4_CapRights_1.words[@intCast(c_uint, @as(c_int, 0))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 4)));
    seL4_CapRights_1.words[@intCast(c_uint, @as(c_int, 0))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 2))) & @as(c_ulonglong, 4)));
    return seL4_CapRights_1;
}
pub fn seL4_CapRights_ptr_get_capAllowGrant(arg_seL4_CapRights_ptr: [*c]seL4_CapRights_t) callconv(.C) seL4_Uint64 {
    var seL4_CapRights_ptr = arg_seL4_CapRights_ptr;
    var ret: seL4_Uint64 = undefined;
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_CapRights_ptr.*.words[@intCast(c_uint, @as(c_int, 0))])) & @as(c_ulonglong, 4)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 2)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_CapRights_ptr_set_capAllowGrant(arg_seL4_CapRights_ptr: [*c]seL4_CapRights_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_CapRights_ptr = arg_seL4_CapRights_ptr;
    var v64 = arg_v64;
    {
        if (!((((~@as(c_ulonglong, 4) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 2)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0x4ull >> 2) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 228), "seL4_CapRights_ptr_set_capAllowGrant");
        }
    }
    seL4_CapRights_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 4)));
    seL4_CapRights_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] |= (v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 2)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 4)));
}
pub fn seL4_CapRights_get_capAllowRead(arg_seL4_CapRights_1: seL4_CapRights_t) callconv(.C) seL4_Uint64 {
    var seL4_CapRights_1 = arg_seL4_CapRights_1;
    var ret: seL4_Uint64 = undefined;
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_CapRights_1.words[@intCast(c_uint, @as(c_int, 0))])) & @as(c_ulonglong, 2)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 1)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_CapRights_set_capAllowRead(arg_seL4_CapRights_1: seL4_CapRights_t, arg_v64: seL4_Uint64) callconv(.C) seL4_CapRights_t {
    var seL4_CapRights_1 = arg_seL4_CapRights_1;
    var v64 = arg_v64;
    {
        if (!((((~@as(c_ulonglong, 2) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 1)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0x2ull >> 1 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 247), "seL4_CapRights_set_capAllowRead");
        }
    }
    seL4_CapRights_1.words[@intCast(c_uint, @as(c_int, 0))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 2)));
    seL4_CapRights_1.words[@intCast(c_uint, @as(c_int, 0))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 1))) & @as(c_ulonglong, 2)));
    return seL4_CapRights_1;
}
pub fn seL4_CapRights_ptr_get_capAllowRead(arg_seL4_CapRights_ptr: [*c]seL4_CapRights_t) callconv(.C) seL4_Uint64 {
    var seL4_CapRights_ptr = arg_seL4_CapRights_ptr;
    var ret: seL4_Uint64 = undefined;
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_CapRights_ptr.*.words[@intCast(c_uint, @as(c_int, 0))])) & @as(c_ulonglong, 2)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 1)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_CapRights_ptr_set_capAllowRead(arg_seL4_CapRights_ptr: [*c]seL4_CapRights_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_CapRights_ptr = arg_seL4_CapRights_ptr;
    var v64 = arg_v64;
    {
        if (!((((~@as(c_ulonglong, 2) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 1)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0x2ull >> 1) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 267), "seL4_CapRights_ptr_set_capAllowRead");
        }
    }
    seL4_CapRights_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 2)));
    seL4_CapRights_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] |= (v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 1)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 2)));
}
pub fn seL4_CapRights_get_capAllowWrite(arg_seL4_CapRights_1: seL4_CapRights_t) callconv(.C) seL4_Uint64 {
    var seL4_CapRights_1 = arg_seL4_CapRights_1;
    var ret: seL4_Uint64 = undefined;
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_CapRights_1.words[@intCast(c_uint, @as(c_int, 0))])) & @as(c_ulonglong, 1)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_CapRights_set_capAllowWrite(arg_seL4_CapRights_1: seL4_CapRights_t, arg_v64: seL4_Uint64) callconv(.C) seL4_CapRights_t {
    var seL4_CapRights_1 = arg_seL4_CapRights_1;
    var v64 = arg_v64;
    {
        if (!((((~@as(c_ulonglong, 1) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0x1ull >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 286), "seL4_CapRights_set_capAllowWrite");
        }
    }
    seL4_CapRights_1.words[@intCast(c_uint, @as(c_int, 0))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 1)));
    seL4_CapRights_1.words[@intCast(c_uint, @as(c_int, 0))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 1)));
    return seL4_CapRights_1;
}
pub fn seL4_CapRights_ptr_get_capAllowWrite(arg_seL4_CapRights_ptr: [*c]seL4_CapRights_t) callconv(.C) seL4_Uint64 {
    var seL4_CapRights_ptr = arg_seL4_CapRights_ptr;
    var ret: seL4_Uint64 = undefined;
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_CapRights_ptr.*.words[@intCast(c_uint, @as(c_int, 0))])) & @as(c_ulonglong, 1)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_CapRights_ptr_set_capAllowWrite(arg_seL4_CapRights_ptr: [*c]seL4_CapRights_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_CapRights_ptr = arg_seL4_CapRights_ptr;
    var v64 = arg_v64;
    {
        if (!((((~@as(c_ulonglong, 1) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0x1ull >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 306), "seL4_CapRights_ptr_set_capAllowWrite");
        }
    }
    seL4_CapRights_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 1)));
    seL4_CapRights_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] |= (v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 1)));
}
pub const struct_seL4_MessageInfo = extern struct {
    words: [1]seL4_Uint64,
};
pub const seL4_MessageInfo_t = struct_seL4_MessageInfo;
pub fn seL4_MessageInfo_new(arg_label: seL4_Uint64, arg_capsUnwrapped: seL4_Uint64, arg_extraCaps: seL4_Uint64, arg_length: seL4_Uint64) callconv(.C) seL4_MessageInfo_t {
    var label = arg_label;
    var capsUnwrapped = arg_capsUnwrapped;
    var extraCaps = arg_extraCaps;
    var length = arg_length;
    var seL4_MessageInfo_1: seL4_MessageInfo_t = undefined;
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, label)) & ~@as(c_ulonglong, 4503599627370495)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, label)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(label & ~0xfffffffffffffull) == ((0 && (label & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 321), "seL4_MessageInfo_new");
        }
    }
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, capsUnwrapped)) & ~@as(c_ulonglong, 7)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, capsUnwrapped)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(capsUnwrapped & ~0x7ull) == ((0 && (capsUnwrapped & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 322), "seL4_MessageInfo_new");
        }
    }
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, extraCaps)) & ~@as(c_ulonglong, 3)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, extraCaps)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(extraCaps & ~0x3ull) == ((0 && (extraCaps & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 323), "seL4_MessageInfo_new");
        }
    }
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, length)) & ~@as(c_ulonglong, 127)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, length)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(length & ~0x7full) == ((0 && (length & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 324), "seL4_MessageInfo_new");
        }
    }
    seL4_MessageInfo_1.words[@intCast(c_uint, @as(c_int, 0))] = @bitCast(seL4_Uint64, @truncate(c_ulong, (((@bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, label)) & @as(c_ulonglong, 4503599627370495)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 12))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, capsUnwrapped)) & @as(c_ulonglong, 7)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 9))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, extraCaps)) & @as(c_ulonglong, 3)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 7))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, length)) & @as(c_ulonglong, 127)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 0))));
    return seL4_MessageInfo_1;
}
pub fn seL4_MessageInfo_ptr_new(arg_seL4_MessageInfo_ptr: [*c]seL4_MessageInfo_t, arg_label: seL4_Uint64, arg_capsUnwrapped: seL4_Uint64, arg_extraCaps: seL4_Uint64, arg_length: seL4_Uint64) callconv(.C) void {
    var seL4_MessageInfo_ptr = arg_seL4_MessageInfo_ptr;
    var label = arg_label;
    var capsUnwrapped = arg_capsUnwrapped;
    var extraCaps = arg_extraCaps;
    var length = arg_length;
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, label)) & ~@as(c_ulonglong, 4503599627370495)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, label)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(label & ~0xfffffffffffffull) == ((0 && (label & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 338), "seL4_MessageInfo_ptr_new");
        }
    }
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, capsUnwrapped)) & ~@as(c_ulonglong, 7)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, capsUnwrapped)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(capsUnwrapped & ~0x7ull) == ((0 && (capsUnwrapped & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 339), "seL4_MessageInfo_ptr_new");
        }
    }
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, extraCaps)) & ~@as(c_ulonglong, 3)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, extraCaps)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(extraCaps & ~0x3ull) == ((0 && (extraCaps & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 340), "seL4_MessageInfo_ptr_new");
        }
    }
    {
        if (!((@bitCast(c_ulonglong, @as(c_ulonglong, length)) & ~@as(c_ulonglong, 127)) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, length)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), 63))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(length & ~0x7full) == ((0 && (length & (1ull << 63))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 341), "seL4_MessageInfo_ptr_new");
        }
    }
    seL4_MessageInfo_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] = @bitCast(seL4_Uint64, @truncate(c_ulong, (((@bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, label)) & @as(c_ulonglong, 4503599627370495)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 12))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, capsUnwrapped)) & @as(c_ulonglong, 7)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 9))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, extraCaps)) & @as(c_ulonglong, 3)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 7))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, length)) & @as(c_ulonglong, 127)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 0))));
}
pub fn seL4_MessageInfo_get_label(arg_seL4_MessageInfo_1: seL4_MessageInfo_t) callconv(.C) seL4_Uint64 {
    var seL4_MessageInfo_1 = arg_seL4_MessageInfo_1;
    var ret: seL4_Uint64 = undefined;
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_MessageInfo_1.words[@intCast(c_uint, @as(c_int, 0))])) & @as(c_ulonglong, 18446744073709547520)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 12)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_MessageInfo_set_label(arg_seL4_MessageInfo_1: seL4_MessageInfo_t, arg_v64: seL4_Uint64) callconv(.C) seL4_MessageInfo_t {
    var seL4_MessageInfo_1 = arg_seL4_MessageInfo_1;
    var v64 = arg_v64;
    {
        if (!((((~@as(c_ulonglong, 18446744073709547520) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 12)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xfffffffffffff000ull >> 12 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 364), "seL4_MessageInfo_set_label");
        }
    }
    seL4_MessageInfo_1.words[@intCast(c_uint, @as(c_int, 0))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709547520)));
    seL4_MessageInfo_1.words[@intCast(c_uint, @as(c_int, 0))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 12))) & @as(c_ulonglong, 18446744073709547520)));
    return seL4_MessageInfo_1;
}
pub fn seL4_MessageInfo_ptr_get_label(arg_seL4_MessageInfo_ptr: [*c]seL4_MessageInfo_t) callconv(.C) seL4_Uint64 {
    var seL4_MessageInfo_ptr = arg_seL4_MessageInfo_ptr;
    var ret: seL4_Uint64 = undefined;
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_MessageInfo_ptr.*.words[@intCast(c_uint, @as(c_int, 0))])) & @as(c_ulonglong, 18446744073709547520)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 12)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_MessageInfo_ptr_set_label(arg_seL4_MessageInfo_ptr: [*c]seL4_MessageInfo_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_MessageInfo_ptr = arg_seL4_MessageInfo_ptr;
    var v64 = arg_v64;
    {
        if (!((((~@as(c_ulonglong, 18446744073709547520) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 12)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xfffffffffffff000ull >> 12) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 384), "seL4_MessageInfo_ptr_set_label");
        }
    }
    seL4_MessageInfo_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 18446744073709547520)));
    seL4_MessageInfo_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] |= (v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 12)) & @as(c_ulong, 18446744073709547520);
}
pub fn seL4_MessageInfo_get_capsUnwrapped(arg_seL4_MessageInfo_1: seL4_MessageInfo_t) callconv(.C) seL4_Uint64 {
    var seL4_MessageInfo_1 = arg_seL4_MessageInfo_1;
    var ret: seL4_Uint64 = undefined;
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_MessageInfo_1.words[@intCast(c_uint, @as(c_int, 0))])) & @as(c_ulonglong, 3584)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 9)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_MessageInfo_set_capsUnwrapped(arg_seL4_MessageInfo_1: seL4_MessageInfo_t, arg_v64: seL4_Uint64) callconv(.C) seL4_MessageInfo_t {
    var seL4_MessageInfo_1 = arg_seL4_MessageInfo_1;
    var v64 = arg_v64;
    {
        if (!((((~@as(c_ulonglong, 3584) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 9)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xe00ull >> 9 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 403), "seL4_MessageInfo_set_capsUnwrapped");
        }
    }
    seL4_MessageInfo_1.words[@intCast(c_uint, @as(c_int, 0))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 3584)));
    seL4_MessageInfo_1.words[@intCast(c_uint, @as(c_int, 0))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 9))) & @as(c_ulonglong, 3584)));
    return seL4_MessageInfo_1;
}
pub fn seL4_MessageInfo_ptr_get_capsUnwrapped(arg_seL4_MessageInfo_ptr: [*c]seL4_MessageInfo_t) callconv(.C) seL4_Uint64 {
    var seL4_MessageInfo_ptr = arg_seL4_MessageInfo_ptr;
    var ret: seL4_Uint64 = undefined;
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_MessageInfo_ptr.*.words[@intCast(c_uint, @as(c_int, 0))])) & @as(c_ulonglong, 3584)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 9)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_MessageInfo_ptr_set_capsUnwrapped(arg_seL4_MessageInfo_ptr: [*c]seL4_MessageInfo_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_MessageInfo_ptr = arg_seL4_MessageInfo_ptr;
    var v64 = arg_v64;
    {
        if (!((((~@as(c_ulonglong, 3584) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 9)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0xe00ull >> 9) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 423), "seL4_MessageInfo_ptr_set_capsUnwrapped");
        }
    }
    seL4_MessageInfo_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 3584)));
    seL4_MessageInfo_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] |= (v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 9)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 3584)));
}
pub fn seL4_MessageInfo_get_extraCaps(arg_seL4_MessageInfo_1: seL4_MessageInfo_t) callconv(.C) seL4_Uint64 {
    var seL4_MessageInfo_1 = arg_seL4_MessageInfo_1;
    var ret: seL4_Uint64 = undefined;
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_MessageInfo_1.words[@intCast(c_uint, @as(c_int, 0))])) & @as(c_ulonglong, 384)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 7)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_MessageInfo_set_extraCaps(arg_seL4_MessageInfo_1: seL4_MessageInfo_t, arg_v64: seL4_Uint64) callconv(.C) seL4_MessageInfo_t {
    var seL4_MessageInfo_1 = arg_seL4_MessageInfo_1;
    var v64 = arg_v64;
    {
        if (!((((~@as(c_ulonglong, 384) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 7)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0x180ull >> 7 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 442), "seL4_MessageInfo_set_extraCaps");
        }
    }
    seL4_MessageInfo_1.words[@intCast(c_uint, @as(c_int, 0))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 384)));
    seL4_MessageInfo_1.words[@intCast(c_uint, @as(c_int, 0))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 7))) & @as(c_ulonglong, 384)));
    return seL4_MessageInfo_1;
}
pub fn seL4_MessageInfo_ptr_get_extraCaps(arg_seL4_MessageInfo_ptr: [*c]seL4_MessageInfo_t) callconv(.C) seL4_Uint64 {
    var seL4_MessageInfo_ptr = arg_seL4_MessageInfo_ptr;
    var ret: seL4_Uint64 = undefined;
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_MessageInfo_ptr.*.words[@intCast(c_uint, @as(c_int, 0))])) & @as(c_ulonglong, 384)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 7)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_MessageInfo_ptr_set_extraCaps(arg_seL4_MessageInfo_ptr: [*c]seL4_MessageInfo_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_MessageInfo_ptr = arg_seL4_MessageInfo_ptr;
    var v64 = arg_v64;
    {
        if (!((((~@as(c_ulonglong, 384) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 7)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0x180ull >> 7) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 462), "seL4_MessageInfo_ptr_set_extraCaps");
        }
    }
    seL4_MessageInfo_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 384)));
    seL4_MessageInfo_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] |= (v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 7)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 384)));
}
pub fn seL4_MessageInfo_get_length(arg_seL4_MessageInfo_1: seL4_MessageInfo_t) callconv(.C) seL4_Uint64 {
    var seL4_MessageInfo_1 = arg_seL4_MessageInfo_1;
    var ret: seL4_Uint64 = undefined;
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_MessageInfo_1.words[@intCast(c_uint, @as(c_int, 0))])) & @as(c_ulonglong, 127)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_MessageInfo_set_length(arg_seL4_MessageInfo_1: seL4_MessageInfo_t, arg_v64: seL4_Uint64) callconv(.C) seL4_MessageInfo_t {
    var seL4_MessageInfo_1 = arg_seL4_MessageInfo_1;
    var v64 = arg_v64;
    {
        if (!((((~@as(c_ulonglong, 127) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0x7full >> 0 ) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 481), "seL4_MessageInfo_set_length");
        }
    }
    seL4_MessageInfo_1.words[@intCast(c_uint, @as(c_int, 0))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 127)));
    seL4_MessageInfo_1.words[@intCast(c_uint, @as(c_int, 0))] |= @bitCast(seL4_Uint64, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0))) & @as(c_ulonglong, 127)));
    return seL4_MessageInfo_1;
}
pub fn seL4_MessageInfo_ptr_get_length(arg_seL4_MessageInfo_ptr: [*c]seL4_MessageInfo_t) callconv(.C) seL4_Uint64 {
    var seL4_MessageInfo_ptr = arg_seL4_MessageInfo_ptr;
    var ret: seL4_Uint64 = undefined;
    ret = @bitCast(seL4_Uint64, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_ulonglong, seL4_MessageInfo_ptr.*.words[@intCast(c_uint, @as(c_int, 0))])) & @as(c_ulonglong, 127)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)));
    if (__builtin_expect(@bitCast(c_long, @as(c_long, @boolToInt(!!(false and ((@bitCast(c_ulonglong, @as(c_ulonglong, ret)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0))))), @bitCast(c_long, @as(c_long, @as(c_int, 0)))) != 0) {
        ret |= @bitCast(c_ulong, @as(c_long, @as(c_int, 0)));
    }
    return ret;
}
pub fn seL4_MessageInfo_ptr_set_length(arg_seL4_MessageInfo_ptr: [*c]seL4_MessageInfo_t, arg_v64: seL4_Uint64) callconv(.C) void {
    var seL4_MessageInfo_ptr = arg_seL4_MessageInfo_ptr;
    var v64 = arg_v64;
    {
        if (!((((~@as(c_ulonglong, 127) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 0)) | @bitCast(c_ulonglong, @as(c_longlong, @as(c_int, 0)))) & @bitCast(c_ulonglong, @as(c_ulonglong, v64))) == @bitCast(c_ulonglong, @as(c_longlong, if (false and ((@bitCast(c_ulonglong, @as(c_ulonglong, v64)) & (@as(c_ulonglong, 1) << @intCast(@import("std").math.Log2Int(c_ulonglong), @as(c_int, 63)))) != 0)) @as(c_int, 0) else @as(c_int, 0))))) {
            __assert_fail("(((~0x7full >> 0) | 0x0) & v64) == ((0 && (v64 & (1ull << (63)))) ? 0x0 : 0)", "/host/sel4-tutorials-manifest/capabilities_build/libsel4/include/sel4/shared_types_gen.h", @as(c_int, 501), "seL4_MessageInfo_ptr_set_length");
        }
    }
    seL4_MessageInfo_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] &= @bitCast(seL4_Uint64, @truncate(c_ulong, ~@as(c_ulonglong, 127)));
    seL4_MessageInfo_ptr.*.words[@intCast(c_uint, @as(c_int, 0))] |= (v64 << @intCast(@import("std").math.Log2Int(seL4_Uint64), 0)) & @bitCast(c_ulong, @as(c_long, @as(c_int, 127)));
}
pub const struct_seL4_IPCBuffer_ = extern struct {
    tag: seL4_MessageInfo_t,
    msg: [120]seL4_Word,
    userData: seL4_Word,
    caps_or_badges: [3]seL4_Word,
    receiveCNode: seL4_CPtr,
    receiveIndex: seL4_CPtr,
    receiveDepth: seL4_Word,
};
pub const seL4_IPCBuffer = struct_seL4_IPCBuffer_;
pub const seL4_CapFault_Msg = extern enum(c_ulong) {
    seL4_CapFault_IP = 0,
    seL4_CapFault_Addr = 1,
    seL4_CapFault_InRecvPhase = 2,
    seL4_CapFault_LookupFailureType = 3,
    seL4_CapFault_BitsLeft = 4,
    seL4_CapFault_DepthMismatch_BitsFound = 5,
    seL4_CapFault_GuardMismatch_GuardFound = 5,
    seL4_CapFault_GuardMismatch_BitsFound = 6,
    _enum_pad_seL4_CapFault_Msg = 9223372036854775807,
    _,
};
pub const seL4_CapFault_IP = @enumToInt(seL4_CapFault_Msg.seL4_CapFault_IP);
pub const seL4_CapFault_Addr = @enumToInt(seL4_CapFault_Msg.seL4_CapFault_Addr);
pub const seL4_CapFault_InRecvPhase = @enumToInt(seL4_CapFault_Msg.seL4_CapFault_InRecvPhase);
pub const seL4_CapFault_LookupFailureType = @enumToInt(seL4_CapFault_Msg.seL4_CapFault_LookupFailureType);
pub const seL4_CapFault_BitsLeft = @enumToInt(seL4_CapFault_Msg.seL4_CapFault_BitsLeft);
pub const seL4_CapFault_DepthMismatch_BitsFound = @enumToInt(seL4_CapFault_Msg.seL4_CapFault_DepthMismatch_BitsFound);
pub const seL4_CapFault_GuardMismatch_GuardFound = @enumToInt(seL4_CapFault_Msg.seL4_CapFault_GuardMismatch_GuardFound);
pub const seL4_CapFault_GuardMismatch_BitsFound = @enumToInt(seL4_CapFault_Msg.seL4_CapFault_GuardMismatch_BitsFound);
pub const _enum_pad_seL4_CapFault_Msg = @enumToInt(seL4_CapFault_Msg._enum_pad_seL4_CapFault_Msg);
pub const seL4_NodeId = seL4_Word;
pub const seL4_PAddr = seL4_Word;
pub const seL4_Domain = seL4_Word;
pub const seL4_CNode = seL4_CPtr;
pub const seL4_IRQHandler = seL4_CPtr;
pub const seL4_IRQControl = seL4_CPtr;
pub const seL4_TCB = seL4_CPtr;
pub const seL4_Untyped = seL4_CPtr;
pub const seL4_DomainSet = seL4_CPtr;
pub const seL4_SchedContext = seL4_CPtr;
pub const seL4_SchedControl = seL4_CPtr;
pub const seL4_Time = seL4_Uint64;
pub extern threadlocal var __sel4_ipc_buffer: [*c]seL4_IPCBuffer;
pub fn seL4_SetIPCBuffer(arg_ipc_buffer: [*c]seL4_IPCBuffer) callconv(.C) void {
    var ipc_buffer = arg_ipc_buffer;
    __sel4_ipc_buffer = ipc_buffer;
    return;
}
pub fn seL4_GetIPCBuffer() callconv(.C) [*c]seL4_IPCBuffer {
    return __sel4_ipc_buffer;
}
pub fn seL4_GetMR(arg_i: c_int) callconv(.C) seL4_Word {
    var i = arg_i;
    return seL4_GetIPCBuffer().*.msg[@intCast(c_uint, i)];
}
pub fn seL4_SetMR(arg_i: c_int, arg_mr: seL4_Word) callconv(.C) void {
    var i = arg_i;
    var mr = arg_mr;
    seL4_GetIPCBuffer().*.msg[@intCast(c_uint, i)] = mr;
}
pub fn seL4_GetUserData() callconv(.C) seL4_Word {
    return seL4_GetIPCBuffer().*.userData;
}
pub fn seL4_SetUserData(arg_data: seL4_Word) callconv(.C) void {
    var data = arg_data;
    seL4_GetIPCBuffer().*.userData = data;
}
pub fn seL4_GetBadge(arg_i: c_int) callconv(.C) seL4_Word {
    var i = arg_i;
    return seL4_GetIPCBuffer().*.caps_or_badges[@intCast(c_uint, i)];
}
pub fn seL4_GetCap(arg_i: c_int) callconv(.C) seL4_CPtr {
    var i = arg_i;
    return @bitCast(seL4_CPtr, seL4_GetIPCBuffer().*.caps_or_badges[@intCast(c_uint, i)]);
}
pub fn seL4_SetCap(arg_i: c_int, arg_cptr: seL4_CPtr) callconv(.C) void {
    var i = arg_i;
    var cptr = arg_cptr;
    seL4_GetIPCBuffer().*.caps_or_badges[@intCast(c_uint, i)] = @bitCast(seL4_Word, cptr);
}
pub fn seL4_GetCapReceivePath(arg_receiveCNode: [*c]seL4_CPtr, arg_receiveIndex: [*c]seL4_CPtr, arg_receiveDepth: [*c]seL4_Word) callconv(.C) void {
    var receiveCNode = arg_receiveCNode;
    var receiveIndex = arg_receiveIndex;
    var receiveDepth = arg_receiveDepth;
    var ipcbuffer: [*c]seL4_IPCBuffer = seL4_GetIPCBuffer();
    if (receiveCNode != @ptrCast([*c]seL4_CPtr, @alignCast(@import("std").meta.alignment(seL4_CPtr), @intToPtr(?*c_void, @as(c_int, 0))))) {
        receiveCNode.?.* = ipcbuffer.*.receiveCNode;
    }
    if (receiveIndex != @ptrCast([*c]seL4_CPtr, @alignCast(@import("std").meta.alignment(seL4_CPtr), @intToPtr(?*c_void, @as(c_int, 0))))) {
        receiveIndex.?.* = ipcbuffer.*.receiveIndex;
    }
    if (receiveDepth != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) {
        receiveDepth.?.* = ipcbuffer.*.receiveDepth;
    }
}
pub fn seL4_SetCapReceivePath(arg_receiveCNode: seL4_CPtr, arg_receiveIndex: seL4_CPtr, arg_receiveDepth: seL4_Word) callconv(.C) void {
    var receiveCNode = arg_receiveCNode;
    var receiveIndex = arg_receiveIndex;
    var receiveDepth = arg_receiveDepth;
    var ipcbuffer: [*c]seL4_IPCBuffer = seL4_GetIPCBuffer();
    ipcbuffer.*.receiveCNode = receiveCNode;
    ipcbuffer.*.receiveIndex = receiveIndex;
    ipcbuffer.*.receiveDepth = receiveDepth;
}
pub fn seL4_Send(arg_dest: seL4_CPtr, arg_msgInfo: seL4_MessageInfo_t) callconv(.C) void {
    var dest = arg_dest;
    var msgInfo = arg_msgInfo;
    x64_sys_send(@bitCast(seL4_Word, @as(c_long, seL4_SysSend)), dest, msgInfo.words[@intCast(c_uint, @as(c_int, 0))], seL4_GetMR(@as(c_int, 0)), seL4_GetMR(@as(c_int, 1)), seL4_GetMR(@as(c_int, 2)), seL4_GetMR(@as(c_int, 3)));
}
pub fn seL4_Recv(arg_src: seL4_CPtr, arg_sender: [*c]seL4_Word) callconv(.C) seL4_MessageInfo_t {
    var src = arg_src;
    var sender = arg_sender;
    var info: seL4_MessageInfo_t = undefined;
    var badge: seL4_Word = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    x64_sys_recv(@bitCast(seL4_Word, @as(c_long, seL4_SysRecv)), src, &badge, &info.words[@intCast(c_uint, @as(c_int, 0))], &mr0, &mr1, &mr2, &mr3, @bitCast(seL4_Word, @as(c_long, @as(c_int, 0))));
    seL4_SetMR(@as(c_int, 0), mr0);
    seL4_SetMR(@as(c_int, 1), mr1);
    seL4_SetMR(@as(c_int, 2), mr2);
    seL4_SetMR(@as(c_int, 3), mr3);
    if (sender != null) {
        sender.?.* = badge;
    }
    return info;
}
pub fn seL4_Call(arg_dest: seL4_CPtr, arg_msgInfo: seL4_MessageInfo_t) callconv(.C) seL4_MessageInfo_t {
    var dest = arg_dest;
    var msgInfo = arg_msgInfo;
    var info: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = seL4_GetMR(@as(c_int, 0));
    var mr1: seL4_Word = seL4_GetMR(@as(c_int, 1));
    var mr2: seL4_Word = seL4_GetMR(@as(c_int, 2));
    var mr3: seL4_Word = seL4_GetMR(@as(c_int, 3));
    x64_sys_send_recv(@bitCast(seL4_Word, @as(c_long, seL4_SysCall)), dest, &dest, msgInfo.words[@intCast(c_uint, @as(c_int, 0))], &info.words[@intCast(c_uint, @as(c_int, 0))], &mr0, &mr1, &mr2, &mr3, @bitCast(seL4_Word, @as(c_long, @as(c_int, 0))));
    seL4_SetMR(@as(c_int, 0), mr0);
    seL4_SetMR(@as(c_int, 1), mr1);
    seL4_SetMR(@as(c_int, 2), mr2);
    seL4_SetMR(@as(c_int, 3), mr3);
    return info;
}
pub fn seL4_Reply(arg_msgInfo: seL4_MessageInfo_t) callconv(.C) void {
    var msgInfo = arg_msgInfo;
    x64_sys_reply(@bitCast(seL4_Word, @as(c_long, seL4_SysReply)), msgInfo.words[@intCast(c_uint, @as(c_int, 0))], seL4_GetMR(@as(c_int, 0)), seL4_GetMR(@as(c_int, 1)), seL4_GetMR(@as(c_int, 2)), seL4_GetMR(@as(c_int, 3)));
}
pub fn seL4_NBSend(arg_dest: seL4_CPtr, arg_msgInfo: seL4_MessageInfo_t) callconv(.C) void {
    var dest = arg_dest;
    var msgInfo = arg_msgInfo;
    x64_sys_send(@bitCast(seL4_Word, @as(c_long, seL4_SysNBSend)), dest, msgInfo.words[@intCast(c_uint, @as(c_int, 0))], seL4_GetMR(@as(c_int, 0)), seL4_GetMR(@as(c_int, 1)), seL4_GetMR(@as(c_int, 2)), seL4_GetMR(@as(c_int, 3)));
}
pub fn seL4_ReplyRecv(arg_dest: seL4_CPtr, arg_msgInfo: seL4_MessageInfo_t, arg_sender: [*c]seL4_Word) callconv(.C) seL4_MessageInfo_t {
    var dest = arg_dest;
    var msgInfo = arg_msgInfo;
    var sender = arg_sender;
    var info: seL4_MessageInfo_t = undefined;
    var badge: seL4_Word = undefined;
    var mr0: seL4_Word = seL4_GetMR(@as(c_int, 0));
    var mr1: seL4_Word = seL4_GetMR(@as(c_int, 1));
    var mr2: seL4_Word = seL4_GetMR(@as(c_int, 2));
    var mr3: seL4_Word = seL4_GetMR(@as(c_int, 3));
    x64_sys_send_recv(@bitCast(seL4_Word, @as(c_long, seL4_SysReplyRecv)), dest, &badge, msgInfo.words[@intCast(c_uint, @as(c_int, 0))], &info.words[@intCast(c_uint, @as(c_int, 0))], &mr0, &mr1, &mr2, &mr3, @bitCast(seL4_Word, @as(c_long, @as(c_int, 0))));
    seL4_SetMR(@as(c_int, 0), mr0);
    seL4_SetMR(@as(c_int, 1), mr1);
    seL4_SetMR(@as(c_int, 2), mr2);
    seL4_SetMR(@as(c_int, 3), mr3);
    if (sender != null) {
        sender.?.* = badge;
    }
    return info;
}
pub fn seL4_NBRecv(arg_src: seL4_CPtr, arg_sender: [*c]seL4_Word) callconv(.C) seL4_MessageInfo_t {
    var src = arg_src;
    var sender = arg_sender;
    var info: seL4_MessageInfo_t = undefined;
    var badge: seL4_Word = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    x64_sys_recv(@bitCast(seL4_Word, @as(c_long, seL4_SysNBRecv)), src, &badge, &info.words[@intCast(c_uint, @as(c_int, 0))], &mr0, &mr1, &mr2, &mr3, @bitCast(seL4_Word, @as(c_long, @as(c_int, 0))));
    seL4_SetMR(@as(c_int, 0), mr0);
    seL4_SetMR(@as(c_int, 1), mr1);
    seL4_SetMR(@as(c_int, 2), mr2);
    seL4_SetMR(@as(c_int, 3), mr3);
    if (sender != null) {
        sender.?.* = badge;
    }
    return info;
} // /host/sel4-tutorials-manifest/kernel/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/syscalls.h:552:5: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /host/sel4-tutorials-manifest/kernel/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/syscalls.h:549:26: warning: unable to translate function, demoted to extern
pub extern fn seL4_Yield() callconv(.C) void;
pub fn seL4_Signal(arg_dest: seL4_CPtr) callconv(.C) void {
    var dest = arg_dest;
    x64_sys_send_null(@bitCast(seL4_Word, @as(c_long, seL4_SysSend)), dest, seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1)))).words[@intCast(c_uint, @as(c_int, 0))]);
}
pub fn seL4_Wait(arg_src: seL4_CPtr, arg_sender: [*c]seL4_Word) callconv(.C) void {
    var src = arg_src;
    var sender = arg_sender;
    _ = seL4_Recv(src, sender);
}
pub fn seL4_Poll(arg_src: seL4_CPtr, arg_sender: [*c]seL4_Word) callconv(.C) seL4_MessageInfo_t {
    var src = arg_src;
    var sender = arg_sender;
    return seL4_NBRecv(src, sender);
}
pub fn seL4_DebugPutChar(arg_c: u8) callconv(.C) void {
    var c = arg_c;
    var unused0: seL4_Word = 0;
    var unused1: seL4_Word = 0;
    var unused2: seL4_Word = 0;
    var unused3: seL4_Word = 0;
    var unused4: seL4_Word = 0;
    var unused5: seL4_Word = 0;
    x64_sys_send_recv(@bitCast(seL4_Word, @as(c_long, seL4_SysDebugPutChar)), @bitCast(seL4_Word, @as(c_ulong, c)), &unused0, @bitCast(seL4_Word, @as(c_long, @as(c_int, 0))), &unused1, &unused2, &unused3, &unused4, &unused5, @bitCast(seL4_Word, @as(c_long, @as(c_int, 0))));
}
pub fn seL4_DebugDumpScheduler() callconv(.C) void {
    var unused0: seL4_Word = 0;
    var unused1: seL4_Word = 0;
    var unused2: seL4_Word = 0;
    var unused3: seL4_Word = 0;
    var unused4: seL4_Word = 0;
    var unused5: seL4_Word = 0;
    x64_sys_send_recv(@bitCast(seL4_Word, @as(c_long, seL4_SysDebugDumpScheduler)), @bitCast(seL4_Word, @as(c_long, @as(c_int, 0))), &unused0, @bitCast(seL4_Word, @as(c_long, @as(c_int, 0))), &unused1, &unused2, &unused3, &unused4, &unused5, @bitCast(seL4_Word, @as(c_long, @as(c_int, 0))));
} // /host/sel4-tutorials-manifest/kernel/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/syscalls.h:616:5: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /host/sel4-tutorials-manifest/kernel/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/syscalls.h:613:26: warning: unable to translate function, demoted to extern
pub extern fn seL4_DebugHalt() callconv(.C) void; // /host/sel4-tutorials-manifest/kernel/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/syscalls.h:642:5: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /host/sel4-tutorials-manifest/kernel/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/syscalls.h:639:26: warning: unable to translate function, demoted to extern
pub extern fn seL4_DebugSnapshot() callconv(.C) void;
pub fn seL4_DebugCapIdentify(arg_cap: seL4_CPtr) callconv(.C) seL4_Uint32 {
    var cap = arg_cap;
    var unused0: seL4_Word = 0;
    var unused1: seL4_Word = 0;
    var unused2: seL4_Word = 0;
    var unused3: seL4_Word = 0;
    var unused4: seL4_Word = 0;
    x64_sys_send_recv(@bitCast(seL4_Word, @as(c_long, seL4_SysDebugCapIdentify)), cap, &cap, @bitCast(seL4_Word, @as(c_long, @as(c_int, 0))), &unused0, &unused1, &unused2, &unused3, &unused4, @bitCast(seL4_Word, @as(c_long, @as(c_int, 0))));
    return @bitCast(seL4_Uint32, @truncate(c_uint, cap));
}
pub fn seL4_DebugNameThread(arg_tcb: seL4_CPtr, arg_name: [*c]const u8) callconv(.C) void {
    var tcb = arg_tcb;
    var name = arg_name;
    _ = strcpy(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment(u8), @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), &seL4_GetIPCBuffer().*.msg)))), name);
    var unused0: seL4_Word = 0;
    var unused1: seL4_Word = 0;
    var unused2: seL4_Word = 0;
    var unused3: seL4_Word = 0;
    var unused4: seL4_Word = 0;
    var unused5: seL4_Word = 0;
    x64_sys_send_recv(@bitCast(seL4_Word, @as(c_long, seL4_SysDebugNameThread)), tcb, &unused0, @bitCast(seL4_Word, @as(c_long, @as(c_int, 0))), &unused1, &unused2, &unused3, &unused4, &unused5, @bitCast(seL4_Word, @as(c_long, @as(c_int, 0))));
} // /host/sel4-tutorials-manifest/kernel/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/syscalls.h:803:5: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /host/sel4-tutorials-manifest/kernel/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/syscalls.h:800:26: warning: unable to translate function, demoted to extern
pub extern fn seL4_SetTLSBase(arg_tls_base: seL4_Word) callconv(.C) void; // /host/sel4-tutorials-manifest/kernel/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/syscalls_syscall.h:29:5: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /host/sel4-tutorials-manifest/kernel/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/syscalls_syscall.h:21:20: warning: unable to translate function, demoted to extern
pub extern fn x64_sys_send(arg_sys: seL4_Word, arg_dest: seL4_Word, arg_info: seL4_Word, arg_msg0: seL4_Word, arg_msg1: seL4_Word, arg_msg2: seL4_Word, arg_msg3: seL4_Word) callconv(.C) void; // /host/sel4-tutorials-manifest/kernel/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/syscalls_syscall.h:54:5: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /host/sel4-tutorials-manifest/kernel/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/syscalls_syscall.h:46:20: warning: unable to translate function, demoted to extern
pub extern fn x64_sys_reply(arg_sys: seL4_Word, arg_info: seL4_Word, arg_msg0: seL4_Word, arg_msg1: seL4_Word, arg_msg2: seL4_Word, arg_msg3: seL4_Word) callconv(.C) void; // /host/sel4-tutorials-manifest/kernel/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/syscalls_syscall.h:72:5: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /host/sel4-tutorials-manifest/kernel/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/syscalls_syscall.h:70:20: warning: unable to translate function, demoted to extern
pub extern fn x64_sys_send_null(arg_sys: seL4_Word, arg_dest: seL4_Word, arg_info: seL4_Word) callconv(.C) void; // /host/sel4-tutorials-manifest/kernel/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/syscalls_syscall.h:94:5: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /host/sel4-tutorials-manifest/kernel/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/syscalls_syscall.h:84:20: warning: unable to translate function, demoted to extern
pub extern fn x64_sys_recv(arg_sys: seL4_Word, arg_src: seL4_Word, arg_out_badge: [*c]seL4_Word, arg_out_info: [*c]seL4_Word, arg_out_mr0: [*c]seL4_Word, arg_out_mr1: [*c]seL4_Word, arg_out_mr2: [*c]seL4_Word, arg_out_mr3: [*c]seL4_Word, arg_reply: seL4_Word) callconv(.C) void; // /host/sel4-tutorials-manifest/kernel/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/syscalls_syscall.h:125:5: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /host/sel4-tutorials-manifest/kernel/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/syscalls_syscall.h:115:20: warning: unable to translate function, demoted to extern
pub extern fn x64_sys_send_recv(arg_sys: seL4_Word, arg_dest: seL4_Word, arg_out_dest: [*c]seL4_Word, arg_info: seL4_Word, arg_out_info: [*c]seL4_Word, arg_in_out_mr0: [*c]seL4_Word, arg_in_out_mr1: [*c]seL4_Word, arg_in_out_mr2: [*c]seL4_Word, arg_in_out_mr3: [*c]seL4_Word, arg_reply: seL4_Word) callconv(.C) void; // /host/sel4-tutorials-manifest/kernel/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/syscalls_syscall.h:193:5: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /host/sel4-tutorials-manifest/kernel/libsel4/sel4_arch_include/x86_64/sel4/sel4_arch/syscalls_syscall.h:191:20: warning: unable to translate function, demoted to extern
pub extern fn x64_sys_null(arg_sys: seL4_Word) callconv(.C) void;
pub fn seL4_SendWithMRs(arg_dest: seL4_CPtr, arg_msgInfo: seL4_MessageInfo_t, arg_mr0: [*c]seL4_Word, arg_mr1: [*c]seL4_Word, arg_mr2: [*c]seL4_Word, arg_mr3: [*c]seL4_Word) callconv(.C) void {
    var dest = arg_dest;
    var msgInfo = arg_msgInfo;
    var mr0 = arg_mr0;
    var mr1 = arg_mr1;
    var mr2 = arg_mr2;
    var mr3 = arg_mr3;
    x64_sys_send(@bitCast(seL4_Word, @as(c_long, seL4_SysSend)), dest, msgInfo.words[@intCast(c_uint, @as(c_int, 0))], if (mr0 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) mr0.?.* else @bitCast(c_ulong, @as(c_long, @as(c_int, 0))), if (mr1 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) mr1.?.* else @bitCast(c_ulong, @as(c_long, @as(c_int, 0))), if (mr2 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) mr2.?.* else @bitCast(c_ulong, @as(c_long, @as(c_int, 0))), if (mr3 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) mr3.?.* else @bitCast(c_ulong, @as(c_long, @as(c_int, 0))));
}
pub fn seL4_NBSendWithMRs(arg_dest: seL4_CPtr, arg_msgInfo: seL4_MessageInfo_t, arg_mr0: [*c]seL4_Word, arg_mr1: [*c]seL4_Word, arg_mr2: [*c]seL4_Word, arg_mr3: [*c]seL4_Word) callconv(.C) void {
    var dest = arg_dest;
    var msgInfo = arg_msgInfo;
    var mr0 = arg_mr0;
    var mr1 = arg_mr1;
    var mr2 = arg_mr2;
    var mr3 = arg_mr3;
    x64_sys_send(@bitCast(seL4_Word, @as(c_long, seL4_SysNBSend)), dest, msgInfo.words[@intCast(c_uint, @as(c_int, 0))], if (mr0 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) mr0.?.* else @bitCast(c_ulong, @as(c_long, @as(c_int, 0))), if (mr1 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) mr1.?.* else @bitCast(c_ulong, @as(c_long, @as(c_int, 0))), if (mr2 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) mr2.?.* else @bitCast(c_ulong, @as(c_long, @as(c_int, 0))), if (mr3 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) mr3.?.* else @bitCast(c_ulong, @as(c_long, @as(c_int, 0))));
}
pub fn seL4_ReplyWithMRs(arg_msgInfo: seL4_MessageInfo_t, arg_mr0: [*c]seL4_Word, arg_mr1: [*c]seL4_Word, arg_mr2: [*c]seL4_Word, arg_mr3: [*c]seL4_Word) callconv(.C) void {
    var msgInfo = arg_msgInfo;
    var mr0 = arg_mr0;
    var mr1 = arg_mr1;
    var mr2 = arg_mr2;
    var mr3 = arg_mr3;
    x64_sys_reply(@bitCast(seL4_Word, @as(c_long, seL4_SysReply)), msgInfo.words[@intCast(c_uint, @as(c_int, 0))], if (mr0 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) mr0.?.* else @bitCast(c_ulong, @as(c_long, @as(c_int, 0))), if (mr1 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) mr1.?.* else @bitCast(c_ulong, @as(c_long, @as(c_int, 0))), if (mr2 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) mr2.?.* else @bitCast(c_ulong, @as(c_long, @as(c_int, 0))), if (mr3 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) mr3.?.* else @bitCast(c_ulong, @as(c_long, @as(c_int, 0))));
}
pub fn seL4_RecvWithMRs(arg_src: seL4_CPtr, arg_sender: [*c]seL4_Word, arg_mr0: [*c]seL4_Word, arg_mr1: [*c]seL4_Word, arg_mr2: [*c]seL4_Word, arg_mr3: [*c]seL4_Word) callconv(.C) seL4_MessageInfo_t {
    var src = arg_src;
    var sender = arg_sender;
    var mr0 = arg_mr0;
    var mr1 = arg_mr1;
    var mr2 = arg_mr2;
    var mr3 = arg_mr3;
    var info: seL4_MessageInfo_t = undefined;
    var badge: seL4_Word = undefined;
    var msg0: seL4_Word = undefined;
    var msg1: seL4_Word = undefined;
    var msg2: seL4_Word = undefined;
    var msg3: seL4_Word = undefined;
    x64_sys_recv(@bitCast(seL4_Word, @as(c_long, seL4_SysRecv)), src, &badge, &info.words[@intCast(c_uint, @as(c_int, 0))], &msg0, &msg1, &msg2, &msg3, @bitCast(seL4_Word, @as(c_long, @as(c_int, 0))));
    if (mr0 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) {
        mr0.?.* = msg0;
    }
    if (mr1 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) {
        mr1.?.* = msg1;
    }
    if (mr2 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) {
        mr2.?.* = msg2;
    }
    if (mr3 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) {
        mr3.?.* = msg3;
    }
    if (sender != null) {
        sender.?.* = badge;
    }
    return info;
}
pub fn seL4_CallWithMRs(arg_dest: seL4_CPtr, arg_msgInfo: seL4_MessageInfo_t, arg_mr0: [*c]seL4_Word, arg_mr1: [*c]seL4_Word, arg_mr2: [*c]seL4_Word, arg_mr3: [*c]seL4_Word) callconv(.C) seL4_MessageInfo_t {
    var dest = arg_dest;
    var msgInfo = arg_msgInfo;
    var mr0 = arg_mr0;
    var mr1 = arg_mr1;
    var mr2 = arg_mr2;
    var mr3 = arg_mr3;
    var info: seL4_MessageInfo_t = undefined;
    var msg0: seL4_Word = 0;
    var msg1: seL4_Word = 0;
    var msg2: seL4_Word = 0;
    var msg3: seL4_Word = 0;
    if ((mr0 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) and (seL4_MessageInfo_get_length(msgInfo) > @bitCast(c_ulong, @as(c_long, @as(c_int, 0))))) {
        msg0 = mr0.?.*;
    }
    if ((mr1 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) and (seL4_MessageInfo_get_length(msgInfo) > @bitCast(c_ulong, @as(c_long, @as(c_int, 1))))) {
        msg1 = mr1.?.*;
    }
    if ((mr2 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) and (seL4_MessageInfo_get_length(msgInfo) > @bitCast(c_ulong, @as(c_long, @as(c_int, 2))))) {
        msg2 = mr2.?.*;
    }
    if ((mr3 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) and (seL4_MessageInfo_get_length(msgInfo) > @bitCast(c_ulong, @as(c_long, @as(c_int, 3))))) {
        msg3 = mr3.?.*;
    }
    x64_sys_send_recv(@bitCast(seL4_Word, @as(c_long, seL4_SysCall)), dest, &dest, msgInfo.words[@intCast(c_uint, @as(c_int, 0))], &info.words[@intCast(c_uint, @as(c_int, 0))], &msg0, &msg1, &msg2, &msg3, @bitCast(seL4_Word, @as(c_long, @as(c_int, 0))));
    if (mr0 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) {
        mr0.?.* = msg0;
    }
    if (mr1 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) {
        mr1.?.* = msg1;
    }
    if (mr2 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) {
        mr2.?.* = msg2;
    }
    if (mr3 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) {
        mr3.?.* = msg3;
    }
    return info;
}
pub fn seL4_ReplyRecvWithMRs(arg_dest: seL4_CPtr, arg_msgInfo: seL4_MessageInfo_t, arg_sender: [*c]seL4_Word, arg_mr0: [*c]seL4_Word, arg_mr1: [*c]seL4_Word, arg_mr2: [*c]seL4_Word, arg_mr3: [*c]seL4_Word) callconv(.C) seL4_MessageInfo_t {
    var dest = arg_dest;
    var msgInfo = arg_msgInfo;
    var sender = arg_sender;
    var mr0 = arg_mr0;
    var mr1 = arg_mr1;
    var mr2 = arg_mr2;
    var mr3 = arg_mr3;
    var info: seL4_MessageInfo_t = undefined;
    var badge: seL4_Word = undefined;
    var msg0: seL4_Word = 0;
    var msg1: seL4_Word = 0;
    var msg2: seL4_Word = 0;
    var msg3: seL4_Word = 0;
    if ((mr0 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) and (seL4_MessageInfo_get_length(msgInfo) > @bitCast(c_ulong, @as(c_long, @as(c_int, 0))))) {
        msg0 = mr0.?.*;
    }
    if ((mr1 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) and (seL4_MessageInfo_get_length(msgInfo) > @bitCast(c_ulong, @as(c_long, @as(c_int, 1))))) {
        msg1 = mr1.?.*;
    }
    if ((mr2 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) and (seL4_MessageInfo_get_length(msgInfo) > @bitCast(c_ulong, @as(c_long, @as(c_int, 2))))) {
        msg2 = mr2.?.*;
    }
    if ((mr3 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) and (seL4_MessageInfo_get_length(msgInfo) > @bitCast(c_ulong, @as(c_long, @as(c_int, 3))))) {
        msg3 = mr3.?.*;
    }
    x64_sys_send_recv(@bitCast(seL4_Word, @as(c_long, seL4_SysReplyRecv)), dest, &badge, msgInfo.words[@intCast(c_uint, @as(c_int, 0))], &info.words[@intCast(c_uint, @as(c_int, 0))], &msg0, &msg1, &msg2, &msg3, @bitCast(seL4_Word, @as(c_long, @as(c_int, 0))));
    if (mr0 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) {
        mr0.?.* = msg0;
    }
    if (mr1 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) {
        mr1.?.* = msg1;
    }
    if (mr2 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) {
        mr2.?.* = msg2;
    }
    if (mr3 != @ptrCast([*c]seL4_Word, @alignCast(@import("std").meta.alignment(seL4_Word), @intToPtr(?*c_void, @as(c_int, 0))))) {
        mr3.?.* = msg3;
    }
    if (sender != null) {
        sender.?.* = badge;
    }
    return info;
}
pub fn seL4_DebugPutString(arg_str: [*c]u8) callconv(.C) void {
    var str = arg_str;
    {
        var s: [*c]u8 = str;
        while (s.?.* != 0) : (s += 1) {
            seL4_DebugPutChar(s.?.*);
        }
    }
    return;
}
pub extern fn strcpy([*c]u8, [*c]const u8) [*c]u8;
pub const enum_invocation_label = extern enum(c_int) {
    InvalidInvocation,
    UntypedRetype,
    TCBReadRegisters,
    TCBWriteRegisters,
    TCBCopyRegisters,
    TCBConfigure,
    TCBSetPriority,
    TCBSetMCPriority,
    TCBSetSchedParams,
    TCBSetIPCBuffer,
    TCBSetSpace,
    TCBSuspend,
    TCBResume,
    TCBBindNotification,
    TCBUnbindNotification,
    TCBSetTLSBase,
    CNodeRevoke,
    CNodeDelete,
    CNodeCancelBadgedSends,
    CNodeCopy,
    CNodeMint,
    CNodeMove,
    CNodeMutate,
    CNodeRotate,
    CNodeSaveCaller,
    IRQIssueIRQHandler,
    IRQAckIRQ,
    IRQSetIRQHandler,
    IRQClearIRQHandler,
    DomainSetSet,
    nInvocationLabels,
    _,
};
pub const InvalidInvocation = @enumToInt(enum_invocation_label.InvalidInvocation);
pub const UntypedRetype = @enumToInt(enum_invocation_label.UntypedRetype);
pub const TCBReadRegisters = @enumToInt(enum_invocation_label.TCBReadRegisters);
pub const TCBWriteRegisters = @enumToInt(enum_invocation_label.TCBWriteRegisters);
pub const TCBCopyRegisters = @enumToInt(enum_invocation_label.TCBCopyRegisters);
pub const TCBConfigure = @enumToInt(enum_invocation_label.TCBConfigure);
pub const TCBSetPriority = @enumToInt(enum_invocation_label.TCBSetPriority);
pub const TCBSetMCPriority = @enumToInt(enum_invocation_label.TCBSetMCPriority);
pub const TCBSetSchedParams = @enumToInt(enum_invocation_label.TCBSetSchedParams);
pub const TCBSetIPCBuffer = @enumToInt(enum_invocation_label.TCBSetIPCBuffer);
pub const TCBSetSpace = @enumToInt(enum_invocation_label.TCBSetSpace);
pub const TCBSuspend = @enumToInt(enum_invocation_label.TCBSuspend);
pub const TCBResume = @enumToInt(enum_invocation_label.TCBResume);
pub const TCBBindNotification = @enumToInt(enum_invocation_label.TCBBindNotification);
pub const TCBUnbindNotification = @enumToInt(enum_invocation_label.TCBUnbindNotification);
pub const TCBSetTLSBase = @enumToInt(enum_invocation_label.TCBSetTLSBase);
pub const CNodeRevoke = @enumToInt(enum_invocation_label.CNodeRevoke);
pub const CNodeDelete = @enumToInt(enum_invocation_label.CNodeDelete);
pub const CNodeCancelBadgedSends = @enumToInt(enum_invocation_label.CNodeCancelBadgedSends);
pub const CNodeCopy = @enumToInt(enum_invocation_label.CNodeCopy);
pub const CNodeMint = @enumToInt(enum_invocation_label.CNodeMint);
pub const CNodeMove = @enumToInt(enum_invocation_label.CNodeMove);
pub const CNodeMutate = @enumToInt(enum_invocation_label.CNodeMutate);
pub const CNodeRotate = @enumToInt(enum_invocation_label.CNodeRotate);
pub const CNodeSaveCaller = @enumToInt(enum_invocation_label.CNodeSaveCaller);
pub const IRQIssueIRQHandler = @enumToInt(enum_invocation_label.IRQIssueIRQHandler);
pub const IRQAckIRQ = @enumToInt(enum_invocation_label.IRQAckIRQ);
pub const IRQSetIRQHandler = @enumToInt(enum_invocation_label.IRQSetIRQHandler);
pub const IRQClearIRQHandler = @enumToInt(enum_invocation_label.IRQClearIRQHandler);
pub const DomainSetSet = @enumToInt(enum_invocation_label.DomainSetSet);
pub const nInvocationLabels = @enumToInt(enum_invocation_label.nInvocationLabels);
pub const enum_sel4_arch_invocation_label = extern enum(c_int) {
    X86PDPTMap = 30,
    X86PDPTUnmap = 31,
    nSeL4ArchInvocationLabels = 32,
    _,
};
pub const X86PDPTMap = @enumToInt(enum_sel4_arch_invocation_label.X86PDPTMap);
pub const X86PDPTUnmap = @enumToInt(enum_sel4_arch_invocation_label.X86PDPTUnmap);
pub const nSeL4ArchInvocationLabels = @enumToInt(enum_sel4_arch_invocation_label.nSeL4ArchInvocationLabels);
pub const enum_arch_invocation_label = extern enum(c_int) {
    X86PageDirectoryMap = 32,
    X86PageDirectoryUnmap = 33,
    X86PageTableMap = 34,
    X86PageTableUnmap = 35,
    X86PageMap = 36,
    X86PageUnmap = 37,
    X86PageGetAddress = 38,
    X86ASIDControlMakePool = 39,
    X86ASIDPoolAssign = 40,
    X86IOPortControlIssue = 41,
    X86IOPortIn8 = 42,
    X86IOPortIn16 = 43,
    X86IOPortIn32 = 44,
    X86IOPortOut8 = 45,
    X86IOPortOut16 = 46,
    X86IOPortOut32 = 47,
    X86IRQIssueIRQHandlerIOAPIC = 48,
    X86IRQIssueIRQHandlerMSI = 49,
    nArchInvocationLabels = 50,
    _,
};
pub const X86PageDirectoryMap = @enumToInt(enum_arch_invocation_label.X86PageDirectoryMap);
pub const X86PageDirectoryUnmap = @enumToInt(enum_arch_invocation_label.X86PageDirectoryUnmap);
pub const X86PageTableMap = @enumToInt(enum_arch_invocation_label.X86PageTableMap);
pub const X86PageTableUnmap = @enumToInt(enum_arch_invocation_label.X86PageTableUnmap);
pub const X86PageMap = @enumToInt(enum_arch_invocation_label.X86PageMap);
pub const X86PageUnmap = @enumToInt(enum_arch_invocation_label.X86PageUnmap);
pub const X86PageGetAddress = @enumToInt(enum_arch_invocation_label.X86PageGetAddress);
pub const X86ASIDControlMakePool = @enumToInt(enum_arch_invocation_label.X86ASIDControlMakePool);
pub const X86ASIDPoolAssign = @enumToInt(enum_arch_invocation_label.X86ASIDPoolAssign);
pub const X86IOPortControlIssue = @enumToInt(enum_arch_invocation_label.X86IOPortControlIssue);
pub const X86IOPortIn8 = @enumToInt(enum_arch_invocation_label.X86IOPortIn8);
pub const X86IOPortIn16 = @enumToInt(enum_arch_invocation_label.X86IOPortIn16);
pub const X86IOPortIn32 = @enumToInt(enum_arch_invocation_label.X86IOPortIn32);
pub const X86IOPortOut8 = @enumToInt(enum_arch_invocation_label.X86IOPortOut8);
pub const X86IOPortOut16 = @enumToInt(enum_arch_invocation_label.X86IOPortOut16);
pub const X86IOPortOut32 = @enumToInt(enum_arch_invocation_label.X86IOPortOut32);
pub const X86IRQIssueIRQHandlerIOAPIC = @enumToInt(enum_arch_invocation_label.X86IRQIssueIRQHandlerIOAPIC);
pub const X86IRQIssueIRQHandlerMSI = @enumToInt(enum_arch_invocation_label.X86IRQIssueIRQHandlerMSI);
pub const nArchInvocationLabels = @enumToInt(enum_arch_invocation_label.nArchInvocationLabels);
pub const __type_int_size_incorrect = [1]c_ulong;
pub const __type_long_size_incorrect = [1]c_ulong;
pub const __type_seL4_Uint8_size_incorrect = [1]c_ulong;
pub const __type_seL4_Uint16_size_incorrect = [1]c_ulong;
pub const __type_seL4_Uint32_size_incorrect = [1]c_ulong;
pub const __type_seL4_Uint64_size_incorrect = [1]c_ulong;
pub const __type_seL4_Time_size_incorrect = [1]c_ulong;
pub const __type_seL4_Word_size_incorrect = [1]c_ulong;
pub const __type_seL4_Bool_size_incorrect = [1]c_ulong;
pub const __type_seL4_CapRights_t_size_incorrect = [1]c_ulong;
pub const __type_seL4_CPtr_size_incorrect = [1]c_ulong;
pub const __type_seL4_CNode_size_incorrect = [1]c_ulong;
pub const __type_seL4_IRQHandler_size_incorrect = [1]c_ulong;
pub const __type_seL4_IRQControl_size_incorrect = [1]c_ulong;
pub const __type_seL4_TCB_size_incorrect = [1]c_ulong;
pub const __type_seL4_Untyped_size_incorrect = [1]c_ulong;
pub const __type_seL4_DomainSet_size_incorrect = [1]c_ulong;
pub const __type_seL4_SchedContext_size_incorrect = [1]c_ulong;
pub const __type_seL4_SchedControl_size_incorrect = [1]c_ulong;
pub const __type_seL4_X86_VMAttributes_size_incorrect = [1]c_ulong;
pub const __type_seL4_X86_IOPort_size_incorrect = [1]c_ulong;
pub const __type_seL4_X86_IOPortControl_size_incorrect = [1]c_ulong;
pub const __type_seL4_X86_ASIDControl_size_incorrect = [1]c_ulong;
pub const __type_seL4_X86_ASIDPool_size_incorrect = [1]c_ulong;
pub const __type_seL4_X86_IOSpace_size_incorrect = [1]c_ulong;
pub const __type_seL4_X86_Page_size_incorrect = [1]c_ulong;
pub const __type_seL4_X64_PML4_size_incorrect = [1]c_ulong;
pub const __type_seL4_X86_PDPT_size_incorrect = [1]c_ulong;
pub const __type_seL4_X86_PageDirectory_size_incorrect = [1]c_ulong;
pub const __type_seL4_X86_PageTable_size_incorrect = [1]c_ulong;
pub const __type_seL4_X86_IOPageTable_size_incorrect = [1]c_ulong;
pub const __type_seL4_X86_VCPU_size_incorrect = [1]c_ulong;
pub const __type_seL4_X86_EPTPML4_size_incorrect = [1]c_ulong;
pub const __type_seL4_X86_EPTPDPT_size_incorrect = [1]c_ulong;
pub const __type_seL4_X86_EPTPD_size_incorrect = [1]c_ulong;
pub const __type_seL4_X86_EPTPT_size_incorrect = [1]c_ulong;
pub const __type_seL4_VCPUContext_size_incorrect = [1]c_ulong;
pub const __type_seL4_UserContext_size_incorrect = [1]c_ulong;
pub const struct_seL4_X86_PageDirectory_GetStatusBits = extern struct {
    @"error": c_int,
    accessed: seL4_Word,
    dirty: seL4_Word,
};
pub const seL4_X86_PageDirectory_GetStatusBits_t = struct_seL4_X86_PageDirectory_GetStatusBits;
pub const struct_seL4_X86_Page_GetAddress = extern struct {
    @"error": c_int,
    paddr: seL4_Word,
};
pub const seL4_X86_Page_GetAddress_t = struct_seL4_X86_Page_GetAddress;
pub const struct_seL4_X86_IOPort_In8 = extern struct {
    @"error": c_int,
    result: seL4_Uint8,
};
pub const seL4_X86_IOPort_In8_t = struct_seL4_X86_IOPort_In8;
pub const struct_seL4_X86_IOPort_In16 = extern struct {
    @"error": c_int,
    result: seL4_Uint16,
};
pub const seL4_X86_IOPort_In16_t = struct_seL4_X86_IOPort_In16;
pub const struct_seL4_X86_IOPort_In32 = extern struct {
    @"error": c_int,
    result: seL4_Uint32,
};
pub const seL4_X86_IOPort_In32_t = struct_seL4_X86_IOPort_In32;
pub const struct_seL4_X86_VCPU_ReadVMCS = extern struct {
    @"error": c_int,
    value: seL4_Word,
};
pub const seL4_X86_VCPU_ReadVMCS_t = struct_seL4_X86_VCPU_ReadVMCS;
pub const struct_seL4_X86_VCPU_WriteVMCS = extern struct {
    @"error": c_int,
    written: seL4_Word,
};
pub const seL4_X86_VCPU_WriteVMCS_t = struct_seL4_X86_VCPU_WriteVMCS;
pub const struct_seL4_TCB_GetBreakpoint = extern struct {
    @"error": c_int,
    vaddr: seL4_Word,
    type: seL4_Word,
    size: seL4_Word,
    rw: seL4_Word,
    is_enabled: seL4_Bool,
};
pub const seL4_TCB_GetBreakpoint_t = struct_seL4_TCB_GetBreakpoint;
pub const struct_seL4_TCB_ConfigureSingleStepping = extern struct {
    @"error": c_int,
    bp_was_consumed: seL4_Bool,
};
pub const seL4_TCB_ConfigureSingleStepping_t = struct_seL4_TCB_ConfigureSingleStepping;
pub const struct_seL4_SchedContext_Consumed = extern struct {
    @"error": c_int,
    consumed: seL4_Time,
};
pub const seL4_SchedContext_Consumed_t = struct_seL4_SchedContext_Consumed;
pub const struct_seL4_SchedContext_YieldTo = extern struct {
    @"error": c_int,
    consumed: seL4_Time,
};
pub const seL4_SchedContext_YieldTo_t = struct_seL4_SchedContext_YieldTo;
pub fn seL4_X86_PDPT_Map(arg__service: seL4_X86_PDPT, arg_pml4: seL4_X64_PML4, arg_vaddr: seL4_Word, arg_attr: seL4_X86_VMAttributes) callconv(.C) seL4_Error {
    var _service = arg__service;
    var pml4 = arg_pml4;
    var vaddr = arg_vaddr;
    var attr = arg_attr;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, X86PDPTMap)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 2))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), pml4);
    mr0 = vaddr;
    mr1 = @bitCast(seL4_Word, @enumToInt(attr));
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_X86_PDPT_Unmap(arg__service: seL4_X86_PDPT) callconv(.C) seL4_Error {
    var _service = arg__service;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, X86PDPTUnmap)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = 0;
    mr1 = 0;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_X86_PageDirectory_Map(arg__service: seL4_X86_PageDirectory, arg_vspace: seL4_CPtr, arg_vaddr: seL4_Word, arg_attr: seL4_X86_VMAttributes) callconv(.C) seL4_Error {
    var _service = arg__service;
    var vspace = arg_vspace;
    var vaddr = arg_vaddr;
    var attr = arg_attr;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, X86PageDirectoryMap)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 2))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), vspace);
    mr0 = vaddr;
    mr1 = @bitCast(seL4_Word, @enumToInt(attr));
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_X86_PageDirectory_Unmap(arg__service: seL4_X86_PageDirectory) callconv(.C) seL4_Error {
    var _service = arg__service;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, X86PageDirectoryUnmap)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = 0;
    mr1 = 0;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_X86_PageTable_Map(arg__service: seL4_X86_PageTable, arg_vspace: seL4_CPtr, arg_vaddr: seL4_Word, arg_attr: seL4_X86_VMAttributes) callconv(.C) seL4_Error {
    var _service = arg__service;
    var vspace = arg_vspace;
    var vaddr = arg_vaddr;
    var attr = arg_attr;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, X86PageTableMap)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 2))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), vspace);
    mr0 = vaddr;
    mr1 = @bitCast(seL4_Word, @enumToInt(attr));
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_X86_PageTable_Unmap(arg__service: seL4_X86_PageTable) callconv(.C) seL4_Error {
    var _service = arg__service;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, X86PageTableUnmap)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = 0;
    mr1 = 0;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_X86_Page_Map(arg__service: seL4_X86_Page, arg_vspace: seL4_CPtr, arg_vaddr: seL4_Word, arg_rights: seL4_CapRights_t, arg_attr: seL4_X86_VMAttributes) callconv(.C) seL4_Error {
    var _service = arg__service;
    var vspace = arg_vspace;
    var vaddr = arg_vaddr;
    var rights = arg_rights;
    var attr = arg_attr;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, X86PageMap)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 3))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), vspace);
    mr0 = vaddr;
    mr1 = rights.words[@intCast(c_uint, @as(c_int, 0))];
    mr2 = @bitCast(seL4_Word, @enumToInt(attr));
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_X86_Page_Unmap(arg__service: seL4_X86_Page) callconv(.C) seL4_Error {
    var _service = arg__service;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, X86PageUnmap)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = 0;
    mr1 = 0;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_X86_Page_GetAddress(arg__service: seL4_X86_Page) callconv(.C) seL4_X86_Page_GetAddress_t {
    var _service = arg__service;
    var result: seL4_X86_Page_GetAddress_t = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, X86PageGetAddress)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = 0;
    mr1 = 0;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result.@"error" = @bitCast(c_int, @truncate(c_uint, seL4_MessageInfo_get_label(output_tag)));
    if (result.@"error" != seL4_NoError) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
        return result;
    }
    result.paddr = mr0;
    return result;
}
pub fn seL4_X86_ASIDControl_MakePool(arg__service: seL4_X86_ASIDControl, arg_untyped: seL4_Untyped, arg_root: seL4_CNode, arg_index: seL4_Word, arg_depth: seL4_Uint8) callconv(.C) seL4_Error {
    var _service = arg__service;
    var untyped = arg_untyped;
    var root = arg_root;
    var index = arg_index;
    var depth = arg_depth;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, X86ASIDControlMakePool)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 2))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 2))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), untyped);
    seL4_SetCap(@as(c_int, 1), root);
    mr0 = index;
    mr1 = @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, depth)) & @as(c_ulonglong, 255)));
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_X86_ASIDPool_Assign(arg__service: seL4_X86_ASIDPool, arg_vspace: seL4_CPtr) callconv(.C) seL4_Error {
    var _service = arg__service;
    var vspace = arg_vspace;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, X86ASIDPoolAssign)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), vspace);
    mr0 = 0;
    mr1 = 0;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_X86_IOPortControl_Issue(arg__service: seL4_X86_IOPortControl, arg_first_port: seL4_Word, arg_last_port: seL4_Word, arg_root: seL4_CNode, arg_index: seL4_Word, arg_depth: seL4_Uint8) callconv(.C) seL4_Error {
    var _service = arg__service;
    var first_port = arg_first_port;
    var last_port = arg_last_port;
    var root = arg_root;
    var index = arg_index;
    var depth = arg_depth;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, X86IOPortControlIssue)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 4))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), root);
    mr0 = first_port;
    mr1 = last_port;
    mr2 = index;
    mr3 = @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, depth)) & @as(c_ulonglong, 255)));
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_X86_IOPort_In8(arg__service: seL4_X86_IOPort, arg_port: seL4_Uint16) callconv(.C) seL4_X86_IOPort_In8_t {
    var _service = arg__service;
    var port = arg_port;
    var result: seL4_X86_IOPort_In8_t = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, X86IOPortIn8)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, port)) & @as(c_ulonglong, 65535)));
    mr1 = 0;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result.@"error" = @bitCast(c_int, @truncate(c_uint, seL4_MessageInfo_get_label(output_tag)));
    if (result.@"error" != seL4_NoError) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
        return result;
    }
    result.result = @bitCast(seL4_Uint8, @truncate(u8, mr0 & @bitCast(c_ulong, @as(c_long, @as(c_int, 255)))));
    return result;
}
pub fn seL4_X86_IOPort_In16(arg__service: seL4_X86_IOPort, arg_port: seL4_Uint16) callconv(.C) seL4_X86_IOPort_In16_t {
    var _service = arg__service;
    var port = arg_port;
    var result: seL4_X86_IOPort_In16_t = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, X86IOPortIn16)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, port)) & @as(c_ulonglong, 65535)));
    mr1 = 0;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result.@"error" = @bitCast(c_int, @truncate(c_uint, seL4_MessageInfo_get_label(output_tag)));
    if (result.@"error" != seL4_NoError) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
        return result;
    }
    result.result = @bitCast(seL4_Uint16, @truncate(c_ushort, mr0 & @bitCast(c_ulong, @as(c_long, @as(c_int, 65535)))));
    return result;
}
pub fn seL4_X86_IOPort_In32(arg__service: seL4_X86_IOPort, arg_port: seL4_Uint16) callconv(.C) seL4_X86_IOPort_In32_t {
    var _service = arg__service;
    var port = arg_port;
    var result: seL4_X86_IOPort_In32_t = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, X86IOPortIn32)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, port)) & @as(c_ulonglong, 65535)));
    mr1 = 0;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result.@"error" = @bitCast(c_int, @truncate(c_uint, seL4_MessageInfo_get_label(output_tag)));
    if (result.@"error" != seL4_NoError) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
        return result;
    }
    result.result = @bitCast(seL4_Uint32, @truncate(c_uint, mr0 & @bitCast(c_ulong, @as(c_ulong, @as(c_uint, 4294967295)))));
    return result;
}
pub fn seL4_X86_IOPort_Out8(arg__service: seL4_X86_IOPort, arg_port: seL4_Word, arg_data: seL4_Word) callconv(.C) seL4_Error {
    var _service = arg__service;
    var port = arg_port;
    var data = arg_data;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, X86IOPortOut8)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 2))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = port;
    mr1 = data;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_X86_IOPort_Out16(arg__service: seL4_X86_IOPort, arg_port: seL4_Word, arg_data: seL4_Word) callconv(.C) seL4_Error {
    var _service = arg__service;
    var port = arg_port;
    var data = arg_data;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, X86IOPortOut16)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 2))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = port;
    mr1 = data;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_X86_IOPort_Out32(arg__service: seL4_X86_IOPort, arg_port: seL4_Word, arg_data: seL4_Word) callconv(.C) seL4_Error {
    var _service = arg__service;
    var port = arg_port;
    var data = arg_data;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, X86IOPortOut32)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 2))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = port;
    mr1 = data;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_IRQControl_GetIOAPIC(arg__service: seL4_IRQControl, arg_root: seL4_CNode, arg_index: seL4_Word, arg_depth: seL4_Uint8, arg_ioapic: seL4_Word, arg_pin: seL4_Word, arg_level: seL4_Word, arg_polarity: seL4_Word, arg_vector: seL4_Word) callconv(.C) seL4_Error {
    var _service = arg__service;
    var root = arg_root;
    var index = arg_index;
    var depth = arg_depth;
    var ioapic = arg_ioapic;
    var pin = arg_pin;
    var level = arg_level;
    var polarity = arg_polarity;
    var vector = arg_vector;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, X86IRQIssueIRQHandlerIOAPIC)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 7))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), root);
    mr0 = index;
    mr1 = @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, depth)) & @as(c_ulonglong, 255)));
    mr2 = ioapic;
    mr3 = pin;
    seL4_SetMR(@as(c_int, 4), level);
    seL4_SetMR(@as(c_int, 5), polarity);
    seL4_SetMR(@as(c_int, 6), vector);
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_IRQControl_GetMSI(arg__service: seL4_IRQControl, arg_root: seL4_CNode, arg_index: seL4_Word, arg_depth: seL4_Uint8, arg_pci_bus: seL4_Word, arg_pci_dev: seL4_Word, arg_pci_func: seL4_Word, arg_handle: seL4_Word, arg_vector: seL4_Word) callconv(.C) seL4_Error {
    var _service = arg__service;
    var root = arg_root;
    var index = arg_index;
    var depth = arg_depth;
    var pci_bus = arg_pci_bus;
    var pci_dev = arg_pci_dev;
    var pci_func = arg_pci_func;
    var handle = arg_handle;
    var vector = arg_vector;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, X86IRQIssueIRQHandlerMSI)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 7))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), root);
    mr0 = index;
    mr1 = @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, depth)) & @as(c_ulonglong, 255)));
    mr2 = pci_bus;
    mr3 = pci_dev;
    seL4_SetMR(@as(c_int, 4), pci_func);
    seL4_SetMR(@as(c_int, 5), handle);
    seL4_SetMR(@as(c_int, 6), vector);
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_Untyped_Retype(arg__service: seL4_Untyped, arg_type_1: seL4_Word, arg_size_bits: seL4_Word, arg_root: seL4_CNode, arg_node_index: seL4_Word, arg_node_depth: seL4_Word, arg_node_offset: seL4_Word, arg_num_objects: seL4_Word) callconv(.C) seL4_Error {
    var _service = arg__service;
    var type_1 = arg_type_1;
    var size_bits = arg_size_bits;
    var root = arg_root;
    var node_index = arg_node_index;
    var node_depth = arg_node_depth;
    var node_offset = arg_node_offset;
    var num_objects = arg_num_objects;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, UntypedRetype)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 6))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), root);
    mr0 = type_1;
    mr1 = size_bits;
    mr2 = node_index;
    mr3 = node_depth;
    seL4_SetMR(@as(c_int, 4), node_offset);
    seL4_SetMR(@as(c_int, 5), num_objects);
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_TCB_ReadRegisters(arg__service: seL4_TCB, arg_suspend_source: seL4_Bool, arg_arch_flags: seL4_Uint8, arg_count: seL4_Word, arg_regs: [*c]seL4_UserContext) callconv(.C) seL4_Error {
    var _service = arg__service;
    var suspend_source = arg_suspend_source;
    var arch_flags = arg_arch_flags;
    var count = arg_count;
    var regs = arg_regs;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, TCBReadRegisters)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 2))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = @bitCast(seL4_Word, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_longlong, suspend_source)) & @as(c_ulonglong, 1)) | ((@bitCast(c_ulonglong, @as(c_ulonglong, arch_flags)) & @as(c_ulonglong, 255)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 8))));
    mr1 = count;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    regs.*.rip = mr0;
    regs.*.rsp = mr1;
    regs.*.rflags = mr2;
    regs.*.rax = mr3;
    regs.*.rbx = seL4_GetMR(@as(c_int, 4));
    regs.*.rcx = seL4_GetMR(@as(c_int, 5));
    regs.*.rdx = seL4_GetMR(@as(c_int, 6));
    regs.*.rsi = seL4_GetMR(@as(c_int, 7));
    regs.*.rdi = seL4_GetMR(@as(c_int, 8));
    regs.*.rbp = seL4_GetMR(@as(c_int, 9));
    regs.*.r8 = seL4_GetMR(@as(c_int, 10));
    regs.*.r9 = seL4_GetMR(@as(c_int, 11));
    regs.*.r10 = seL4_GetMR(@as(c_int, 12));
    regs.*.r11 = seL4_GetMR(@as(c_int, 13));
    regs.*.r12 = seL4_GetMR(@as(c_int, 14));
    regs.*.r13 = seL4_GetMR(@as(c_int, 15));
    regs.*.r14 = seL4_GetMR(@as(c_int, 16));
    regs.*.r15 = seL4_GetMR(@as(c_int, 17));
    regs.*.fs_base = seL4_GetMR(@as(c_int, 18));
    regs.*.gs_base = seL4_GetMR(@as(c_int, 19));
    return result;
}
pub fn seL4_TCB_WriteRegisters(arg__service: seL4_TCB, arg_resume_target: seL4_Bool, arg_arch_flags: seL4_Uint8, arg_count: seL4_Word, arg_regs: [*c]seL4_UserContext) callconv(.C) seL4_Error {
    var _service = arg__service;
    var resume_target = arg_resume_target;
    var arch_flags = arg_arch_flags;
    var count = arg_count;
    var regs = arg_regs;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, TCBWriteRegisters)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 22))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = @bitCast(seL4_Word, @truncate(c_ulong, (@bitCast(c_ulonglong, @as(c_longlong, resume_target)) & @as(c_ulonglong, 1)) | ((@bitCast(c_ulonglong, @as(c_ulonglong, arch_flags)) & @as(c_ulonglong, 255)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 8))));
    mr1 = count;
    mr2 = regs.*.rip;
    mr3 = regs.*.rsp;
    seL4_SetMR(@as(c_int, 4), regs.*.rflags);
    seL4_SetMR(@as(c_int, 5), regs.*.rax);
    seL4_SetMR(@as(c_int, 6), regs.*.rbx);
    seL4_SetMR(@as(c_int, 7), regs.*.rcx);
    seL4_SetMR(@as(c_int, 8), regs.*.rdx);
    seL4_SetMR(@as(c_int, 9), regs.*.rsi);
    seL4_SetMR(@as(c_int, 10), regs.*.rdi);
    seL4_SetMR(@as(c_int, 11), regs.*.rbp);
    seL4_SetMR(@as(c_int, 12), regs.*.r8);
    seL4_SetMR(@as(c_int, 13), regs.*.r9);
    seL4_SetMR(@as(c_int, 14), regs.*.r10);
    seL4_SetMR(@as(c_int, 15), regs.*.r11);
    seL4_SetMR(@as(c_int, 16), regs.*.r12);
    seL4_SetMR(@as(c_int, 17), regs.*.r13);
    seL4_SetMR(@as(c_int, 18), regs.*.r14);
    seL4_SetMR(@as(c_int, 19), regs.*.r15);
    seL4_SetMR(@as(c_int, 20), regs.*.fs_base);
    seL4_SetMR(@as(c_int, 21), regs.*.gs_base);
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_TCB_CopyRegisters(arg__service: seL4_TCB, arg_source: seL4_TCB, arg_suspend_source: seL4_Bool, arg_resume_target: seL4_Bool, arg_transfer_frame: seL4_Bool, arg_transfer_integer: seL4_Bool, arg_arch_flags: seL4_Uint8) callconv(.C) seL4_Error {
    var _service = arg__service;
    var source = arg_source;
    var suspend_source = arg_suspend_source;
    var resume_target = arg_resume_target;
    var transfer_frame = arg_transfer_frame;
    var transfer_integer = arg_transfer_integer;
    var arch_flags = arg_arch_flags;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, TCBCopyRegisters)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), source);
    mr0 = @bitCast(seL4_Word, @truncate(c_ulong, ((((@bitCast(c_ulonglong, @as(c_longlong, suspend_source)) & @as(c_ulonglong, 1)) | ((@bitCast(c_ulonglong, @as(c_longlong, resume_target)) & @as(c_ulonglong, 1)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 1))) | ((@bitCast(c_ulonglong, @as(c_longlong, transfer_frame)) & @as(c_ulonglong, 1)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 2))) | ((@bitCast(c_ulonglong, @as(c_longlong, transfer_integer)) & @as(c_ulonglong, 1)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 3))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, arch_flags)) & @as(c_ulonglong, 255)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 8))));
    mr1 = 0;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_TCB_Configure(arg__service: seL4_TCB, arg_fault_ep: seL4_Word, arg_cspace_root: seL4_CNode, arg_cspace_root_data: seL4_Word, arg_vspace_root: seL4_CPtr, arg_vspace_root_data: seL4_Word, arg_buffer: seL4_Word, arg_bufferFrame: seL4_CPtr) callconv(.C) seL4_Error {
    var _service = arg__service;
    var fault_ep = arg_fault_ep;
    var cspace_root = arg_cspace_root;
    var cspace_root_data = arg_cspace_root_data;
    var vspace_root = arg_vspace_root;
    var vspace_root_data = arg_vspace_root_data;
    var buffer = arg_buffer;
    var bufferFrame = arg_bufferFrame;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, TCBConfigure)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 3))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 4))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), cspace_root);
    seL4_SetCap(@as(c_int, 1), vspace_root);
    seL4_SetCap(@as(c_int, 2), bufferFrame);
    mr0 = fault_ep;
    mr1 = cspace_root_data;
    mr2 = vspace_root_data;
    mr3 = buffer;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_TCB_SetPriority(arg__service: seL4_TCB, arg_authority: seL4_TCB, arg_priority: seL4_Word) callconv(.C) seL4_Error {
    var _service = arg__service;
    var authority = arg_authority;
    var priority = arg_priority;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, TCBSetPriority)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), authority);
    mr0 = priority;
    mr1 = 0;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_TCB_SetMCPriority(arg__service: seL4_TCB, arg_authority: seL4_TCB, arg_mcp: seL4_Word) callconv(.C) seL4_Error {
    var _service = arg__service;
    var authority = arg_authority;
    var mcp = arg_mcp;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, TCBSetMCPriority)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), authority);
    mr0 = mcp;
    mr1 = 0;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_TCB_SetSchedParams(arg__service: seL4_TCB, arg_authority: seL4_TCB, arg_mcp: seL4_Word, arg_priority: seL4_Word) callconv(.C) seL4_Error {
    var _service = arg__service;
    var authority = arg_authority;
    var mcp = arg_mcp;
    var priority = arg_priority;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, TCBSetSchedParams)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 2))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), authority);
    mr0 = mcp;
    mr1 = priority;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_TCB_SetIPCBuffer(arg__service: seL4_TCB, arg_buffer: seL4_Word, arg_bufferFrame: seL4_CPtr) callconv(.C) seL4_Error {
    var _service = arg__service;
    var buffer = arg_buffer;
    var bufferFrame = arg_bufferFrame;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, TCBSetIPCBuffer)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), bufferFrame);
    mr0 = buffer;
    mr1 = 0;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_TCB_SetSpace(arg__service: seL4_TCB, arg_fault_ep: seL4_Word, arg_cspace_root: seL4_CNode, arg_cspace_root_data: seL4_Word, arg_vspace_root: seL4_CPtr, arg_vspace_root_data: seL4_Word) callconv(.C) seL4_Error {
    var _service = arg__service;
    var fault_ep = arg_fault_ep;
    var cspace_root = arg_cspace_root;
    var cspace_root_data = arg_cspace_root_data;
    var vspace_root = arg_vspace_root;
    var vspace_root_data = arg_vspace_root_data;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, TCBSetSpace)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 2))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 3))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), cspace_root);
    seL4_SetCap(@as(c_int, 1), vspace_root);
    mr0 = fault_ep;
    mr1 = cspace_root_data;
    mr2 = vspace_root_data;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_TCB_Suspend(arg__service: seL4_TCB) callconv(.C) seL4_Error {
    var _service = arg__service;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, TCBSuspend)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = 0;
    mr1 = 0;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_TCB_Resume(arg__service: seL4_TCB) callconv(.C) seL4_Error {
    var _service = arg__service;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, TCBResume)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = 0;
    mr1 = 0;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_TCB_BindNotification(arg__service: seL4_TCB, arg_notification: seL4_CPtr) callconv(.C) seL4_Error {
    var _service = arg__service;
    var notification = arg_notification;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, TCBBindNotification)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), notification);
    mr0 = 0;
    mr1 = 0;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_TCB_UnbindNotification(arg__service: seL4_TCB) callconv(.C) seL4_Error {
    var _service = arg__service;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, TCBUnbindNotification)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = 0;
    mr1 = 0;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_TCB_SetTLSBase(arg__service: seL4_TCB, arg_tls_base: seL4_Word) callconv(.C) seL4_Error {
    var _service = arg__service;
    var tls_base = arg_tls_base;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, TCBSetTLSBase)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = tls_base;
    mr1 = 0;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_CNode_Revoke(arg__service: seL4_CNode, arg_index: seL4_Word, arg_depth: seL4_Uint8) callconv(.C) seL4_Error {
    var _service = arg__service;
    var index = arg_index;
    var depth = arg_depth;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, CNodeRevoke)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 2))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = index;
    mr1 = @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, depth)) & @as(c_ulonglong, 255)));
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_CNode_Delete(arg__service: seL4_CNode, arg_index: seL4_Word, arg_depth: seL4_Uint8) callconv(.C) seL4_Error {
    var _service = arg__service;
    var index = arg_index;
    var depth = arg_depth;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, CNodeDelete)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 2))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = index;
    mr1 = @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, depth)) & @as(c_ulonglong, 255)));
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_CNode_CancelBadgedSends(arg__service: seL4_CNode, arg_index: seL4_Word, arg_depth: seL4_Uint8) callconv(.C) seL4_Error {
    var _service = arg__service;
    var index = arg_index;
    var depth = arg_depth;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, CNodeCancelBadgedSends)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 2))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = index;
    mr1 = @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, depth)) & @as(c_ulonglong, 255)));
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_CNode_Copy(arg__service: seL4_CNode, arg_dest_index: seL4_Word, arg_dest_depth: seL4_Uint8, arg_src_root: seL4_CNode, arg_src_index: seL4_Word, arg_src_depth: seL4_Uint8, arg_rights: seL4_CapRights_t) callconv(.C) seL4_Error {
    var _service = arg__service;
    var dest_index = arg_dest_index;
    var dest_depth = arg_dest_depth;
    var src_root = arg_src_root;
    var src_index = arg_src_index;
    var src_depth = arg_src_depth;
    var rights = arg_rights;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, CNodeCopy)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 5))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), src_root);
    mr0 = dest_index;
    mr1 = @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, dest_depth)) & @as(c_ulonglong, 255)));
    mr2 = src_index;
    mr3 = @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, src_depth)) & @as(c_ulonglong, 255)));
    seL4_SetMR(@as(c_int, 4), rights.words[@intCast(c_uint, @as(c_int, 0))]);
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_CNode_Mint(arg__service: seL4_CNode, arg_dest_index: seL4_Word, arg_dest_depth: seL4_Uint8, arg_src_root: seL4_CNode, arg_src_index: seL4_Word, arg_src_depth: seL4_Uint8, arg_rights: seL4_CapRights_t, arg_badge: seL4_Word) callconv(.C) seL4_Error {
    var _service = arg__service;
    var dest_index = arg_dest_index;
    var dest_depth = arg_dest_depth;
    var src_root = arg_src_root;
    var src_index = arg_src_index;
    var src_depth = arg_src_depth;
    var rights = arg_rights;
    var badge = arg_badge;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, CNodeMint)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 6))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), src_root);
    mr0 = dest_index;
    mr1 = @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, dest_depth)) & @as(c_ulonglong, 255)));
    mr2 = src_index;
    mr3 = @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, src_depth)) & @as(c_ulonglong, 255)));
    seL4_SetMR(@as(c_int, 4), rights.words[@intCast(c_uint, @as(c_int, 0))]);
    seL4_SetMR(@as(c_int, 5), badge);
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_CNode_Move(arg__service: seL4_CNode, arg_dest_index: seL4_Word, arg_dest_depth: seL4_Uint8, arg_src_root: seL4_CNode, arg_src_index: seL4_Word, arg_src_depth: seL4_Uint8) callconv(.C) seL4_Error {
    var _service = arg__service;
    var dest_index = arg_dest_index;
    var dest_depth = arg_dest_depth;
    var src_root = arg_src_root;
    var src_index = arg_src_index;
    var src_depth = arg_src_depth;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, CNodeMove)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 4))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), src_root);
    mr0 = dest_index;
    mr1 = @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, dest_depth)) & @as(c_ulonglong, 255)));
    mr2 = src_index;
    mr3 = @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, src_depth)) & @as(c_ulonglong, 255)));
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_CNode_Mutate(arg__service: seL4_CNode, arg_dest_index: seL4_Word, arg_dest_depth: seL4_Uint8, arg_src_root: seL4_CNode, arg_src_index: seL4_Word, arg_src_depth: seL4_Uint8, arg_badge: seL4_Word) callconv(.C) seL4_Error {
    var _service = arg__service;
    var dest_index = arg_dest_index;
    var dest_depth = arg_dest_depth;
    var src_root = arg_src_root;
    var src_index = arg_src_index;
    var src_depth = arg_src_depth;
    var badge = arg_badge;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, CNodeMutate)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 5))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), src_root);
    mr0 = dest_index;
    mr1 = @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, dest_depth)) & @as(c_ulonglong, 255)));
    mr2 = src_index;
    mr3 = @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, src_depth)) & @as(c_ulonglong, 255)));
    seL4_SetMR(@as(c_int, 4), badge);
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_CNode_Rotate(arg__service: seL4_CNode, arg_dest_index: seL4_Word, arg_dest_depth: seL4_Uint8, arg_dest_badge: seL4_Word, arg_pivot_root: seL4_CNode, arg_pivot_index: seL4_Word, arg_pivot_depth: seL4_Uint8, arg_pivot_badge: seL4_Word, arg_src_root: seL4_CNode, arg_src_index: seL4_Word, arg_src_depth: seL4_Uint8) callconv(.C) seL4_Error {
    var _service = arg__service;
    var dest_index = arg_dest_index;
    var dest_depth = arg_dest_depth;
    var dest_badge = arg_dest_badge;
    var pivot_root = arg_pivot_root;
    var pivot_index = arg_pivot_index;
    var pivot_depth = arg_pivot_depth;
    var pivot_badge = arg_pivot_badge;
    var src_root = arg_src_root;
    var src_index = arg_src_index;
    var src_depth = arg_src_depth;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, CNodeRotate)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 2))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 8))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), pivot_root);
    seL4_SetCap(@as(c_int, 1), src_root);
    mr0 = dest_index;
    mr1 = @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, dest_depth)) & @as(c_ulonglong, 255)));
    mr2 = dest_badge;
    mr3 = pivot_index;
    seL4_SetMR(@as(c_int, 4), @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, pivot_depth)) & @as(c_ulonglong, 255))));
    seL4_SetMR(@as(c_int, 5), pivot_badge);
    seL4_SetMR(@as(c_int, 6), src_index);
    seL4_SetMR(@as(c_int, 7), @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, src_depth)) & @as(c_ulonglong, 255))));
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_CNode_SaveCaller(arg__service: seL4_CNode, arg_index: seL4_Word, arg_depth: seL4_Uint8) callconv(.C) seL4_Error {
    var _service = arg__service;
    var index = arg_index;
    var depth = arg_depth;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, CNodeSaveCaller)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 2))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = index;
    mr1 = @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, depth)) & @as(c_ulonglong, 255)));
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_IRQControl_Get(arg__service: seL4_IRQControl, arg_irq: seL4_Word, arg_root: seL4_CNode, arg_index: seL4_Word, arg_depth: seL4_Uint8) callconv(.C) seL4_Error {
    var _service = arg__service;
    var irq = arg_irq;
    var root = arg_root;
    var index = arg_index;
    var depth = arg_depth;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, IRQIssueIRQHandler)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 3))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), root);
    mr0 = irq;
    mr1 = index;
    mr2 = @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, depth)) & @as(c_ulonglong, 255)));
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_IRQHandler_Ack(arg__service: seL4_IRQHandler) callconv(.C) seL4_Error {
    var _service = arg__service;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, IRQAckIRQ)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = 0;
    mr1 = 0;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_IRQHandler_SetNotification(arg__service: seL4_IRQHandler, arg_notification: seL4_CPtr) callconv(.C) seL4_Error {
    var _service = arg__service;
    var notification = arg_notification;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, IRQSetIRQHandler)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), notification);
    mr0 = 0;
    mr1 = 0;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_IRQHandler_Clear(arg__service: seL4_IRQHandler) callconv(.C) seL4_Error {
    var _service = arg__service;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, IRQClearIRQHandler)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    mr0 = 0;
    mr1 = 0;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
pub fn seL4_DomainSet_Set(arg__service: seL4_DomainSet, arg_domain: seL4_Uint8, arg_thread: seL4_TCB) callconv(.C) seL4_Error {
    var _service = arg__service;
    var domain = arg_domain;
    var thread = arg_thread;
    var result: seL4_Error = undefined;
    var tag: seL4_MessageInfo_t = seL4_MessageInfo_new(@bitCast(seL4_Uint64, @as(c_long, DomainSetSet)), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 0))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))), @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))));
    var output_tag: seL4_MessageInfo_t = undefined;
    var mr0: seL4_Word = undefined;
    var mr1: seL4_Word = undefined;
    var mr2: seL4_Word = undefined;
    var mr3: seL4_Word = undefined;
    seL4_SetCap(@as(c_int, 0), thread);
    mr0 = @bitCast(seL4_Word, @truncate(c_ulong, @bitCast(c_ulonglong, @as(c_ulonglong, domain)) & @as(c_ulonglong, 255)));
    mr1 = 0;
    mr2 = 0;
    mr3 = 0;
    output_tag = seL4_CallWithMRs(_service, tag, &mr0, &mr1, &mr2, &mr3);
    result = @import("std").meta.cast(seL4_Error, seL4_MessageInfo_get_label(output_tag));
    if (@bitCast(c_uint, @enumToInt(result)) != @bitCast(c_uint, seL4_NoError)) {
        seL4_SetMR(@as(c_int, 0), mr0);
        seL4_SetMR(@as(c_int, 1), mr1);
        seL4_SetMR(@as(c_int, 2), mr2);
        seL4_SetMR(@as(c_int, 3), mr3);
    }
    return result;
}
const enum_unnamed_2 = extern enum(c_int) {
    seL4_CapNull = 0,
    seL4_CapInitThreadTCB = 1,
    seL4_CapInitThreadCNode = 2,
    seL4_CapInitThreadVSpace = 3,
    seL4_CapIRQControl = 4,
    seL4_CapASIDControl = 5,
    seL4_CapInitThreadASIDPool = 6,
    seL4_CapIOPortControl = 7,
    seL4_CapIOSpace = 8,
    seL4_CapBootInfoFrame = 9,
    seL4_CapInitThreadIPCBuffer = 10,
    seL4_CapDomain = 11,
    seL4_CapSMMUSIDControl = 12,
    seL4_CapSMMUCBControl = 13,
    seL4_NumInitialCaps = 14,
    _,
};
pub const seL4_CapNull = @enumToInt(enum_unnamed_2.seL4_CapNull);
pub const seL4_CapInitThreadTCB = @enumToInt(enum_unnamed_2.seL4_CapInitThreadTCB);
pub const seL4_CapInitThreadCNode = @enumToInt(enum_unnamed_2.seL4_CapInitThreadCNode);
pub const seL4_CapInitThreadVSpace = @enumToInt(enum_unnamed_2.seL4_CapInitThreadVSpace);
pub const seL4_CapIRQControl = @enumToInt(enum_unnamed_2.seL4_CapIRQControl);
pub const seL4_CapASIDControl = @enumToInt(enum_unnamed_2.seL4_CapASIDControl);
pub const seL4_CapInitThreadASIDPool = @enumToInt(enum_unnamed_2.seL4_CapInitThreadASIDPool);
pub const seL4_CapIOPortControl = @enumToInt(enum_unnamed_2.seL4_CapIOPortControl);
pub const seL4_CapIOSpace = @enumToInt(enum_unnamed_2.seL4_CapIOSpace);
pub const seL4_CapBootInfoFrame = @enumToInt(enum_unnamed_2.seL4_CapBootInfoFrame);
pub const seL4_CapInitThreadIPCBuffer = @enumToInt(enum_unnamed_2.seL4_CapInitThreadIPCBuffer);
pub const seL4_CapDomain = @enumToInt(enum_unnamed_2.seL4_CapDomain);
pub const seL4_CapSMMUSIDControl = @enumToInt(enum_unnamed_2.seL4_CapSMMUSIDControl);
pub const seL4_CapSMMUCBControl = @enumToInt(enum_unnamed_2.seL4_CapSMMUCBControl);
pub const seL4_NumInitialCaps = @enumToInt(enum_unnamed_2.seL4_NumInitialCaps);
pub const seL4_SlotPos = seL4_Word;
pub const struct_seL4_SlotRegion = extern struct {
    start: seL4_SlotPos,
    end: seL4_SlotPos,
};
pub const seL4_SlotRegion = struct_seL4_SlotRegion;
pub const struct_seL4_UntypedDesc = extern struct {
    paddr: seL4_Word,
    sizeBits: seL4_Uint8,
    isDevice: seL4_Uint8,
    padding: [6]seL4_Uint8,
};
pub const seL4_UntypedDesc = struct_seL4_UntypedDesc;
pub const struct_seL4_BootInfo = extern struct {
    extraLen: seL4_Word,
    nodeID: seL4_NodeId,
    numNodes: seL4_Word,
    numIOPTLevels: seL4_Word,
    ipcBuffer: [*c]seL4_IPCBuffer,
    empty: seL4_SlotRegion,
    sharedFrames: seL4_SlotRegion,
    userImageFrames: seL4_SlotRegion,
    userImagePaging: seL4_SlotRegion,
    ioSpaceCaps: seL4_SlotRegion,
    extraBIPages: seL4_SlotRegion,
    initThreadCNodeSizeBits: seL4_Word,
    initThreadDomain: seL4_Domain,
    untyped: seL4_SlotRegion,
    untypedList: [230]seL4_UntypedDesc,
};
pub const seL4_BootInfo = struct_seL4_BootInfo;
pub const struct_seL4_BootInfoHeader = extern struct {
    id: seL4_Word,
    len: seL4_Word,
};
pub const seL4_BootInfoHeader = struct_seL4_BootInfoHeader;
pub extern fn seL4_InitBootInfo(bi: [*c]seL4_BootInfo) void;
pub extern fn seL4_GetBootInfo() [*c]seL4_BootInfo;
pub fn seL4_getArchFault(arg_tag: seL4_MessageInfo_t) callconv(.C) seL4_Fault_t {
    var tag = arg_tag;
    while (true) {
        switch (seL4_MessageInfo_get_label(tag)) {
            @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 2))) => return seL4_Fault_UnknownSyscall_new(seL4_GetMR(seL4_UnknownSyscall_RAX), seL4_GetMR(seL4_UnknownSyscall_RBX), seL4_GetMR(seL4_UnknownSyscall_RCX), seL4_GetMR(seL4_UnknownSyscall_RDX), seL4_GetMR(seL4_UnknownSyscall_RSI), seL4_GetMR(seL4_UnknownSyscall_RDI), seL4_GetMR(seL4_UnknownSyscall_RBP), seL4_GetMR(seL4_UnknownSyscall_R8), seL4_GetMR(seL4_UnknownSyscall_R9), seL4_GetMR(seL4_UnknownSyscall_R10), seL4_GetMR(seL4_UnknownSyscall_R11), seL4_GetMR(seL4_UnknownSyscall_R12), seL4_GetMR(seL4_UnknownSyscall_R13), seL4_GetMR(seL4_UnknownSyscall_R14), seL4_GetMR(seL4_UnknownSyscall_R15), seL4_GetMR(seL4_UnknownSyscall_FaultIP), seL4_GetMR(seL4_UnknownSyscall_SP), seL4_GetMR(seL4_UnknownSyscall_FLAGS), seL4_GetMR(seL4_UnknownSyscall_Syscall)),
            @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 3))) => return seL4_Fault_UserException_new(seL4_GetMR(seL4_UserException_FaultIP), seL4_GetMR(seL4_UserException_SP), seL4_GetMR(seL4_UserException_FLAGS), seL4_GetMR(seL4_UserException_Number), seL4_GetMR(seL4_UserException_Code)),
            @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 5))) => return seL4_Fault_VMFault_new(seL4_GetMR(seL4_VMFault_IP), seL4_GetMR(seL4_VMFault_Addr), seL4_GetMR(seL4_VMFault_PrefetchFault), seL4_GetMR(seL4_VMFault_FSR)),
            else => return seL4_Fault_NullFault_new(),
        }
        break;
    }
    return @import("std").mem.zeroes(struct_seL4_Fault);
}
pub fn seL4_getFault(arg_tag: seL4_MessageInfo_t) callconv(.C) seL4_Fault_t {
    var tag = arg_tag;
    while (true) {
        switch (seL4_MessageInfo_get_label(tag)) {
            @bitCast(seL4_Uint64, @as(c_long, @as(c_int, 1))) => return seL4_Fault_CapFault_new(seL4_GetMR(seL4_CapFault_IP), seL4_GetMR(seL4_CapFault_Addr), seL4_GetMR(seL4_CapFault_InRecvPhase), seL4_GetMR(seL4_CapFault_LookupFailureType), seL4_GetMR(seL4_CapFault_BitsLeft), seL4_GetMR(seL4_CapFault_GuardMismatch_GuardFound), seL4_GetMR(seL4_CapFault_GuardMismatch_BitsFound)),
            else => return seL4_getArchFault(tag),
        }
        break;
    }
    return @import("std").mem.zeroes(struct_seL4_Fault);
}
pub fn seL4_isVMFault_tag(arg_tag: seL4_MessageInfo_t) callconv(.C) seL4_Bool {
    var tag = arg_tag;
    return @bitCast(seL4_Bool, @truncate(i8, @boolToInt(seL4_MessageInfo_get_label(tag) == @bitCast(c_ulong, @as(c_long, seL4_Fault_VMFault)))));
}
pub fn seL4_isUnknownSyscall_tag(arg_tag: seL4_MessageInfo_t) callconv(.C) seL4_Bool {
    var tag = arg_tag;
    return @bitCast(seL4_Bool, @truncate(i8, @boolToInt(seL4_MessageInfo_get_label(tag) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UnknownSyscall)))));
}
pub fn seL4_isUserException_tag(arg_tag: seL4_MessageInfo_t) callconv(.C) seL4_Bool {
    var tag = arg_tag;
    return @bitCast(seL4_Bool, @truncate(i8, @boolToInt(seL4_MessageInfo_get_label(tag) == @bitCast(c_ulong, @as(c_long, seL4_Fault_UserException)))));
}
pub fn seL4_isNullFault_tag(arg_tag: seL4_MessageInfo_t) callconv(.C) seL4_Bool {
    var tag = arg_tag;
    return @bitCast(seL4_Bool, @truncate(i8, @boolToInt(seL4_MessageInfo_get_label(tag) == @bitCast(c_ulong, @as(c_long, seL4_Fault_NullFault)))));
}
pub fn seL4_isCapFault_tag(arg_tag: seL4_MessageInfo_t) callconv(.C) seL4_Bool {
    var tag = arg_tag;
    return @bitCast(seL4_Bool, @truncate(i8, @boolToInt(seL4_MessageInfo_get_label(tag) == @bitCast(c_ulong, @as(c_long, seL4_Fault_CapFault)))));
}
pub const seL4_CapRights = seL4_CapRights_t;
const struct_unnamed_3 = extern struct {
    fault_ip: seL4_Word,
    fault_addr: seL4_Word,
    prefetch_fault: seL4_Word,
    fsr: seL4_Word,
};
pub const seL4_PageFaultIpcRegisters = extern union {
    regs: struct_unnamed_3,
    raw: [4]seL4_Word,
};
pub const seL4_FaultType = seL4_Fault_tag_t;
pub fn seL4_GetTag() callconv(.C) seL4_MessageInfo_t {
    return seL4_GetIPCBuffer().*.tag;
}
pub fn seL4_SetTag(arg_tag: seL4_MessageInfo_t) callconv(.C) void {
    var tag = arg_tag;
    seL4_GetIPCBuffer().*.tag = tag;
}
pub fn seL4_PF_FIP() callconv(.C) seL4_Word {
    return seL4_GetMR(seL4_VMFault_IP);
}
pub fn seL4_PF_Addr() callconv(.C) seL4_Word {
    return seL4_GetMR(seL4_VMFault_Addr);
}
pub fn seL4_isPageFault_MSG() callconv(.C) seL4_Word {
    return @bitCast(seL4_Word, @as(c_long, seL4_isVMFault_tag(seL4_GetIPCBuffer().*.tag)));
}
pub fn seL4_isPageFault_Tag(arg_tag: seL4_MessageInfo_t) callconv(.C) seL4_Word {
    var tag = arg_tag;
    return @bitCast(seL4_Word, @as(c_long, seL4_isVMFault_tag(tag)));
}
pub fn seL4_isExceptIPC_Tag(arg_tag: seL4_MessageInfo_t) callconv(.C) seL4_Word {
    var tag = arg_tag;
    return @bitCast(seL4_Word, @as(c_long, seL4_isUnknownSyscall_tag(tag)));
}
pub fn seL4_ExceptIPC_Get(arg_mr: seL4_Word) callconv(.C) seL4_Word {
    var mr = arg_mr;
    return seL4_GetMR(@bitCast(c_int, @truncate(c_uint, mr)));
}
pub fn seL4_ExceptIPC_Set(arg_index: seL4_Word, arg_val: seL4_Word) callconv(.C) void {
    var index = arg_index;
    var val = arg_val;
    seL4_SetMR(@bitCast(c_int, @truncate(c_uint, index)), val);
}
pub fn seL4_IsArchSyscallFrom(arg_tag: seL4_MessageInfo_t) callconv(.C) seL4_Word {
    var tag = arg_tag;
    return @bitCast(seL4_Word, @as(c_long, @boolToInt(seL4_MessageInfo_get_length(tag) == @bitCast(c_ulong, @as(c_long, seL4_UnknownSyscall_Length)))));
}
pub fn seL4_IsArchExceptionFrom(arg_tag: seL4_MessageInfo_t) callconv(.C) seL4_Word {
    var tag = arg_tag;
    return @bitCast(seL4_Word, @as(c_long, @boolToInt(seL4_MessageInfo_get_length(tag) == @bitCast(c_ulong, @as(c_long, seL4_UnknownSyscall_Length)))));
}
pub const seL4_CapData_t = seL4_Word;
pub fn seL4_CapData_Badge_new(arg_badge: seL4_Word) callconv(.C) seL4_Word {
    var badge = arg_badge;
    return badge;
}
pub fn seL4_CapData_Guard_new(arg_guard: seL4_Word, arg_bits: seL4_Word) callconv(.C) seL4_Word {
    var guard = arg_guard;
    var bits = arg_bits;
    return seL4_CNode_CapData_new(guard, bits).words[@intCast(c_uint, @as(c_int, 0))];
}
pub extern fn platsupport_get_bootinfo() [*c]seL4_BootInfo;
pub extern fn sel4ps_get_seL4_CapInitThreadTCB() seL4_CPtr;
pub const intmax_t = c_long;
pub const uintmax_t = c_ulong;
pub const int_fast8_t = i8;
pub const int_fast64_t = i64;
pub const int_least8_t = i8;
pub const int_least16_t = i16;
pub const int_least32_t = i32;
pub const int_least64_t = i64;
pub const uint_fast8_t = u8;
pub const uint_fast64_t = u64;
pub const uint_least8_t = u8;
pub const uint_least16_t = u16;
pub const uint_least32_t = u32;
pub const uint_least64_t = u64;
pub const int_fast16_t = i32;
pub const int_fast32_t = i32;
pub const uint_fast16_t = u32;
pub const uint_fast32_t = u32;
pub extern fn __builtin_unreachable() noreturn;
pub fn autofree_(arg_p: ?*c_void) callconv(.C) void {
    var p = arg_p;
    var q: [*c]?*c_void = @ptrCast([*c]?*c_void, @alignCast(@import("std").meta.alignment(?*c_void), p));
    free(q.?.*);
}
pub extern fn utils_memory_dump(address: ?*c_void, bytes: usize, word_size: c_int) void;
pub const freq_t = u64;
pub fn freq_cycles_and_hz_to_ns(arg_ncycles: u64, arg_hz: freq_t) callconv(.C) u64 {
    var ncycles = arg_ncycles;
    var hz = arg_hz;
    if ((hz % @bitCast(c_ulong, @as(c_long, @as(c_int, 1000) * (@as(c_int, 1000) * @as(c_int, 1000))))) == @bitCast(c_ulong, @as(c_long, @as(c_int, 0)))) {
        return ncycles / (hz / @bitCast(c_ulong, @as(c_long, @as(c_int, 1000) * (@as(c_int, 1000) * @as(c_int, 1000)))));
    } else if ((hz % @bitCast(c_ulong, @as(c_long, @as(c_int, 1000) * @as(c_int, 1000)))) == @bitCast(c_ulong, @as(c_long, @as(c_int, 0)))) {
        return (ncycles *% @as(c_ulong, 1000)) / (hz / @bitCast(c_ulong, @as(c_long, @as(c_int, 1000) * @as(c_int, 1000))));
    } else if ((hz % @bitCast(c_ulong, @as(c_long, @as(c_int, 1000)))) == @bitCast(c_ulong, @as(c_long, @as(c_int, 0)))) {
        return (ncycles *% (@as(c_ulong, 1000) *% @as(c_ulong, 1000))) / (hz / @bitCast(c_ulong, @as(c_long, @as(c_int, 1000))));
    }
    return (ncycles *% (@as(c_ulong, 1000) *% (@as(c_ulong, 1000) *% @as(c_ulong, 1000)))) / hz;
}
pub fn freq_cycles_and_ns_to_hz(arg_ncycles: u64, arg_ns: u64) callconv(.C) freq_t {
    var ncycles = arg_ncycles;
    var ns = arg_ns;
    return (ncycles *% (@as(c_ulong, 1000) *% (@as(c_ulong, 1000) *% @as(c_ulong, 1000)))) / ns;
}
pub fn freq_ns_and_hz_to_cycles(arg_ns: u64, arg_hz: freq_t) callconv(.C) u64 {
    var ns = arg_ns;
    var hz = arg_hz;
    return (ns *% hz) / (@as(c_ulong, 1000) *% (@as(c_ulong, 1000) *% @as(c_ulong, 1000)));
}
pub const struct_list_node = extern struct {
    data: ?*c_void,
    next: [*c]struct_list_node,
};
pub const list_t = extern struct {
    head: [*c]struct_list_node,
};
pub extern fn list_init(l: [*c]list_t) c_int;
pub extern fn list_prepend(l: [*c]list_t, data: ?*c_void) c_int;
pub extern fn list_append(l: [*c]list_t, data: ?*c_void) c_int;
pub extern fn list_is_empty(l: [*c]list_t) bool;
pub extern fn list_exists(l: [*c]list_t, data: ?*c_void, cmp: ?fn (?*c_void, ?*c_void) callconv(.C) c_int) bool;
pub extern fn list_length(l: [*c]list_t) c_int;
pub extern fn list_index(l: [*c]list_t, data: ?*c_void, cmp: ?fn (?*c_void, ?*c_void) callconv(.C) c_int) c_int;
pub extern fn list_foreach(l: [*c]list_t, action: ?fn (?*c_void, ?*c_void) callconv(.C) c_int, token: ?*c_void) c_int;
pub extern fn list_remove(l: [*c]list_t, data: ?*c_void, cmp: ?fn (?*c_void, ?*c_void) callconv(.C) c_int) c_int;
pub extern fn list_remove_all(l: [*c]list_t) c_int;
pub extern fn list_destroy(l: [*c]list_t) c_int;
pub extern fn list_prepend_node(l: [*c]list_t, node: [*c]struct_list_node) c_int;
pub extern fn list_append_node(l: [*c]list_t, node: [*c]struct_list_node) c_int;
pub extern fn list_remove_node(l: [*c]list_t, data: ?*c_void, cmp: ?fn (?*c_void, ?*c_void) callconv(.C) c_int) c_int;
pub extern fn list_remove_all_nodes(l: [*c]list_t) c_int;
pub fn muldivu64(arg_a: u64, arg_b: u64, arg_c: u64) callconv(.C) u64 {
    var a = arg_a;
    var b = arg_b;
    var c = arg_c;
    var quotient: u64 = 0;
    var remainder: u64 = 0;
    var cur_quotient: u64 = b / c;
    var cur_remainder: u64 = b % c;
    while (a != 0) {
        if ((a & @bitCast(c_ulong, @as(c_long, @as(c_int, 1)))) != 0) {
            quotient +%= cur_quotient;
            remainder +%= cur_remainder;
            if (remainder >= c) {
                quotient +%= 1;
                remainder -%= c;
            }
        }
        a >>= @intCast(@import("std").math.Log2Int(c_int), @as(c_int, 1));
        cur_quotient <<= @intCast(@import("std").math.Log2Int(c_int), @as(c_int, 1));
        cur_remainder <<= @intCast(@import("std").math.Log2Int(c_int), @as(c_int, 1));
        if (cur_remainder >= c) {
            cur_quotient +%= 1;
            cur_remainder -%= c;
        }
    }
    return quotient;
}
pub extern fn utils_run_on_stack(stack_top: ?*c_void, func: ?fn (?*c_void) callconv(.C) ?*c_void, arg: ?*c_void) ?*c_void; // /host/sel4-tutorials-manifest/projects/util_libs/libutils/arch_include/x86/utils/arch/ud.h:14:5: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /host/sel4-tutorials-manifest/projects/util_libs/libutils/arch_include/x86/utils/arch/ud.h:13:34: warning: unable to translate function, demoted to extern
pub extern fn utils_undefined_instruction() callconv(.C) void;
pub extern fn utils_put_xml_escape(string: [*c]const u8, print: ?fn (?*c_void, [*c]const u8, ...) callconv(.C) c_int, arg: ?*c_void) c_int;
pub extern fn zf_log_set_tag_prefix(prefix: [*c]const u8) void;
pub extern fn zf_log_set_mem_width(w: c_uint) void;
pub extern fn zf_log_set_output_level(lvl: c_int) void;
pub const struct_zf_log_output_ctx = extern struct {
    lvl: c_int,
    tag: [*c]const u8,
    buf: [*c]u8,
    e: [*c]u8,
    p: [*c]u8,
    tag_b: [*c]u8,
    tag_e: [*c]u8,
    msg_b: [*c]u8,
};
pub const zf_log_output_ctx = struct_zf_log_output_ctx;
pub const zf_log_output_cb = ?fn ([*c]zf_log_output_ctx) callconv(.C) void;
pub extern fn zf_log_set_output_callback(cb: zf_log_output_cb) void;
pub extern var _zf_log_output_lvl: c_int;
pub extern fn _zf_log_write_d(func: [*c]const u8, file: [*c]const u8, line: c_uint, lvl: c_int, tag: [*c]const u8, fmt: [*c]const u8, ...) void;
pub extern fn _zf_log_write(lvl: c_int, tag: [*c]const u8, fmt: [*c]const u8, ...) void;
pub extern fn _zf_log_write_mem_d(func: [*c]const u8, file: [*c]const u8, line: c_uint, lvl: c_int, tag: [*c]const u8, d: ?*const c_void, d_sz: c_uint, fmt: [*c]const u8, ...) void;
pub extern fn _zf_log_write_mem(lvl: c_int, tag: [*c]const u8, d: ?*const c_void, d_sz: c_uint, fmt: [*c]const u8, ...) void; // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/zf_log.h:312:20: warning: TODO unable to translate variadic function, demoted to extern
pub extern fn _zf_log_unused(dummy: c_int, ...) void;
pub const __INTMAX_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):62:9
pub const __UINTMAX_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):66:9
pub const __PTRDIFF_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):73:9
pub const __INTPTR_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):77:9
pub const __SIZE_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):81:9
pub const __UINTPTR_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):96:9
pub const __INT64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):158:9
pub const __UINT64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):186:9
pub const __INT_LEAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):224:9
pub const __UINT_LEAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):228:9
pub const __INT_FAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // (no file):264:9
pub const __UINT_FAST64_TYPE__ = @compileError("unable to translate C expr: unexpected token .Keyword_unsigned"); // (no file):268:9
pub const __restrict = @compileError("unable to translate C expr: unexpected token .Keyword_restrict"); // /host/sel4-tutorials-manifest/capabilities_build/musllibc/build-temp/stage/include/features.h:20:9
pub const __inline = @compileError("unable to translate C expr: unexpected token .Keyword_inline"); // /host/sel4-tutorials-manifest/capabilities_build/musllibc/build-temp/stage/include/features.h:26:9
pub const CONFIG_LIB_SEL4_FUNCTION_ATTRIBUTE = @compileError("unable to translate C expr: unexpected token .Keyword_inline"); // /host/sel4-tutorials-manifest/capabilities_build/libsel4/gen_config/sel4/gen_config.h:5:9
pub const SEL4_DEPRECATE_MACRO = @compileError("unable to translate C expr: unexpected token .Identifier"); // /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/macros.h:21:9
pub const LIBSEL4_INLINE = @compileError("unable to translate C expr: unexpected token .Keyword_static"); // /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/macros.h:30:9
pub const LIBSEL4_INLINE_FUNC = @compileError("unable to translate C expr: unexpected token .Keyword_static"); // /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/macros.h:31:9
pub const SEL4_COMPILE_ASSERT = @compileError("unable to translate C expr: unexpected token .Keyword_static_assert"); // /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/macros.h:47:9
pub const SEL4_SIZE_SANITY = @compileError("unable to translate C expr: expected ',' or ')'"); // /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/macros.h:54:9
pub const SEL4_OFFSETOF = @compileError("TODO implement function '__builtin_offsetof' in std.c.builtins"); // /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/macros.h:58:9
pub const SEL4_FORCE_LONG_ENUM = @compileError("unable to translate C expr: unexpected token .HashHash"); // /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/macros.h:66:9
pub const seL4_integer_size_assert = @compileError("unable to translate C expr: expected ',' or ')'"); // /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/simple_types.h:29:9
pub const _seL4_int16_type = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/simple_types.h:48:9
pub const _seL4_int64_type = @compileError("unable to translate C expr: unexpected token .Keyword_int"); // /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/simple_types.h:74:9
pub const _macro_str_concat_helper2 = @compileError("unable to translate C expr: unexpected token .Hash"); // /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/simple_types.h:90:9
pub const _macro_str_concat_helper1 = @compileError("unable to translate C expr: expected ',' or ')'"); // /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/simple_types.h:91:9
pub const seL4_Assert = @compileError("unable to translate C expr: unexpected token .Keyword_do"); // /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/assert.h:31:9
pub const seL4_CompileTimeAssert = @compileError("unable to translate C expr: unexpected token .Keyword_extern"); // /host/sel4-tutorials-manifest/kernel/libsel4/include/sel4/assert.h:43:9
pub const assert_size_correct = @compileError("unable to translate C expr: unexpected token .Keyword_typedef"); // /host/sel4-tutorials-manifest/capabilities_build/libsel4/include/interfaces/sel4_client.h:19:9
pub const assert = @compileError("unable to translate C expr: unexpected token .Hash"); // /host/sel4-tutorials-manifest/capabilities_build/musllibc/build-temp/stage/include/assert.h:8:9
pub const static_assert = @compileError("unable to translate C expr: unexpected token .Keyword_static_assert"); // /host/sel4-tutorials-manifest/capabilities_build/musllibc/build-temp/stage/include/assert.h:12:9
pub const COLOR_SGR_CODE = @compileError("unable to translate C expr: unexpected token .Hash"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/ansi_color.h:41:9
pub const COLOR_ATTR_REC8 = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/ansi_color.h:55:9
pub const COLOR_ATTR_REC7 = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/ansi_color.h:56:9
pub const COLOR_ATTR_REC6 = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/ansi_color.h:57:9
pub const COLOR_ATTR_REC5 = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/ansi_color.h:58:9
pub const COLOR_ATTR_REC4 = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/ansi_color.h:59:9
pub const COLOR_ATTR_REC3 = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/ansi_color.h:60:9
pub const COLOR_ATTR_REC2 = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/ansi_color.h:61:9
pub const COLOR_ATTR_REC = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/ansi_color.h:62:9
pub const ANSI_COLOR = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/ansi_color.h:64:9
pub const ANSI_COLOR2 = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/ansi_color.h:70:9
pub const COLORIZE = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/ansi_color.h:78:9
pub const COLORIZE2 = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/ansi_color.h:79:9
pub const ANSI_BG_COLOR = @compileError("unable to translate C expr: unexpected token .HashHash"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/ansi.h:18:9
pub const UINT32_C = @compileError("unable to translate C expr: unexpected token .HashHash"); // /host/sel4-tutorials-manifest/capabilities_build/musllibc/build-temp/stage/include/stdint.h:103:9
pub const INT64_C = @compileError("unable to translate C expr: unexpected token .HashHash"); // /host/sel4-tutorials-manifest/capabilities_build/musllibc/build-temp/stage/include/stdint.h:106:9
pub const UINT64_C = @compileError("unable to translate C expr: unexpected token .HashHash"); // /host/sel4-tutorials-manifest/capabilities_build/musllibc/build-temp/stage/include/stdint.h:107:9
pub const INTMAX_C = @compileError("unable to translate C expr: unexpected token .HashHash"); // /host/sel4-tutorials-manifest/capabilities_build/musllibc/build-temp/stage/include/stdint.h:108:9
pub const UINTMAX_C = @compileError("unable to translate C expr: unexpected token .HashHash"); // /host/sel4-tutorials-manifest/capabilities_build/musllibc/build-temp/stage/include/stdint.h:109:9
pub const ALIAS = @compileError("unable to translate C expr: unexpected token .Hash"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/attribute.h:22:9
pub const ALLOC_SIZE = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/attribute.h:24:9
pub const ASSUME_ALIGNED = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/attribute.h:25:9
pub const NONNULL = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/attribute.h:49:9
pub const WEAK_ALIAS = @compileError("unable to translate C expr: unexpected token .Hash"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/attribute.h:68:9
pub const CTZL = @compileError("TODO implement function '__builtin_ctzl' in std.c.builtins"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/builtin.h:15:9
pub const CLZL = @compileError("TODO implement function '__builtin_clzl' in std.c.builtins"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/builtin.h:16:9
pub const FFS = @compileError("TODO implement function '__builtin_ffs' in std.c.builtins"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/builtin.h:17:9
pub const FFSL = @compileError("TODO implement function '__builtin_ffsl' in std.c.builtins"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/builtin.h:18:9
pub const OFFSETOF = @compileError("TODO implement function '__builtin_offsetof' in std.c.builtins"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/builtin.h:19:9
pub const TYPES_COMPATIBLE = @compileError("TODO implement function '__builtin_types_compatible_p' in std.c.builtins"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/builtin.h:20:9
pub const CHOOSE_EXPR = @compileError("TODO implement function '__builtin_choose_expr' in std.c.builtins"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/builtin.h:21:9
pub const IS_CONSTANT = @compileError("TODO implement function '__builtin_constant_p' in std.c.builtins"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/builtin.h:22:9
pub const POPCOUNTL = @compileError("TODO implement function '__builtin_popcountl' in std.c.builtins"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/builtin.h:24:9
pub const UNREACHABLE = @compileError("unable to translate C expr: unexpected token .Keyword_do"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/builtin.h:44:9
pub const GUARD = @compileError("unable to translate C expr: unexpected token .Keyword_do"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/verification.h:17:9
pub const _STRINGIFY = @compileError("unable to translate C expr: unexpected token .Hash"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/stringify.h:14:9
pub const _JOIN = @compileError("unable to translate C expr: unexpected token .HashHash"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/stringify.h:17:9
pub const MASK = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/arith.h:30:9
pub const NEXT_POWER_OF_2 = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/arith.h:48:9
pub const ROUND_DOWN = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/arith.h:65:9
pub const ROUND_UP = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/arith.h:73:9
pub const DIV_ROUND_UP = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/arith.h:79:9
pub const DIV_ROUND_UNSAFE = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/arith.h:88:9
pub const DIV_ROUND = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/arith.h:94:9
pub const MIN = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/arith.h:100:9
pub const MAX = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/arith.h:108:9
pub const ISINRANGE = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/arith.h:117:9
pub const CLAMP = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/arith.h:124:9
pub const CLAMP_ADD = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/arith.h:136:9
pub const CLAMP_SUB = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/arith.h:145:9
pub const ASSUME = @compileError("unable to translate C expr: unexpected token .Keyword_do"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/assume.h:17:9
pub const COLD_PATH = @compileError("unable to translate C expr: unexpected token .Keyword_do"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/assume.h:29:9
pub const HOT_PATH = @compileError("unable to translate C expr: unexpected token .Keyword_do"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/assume.h:37:9
pub const compile_time_assert = @compileError("unable to translate C expr: unexpected token .Hash"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/compile_time.h:11:9
pub const _macrotest_1 = @compileError("unable to translate C expr: unexpected token .Comma"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/config.h:10:9
pub const _is_set_ = @compileError("unable to translate C expr: expected ',' or ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/config.h:11:9
pub const _is_set__ = @compileError("unable to translate C expr: expected ',' or ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/config.h:12:9
pub const _is_set___ = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/config.h:13:9
pub const PRINT_ONCE = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/debug.h:12:9
pub const FORCE_READ = @compileError("unable to translate C expr: unexpected token .Keyword_do"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/force.h:19:9
pub const FORMAT_STRING = @compileError("unable to translate C expr: unexpected token .Keyword_generic"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/print.h:28:13
pub const SGLIB_ARRAY_SINGLE_HEAP_SORT = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:54:9
pub const SGLIB_ARRAY_HEAP_SORT = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:58:9
pub const SGLIB___ARRAY_HEAP_DOWN = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:69:9
pub const SGLIB_ARRAY_SINGLE_QUICK_SORT = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:92:9
pub const SGLIB_ARRAY_QUICK_SORT = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:96:9
pub const SGLIB_ARRAY_BINARY_SEARCH = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:164:9
pub const SGLIB_QUEUE_INIT = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:196:9
pub const SGLIB_QUEUE_ADD_NEXT = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:200:9
pub const SGLIB_QUEUE_ADD = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:204:9
pub const SGLIB_QUEUE_DELETE_FIRST = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:208:9
pub const SGLIB_QUEUE_DELETE = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:212:9
pub const SGLIB_HEAP_INIT = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:223:9
pub const SGLIB_HEAP_ADD_NEXT = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:227:9
pub const SGLIB_HEAP_ADD = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:236:9
pub const SGLIB_HEAP_DELETE_FIRST = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:241:9
pub const SGLIB_HEAP_DELETE = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:247:9
pub const SGLIB_HASH_TAB_INIT = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:275:9
pub const SGLIB_HASH_TAB_ADD_IF_NOT_MEMBER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:280:9
pub const SGLIB_HASH_TAB_FIND_MEMBER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:291:9
pub const SGLIB_HASH_TAB_IS_MEMBER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:307:9
pub const SGLIB_HASH_TAB_MAP_ON_ELEMENTS = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:322:9
pub const SGLIB_LIST_ADD = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:338:9
pub const SGLIB_LIST_CONCAT = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:343:9
pub const SGLIB_LIST_DELETE = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:353:9
pub const SGLIB_LIST_ADD_IF_NOT_MEMBER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:360:9
pub const SGLIB_LIST_DELETE_IF_MEMBER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:369:9
pub const SGLIB_LIST_IS_MEMBER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:378:9
pub const SGLIB_LIST_FIND_MEMBER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:384:9
pub const SGLIB_LIST_MAP_ON_ELEMENTS = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:390:9
pub const SGLIB_LIST_LEN = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:401:9
pub const SGLIB_LIST_REVERSE = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:408:9
pub const SGLIB_LIST_SORT = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:419:9
pub const SGLIB_SORTED_LIST_ADD = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:466:9
pub const SGLIB_SORTED_LIST_ADD_IF_NOT_MEMBER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:474:9
pub const SGLIB_SORTED_LIST_DELETE = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:487:9
pub const SGLIB_SORTED_LIST_DELETE_IF_MEMBER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:491:9
pub const SGLIB_SORTED_LIST_FIND_MEMBER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:503:9
pub const SGLIB_SORTED_LIST_IS_MEMBER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:511:9
pub const SGLIB_SORTED_LIST_FIND_MEMBER_OR_PLACE = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:518:9
pub const SGLIB_SORTED_LIST_LEN = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:525:9
pub const SGLIB_SORTED_LIST_MAP_ON_ELEMENTS = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:529:9
pub const SGLIB___DL_LIST_CREATE_SINGLETON = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:540:9
pub const SGLIB_DL_LIST_ADD_AFTER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:545:9
pub const SGLIB_DL_LIST_ADD_BEFORE = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:556:9
pub const SGLIB_DL_LIST_ADD = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:567:9
pub const SGLIB___DL_LIST_GENERIC_ADD_IF_NOT_MEMBER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:572:9
pub const SGLIB_DL_LIST_ADD_BEFORE_IF_NOT_MEMBER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:584:9
pub const SGLIB_DL_LIST_ADD_AFTER_IF_NOT_MEMBER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:588:9
pub const SGLIB_DL_LIST_ADD_IF_NOT_MEMBER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:592:9
pub const SGLIB_DL_LIST_CONCAT = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:596:9
pub const SGLIB_DL_LIST_DELETE = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:606:9
pub const SGLIB_DL_LIST_DELETE_IF_MEMBER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:618:9
pub const SGLIB_DL_LIST_IS_MEMBER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:630:9
pub const SGLIB_DL_LIST_FIND_MEMBER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:639:9
pub const SGLIB_DL_LIST_MAP_ON_ELEMENTS = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:648:9
pub const SGLIB_DL_LIST_SORT = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:659:9
pub const SGLIB_DL_LIST_GET_FIRST = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:670:9
pub const SGLIB_DL_LIST_GET_LAST = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:679:9
pub const SGLIB_DL_LIST_LEN = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:688:9
pub const SGLIB_DL_LIST_REVERSE = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:701:9
pub const SGLIB___DL_LIST_CREATE_FROM_LIST = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:723:9
pub const SGLIB___BIN_TREE_MAP_ON_ELEMENTS = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:736:9
pub const SGLIB_BIN_TREE_MAP_ON_ELEMENTS = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:781:9
pub const SGLIB_BIN_TREE_MAP_ON_ELEMENTS_PREORDER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:785:9
pub const SGLIB_BIN_TREE_MAP_ON_ELEMENTS_POSTORDER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:789:9
pub const SGLIB___BIN_TREE_FIND_MEMBER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:793:9
pub const SGLIB_DEFINE_ARRAY_SORTING_PROTOTYPES = @compileError("unable to translate C expr: unexpected token .Keyword_extern"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:820:9
pub const SGLIB_DEFINE_ARRAY_SORTING_FUNCTIONS = @compileError("unable to translate C expr: unexpected token .HashHash"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:825:9
pub const SGLIB_DEFINE_QUEUE_PROTOTYPES = @compileError("unable to translate C expr: unexpected token .Keyword_extern"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:844:9
pub const SGLIB_DEFINE_QUEUE_FUNCTIONS = @compileError("unable to translate C expr: unexpected token .HashHash"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:856:9
pub const SGLIB_DEFINE_HEAP_PROTOTYPES = @compileError("unable to translate C expr: unexpected token .Keyword_extern"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:894:9
pub const SGLIB_DEFINE_HEAP_FUNCTIONS = @compileError("unable to translate C expr: unexpected token .HashHash"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:905:9
pub const SGLIB_DEFINE_HASHED_TABLE_PROTOTYPES = @compileError("unable to translate C expr: unexpected token .HashHash"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:953:9
pub const SGLIB_DEFINE_HASHED_TABLE_FUNCTIONS = @compileError("unable to translate C expr: unexpected token .HashHash"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:968:9
pub const SGLIB_DEFINE_HASHED_CONTAINER_PROTOTYPES = @compileError("unable to translate C expr: unexpected token .HashHash"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:1036:9
pub const SGLIB_DEFINE_HASHED_CONTAINER_FUNCTIONS = @compileError("unable to translate C expr: unexpected token .HashHash"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:1056:9
pub const SGLIB_DEFINE_LIST_PROTOTYPES = @compileError("unable to translate C expr: unexpected token .HashHash"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:1127:9
pub const SGLIB_DEFINE_LIST_FUNCTIONS = @compileError("unable to translate C expr: unexpected token .HashHash"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:1150:9
pub const SGLIB_DEFINE_SORTED_LIST_PROTOTYPES = @compileError("unable to translate C expr: unexpected token .HashHash"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:1220:9
pub const SGLIB_DEFINE_SORTED_LIST_FUNCTIONS = @compileError("unable to translate C expr: unexpected token .HashHash"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:1241:9
pub const SGLIB_DEFINE_DL_LIST_PROTOTYPES = @compileError("unable to translate C expr: unexpected token .HashHash"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:1308:9
pub const SGLIB_DEFINE_DL_LIST_FUNCTIONS = @compileError("unable to translate C expr: unexpected token .HashHash"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:1338:9
pub const SGLIB___RBTREE_FIX_INSERTION_DISCREPANCY = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:1455:9
pub const SGLIB___RBTREE_FIX_DELETION_DISCREPANCY = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:1496:9
pub const SGLIB_DEFINE_RBTREE_FUNCTIONS_GENERAL = @compileError("unable to translate C expr: unexpected token .Keyword_static"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:1618:9
pub const SGLIB_DEFINE_RBTREE_PROTOTYPES = @compileError("unable to translate C expr: unexpected token .HashHash"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:1906:9
pub const SGLIB___SET_VALUE = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:1946:9
pub const SGLIB_ARRAY_ELEMENTS_EXCHANGER = @compileError("unable to translate C expr: unexpected token .LBrace"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/sglib.h:1947:9
pub const _ZF_LOG_IMP = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/zf_log.h:298:10
pub const _ZF_LOG_MEM_IMP = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/zf_log.h:304:10
pub const _ZF_LOG_UNUSED = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/zf_log.h:314:9
pub const ZF_LOGV = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/zf_log.h:323:10
pub const ZF_LOGV_MEM = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/zf_log.h:324:10
pub const ZF_LOGD = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/zf_log.h:333:10
pub const ZF_LOGD_MEM = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/zf_log.h:334:10
pub const ZF_LOGI = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/zf_log.h:343:10
pub const ZF_LOGI_MEM = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/zf_log.h:344:10
pub const ZF_LOGW = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/zf_log.h:353:10
pub const ZF_LOGW_MEM = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/zf_log.h:354:10
pub const ZF_LOGE = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/zf_log.h:358:10
pub const ZF_LOGE_MEM = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/zf_log.h:360:10
pub const ZF_LOGF = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/zf_log.h:368:10
pub const ZF_LOGF_MEM = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/zf_log.h:371:10
pub const ZF_LOGD_IF = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/zf_log_if.h:23:9
pub const ZF_LOGI_IF = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/zf_log_if.h:25:9
pub const ZF_LOGW_IF = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/zf_log_if.h:27:9
pub const ZF_LOGE_IF = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/zf_log_if.h:29:9
pub const ZF_LOGF_IF = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/zf_log_if.h:31:9
pub const LOG_ERROR = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/util.h:62:9
pub const LOG_INFO = @compileError("unable to translate C expr: expected ')'"); // /host/sel4-tutorials-manifest/projects/util_libs/libutils/include/utils/util.h:63:9
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 12);
pub const __clang_minor__ = @as(c_int, 0);
pub const __clang_patchlevel__ = @as(c_int, 1);
pub const __clang_version__ = "12.0.1 (git@github.com:ziglang/zig-bootstrap.git 8cc2870e09320a390cafe4e23624e8ed40bd363c)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 12.0.1 (git@github.com:ziglang/zig-bootstrap.git 8cc2870e09320a390cafe4e23624e8ed40bd363c)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __OPTIMIZE__ = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").meta.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").meta.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").meta.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WINT_MAX__ = @import("std").meta.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INTMAX_MAX__ = @import("std").meta.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __SIZE_MAX__ = @import("std").meta.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_MAX__ = @import("std").meta.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __PTRDIFF_MAX__ = @import("std").meta.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_MAX__ = @import("std").meta.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __UINTPTR_MAX__ = @import("std").meta.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __INTMAX_C_SUFFIX__ = L;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __UINTMAX_C_SUFFIX__ = UL;
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __WCHAR_TYPE__ = c_int;
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_TYPE__ = c_int;
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __SIG_ATOMIC_MAX__ = @import("std").meta.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = 4.9406564584124654e-324;
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = 2.2204460492503131e-16;
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = 1.7976931348623157e+308;
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = 2.2250738585072014e-308;
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __INT64_C_SUFFIX__ = L;
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_MAX__ = @import("std").meta.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = U;
pub const __UINT32_MAX__ = @import("std").meta.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").meta.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_C_SUFFIX__ = UL;
pub const __UINT64_MAX__ = @import("std").meta.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").meta.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").meta.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").meta.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").meta.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_MAX__ = @import("std").meta.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_MAX__ = @import("std").meta.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").meta.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").meta.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").meta.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_MAX__ = @import("std").meta.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_MAX__ = @import("std").meta.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __FLT_EVAL_METHOD__ = @as(c_int, 0);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = __attribute__(address_space(@as(c_int, 256)));
pub const __seg_fs = __attribute__(address_space(@as(c_int, 257)));
pub const __k8 = @as(c_int, 1);
pub const __k8__ = @as(c_int, 1);
pub const __tune_k8__ = @as(c_int, 1);
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 0);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const _DEBUG = @as(c_int, 1);
pub const _BSD_SOURCE = @as(c_int, 1);
pub const _XOPEN_SOURCE = @as(c_int, 700);
pub const NULL = @import("std").meta.cast(?*c_void, @as(c_int, 0));
pub const _Addr = c_long;
pub const _Int64 = c_long;
pub const _Reg = c_long;
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const MB_CUR_MAX = __ctype_get_mb_cur_max();
pub const RAND_MAX = @import("std").meta.promoteIntLiteral(c_int, 0x7fffffff, .hexadecimal);
pub const WNOHANG = @as(c_int, 1);
pub const WUNTRACED = @as(c_int, 2);
pub inline fn WEXITSTATUS(s: anytype) @TypeOf((s & @import("std").meta.promoteIntLiteral(c_int, 0xff00, .hexadecimal)) >> @as(c_int, 8)) {
    return (s & @import("std").meta.promoteIntLiteral(c_int, 0xff00, .hexadecimal)) >> @as(c_int, 8);
}
pub inline fn WTERMSIG(s: anytype) @TypeOf(s & @as(c_int, 0x7f)) {
    return s & @as(c_int, 0x7f);
}
pub inline fn WSTOPSIG(s: anytype) @TypeOf(WEXITSTATUS(s)) {
    return WEXITSTATUS(s);
}
pub inline fn WIFEXITED(s: anytype) @TypeOf(!(WTERMSIG(s) != 0)) {
    return !(WTERMSIG(s) != 0);
}
pub inline fn WIFSTOPPED(s: anytype) @TypeOf(@import("std").meta.cast(c_short, ((s & @import("std").meta.promoteIntLiteral(c_int, 0xffff, .hexadecimal)) * @import("std").meta.promoteIntLiteral(c_int, 0x10001, .hexadecimal)) >> @as(c_int, 8)) > @as(c_int, 0x7f00)) {
    return @import("std").meta.cast(c_short, ((s & @import("std").meta.promoteIntLiteral(c_int, 0xffff, .hexadecimal)) * @import("std").meta.promoteIntLiteral(c_int, 0x10001, .hexadecimal)) >> @as(c_int, 8)) > @as(c_int, 0x7f00);
}
pub inline fn WIFSIGNALED(s: anytype) @TypeOf(((s & @import("std").meta.promoteIntLiteral(c_int, 0xffff, .hexadecimal)) - @as(c_uint, 1)) < @as(c_uint, 0xff)) {
    return ((s & @import("std").meta.promoteIntLiteral(c_int, 0xffff, .hexadecimal)) - @as(c_uint, 1)) < @as(c_uint, 0xff);
}
pub inline fn WCOREDUMP(s: anytype) @TypeOf(s & @as(c_int, 0x80)) {
    return s & @as(c_int, 0x80);
}
pub inline fn WIFCONTINUED(s: anytype) @TypeOf(s == @import("std").meta.promoteIntLiteral(c_int, 0xffff, .hexadecimal)) {
    return s == @import("std").meta.promoteIntLiteral(c_int, 0xffff, .hexadecimal);
}
pub const EOF = -@as(c_int, 1);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 1024);
pub const FILENAME_MAX = @as(c_int, 4096);
pub const FOPEN_MAX = @as(c_int, 1000);
pub const TMP_MAX = @as(c_int, 10000);
pub const L_tmpnam = @as(c_int, 20);
pub const L_ctermid = @as(c_int, 20);
pub const P_tmpdir = "/tmp";
pub const L_cuserid = @as(c_int, 20);
pub const CONFIG_ARM_HIKEY_OUTSTANDING_PREFETCHERS = @as(c_int, 0);
pub const CONFIG_ARM_HIKEY_PREFETCHER_STRIDE = @as(c_int, 0);
pub const CONFIG_ARM_HIKEY_PREFETCHER_NPFSTRM = @as(c_int, 0);
pub const CONFIG_ARCH_X86_64 = @as(c_int, 1);
pub const CONFIG_SEL4_ARCH = x86_64;
pub const CONFIG_ARCH_X86 = @as(c_int, 1);
pub const CONFIG_ARCH = x86;
pub const CONFIG_WORD_SIZE = @as(c_int, 64);
pub const CONFIG_PC99_TSC_FREQUENCY = @as(c_int, 0);
pub const CONFIG_PLAT_PC99 = @as(c_int, 1);
pub const CONFIG_PLAT = pc99;
pub const CONFIG_ARCH_X86_NEHALEM = @as(c_int, 1);
pub const CONFIG_KERNEL_X86_MICRO_ARCH = nehalem;
pub const CONFIG_IRQ_IOAPIC = @as(c_int, 1);
pub const CONFIG_KERNEL_IRQ_CONTROLLER = IOAPIC;
pub const CONFIG_MAX_NUM_IOAPIC = @as(c_int, 1);
pub const CONFIG_XAPIC = @as(c_int, 1);
pub const CONFIG_KERNEL_LAPIC_MODE = XAPIC;
pub const CONFIG_CACHE_LN_SZ = @as(c_int, 64);
pub const CONFIG_MAX_RMRR_ENTRIES = @as(c_int, 1);
pub const CONFIG_MAX_VPIDS = @as(c_int, 0);
pub const CONFIG_HUGE_PAGE = @as(c_int, 1);
pub const CONFIG_SYSCALL = @as(c_int, 1);
pub const CONFIG_KERNEL_X86_SYSCALL = syscall;
pub const CONFIG_FXSAVE = @as(c_int, 1);
pub const CONFIG_KERNEL_X86_FPU = FXSAVE;
pub const CONFIG_XSAVE_FEATURE_SET = @as(c_int, 0);
pub const CONFIG_XSAVE_SIZE = @as(c_int, 512);
pub const CONFIG_FSGSBASE_MSR = @as(c_int, 1);
pub const CONFIG_KERNEL_FSGS_BASE = msr;
pub const CONFIG_MULTIBOOT_GRAPHICS_MODE_NONE = @as(c_int, 1);
pub const CONFIG_KERNEL_MUTLTIBOOT_GFX_MODE = none;
pub const CONFIG_MULTIBOOT1_HEADER = @as(c_int, 1);
pub const CONFIG_MULTIBOOT2_HEADER = @as(c_int, 1);
pub const CONFIG_KERNEL_SKIM_WINDOW = @as(c_int, 1);
pub const CONFIG_KERNEL_X86_IBRS_NONE = @as(c_int, 1);
pub const CONFIG_KERNEL_X86_IBRS = ibrs_none;
pub const CONFIG_HAVE_FPU = @as(c_int, 1);
pub const CONFIG_PADDR_USER_DEVICE_TOP = @import("std").meta.promoteIntLiteral(c_int, 140737488355328, .decimal);
pub const CONFIG_ROOT_CNODE_SIZE_BITS = @as(c_int, 16);
pub const CONFIG_TIMER_TICK_MS = @as(c_int, 2);
pub const CONFIG_TIME_SLICE = @as(c_int, 5);
pub const CONFIG_RETYPE_FAN_OUT_LIMIT = @as(c_int, 256);
pub const CONFIG_MAX_NUM_WORK_UNITS_PER_PREEMPTION = @as(c_int, 100);
pub const CONFIG_RESET_CHUNK_BITS = @as(c_int, 8);
pub const CONFIG_MAX_NUM_BOOTINFO_UNTYPED_CAPS = @as(c_int, 230);
pub const CONFIG_FASTPATH = @as(c_int, 1);
pub const CONFIG_NUM_DOMAINS = @as(c_int, 1);
pub const CONFIG_NUM_PRIORITIES = @as(c_int, 256);
pub const CONFIG_MAX_NUM_NODES = @as(c_int, 1);
pub const CONFIG_KERNEL_STACK_BITS = @as(c_int, 12);
pub const CONFIG_FPU_MAX_RESTORES_SINCE_SWITCH = @as(c_int, 64);
pub const CONFIG_DEBUG_BUILD = @as(c_int, 1);
pub const CONFIG_PRINTING = @as(c_int, 1);
pub const CONFIG_NO_BENCHMARKS = @as(c_int, 1);
pub const CONFIG_KERNEL_BENCHMARK = none;
pub const CONFIG_MAX_NUM_TRACE_POINTS = @as(c_int, 0);
pub const CONFIG_IRQ_REPORTING = @as(c_int, 1);
pub const CONFIG_COLOUR_PRINTING = @as(c_int, 1);
pub const CONFIG_USER_STACK_TRACE_LENGTH = @as(c_int, 16);
pub const CONFIG_KERNEL_OPT_LEVEL_O2 = @as(c_int, 1);
pub const CONFIG_KERNEL_OPT_LEVEL = -O2;
pub const CONFIG_SET_TLS_BASE_SELF = @as(c_int, 1);
pub const CONFIG_LIB_SEL4_INLINE_INVOCATIONS = @as(c_int, 1);
pub const CONFIG_LIB_SEL4_PRINT_INVOCATION_ERRORS = @as(c_int, 0);
pub const CONST = __attribute__(__const__);
pub const PURE = __attribute__(__pure__);
pub const SEL4_PACKED = __attribute__(@"packed");
pub inline fn SEL4_DEPRECATED(x: anytype) @TypeOf(__attribute__(deprecated(x))) {
    return __attribute__(deprecated(x));
}
pub const LIBSEL4_UNUSED = __attribute__(unused);
pub const LIBSEL4_WEAK = __attribute__(weak);
pub const LIBSEL4_NOINLINE = __attribute__(@"noinline");
pub inline fn LIBSEL4_BIT(n: anytype) @TypeOf(@as(c_ulong, 1) << n) {
    return @as(c_ulong, 1) << n;
}
pub const _seL4_int8_type = u8;
pub const _seL4_int32_type = c_int;
pub const _seL4_int64_fmt = l;
pub inline fn _macro_str_concat(x: anytype, y: anytype) @TypeOf(_macro_str_concat_helper1(x, y)) {
    return _macro_str_concat_helper1(x, y);
}
pub const SEL4_PRId64 = _macro_str_concat(_seL4_int64_fmt, d);
pub const SEL4_PRIi64 = _macro_str_concat(_seL4_int64_fmt, i);
pub const SEL4_PRIu64 = _macro_str_concat(_seL4_int64_fmt, u);
pub const SEL4_PRIx64 = _macro_str_concat(_seL4_int64_fmt, x);
pub const seL4_True = @as(c_int, 1);
pub const seL4_False = @as(c_int, 0);
pub const seL4_Null = @import("std").meta.cast(?*c_void, @as(c_int, 0));
pub const _seL4_word_fmt = _seL4_int64_fmt;
pub const SEL4_PRId_word = _macro_str_concat(_seL4_word_fmt, d);
pub const SEL4_PRIi_word = _macro_str_concat(_seL4_word_fmt, i);
pub const SEL4_PRIu_word = _macro_str_concat(_seL4_word_fmt, u);
pub const SEL4_PRIx_word = _macro_str_concat(_seL4_word_fmt, x);
pub const SEL4_PRI_word = SEL4_PRIu_word;
pub const TLS_GDT_ENTRY = @as(c_int, 7);
pub const TLS_GDT_SELECTOR = (TLS_GDT_ENTRY << @as(c_int, 3)) | @as(c_int, 3);
pub const IPCBUF_GDT_ENTRY = @as(c_int, 8);
pub const IPCBUF_GDT_SELECTOR = (IPCBUF_GDT_ENTRY << @as(c_int, 3)) | @as(c_int, 3);
pub const seL4_DataFault = @as(c_int, 0);
pub const seL4_InstructionFault = @as(c_int, 1);
pub const seL4_WordBits = @as(c_int, 64);
pub const seL4_WordSizeBits = @as(c_int, 3);
pub const seL4_PageBits = @as(c_int, 12);
pub const seL4_SlotBits = @as(c_int, 5);
pub const seL4_TCBBits = @as(c_int, 11);
pub const seL4_EndpointBits = @as(c_int, 4);
pub const seL4_NotificationBits = @as(c_int, 5);
pub const seL4_PageTableBits = @as(c_int, 12);
pub const seL4_PageTableEntryBits = @as(c_int, 3);
pub const seL4_PageTableIndexBits = @as(c_int, 9);
pub const seL4_PageDirBits = @as(c_int, 12);
pub const seL4_PageDirEntryBits = @as(c_int, 3);
pub const seL4_PageDirIndexBits = @as(c_int, 9);
pub const seL4_PDPTBits = @as(c_int, 12);
pub const seL4_PDPTEntryBits = @as(c_int, 3);
pub const seL4_PDPTIndexBits = @as(c_int, 9);
pub const seL4_PML4Bits = @as(c_int, 12);
pub const seL4_PML4EntryBits = @as(c_int, 3);
pub const seL4_PML4IndexBits = @as(c_int, 9);
pub const seL4_VSpaceBits = seL4_PML4Bits;
pub const seL4_IOPageTableBits = @as(c_int, 12);
pub const seL4_LargePageBits = @as(c_int, 21);
pub const seL4_HugePageBits = @as(c_int, 30);
pub const seL4_NumASIDPoolsBits = @as(c_int, 3);
pub const seL4_ASIDPoolBits = @as(c_int, 12);
pub const seL4_ASIDPoolIndexBits = @as(c_int, 9);
pub const seL4_MinUntypedBits = @as(c_int, 4);
pub const seL4_MaxUntypedBits = @as(c_int, 47);
pub const seL4_FastMessageRegisters = @as(c_int, 4);
pub const seL4_IPCBufferSizeBits = @as(c_int, 10);
pub const seL4_UserTop = @import("std").meta.promoteIntLiteral(c_int, 0x00007ffffffff000, .hexadecimal);
pub inline fn seL4_Fail(s: anytype) @TypeOf(__assert_fail(s, __FILE__, __LINE__, __func__)) {
    return __assert_fail(s, __FILE__, __LINE__, __func__);
}
pub inline fn seL4_DebugAssert(expr: anytype) @TypeOf(seL4_Assert(expr)) {
    return seL4_Assert(expr);
}
pub const seL4_IA32_PDPTObject = seL4_X86_PDPTObject;
pub const seL4_X86_IOPageTableObject = @import("std").meta.promoteIntLiteral(c_int, 0xffffff, .hexadecimal);
pub const seL4_X86_VCPUObject = @import("std").meta.promoteIntLiteral(c_int, 0xfffffe, .hexadecimal);
pub const seL4_X86_EPTPML4Object = @import("std").meta.promoteIntLiteral(c_int, 0xfffffd, .hexadecimal);
pub const seL4_X86_EPTPDPTObject = @import("std").meta.promoteIntLiteral(c_int, 0xfffffc, .hexadecimal);
pub const seL4_X86_EPTPDObject = @import("std").meta.promoteIntLiteral(c_int, 0xfffffb, .hexadecimal);
pub const seL4_X86_EPTPTObject = @import("std").meta.promoteIntLiteral(c_int, 0xfffffa, .hexadecimal);
pub const seL4_MsgMaxExtraCaps = LIBSEL4_BIT(seL4_MsgExtraCapBits) - @as(c_int, 1);
pub const seL4_CapRightsBits = @as(c_int, 4);
pub const seL4_ReadWrite = seL4_CapRights_new(@as(c_int, 0), @as(c_int, 0), @as(c_int, 1), @as(c_int, 1));
pub const seL4_AllRights = seL4_CapRights_new(@as(c_int, 1), @as(c_int, 1), @as(c_int, 1), @as(c_int, 1));
pub const seL4_CanRead = seL4_CapRights_new(@as(c_int, 0), @as(c_int, 0), @as(c_int, 1), @as(c_int, 0));
pub const seL4_CanWrite = seL4_CapRights_new(@as(c_int, 0), @as(c_int, 0), @as(c_int, 0), @as(c_int, 1));
pub const seL4_CanGrant = seL4_CapRights_new(@as(c_int, 0), @as(c_int, 1), @as(c_int, 0), @as(c_int, 0));
pub const seL4_CanGrantReply = seL4_CapRights_new(@as(c_int, 1), @as(c_int, 0), @as(c_int, 0), @as(c_int, 0));
pub const seL4_NoWrite = seL4_CapRights_new(@as(c_int, 1), @as(c_int, 1), @as(c_int, 1), @as(c_int, 0));
pub const seL4_NoRead = seL4_CapRights_new(@as(c_int, 1), @as(c_int, 1), @as(c_int, 0), @as(c_int, 1));
pub const seL4_NoRights = seL4_CapRights_new(@as(c_int, 0), @as(c_int, 0), @as(c_int, 0), @as(c_int, 0));
pub const seL4_GuardSizeBits = @as(c_int, 6);
pub const seL4_GuardBits = @as(c_int, 58);
pub const seL4_BadgeBits = @as(c_int, 64);
pub const seL4_UntypedRetypeMaxObjects = CONFIG_RETYPE_FAN_OUT_LIMIT;
pub const seL4_NilData = @as(c_int, 0);
pub const IRQ_OFFSET = @as(c_int, 0x20) + @as(c_int, 16);
pub const VECTOR_MIN = @as(c_int, 0);
pub const VECTOR_MAX = @as(c_int, 109);
pub const MSI_MIN = VECTOR_MIN;
pub const MSI_MAX = VECTOR_MAX;
pub const seL4_VCPUBits = @as(c_int, 14);
pub const seL4_X86_VCPUBits = seL4_VCPUBits;
pub const seL4_X86_EPTPML4EntryBits = @as(c_int, 3);
pub const seL4_X86_EPTPML4IndexBits = @as(c_int, 9);
pub const seL4_X86_EPTPML4Bits = seL4_X86_EPTPML4EntryBits + seL4_X86_EPTPML4IndexBits;
pub const seL4_X86_EPTPDPTEntryBits = @as(c_int, 3);
pub const seL4_X86_EPTPDPTIndexBits = @as(c_int, 9);
pub const seL4_X86_EPTPDPTBits = seL4_X86_EPTPDPTEntryBits + seL4_X86_EPTPDPTIndexBits;
pub const seL4_X86_EPTPDEntryBits = @as(c_int, 3);
pub const seL4_X86_EPTPDIndexBits = @as(c_int, 9);
pub const seL4_X86_EPTPDBits = seL4_X86_EPTPDEntryBits + seL4_X86_EPTPDIndexBits;
pub const seL4_X86_EPTPTEntryBits = @as(c_int, 3);
pub const seL4_X86_EPTPTIndexBits = @as(c_int, 9);
pub const seL4_X86_EPTPTBits = seL4_X86_EPTPTEntryBits + seL4_X86_EPTPTIndexBits;
pub const LIBSEL4_MCS_REPLY = @as(c_int, 0);
pub const seL4_CapInitThreadPD = seL4_CapInitThreadVSpace;
pub const SEL4_BOOTINFO_HEADER_PADDING = @as(c_int, 0);
pub const SEL4_BOOTINFO_HEADER_X86_VBE = @as(c_int, 1);
pub const SEL4_BOOTINFO_HEADER_X86_MBMMAP = @as(c_int, 2);
pub const SEL4_BOOTINFO_HEADER_X86_ACPI_RSDP = @as(c_int, 3);
pub const SEL4_BOOTINFO_HEADER_X86_FRAMEBUFFER = @as(c_int, 4);
pub const SEL4_BOOTINFO_HEADER_X86_TSC_FREQ = @as(c_int, 5);
pub const SEL4_BOOTINFO_HEADER_FDT = @as(c_int, 6);
pub const SEL4_BOOTINFO_HEADER_NUM = SEL4_BOOTINFO_HEADER_FDT + @as(c_int, 1);
pub const SEL4_PFIPC_LABEL = SEL4_DEPRECATE_MACRO(seL4_Fault_VMFault);
pub const SEL4_PFIPC_LENGTH = SEL4_DEPRECATE_MACRO(seL4_VMFault_Length);
pub const SEL4_PFIPC_FAULT_IP = SEL4_DEPRECATE_MACRO(seL4_VMFault_IP);
pub const SEL4_PFIPC_FAULT_ADDR = SEL4_DEPRECATE_MACRO(seL4_VMFault_Addr);
pub const SEL4_PFIPC_PREFETCH_FAULT = SEL4_DEPRECATE_MACRO(seL4_VMFault_PrefetchFault);
pub const SEL4_PFIPC_FSR = SEL4_DEPRECATE_MACRO(seL4_VMFault_FSR);
pub const SEL4_EXCEPT_IPC_LABEL = SEL4_DEPRECATE_MACRO(seL4_Fault_UnknownSyscall);
pub const SEL4_USER_EXCEPTION_LABEL = SEL4_DEPRECATE_MACRO(seL4_Fault_UserException);
pub const SEL4_USER_EXCEPTION_LENGTH = SEL4_DEPRECATE_MACRO(seL4_UserException_Length);
pub const seL4_NoFault = SEL4_DEPRECATE_MACRO(seL4_Fault_NullFault);
pub const seL4_CapFault = SEL4_DEPRECATE_MACRO(seL4_Fault_CapFault);
pub const seL4_UnknownSyscall = SEL4_DEPRECATE_MACRO(seL4_Fault_UnknownSyscall);
pub const seL4_UserException = SEL4_DEPRECATE_MACRO(seL4_Fault_UserException);
pub const seL4_VMFault = SEL4_DEPRECATE_MACRO(seL4_Fault_VMFault);
pub const CONFIG_LIB_UTILS_DEFAULT_ZF_LOG_LEVEL = @as(c_int, 5);
pub const true_4 = @as(c_int, 1);
pub const false_5 = @as(c_int, 0);
pub const bool_6 = bool;
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const ENABLE_ANSI_ESC_SEQENCES = @"true";
pub const COLOR_PREFIX = "\x1b[";
pub const COLOR_SEP = ";";
pub const COLOR_SUFFIX = "m";
pub const COLOR_BLACK = "0";
pub const COLOR_RED = "1";
pub const COLOR_GREEN = "2";
pub const COLOR_YELLOW = "3";
pub const COLOR_BLUE = "4";
pub const COLOR_MAGENTA = "5";
pub const COLOR_CYAN = "6";
pub const COLOR_WHITE = "7";
pub const COLOR_FOREGROUND = "3";
pub const COLOR_BACKGROUND = "4";
pub const COLOR_BOLD = COLOR_SGR_CODE(@as(c_int, 1));
pub const COLOR_ITALIC = COLOR_SGR_CODE(@as(c_int, 3));
pub const COLOR_UNDERLINE = COLOR_SGR_CODE(@as(c_int, 4));
pub const COLOR_BLINK = COLOR_SGR_CODE(@as(c_int, 5));
pub const COLOR_REVERSE = COLOR_SGR_CODE(@as(c_int, 7));
pub const COLOR_INVISIBLE = COLOR_SGR_CODE(@as(c_int, 8));
pub const COLOR_RESET = COLOR_PREFIX ++ "0" ++ COLOR_SUFFIX;
pub const COLOR_ = "";
pub const A_ERASE = COLOR_PREFIX ++ "K";
pub const A_CLEAR = COLOR_PREFIX ++ "2J";
pub const A_BG_RESET = COLOR_PREFIX ++ "49" ++ COLOR_SUFFIX;
pub const A_FG_RESET = COLOR_PREFIX ++ "39" ++ COLOR_SUFFIX;
pub const A_RESET = COLOR_RESET;
pub const A_BOLD = COLOR_PREFIX ++ COLOR_BOLD ++ COLOR_SUFFIX;
pub const A_ITALIC = COLOR_PREFIX ++ COLOR_ITALIC ++ COLOR_SUFFIX;
pub const A_UDSCORE = COLOR_PREFIX ++ COLOR_UNDERLINE ++ COLOR_SUFFIX;
pub const A_BLINK = COLOR_PREFIX ++ COLOR_BLINK ++ COLOR_SUFFIX;
pub const A_FG_K = ANSI_COLOR(BLACK);
pub const A_FG_R = ANSI_COLOR(RED);
pub const A_FG_G = ANSI_COLOR(GREEN);
pub const A_FG_Y = ANSI_COLOR(YELLOW);
pub const A_FG_B = ANSI_COLOR(BLUE);
pub const A_FG_M = ANSI_COLOR(MAGENTA);
pub const A_FG_C = ANSI_COLOR(CYAN);
pub const A_FG_W = ANSI_COLOR(WHITE);
pub const A_BG_K = ANSI_BG_COLOR(BLACK);
pub const A_BG_R = ANSI_BG_COLOR(RED);
pub const A_BG_G = ANSI_BG_COLOR(GREEN);
pub const A_BG_Y = ANSI_BG_COLOR(YELLOW);
pub const A_BG_B = ANSI_BG_COLOR(BLUE);
pub const A_BG_M = ANSI_BG_COLOR(MAGENTA);
pub const A_BG_C = ANSI_BG_COLOR(CYAN);
pub const A_BG_W = ANSI_BG_COLOR(WHITE);
pub const PAGE_SIZE = @as(c_int, 4096);
pub const LONG_BIT = @as(c_int, 64);
pub const LONG_MAX = @import("std").meta.promoteIntLiteral(c_long, 0x7fffffffffffffff, .hexadecimal);
pub const LLONG_MAX = @as(c_longlong, 0x7fffffffffffffff);
pub const CHAR_MIN = -@as(c_int, 128);
pub const CHAR_MAX = @as(c_int, 127);
pub const CHAR_BIT = @as(c_int, 8);
pub const SCHAR_MIN = -@as(c_int, 128);
pub const SCHAR_MAX = @as(c_int, 127);
pub const UCHAR_MAX = @as(c_int, 255);
pub const SHRT_MIN = -@as(c_int, 1) - @as(c_int, 0x7fff);
pub const SHRT_MAX = @as(c_int, 0x7fff);
pub const USHRT_MAX = @import("std").meta.promoteIntLiteral(c_int, 0xffff, .hexadecimal);
pub const INT_MIN = -@as(c_int, 1) - @import("std").meta.promoteIntLiteral(c_int, 0x7fffffff, .hexadecimal);
pub const INT_MAX = @import("std").meta.promoteIntLiteral(c_int, 0x7fffffff, .hexadecimal);
pub const UINT_MAX = @import("std").meta.promoteIntLiteral(c_uint, 0xffffffff, .hexadecimal);
pub const LONG_MIN = -LONG_MAX - @as(c_int, 1);
pub const ULONG_MAX = (@as(c_ulong, 2) * LONG_MAX) + @as(c_int, 1);
pub const LLONG_MIN = -LLONG_MAX - @as(c_int, 1);
pub const ULLONG_MAX = (@as(c_ulonglong, 2) * LLONG_MAX) + @as(c_int, 1);
pub const MB_LEN_MAX = @as(c_int, 4);
pub const PIPE_BUF = @as(c_int, 4096);
pub const PAGESIZE = PAGE_SIZE;
pub const FILESIZEBITS = @as(c_int, 64);
pub const NAME_MAX = @as(c_int, 255);
pub const SYMLINK_MAX = @as(c_int, 255);
pub const PATH_MAX = @as(c_int, 4096);
pub const NZERO = @as(c_int, 20);
pub const NGROUPS_MAX = @as(c_int, 32);
pub const ARG_MAX = @import("std").meta.promoteIntLiteral(c_int, 131072, .decimal);
pub const IOV_MAX = @as(c_int, 1024);
pub const SYMLOOP_MAX = @as(c_int, 40);
pub const WORD_BIT = @as(c_int, 32);
pub const SSIZE_MAX = LONG_MAX;
pub const TZNAME_MAX = @as(c_int, 6);
pub const TTY_NAME_MAX = @as(c_int, 32);
pub const HOST_NAME_MAX = @as(c_int, 255);
pub const PTHREAD_KEYS_MAX = @as(c_int, 128);
pub const PTHREAD_STACK_MIN = @as(c_int, 2048);
pub const PTHREAD_DESTRUCTOR_ITERATIONS = @as(c_int, 4);
pub const SEM_VALUE_MAX = @import("std").meta.promoteIntLiteral(c_int, 0x7fffffff, .hexadecimal);
pub const SEM_NSEMS_MAX = @as(c_int, 256);
pub const DELAYTIMER_MAX = @import("std").meta.promoteIntLiteral(c_int, 0x7fffffff, .hexadecimal);
pub const MQ_PRIO_MAX = @import("std").meta.promoteIntLiteral(c_int, 32768, .decimal);
pub const LOGIN_NAME_MAX = @as(c_int, 256);
pub const BC_BASE_MAX = @as(c_int, 99);
pub const BC_DIM_MAX = @as(c_int, 2048);
pub const BC_SCALE_MAX = @as(c_int, 99);
pub const BC_STRING_MAX = @as(c_int, 1000);
pub const CHARCLASS_NAME_MAX = @as(c_int, 14);
pub const COLL_WEIGHTS_MAX = @as(c_int, 2);
pub const EXPR_NEST_MAX = @as(c_int, 32);
pub const LINE_MAX = @as(c_int, 4096);
pub const RE_DUP_MAX = @as(c_int, 255);
pub const NL_ARGMAX = @as(c_int, 9);
pub const NL_LANGMAX = @as(c_int, 32);
pub const NL_MSGMAX = @as(c_int, 32767);
pub const NL_SETMAX = @as(c_int, 255);
pub const NL_TEXTMAX = @as(c_int, 2048);
pub const NL_NMAX = @as(c_int, 16);
pub const _POSIX_AIO_LISTIO_MAX = @as(c_int, 2);
pub const _POSIX_AIO_MAX = @as(c_int, 1);
pub const _POSIX_ARG_MAX = @as(c_int, 4096);
pub const _POSIX_CHILD_MAX = @as(c_int, 25);
pub const _POSIX_CLOCKRES_MIN = @import("std").meta.promoteIntLiteral(c_int, 20000000, .decimal);
pub const _POSIX_DELAYTIMER_MAX = @as(c_int, 32);
pub const _POSIX_HOST_NAME_MAX = @as(c_int, 255);
pub const _POSIX_LINK_MAX = @as(c_int, 8);
pub const _POSIX_LOGIN_NAME_MAX = @as(c_int, 9);
pub const _POSIX_MAX_CANON = @as(c_int, 255);
pub const _POSIX_MAX_INPUT = @as(c_int, 255);
pub const _POSIX_MQ_OPEN_MAX = @as(c_int, 8);
pub const _POSIX_MQ_PRIO_MAX = @as(c_int, 32);
pub const _POSIX_NAME_MAX = @as(c_int, 14);
pub const _POSIX_NGROUPS_MAX = @as(c_int, 8);
pub const _POSIX_OPEN_MAX = @as(c_int, 20);
pub const _POSIX_PATH_MAX = @as(c_int, 256);
pub const _POSIX_PIPE_BUF = @as(c_int, 512);
pub const _POSIX_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX_RTSIG_MAX = @as(c_int, 8);
pub const _POSIX_SEM_NSEMS_MAX = @as(c_int, 256);
pub const _POSIX_SEM_VALUE_MAX = @as(c_int, 32767);
pub const _POSIX_SIGQUEUE_MAX = @as(c_int, 32);
pub const _POSIX_SSIZE_MAX = @as(c_int, 32767);
pub const _POSIX_STREAM_MAX = @as(c_int, 8);
pub const _POSIX_SS_REPL_MAX = @as(c_int, 4);
pub const _POSIX_SYMLINK_MAX = @as(c_int, 255);
pub const _POSIX_SYMLOOP_MAX = @as(c_int, 8);
pub const _POSIX_THREAD_DESTRUCTOR_ITERATIONS = @as(c_int, 4);
pub const _POSIX_THREAD_KEYS_MAX = @as(c_int, 128);
pub const _POSIX_THREAD_THREADS_MAX = @as(c_int, 64);
pub const _POSIX_TIMER_MAX = @as(c_int, 32);
pub const _POSIX_TRACE_EVENT_NAME_MAX = @as(c_int, 30);
pub const _POSIX_TRACE_NAME_MAX = @as(c_int, 8);
pub const _POSIX_TRACE_SYS_MAX = @as(c_int, 8);
pub const _POSIX_TRACE_USER_EVENT_MAX = @as(c_int, 32);
pub const _POSIX_TTY_NAME_MAX = @as(c_int, 9);
pub const _POSIX_TZNAME_MAX = @as(c_int, 6);
pub const _POSIX2_BC_BASE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_DIM_MAX = @as(c_int, 2048);
pub const _POSIX2_BC_SCALE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_STRING_MAX = @as(c_int, 1000);
pub const _POSIX2_CHARCLASS_NAME_MAX = @as(c_int, 14);
pub const _POSIX2_COLL_WEIGHTS_MAX = @as(c_int, 2);
pub const _POSIX2_EXPR_NEST_MAX = @as(c_int, 32);
pub const _POSIX2_LINE_MAX = @as(c_int, 2048);
pub const _POSIX2_RE_DUP_MAX = @as(c_int, 255);
pub const _XOPEN_IOV_MAX = @as(c_int, 16);
pub const _XOPEN_NAME_MAX = @as(c_int, 255);
pub const _XOPEN_PATH_MAX = @as(c_int, 1024);
pub const INT8_MIN = -@as(c_int, 1) - @as(c_int, 0x7f);
pub const INT16_MIN = -@as(c_int, 1) - @as(c_int, 0x7fff);
pub const INT32_MIN = -@as(c_int, 1) - @import("std").meta.promoteIntLiteral(c_int, 0x7fffffff, .hexadecimal);
pub const INT64_MIN = -@as(c_int, 1) - @import("std").meta.promoteIntLiteral(c_int, 0x7fffffffffffffff, .hexadecimal);
pub const INT8_MAX = @as(c_int, 0x7f);
pub const INT16_MAX = @as(c_int, 0x7fff);
pub const INT32_MAX = @import("std").meta.promoteIntLiteral(c_int, 0x7fffffff, .hexadecimal);
pub const INT64_MAX = @import("std").meta.promoteIntLiteral(c_int, 0x7fffffffffffffff, .hexadecimal);
pub const UINT8_MAX = @as(c_int, 0xff);
pub const UINT16_MAX = @import("std").meta.promoteIntLiteral(c_int, 0xffff, .hexadecimal);
pub const UINT32_MAX = @import("std").meta.promoteIntLiteral(c_uint, 0xffffffff, .hexadecimal);
pub const UINT64_MAX = @import("std").meta.promoteIntLiteral(c_uint, 0xffffffffffffffff, .hexadecimal);
pub const INT_FAST8_MIN = INT8_MIN;
pub const INT_FAST64_MIN = INT64_MIN;
pub const INT_LEAST8_MIN = INT8_MIN;
pub const INT_LEAST16_MIN = INT16_MIN;
pub const INT_LEAST32_MIN = INT32_MIN;
pub const INT_LEAST64_MIN = INT64_MIN;
pub const INT_FAST8_MAX = INT8_MAX;
pub const INT_FAST64_MAX = INT64_MAX;
pub const INT_LEAST8_MAX = INT8_MAX;
pub const INT_LEAST16_MAX = INT16_MAX;
pub const INT_LEAST32_MAX = INT32_MAX;
pub const INT_LEAST64_MAX = INT64_MAX;
pub const UINT_FAST8_MAX = UINT8_MAX;
pub const UINT_FAST64_MAX = UINT64_MAX;
pub const UINT_LEAST8_MAX = UINT8_MAX;
pub const UINT_LEAST16_MAX = UINT16_MAX;
pub const UINT_LEAST32_MAX = UINT32_MAX;
pub const UINT_LEAST64_MAX = UINT64_MAX;
pub const INTMAX_MIN = INT64_MIN;
pub const INTMAX_MAX = INT64_MAX;
pub const UINTMAX_MAX = UINT64_MAX;
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = UINT32_MAX;
pub const WCHAR_MAX = @import("std").meta.promoteIntLiteral(c_int, 0x7fffffff, .hexadecimal) + '\x00';
pub const WCHAR_MIN = (-@as(c_int, 1) - @import("std").meta.promoteIntLiteral(c_int, 0x7fffffff, .hexadecimal)) + '\x00';
pub const SIG_ATOMIC_MIN = INT32_MIN;
pub const SIG_ATOMIC_MAX = INT32_MAX;
pub const INT_FAST16_MIN = INT32_MIN;
pub const INT_FAST32_MIN = INT32_MIN;
pub const INT_FAST16_MAX = INT32_MAX;
pub const INT_FAST32_MAX = INT32_MAX;
pub const UINT_FAST16_MAX = UINT32_MAX;
pub const UINT_FAST32_MAX = UINT32_MAX;
pub const INTPTR_MIN = INT64_MIN;
pub const INTPTR_MAX = INT64_MAX;
pub const UINTPTR_MAX = UINT64_MAX;
pub const PTRDIFF_MIN = INT64_MIN;
pub const PTRDIFF_MAX = INT64_MAX;
pub const SIZE_MAX = UINT64_MAX;
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn ALIGN(n: anytype) @TypeOf(__attribute__(__aligned__(n))) {
    return __attribute__(__aligned__(n));
}
pub const NO_INLINE = __attribute__(@"noinline");
pub const ALWAYS_INLINE = __attribute__(always_inline);
pub inline fn CLEANUP(@"fn": anytype) @TypeOf(__attribute__(cleanup(@"fn"))) {
    return __attribute__(cleanup(@"fn"));
}
pub const COLD = __attribute__(cold);
pub inline fn DEPRECATED(msg: anytype) @TypeOf(__attribute__(deprecated(msg))) {
    return __attribute__(deprecated(msg));
}
pub inline fn ERROR(msg: anytype) @TypeOf(__attribute__(unavailable(msg))) {
    return __attribute__(unavailable(msg));
}
pub const HOT = __attribute__(hot);
pub const MALLOC = __attribute__(malloc);
pub const NONNULL_ALL = __attribute__(__nonnull__);
pub const NORETURN = __attribute__(__noreturn__);
pub const PACKED = __attribute__(__packed__);
pub inline fn FORMAT(archetype: anytype, string_index: anytype, first_to_check: anytype) @TypeOf(__attribute__(format(archetype, string_index, first_to_check))) {
    return __attribute__(format(archetype, string_index, first_to_check));
}
pub inline fn SECTION(sect: anytype) @TypeOf(__attribute__(section(sect))) {
    return __attribute__(section(sect));
}
pub inline fn SENTINEL(param: anytype) @TypeOf(__attribute__(sentinel(param))) {
    return __attribute__(sentinel(param));
}
pub const SENTINEL_LAST = __attribute__(sentinel);
pub const UNUSED = __attribute__(__unused__);
pub const USED = __attribute__(__used__);
pub inline fn WARNING(msg: anytype) @TypeOf(__attribute__(warning(msg))) {
    return __attribute__(warning(msg));
}
pub const WARN_UNUSED_RESULT = __attribute__(warn_unused_result);
pub const WEAK = __attribute__(weak);
pub const CONSTRUCTOR_MIN_PRIORITY = @as(c_int, 101);
pub const CONSTRUCTOR_MAX_PRIORITY = @import("std").meta.promoteIntLiteral(c_int, 65535, .decimal);
pub inline fn CONSTRUCTOR(priority: anytype) @TypeOf(__attribute__(constructor(priority))) {
    return __attribute__(constructor(priority));
}
pub inline fn ALLOC_ALIGN(arg: anytype) @TypeOf(__attribute__(alloc_align(arg))) {
    return __attribute__(alloc_align(arg));
}
pub const RETURNS_NONNULL = __attribute__(returns_nonnull);
pub inline fn CTZ(x: anytype) @TypeOf(__builtin_ctz(x)) {
    return __builtin_ctz(x);
}
pub inline fn CLZ(x: anytype) @TypeOf(__builtin_clz(x)) {
    return __builtin_clz(x);
}
pub inline fn POPCOUNT(x: anytype) @TypeOf(__builtin_popcount(x)) {
    return __builtin_popcount(x);
}
pub inline fn BSWAP_WORD(x: anytype) @TypeOf(__builtin_bswap64(x)) {
    return __builtin_bswap64(x);
}
pub inline fn likely(x: anytype) @TypeOf(__builtin_expect(!!(x != 0), @as(c_int, 1))) {
    return __builtin_expect(!!(x != 0), @as(c_int, 1));
}
pub inline fn unlikely(x: anytype) @TypeOf(__builtin_expect(!!(x != 0), @as(c_int, 0))) {
    return __builtin_expect(!!(x != 0), @as(c_int, 0));
}
pub inline fn STRINGIFY(s: anytype) @TypeOf(_STRINGIFY(s)) {
    return _STRINGIFY(s);
}
pub inline fn JOIN(x: anytype, y: anytype) @TypeOf(_JOIN(x, y)) {
    return _JOIN(x, y);
}
pub inline fn BIT(n: anytype) @TypeOf(@as(c_ulong, 1) << n) {
    return @as(c_ulong, 1) << n;
}
pub inline fn LLBIT(n: anytype) @TypeOf(@as(c_ulonglong, 1) << n) {
    return @as(c_ulonglong, 1) << n;
}
pub inline fn MASK_UNSAFE(x: anytype) @TypeOf(BIT(x) - @as(c_ulong, 1)) {
    return BIT(x) - @as(c_ulong, 1);
}
pub inline fn IS_ALIGNED(n: anytype, b: anytype) @TypeOf(!((n & MASK(b)) != 0)) {
    return !((n & MASK(b)) != 0);
}
pub inline fn LOG_BASE_2(n: anytype) @TypeOf(((@import("std").meta.sizeof(c_ulong) * CHAR_BIT) - CLZL(n)) - @as(c_int, 1)) {
    return ((@import("std").meta.sizeof(c_ulong) * CHAR_BIT) - CLZL(n)) - @as(c_int, 1);
}
pub inline fn IS_POWER_OF_2_OR_ZERO(x: anytype) @TypeOf(@as(c_int, 0) == (x & (x - @as(c_int, 1)))) {
    return @as(c_int, 0) == (x & (x - @as(c_int, 1)));
}
pub inline fn IS_POWER_OF_2(x: anytype) @TypeOf((x != @as(c_int, 0)) and (IS_POWER_OF_2_OR_ZERO(x) != 0)) {
    return (x != @as(c_int, 0)) and (IS_POWER_OF_2_OR_ZERO(x) != 0);
}
pub inline fn ALIGN_UP(x: anytype, n: anytype) @TypeOf(((x + n) - @as(c_int, 1)) & ~(n - @as(c_int, 1))) {
    return ((x + n) - @as(c_int, 1)) & ~(n - @as(c_int, 1));
}
pub inline fn ALIGN_DOWN(x: anytype, n: anytype) @TypeOf(x & ~(n - @as(c_int, 1))) {
    return x & ~(n - @as(c_int, 1));
}
pub inline fn ROUND_DOWN_UNSAFE(n: anytype, b: anytype) @TypeOf(n - (n % b)) {
    return n - (n % b);
}
pub inline fn ROUND_UP_UNSAFE(n: anytype, b: anytype) @TypeOf(n + (if ((n % b) == @as(c_int, 0)) @as(c_int, 0) else b - (n % b))) {
    return n + (if ((n % b) == @as(c_int, 0)) @as(c_int, 0) else b - (n % b));
}
pub inline fn MIN_UNSAFE(x: anytype, y: anytype) @TypeOf(if (x < y) x else y) {
    return if (x < y) x else y;
}
pub inline fn MAX_UNSAFE(x: anytype, y: anytype) @TypeOf(if (x > y) x else y) {
    return if (x > y) x else y;
}
pub inline fn INRANGE(a: anytype, x: anytype, b: anytype) @TypeOf(MIN(MAX(x, a), b)) {
    return MIN(MAX(x, a), b);
}
pub inline fn ARRAY_SIZE(x: anytype) @TypeOf(@import("std").meta.sizeof(x) / @import("std").meta.sizeof(x[@as(c_int, 0)])) {
    return @import("std").meta.sizeof(x) / @import("std").meta.sizeof(x[@as(c_int, 0)]);
}
pub inline fn PAD_STRUCT_BETWEEN(before: anytype, after: anytype, type_1: anytype) @TypeOf(u8 ++ JOIN(__padding, __COUNTER__)[(after - before) - @import("std").meta.sizeof(type_1)]) {
    return u8 ++ JOIN(__padding, __COUNTER__)[(after - before) - @import("std").meta.sizeof(type_1)];
}
pub const AUTOFREE = __attribute__(cleanup(autofree_));
pub inline fn config_set(macro: anytype) @TypeOf(_is_set_(macro)) {
    return _is_set_(macro);
}
pub inline fn COMPILER_MEMORY_FENCE() @TypeOf(__atomic_signal_fence(__ATOMIC_ACQ_REL)) {
    return __atomic_signal_fence(__ATOMIC_ACQ_REL);
}
pub inline fn COMPILER_MEMORY_RELEASE() @TypeOf(__atomic_signal_fence(__ATOMIC_RELEASE)) {
    return __atomic_signal_fence(__ATOMIC_RELEASE);
}
pub inline fn COMPILER_MEMORY_ACQUIRE() @TypeOf(__atomic_signal_fence(__ATOMIC_ACQUIRE)) {
    return __atomic_signal_fence(__ATOMIC_ACQUIRE);
}
pub inline fn THREAD_MEMORY_FENCE() @TypeOf(__atomic_thread_fence(__ATOMIC_ACQ_REL)) {
    return __atomic_thread_fence(__ATOMIC_ACQ_REL);
}
pub inline fn THREAD_MEMORY_RELEASE() @TypeOf(__atomic_thread_fence(__ATOMIC_RELEASE)) {
    return __atomic_thread_fence(__ATOMIC_RELEASE);
}
pub inline fn THREAD_MEMORY_ACQUIRE() @TypeOf(__atomic_thread_fence(__ATOMIC_ACQUIRE)) {
    return __atomic_thread_fence(__ATOMIC_ACQUIRE);
}
pub const COLOR_ERROR = "\x1b[1;31m";
pub const COLOR_NORMAL = "\x1b[0m";
pub const DFMT = "%ld";
pub const XFMT = "%lx";
pub inline fn SEL4_TIME_UINT_TYPE(v: anytype) @TypeOf(UINT64_C(v)) {
    return UINT64_C(v);
}
pub const SEC_IN_MINUTE = SEL4_TIME_UINT_TYPE(@as(c_int, 60));
pub const MS_IN_S = SEL4_TIME_UINT_TYPE(@as(c_int, 1000));
pub const MS_IN_MINUTE = MS_IN_S * SEC_IN_MINUTE;
pub const US_IN_MS = SEL4_TIME_UINT_TYPE(@as(c_int, 1000));
pub const US_IN_S = US_IN_MS * MS_IN_S;
pub const US_IN_MINUTE = US_IN_MS * MS_IN_MINUTE;
pub const NS_IN_US = SEL4_TIME_UINT_TYPE(@as(c_int, 1000));
pub const NS_IN_MS = NS_IN_US * US_IN_MS;
pub const NS_IN_S = NS_IN_US * US_IN_S;
pub const NS_IN_MINUTE = NS_IN_US * US_IN_MINUTE;
pub const PS_IN_NS = SEL4_TIME_UINT_TYPE(@as(c_int, 1000));
pub const PS_IN_US = PS_IN_NS * NS_IN_US;
pub const PS_IN_MS = PS_IN_NS * NS_IN_MS;
pub const PS_IN_S = PS_IN_NS * NS_IN_S;
pub const PS_IN_MINUTE = PS_IN_NS * NS_IN_MINUTE;
pub const FS_IN_PS = SEL4_TIME_UINT_TYPE(@as(c_int, 1000));
pub const FS_IN_NS = FS_IN_PS * PS_IN_NS;
pub const FS_IN_US = FS_IN_PS * PS_IN_US;
pub const FS_IN_MS = FS_IN_PS * PS_IN_MS;
pub const FS_IN_S = FS_IN_PS * PS_IN_S;
pub const FS_IN_MINUTE = FS_IN_PS * PS_IN_MINUTE;
pub const KHZ = @as(c_int, 1000);
pub const MHZ = @as(c_int, 1000) * KHZ;
pub const GHZ = @as(c_int, 1000) * MHZ;
pub inline fn SIZE_BITS_TO_BYTES(size_bits: anytype) @TypeOf(BIT(size_bits)) {
    return BIT(size_bits);
}
pub inline fn BYTES_TO_SIZE_BITS(bytes: anytype) @TypeOf(LOG_BASE_2(bytes)) {
    return LOG_BASE_2(bytes);
}
pub const PAGE_BITS_1G = @as(c_int, 30);
pub const PAGE_BITS_4M = @as(c_int, 22);
pub const PAGE_BITS_2M = @as(c_int, 21);
pub const PAGE_BITS_4K = @as(c_int, 12);
pub const PAGE_SIZE_4K = SIZE_BITS_TO_BYTES(PAGE_BITS_4K);
pub const PAGE_MASK_4K = PAGE_SIZE_4K - @as(c_int, 1);
pub inline fn PAGE_ALIGN_4K(addr: anytype) @TypeOf(addr & ~PAGE_MASK_4K) {
    return addr & ~PAGE_MASK_4K;
}
pub inline fn IS_ALIGNED_4K(addr: anytype) @TypeOf(IS_ALIGNED(addr, PAGE_BITS_4K)) {
    return IS_ALIGNED(addr, PAGE_BITS_4K);
}
pub inline fn MiB_TO_BYTES(x: anytype) @TypeOf((@as(c_int, 1024) * @as(c_int, 1024)) * @import("std").meta.cast(usize, x)) {
    return (@as(c_int, 1024) * @as(c_int, 1024)) * @import("std").meta.cast(usize, x);
}
pub inline fn BYTES_TO_SIZE_BITS_PAGES(b: anytype, size_bits: anytype) @TypeOf((b / BIT(size_bits)) + (if ((b % BIT(size_bits)) > @as(c_int, 0)) @as(c_int, 1) else @as(c_int, 0))) {
    return (b / BIT(size_bits)) + (if ((b % BIT(size_bits)) > @as(c_int, 0)) @as(c_int, 1) else @as(c_int, 0));
}
pub inline fn BYTES_TO_4K_PAGES(b: anytype) @TypeOf(BYTES_TO_SIZE_BITS_PAGES(b, PAGE_BITS_4K)) {
    return BYTES_TO_SIZE_BITS_PAGES(b, PAGE_BITS_4K);
}
pub inline fn PAGE_ALIGN(addr: anytype, size: anytype) @TypeOf(addr & ~(size - @as(c_int, 1))) {
    return addr & ~(size - @as(c_int, 1));
}
pub inline fn SAME_PAGE_4K(a: anytype, b: anytype) @TypeOf((@import("std").meta.cast(usize, a) & ~PAGE_MASK_4K) == (@import("std").meta.cast(usize, b) & ~PAGE_MASK_4K)) {
    return (@import("std").meta.cast(usize, a) & ~PAGE_MASK_4K) == (@import("std").meta.cast(usize, b) & ~PAGE_MASK_4K);
}
pub inline fn SGLIB_QUEUE_IS_EMPTY(type_1: anytype, a: anytype, i: anytype, j: anytype) @TypeOf(i == j) {
    return i == j;
}
pub inline fn SGLIB_QUEUE_IS_FULL(type_1: anytype, a: anytype, i: anytype, j: anytype, dim: anytype) @TypeOf(i == ((j + @as(c_int, 1)) % dim)) {
    return i == ((j + @as(c_int, 1)) % dim);
}
pub inline fn SGLIB_QUEUE_FIRST_ELEMENT(type_1: anytype, a: anytype, i: anytype, j: anytype) @TypeOf(a[i]) {
    return a[i];
}
pub inline fn SGLIB_HEAP_IS_EMPTY(type_1: anytype, a: anytype, i: anytype) @TypeOf(i == @as(c_int, 0)) {
    return i == @as(c_int, 0);
}
pub inline fn SGLIB_HEAP_IS_FULL(type_1: anytype, a: anytype, i: anytype, dim: anytype) @TypeOf(i == dim) {
    return i == dim;
}
pub inline fn SGLIB_HEAP_FIRST_ELEMENT(type_1: anytype, a: anytype, i: anytype) @TypeOf(a[@as(c_int, 0)]) {
    return a[@as(c_int, 0)];
}
pub inline fn SGLIB_DEFINE_RBTREE_FUNCTIONS(type_1: anytype, left: anytype, right: anytype, colorbit: anytype, comparator: anytype) @TypeOf(SGLIB_DEFINE_RBTREE_FUNCTIONS_GENERAL(type_1, left, right, colorbit, comparator, @as(c_int, 1), @as(c_int, 0))) {
    return SGLIB_DEFINE_RBTREE_FUNCTIONS_GENERAL(type_1, left, right, colorbit, comparator, @as(c_int, 1), @as(c_int, 0));
}
pub inline fn SGLIB___GET_VALUE(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn SGLIB_SAFE_NUMERIC_COMPARATOR(x: anytype, y: anytype) @TypeOf(if (x > y) @as(c_int, 1) else if (x < y) -@as(c_int, 1) else @as(c_int, 0)) {
    return if (x > y) @as(c_int, 1) else if (x < y) -@as(c_int, 1) else @as(c_int, 0);
}
pub inline fn SGLIB_SAFE_REVERSE_NUMERIC_COMPARATOR(x: anytype, y: anytype) @TypeOf(if (x > y) -@as(c_int, 1) else if (x < y) @as(c_int, 1) else @as(c_int, 0)) {
    return if (x > y) -@as(c_int, 1) else if (x < y) @as(c_int, 1) else @as(c_int, 0);
}
pub inline fn SGLIB_FAST_NUMERIC_COMPARATOR(x: anytype, y: anytype) c_int {
    return @import("std").meta.cast(c_int, x - y);
}
pub inline fn SGLIB_FAST_REVERSE_NUMERIC_COMPARATOR(x: anytype, y: anytype) c_int {
    return @import("std").meta.cast(c_int, y - x);
}
pub inline fn SGLIB_NUMERIC_COMPARATOR(x: anytype, y: anytype) @TypeOf(SGLIB_SAFE_NUMERIC_COMPARATOR(x, y)) {
    return SGLIB_SAFE_NUMERIC_COMPARATOR(x, y);
}
pub inline fn SGLIB_REVERSE_NUMERIC_COMPARATOR(x: anytype, y: anytype) @TypeOf(SGLIB_SAFE_REVERSE_NUMERIC_COMPARATOR(x, y)) {
    return SGLIB_SAFE_REVERSE_NUMERIC_COMPARATOR(x, y);
}
pub const SGLIB_MAX_TREE_DEEP = @as(c_int, 128);
pub const SGLIB_HASH_TAB_SHIFT_CONSTANT = @as(c_int, 16381);
pub const STACK_CALL_ALIGNMENT = @as(c_int, 16);
pub const STACK_CALL_ALIGNMENT_BITS = LOG_BASE_2(STACK_CALL_ALIGNMENT);
pub const UD_INSTRUCTION_SIZE = @as(c_int, 2);
pub const ZF_LOG_LEVEL = CONFIG_LIB_UTILS_DEFAULT_ZF_LOG_LEVEL;
pub const ZF_LOG_VERSION = @as(c_int, 1);
pub const ZF_LOG_VERBOSE = @as(c_int, 1);
pub const ZF_LOG_DEBUG = @as(c_int, 2);
pub const ZF_LOG_INFO = @as(c_int, 3);
pub const ZF_LOG_WARN = @as(c_int, 4);
pub const ZF_LOG_ERROR = @as(c_int, 5);
pub const ZF_LOG_FATAL = @import("std").meta.promoteIntLiteral(c_int, 0xFFFF, .hexadecimal);
pub const ZF_LOG_NONE = @import("std").meta.promoteIntLiteral(c_int, 0xFFFF, .hexadecimal);
pub const _ZF_LOG_LEVEL = ZF_LOG_LEVEL;
pub const _ZF_LOG_TAG = @as(c_int, 0);
pub inline fn ZF_LOG_ALLOW(lvl: anytype) @TypeOf(lvl >= _ZF_LOG_LEVEL) {
    return lvl >= _ZF_LOG_LEVEL;
}
pub const ZF_LOG_ALLOW_VERBOSE = ZF_LOG_ALLOW(ZF_LOG_VERBOSE);
pub const ZF_LOG_ALLOW_DEBUG = ZF_LOG_ALLOW(ZF_LOG_DEBUG);
pub const ZF_LOG_ALLOW_INFO = ZF_LOG_ALLOW(ZF_LOG_INFO);
pub const ZF_LOG_ALLOW_WARN = ZF_LOG_ALLOW(ZF_LOG_WARN);
pub const ZF_LOG_ALLOW_ERROR = ZF_LOG_ALLOW(ZF_LOG_ERROR);
pub const ZF_LOG_ALLOW_FATAL = ZF_LOG_ALLOW(ZF_LOG_FATAL);
pub inline fn ZF_LOG_OUTPUT(lvl: anytype) @TypeOf((ZF_LOG_ALLOW(lvl) != 0) and (lvl >= _zf_log_output_lvl)) {
    return (ZF_LOG_ALLOW(lvl) != 0) and (lvl >= _zf_log_output_lvl);
}
pub const ZF_LOG_OUTPUT_VERBOSE = ZF_LOG_OUTPUT(ZF_LOG_VERBOSE);
pub const ZF_LOG_OUTPUT_DEBUG = ZF_LOG_OUTPUT(ZF_LOG_DEBUG);
pub const ZF_LOG_OUTPUT_INFO = ZF_LOG_OUTPUT(ZF_LOG_INFO);
pub const ZF_LOG_OUTPUT_WARN = ZF_LOG_OUTPUT(ZF_LOG_WARN);
pub const ZF_LOG_OUTPUT_ERROR = ZF_LOG_OUTPUT(ZF_LOG_ERROR);
pub const ZF_LOG_OUTPUT_FATAL = ZF_LOG_OUTPUT(ZF_LOG_FATAL);
pub inline fn _ZF_LOG_PRINTFLIKE(a: anytype, b: anytype) @TypeOf(FORMAT(printf, a, b)) {
    return FORMAT(printf, a, b);
}
pub const __va_list_tag = struct___va_list_tag;
pub const _IO_FILE = struct__IO_FILE;
pub const _G_fpos64_t = union__G_fpos64_t;
pub const seL4_UserContext_ = struct_seL4_UserContext_;
pub const seL4_VCPUContext_ = struct_seL4_VCPUContext_;
pub const seL4_Fault = struct_seL4_Fault;
pub const seL4_Fault_tag = enum_seL4_Fault_tag;
pub const api_object = enum_api_object;
pub const _mode_object = enum__mode_object;
pub const _object = enum__object;
pub const priorityConstants = enum_priorityConstants;
pub const seL4_MsgLimits = enum_seL4_MsgLimits;
pub const seL4_CNode_CapData = struct_seL4_CNode_CapData;
pub const seL4_MessageInfo = struct_seL4_MessageInfo;
pub const seL4_IPCBuffer_ = struct_seL4_IPCBuffer_;
pub const invocation_label = enum_invocation_label;
pub const sel4_arch_invocation_label = enum_sel4_arch_invocation_label;
pub const arch_invocation_label = enum_arch_invocation_label;
pub const seL4_X86_PageDirectory_GetStatusBits = struct_seL4_X86_PageDirectory_GetStatusBits;
pub const seL4_X86_VCPU_ReadVMCS = struct_seL4_X86_VCPU_ReadVMCS;
pub const seL4_X86_VCPU_WriteVMCS = struct_seL4_X86_VCPU_WriteVMCS;
pub const seL4_TCB_GetBreakpoint = struct_seL4_TCB_GetBreakpoint;
pub const seL4_TCB_ConfigureSingleStepping = struct_seL4_TCB_ConfigureSingleStepping;
pub const seL4_SchedContext_Consumed = struct_seL4_SchedContext_Consumed;
pub const seL4_SchedContext_YieldTo = struct_seL4_SchedContext_YieldTo;
pub const list_node = struct_list_node;
