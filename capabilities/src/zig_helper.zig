const c = @cImport({
    @cInclude("stdlib.h");
    @cInclude("stdio.h");
    @cInclude("sel4/sel4.h");
    @cInclude("sel4platsupport/bootinfo.h");
    @cInclude("utils/util.h");
});

export fn zig_runner() i64 {
    var info: *c.seL4_BootInfo = c.platsupport_get_bootinfo();
    const initial_cnode_object_size: u64 = BIT(info.*.initThreadCNodeSizeBits);
    c.printf("Initial Cnode is %zu slots in size\n", initial_cnode_object_size);

    const num_initial_cnode_slots: u64 = 0;
    c.printf("The CSpace has %zu CSlots\n", num_initial_cnode_slots);

    const first_free_slot: c.seL4_CPtr = info.*.empty.start;
    var error1: c.seL4_Error = c.seL4_CNode_Copy(c.seL4_CapInitThreadCNode, first_free_slot, c.seL4_WordBits, c.seL4_CapInitThreadCNode, c.seL4_CapInitThreadTCB, c.seL4_WordBits, c.seL4_AllRights);
    c.ZF_LOG_IF(error1, "Failed to copy cap!");
    const last_slot: c.seL4_CPtr = info.*.empty.end - 1;

    error1 = c.seL4_TCB_SetPriority(last_slot, last_slot, 10);
    c.ZF_LOGF_IF(error1, "Failed to set priority");

    error1 = c.seL4_CNode_Move(c.seL4_CapInitThreadCNode, first_free_slot, c.seL4_WordBits, c.seL4_CapInitThreadCNode, first_free_slot, c.seL4_WordBits);
    c.ZF_LOGF_IF(error1 != c.seL4_FailedLookup, "first_free_slot is not empty");

    error1 = c.seL4_CNode_Move(c.seL4_CapInitThreadCNode, last_slot, c.sel4_WordBits, c.seL4_CapInitThreadCNode, last_slot, c.seL4_WordBits);
    c.ZF_LOGF_IF(error1 != c.seL4_FailedLookup, "last_slot is not empty");

    c.printf("Suspending current thread\n");
    c.ZF_LOGF("Failed to suspend current thread\n");
    return 0;
}

fn BIT(n: c.seL4_Word) c.seL4_Word {
    return 1 << n;
}
