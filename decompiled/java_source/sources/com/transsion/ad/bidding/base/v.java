package com.transsion.ad.bidding.base;

/* JADX INFO: loaded from: classes5.dex */
public final class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final v f41893a = new v();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f41894b;

    private v() {
    }

    public final boolean a(int i11) {
        return i11 == 3 || i11 == 4 || i11 == 5;
    }

    public final boolean b() {
        return f41894b;
    }

    public final void c() {
        f41894b = false;
    }

    public final void d() {
        f41894b = true;
    }
}
