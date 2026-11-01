package com.mbridge.msdk.thrid.okio;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes5.dex */
final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f38479a = Charset.forName("UTF-8");

    public static int a(int i11) {
        return ((i11 & 255) << 24) | (((-16777216) & i11) >>> 24) | ((16711680 & i11) >>> 8) | ((65280 & i11) << 8);
    }

    public static short a(short s11) {
        return (short) (((s11 & 255) << 8) | ((65280 & s11) >>> 8));
    }

    public static void a(long j11, long j12, long j13) {
        if ((j12 | j13) < 0 || j12 > j11 || j11 - j12 < j13) {
            throw new ArrayIndexOutOfBoundsException(String.format("size=%s offset=%s byteCount=%s", Long.valueOf(j11), Long.valueOf(j12), Long.valueOf(j13)));
        }
    }

    public static void a(Throwable th2) throws Throwable {
        b(th2);
    }

    public static boolean a(byte[] bArr, int i11, byte[] bArr2, int i12, int i13) {
        for (int i14 = 0; i14 < i13; i14++) {
            if (bArr[i14 + i11] != bArr2[i14 + i12]) {
                return false;
            }
        }
        return true;
    }

    private static <T extends Throwable> void b(Throwable th2) throws Throwable {
        throw th2;
    }
}
