package com.tencent.tinker.android.dex;

/* JADX INFO: loaded from: classes5.dex */
public abstract class m {
    public static int a(gf.a aVar, int i11) {
        int i12 = 0;
        for (int i13 = i11; i13 >= 0; i13--) {
            i12 = (i12 >>> 8) | ((aVar.readByte() & 255) << 24);
        }
        return i12 >> ((3 - i11) * 8);
    }

    public static long b(gf.a aVar, int i11) {
        long j11 = 0;
        for (int i12 = i11; i12 >= 0; i12--) {
            j11 = (j11 >>> 8) | ((((long) aVar.readByte()) & 255) << 56);
        }
        return j11 >> ((7 - i11) * 8);
    }

    public static int c(gf.a aVar, int i11, boolean z10) {
        int i12 = 0;
        if (z10) {
            while (i11 >= 0) {
                i12 = ((aVar.readByte() & 255) << 24) | (i12 >>> 8);
                i11--;
            }
            return i12;
        }
        for (int i13 = i11; i13 >= 0; i13--) {
            i12 = (i12 >>> 8) | ((aVar.readByte() & 255) << 24);
        }
        return i12 >>> ((3 - i11) * 8);
    }

    public static long d(gf.a aVar, int i11, boolean z10) {
        long j11 = 0;
        if (z10) {
            while (i11 >= 0) {
                j11 = (j11 >>> 8) | ((((long) aVar.readByte()) & 255) << 56);
                i11--;
            }
            return j11;
        }
        for (int i12 = i11; i12 >= 0; i12--) {
            j11 = (j11 >>> 8) | ((((long) aVar.readByte()) & 255) << 56);
        }
        return j11 >>> ((7 - i11) * 8);
    }

    public static void e(gf.b bVar, int i11, long j11) {
        int iNumberOfTrailingZeros = 64 - Long.numberOfTrailingZeros(j11);
        if (iNumberOfTrailingZeros == 0) {
            iNumberOfTrailingZeros = 1;
        }
        int i12 = (iNumberOfTrailingZeros + 7) >> 3;
        long j12 = j11 >> (64 - (i12 * 8));
        bVar.writeByte(i11 | ((i12 - 1) << 5));
        while (i12 > 0) {
            bVar.writeByte((byte) j12);
            j12 >>= 8;
            i12--;
        }
    }

    public static void f(gf.b bVar, int i11, long j11) {
        int iNumberOfLeadingZeros = (72 - Long.numberOfLeadingZeros((j11 >> 63) ^ j11)) >> 3;
        bVar.writeByte(i11 | ((iNumberOfLeadingZeros - 1) << 5));
        while (iNumberOfLeadingZeros > 0) {
            bVar.writeByte((byte) j11);
            j11 >>= 8;
            iNumberOfLeadingZeros--;
        }
    }

    public static void g(gf.b bVar, int i11, long j11) {
        int iNumberOfLeadingZeros = 64 - Long.numberOfLeadingZeros(j11);
        if (iNumberOfLeadingZeros == 0) {
            iNumberOfLeadingZeros = 1;
        }
        int i12 = (iNumberOfLeadingZeros + 7) >> 3;
        bVar.writeByte(i11 | ((i12 - 1) << 5));
        while (i12 > 0) {
            bVar.writeByte((byte) j11);
            j11 >>= 8;
            i12--;
        }
    }
}
