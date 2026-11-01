package androidx.work.impl;

import androidx.room.RoomDatabase;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends RoomDatabase.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.work.a f15578a;

    public c(androidx.work.a clock) {
        Intrinsics.h(clock, "clock");
        this.f15578a = clock;
    }

    private final long g() {
        return this.f15578a.currentTimeMillis() - g0.f15684a;
    }

    private final String h() {
        return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (last_enqueue_time + minimum_retention_duration) < " + g() + " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
    }

    @Override // androidx.room.RoomDatabase.b
    public void e(a4.d db2) {
        Intrinsics.h(db2, "db");
        super.e(db2);
        db2.A();
        try {
            db2.E(h());
            db2.I();
        } finally {
            db2.L();
        }
    }
}
