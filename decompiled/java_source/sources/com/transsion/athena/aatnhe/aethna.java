package com.transsion.athena.aatnhe;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class aethna {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f42534a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'j', 'k', 'm', 'n', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Map<Character, Integer> f42535b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f42536c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private byte f42537d = 0;

    static {
        for (int i11 = 0; i11 < 32; i11++) {
            f42535b.put(Character.valueOf(f42534a[i11]), Integer.valueOf(i11));
        }
    }

    private aethna(double d11, double d12, int i11) {
        int iMin = Math.min(i11, 64);
        double[] dArr = {-90.0d, 90.0d};
        double[] dArr2 = {-180.0d, 180.0d};
        boolean z10 = true;
        while (this.f42537d < iMin) {
            if (z10) {
                a(d12, dArr2);
            } else {
                a(d11, dArr);
            }
            z10 = !z10;
        }
        this.f42536c <<= 64 - iMin;
    }

    public static aethna a(double d11, double d12, int i11) {
        if (i11 > 12) {
            throw new IllegalArgumentException("A geohash can only be 12 character long.");
        }
        int i12 = i11 * 5;
        return new aethna(d11, d12, i12 <= 60 ? i12 : 60);
    }

    private void a(double d11, double[] dArr) {
        double d12 = (dArr[0] + dArr[1]) / 2.0d;
        if (d11 >= d12) {
            this.f42537d = (byte) (this.f42537d + 1);
            this.f42536c = (this.f42536c << 1) | 1;
            dArr[0] = d12;
        } else {
            this.f42537d = (byte) (this.f42537d + 1);
            this.f42536c <<= 1;
            dArr[1] = d12;
        }
    }

    public String a() {
        if (this.f42537d % 5 != 0) {
            throw new IllegalStateException("Cannot convert a geohash to base32 if the precision is not a multiple of 5.");
        }
        StringBuilder sb2 = new StringBuilder();
        long j11 = this.f42536c;
        int iCeil = (int) Math.ceil(((double) this.f42537d) / 5.0d);
        for (int i11 = 0; i11 < iCeil; i11++) {
            sb2.append(f42534a[(int) (((-576460752303423488L) & j11) >>> 59)]);
            j11 <<= 5;
        }
        return sb2.toString();
    }
}
