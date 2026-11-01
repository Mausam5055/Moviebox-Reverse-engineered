package androidx.work.impl;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class n0 extends y3.c {
    public n0() {
        super(18, 19);
    }

    @Override // y3.c
    public void b(z3.b connection) throws Exception {
        Intrinsics.h(connection, "connection");
        z3.a.a(connection, "ALTER TABLE `WorkSpec` ADD COLUMN `stop_reason` INTEGER NOT NULL DEFAULT -256");
    }
}
