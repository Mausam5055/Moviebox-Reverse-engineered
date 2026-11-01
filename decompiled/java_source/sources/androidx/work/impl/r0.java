package androidx.work.impl;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class r0 extends y3.c {
    public r0() {
        super(23, 24);
    }

    @Override // y3.c
    public void b(z3.b connection) throws Exception {
        Intrinsics.h(connection, "connection");
        z3.a.a(connection, "ALTER TABLE `WorkSpec` ADD COLUMN `backoff_on_system_interruptions` INTEGER DEFAULT NULL");
    }
}
