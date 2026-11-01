package androidx.work.impl;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class l extends y3.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final l f15700c = new l();

    private l() {
        super(4, 5);
    }

    @Override // y3.c
    public void a(a4.d db2) {
        Intrinsics.h(db2, "db");
        db2.E("ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1");
        db2.E("ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1");
    }
}
