package androidx.work.impl;

import android.content.ContentValues;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements y3.b {
    @Override // y3.b
    public /* synthetic */ void a(z3.b bVar) {
        y3.a.a(this, bVar);
    }

    @Override // y3.b
    public void b(a4.d db2) {
        Intrinsics.h(db2, "db");
        db2.E("UPDATE workspec SET period_count = 1 WHERE last_enqueue_time <> 0 AND interval_duration <> 0");
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("last_enqueue_time", Long.valueOf(System.currentTimeMillis()));
        db2.f0("WorkSpec", 3, contentValues, "last_enqueue_time = 0 AND interval_duration <> 0 ", new Object[0]);
    }
}
