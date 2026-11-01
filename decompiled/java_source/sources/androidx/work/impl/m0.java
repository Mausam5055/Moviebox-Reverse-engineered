package androidx.work.impl;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class m0 extends y3.c {
    public m0() {
        super(17, 18);
    }

    @Override // y3.c
    public void b(z3.b connection) throws Exception {
        Intrinsics.h(connection, "connection");
        z3.a.a(connection, "ALTER TABLE `WorkSpec` ADD COLUMN `next_schedule_time_override` INTEGER NOT NULL DEFAULT 9223372036854775807");
        z3.a.a(connection, "ALTER TABLE `WorkSpec` ADD COLUMN `next_schedule_time_override_generation` INTEGER NOT NULL DEFAULT 0");
    }
}
