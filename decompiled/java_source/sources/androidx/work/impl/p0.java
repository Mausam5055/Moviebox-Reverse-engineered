package androidx.work.impl;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class p0 extends y3.c {
    public p0() {
        super(20, 21);
    }

    @Override // y3.c
    public void b(z3.b connection) throws Exception {
        Intrinsics.h(connection, "connection");
        z3.a.a(connection, "ALTER TABLE `WorkSpec` ADD COLUMN `required_network_request` BLOB NOT NULL DEFAULT x''");
    }
}
