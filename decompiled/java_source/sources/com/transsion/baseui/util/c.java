package com.transsion.baseui.util;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f43505b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f43506c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f43504a = new c();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f43507d = 8;

    private c() {
    }

    public final boolean a(int i11, long j11) {
        if (f43506c != i11) {
            f43506c = i11;
            f43505b = SystemClock.elapsedRealtime();
            return false;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - f43505b <= j11) {
            return true;
        }
        f43506c = i11;
        f43505b = jElapsedRealtime;
        return false;
    }
}
