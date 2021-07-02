const c = @cImport({
    @cInclude("stdio.h");
});

export fn zig_runner() i64 {
    return c.printf("Hello World!\n");
}
