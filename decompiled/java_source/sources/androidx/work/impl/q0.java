package androidx.work.impl;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class q0 extends y3.c {
    public q0() {
        super(22, 23);
    }

    @Override // y3.c
    public void b(z3.b connection) throws Exception {
        Intrinsics.h(connection, "connection");
        z3.a.a(connection, "ALTER TABLE `WorkSpec` ADD COLUMN `trace_tag` TEXT DEFAULT NULL");
    }
}
