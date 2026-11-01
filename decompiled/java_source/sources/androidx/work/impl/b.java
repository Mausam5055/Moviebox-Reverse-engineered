package androidx.work.impl;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements y3.b {
    @Override // y3.b
    public /* synthetic */ void a(z3.b bVar) {
        y3.a.a(this, bVar);
    }

    @Override // y3.b
    public void b(a4.d db2) {
        Intrinsics.h(db2, "db");
        db2.E("UPDATE WorkSpec SET `last_enqueue_time` = -1 WHERE `last_enqueue_time` = 0");
    }
}
