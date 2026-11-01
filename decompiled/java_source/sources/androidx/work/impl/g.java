package androidx.work.impl;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class g extends y3.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final g f15683c = new g();

    private g() {
        super(12, 13);
    }

    @Override // y3.c
    public void a(a4.d db2) {
        Intrinsics.h(db2, "db");
        db2.E("UPDATE workspec SET required_network_type = 0 WHERE required_network_type IS NULL ");
        db2.E("UPDATE workspec SET content_uri_triggers = x'' WHERE content_uri_triggers is NULL");
    }
}
