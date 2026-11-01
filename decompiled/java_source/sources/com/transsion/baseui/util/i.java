package com.transsion.baseui.util;

/* JADX INFO: loaded from: classes5.dex */
public final class i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f43517b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static long f43518c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final i f43516a = new i();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f43519d = 8;

    private i() {
    }

    public final String a(long j11) {
        long jCurrentTimeMillis = (System.currentTimeMillis() - f43518c) / ((long) 1000);
        if (jCurrentTimeMillis <= 0) {
            jCurrentTimeMillis = 1;
        }
        f43518c = System.currentTimeMillis();
        long j12 = (j11 - f43517b) / jCurrentTimeMillis;
        f43517b = j11;
        if (j12 <= 0) {
            return "0KB/s";
        }
        return oh.b.a(j12, 1) + "/s";
    }
}
