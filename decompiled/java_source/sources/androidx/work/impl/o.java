package androidx.work.impl;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class o extends y3.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final o f15892c = new o();

    private o() {
        super(8, 9);
    }

    @Override // y3.c
    public void a(a4.d db2) {
        Intrinsics.h(db2, "db");
        db2.E("ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0");
    }
}
