package com.alibaba.sdk.android.oss.common.utils;

import java.lang.reflect.Array;
import java.util.zip.Checksum;

/* JADX INFO: loaded from: classes2.dex */
public class CRC64 implements Checksum {
    private static final int GF2_DIM = 64;
    private static final long POLY = -3932672073523589310L;
    private static final long[][] table = (long[][]) Array.newInstance((Class<?>) Long.TYPE, 8, 256);
    private long value = 0;

    static {
        for (int i11 = 0; i11 < 256; i11++) {
            long j11 = i11;
            for (int i12 = 0; i12 < 8; i12++) {
                j11 = (j11 & 1) == 1 ? (j11 >>> 1) ^ POLY : j11 >>> 1;
            }
            table[0][i11] = j11;
        }
        for (int i13 = 0; i13 < 256; i13++) {
            long j12 = table[0][i13];
            for (int i14 = 1; i14 < 8; i14++) {
                long[][] jArr = table;
                j12 = (j12 >>> 8) ^ jArr[0][(int) (255 & j12)];
                jArr[i14][i13] = j12;
            }
        }
    }

    public static long combine(long j11, long j12, long j13) {
        if (j13 == 0) {
            return j11;
        }
        long[] jArr = new long[64];
        long[] jArr2 = new long[64];
        jArr2[0] = -3932672073523589310L;
        long j14 = 1;
        for (int i11 = 1; i11 < 64; i11++) {
            jArr2[i11] = j14;
            j14 <<= 1;
        }
        gf2MatrixSquare(jArr, jArr2);
        gf2MatrixSquare(jArr2, jArr);
        long jGf2MatrixTimes = j11;
        long j15 = j13;
        do {
            gf2MatrixSquare(jArr, jArr2);
            if ((j15 & 1) == 1) {
                jGf2MatrixTimes = gf2MatrixTimes(jArr, jGf2MatrixTimes);
            }
            long j16 = j15 >>> 1;
            if (j16 == 0) {
                break;
            }
            gf2MatrixSquare(jArr2, jArr);
            if ((j16 & 1) == 1) {
                jGf2MatrixTimes = gf2MatrixTimes(jArr2, jGf2MatrixTimes);
            }
            j15 >>>= 2;
        } while (j15 != 0);
        return jGf2MatrixTimes ^ j12;
    }

    private static void gf2MatrixSquare(long[] jArr, long[] jArr2) {
        for (int i11 = 0; i11 < 64; i11++) {
            jArr[i11] = gf2MatrixTimes(jArr2, jArr2[i11]);
        }
    }

    private static long gf2MatrixTimes(long[] jArr, long j11) {
        int i11 = 0;
        long j12 = 0;
        while (j11 != 0) {
            if ((j11 & 1) == 1) {
                j12 ^= jArr[i11];
            }
            j11 >>>= 1;
            i11++;
        }
        return j12;
    }

    @Override // java.util.zip.Checksum
    public long getValue() {
        return this.value;
    }

    @Override // java.util.zip.Checksum
    public void reset() {
        this.value = 0L;
    }

    @Override // java.util.zip.Checksum
    public void update(int i11) {
        update(new byte[]{(byte) (i11 & 255)}, 1);
    }

    public void update(byte[] bArr, int i11) {
        update(bArr, 0, i11);
    }

    @Override // java.util.zip.Checksum
    public void update(byte[] bArr, int i11, int i12) {
        this.value = ~this.value;
        int i13 = i11;
        int i14 = i12;
        while (i14 >= 8) {
            long[][] jArr = table;
            long[] jArr2 = jArr[7];
            long j11 = this.value;
            this.value = ((((((jArr[6][(int) (((long) (bArr[i13 + 1] & 255)) ^ ((j11 >>> 8) & 255))] ^ jArr2[(int) ((j11 & 255) ^ ((long) (bArr[i13] & 255)))]) ^ jArr[5][(int) (((j11 >>> 16) & 255) ^ ((long) (bArr[i13 + 2] & 255)))]) ^ jArr[4][(int) (((j11 >>> 24) & 255) ^ ((long) (bArr[i13 + 3] & 255)))]) ^ jArr[3][(int) (((j11 >>> 32) & 255) ^ ((long) (bArr[i13 + 4] & 255)))]) ^ jArr[2][(int) (((j11 >>> 40) & 255) ^ ((long) (bArr[i13 + 5] & 255)))]) ^ jArr[1][(int) ((255 & (j11 >>> 48)) ^ ((long) (bArr[i13 + 6] & 255)))]) ^ jArr[0][(int) ((j11 >>> 56) ^ ((long) (bArr[i13 + 7] & 255)))];
            i13 += 8;
            i14 -= 8;
        }
        while (i14 > 0) {
            long[] jArr3 = table[0];
            long j12 = this.value;
            this.value = (j12 >>> 8) ^ jArr3[(int) ((((long) bArr[i13]) ^ j12) & 255)];
            i13++;
            i14--;
        }
        this.value = ~this.value;
    }
}
