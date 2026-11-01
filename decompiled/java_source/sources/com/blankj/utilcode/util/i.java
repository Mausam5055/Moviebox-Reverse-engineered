package com.blankj.utilcode.util;

import android.support.v4.media.session.PlaybackStateCompat;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f20088a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final char[] f20089b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String a(long j11) {
        return b(j11, 3);
    }

    public static String b(long j11, int i11) {
        if (i11 < 0) {
            throw new IllegalArgumentException("precision shouldn't be less than zero!");
        }
        if (j11 < 0) {
            throw new IllegalArgumentException("byteSize shouldn't be less than zero!");
        }
        if (j11 < 1024) {
            return String.format("%." + i11 + "fB", Double.valueOf(j11));
        }
        if (j11 < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED) {
            return String.format("%." + i11 + "fKB", Double.valueOf(j11 / 1024.0d));
        }
        if (j11 < 1073741824) {
            return String.format("%." + i11 + "fMB", Double.valueOf(j11 / 1048576.0d));
        }
        return String.format("%." + i11 + "fGB", Double.valueOf(j11 / 1.073741824E9d));
    }

    public static String c(byte[] bArr) {
        return d(bArr, true);
    }

    public static String d(byte[] bArr, boolean z10) {
        if (bArr == null) {
            return "";
        }
        char[] cArr = z10 ? f20088a : f20089b;
        int length = bArr.length;
        if (length <= 0) {
            return "";
        }
        char[] cArr2 = new char[length << 1];
        int i11 = 0;
        for (byte b11 : bArr) {
            int i12 = i11 + 1;
            cArr2[i11] = cArr[(b11 >> 4) & 15];
            i11 += 2;
            cArr2[i12] = cArr[b11 & 15];
        }
        return new String(cArr2);
    }

    public static int e(float f11) {
        return e0.d(f11);
    }

    public static long f(long j11, int i11) {
        if (j11 < 0) {
            return -1L;
        }
        return j11 * ((long) i11);
    }
}
