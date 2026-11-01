package com.tn.tranpay.helper;

/* JADX INFO: loaded from: classes4.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f41648a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f41649b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f41650c;

    private a() {
    }

    public final boolean a(int i11, long j11) {
        if (f41650c != i11) {
            f41650c = i11;
            f41649b = System.currentTimeMillis();
            return false;
        }
        if (System.currentTimeMillis() - f41649b <= j11) {
            return true;
        }
        f41650c = i11;
        f41649b = System.currentTimeMillis();
        return false;
    }
}
