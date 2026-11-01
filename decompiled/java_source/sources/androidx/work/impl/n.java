package androidx.work.impl;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class n extends y3.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final n f15890c = new n();

    private n() {
        super(7, 8);
    }

    @Override // y3.c
    public void a(a4.d db2) {
        Intrinsics.h(db2, "db");
        db2.E("\n    CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec`(`period_start_time`)\n    ");
    }
}
