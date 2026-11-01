package com.amazonaws.util;

/* JADX INFO: loaded from: classes2.dex */
class Base16Codec {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f18986a = CodecUtils.toBytesDirect("0123456789ABCDEF");

    private static class LazyHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final byte[] f18987a = b();

        private static byte[] b() {
            byte[] bArr = new byte[103];
            for (int i11 = 0; i11 <= 102; i11++) {
                if (i11 >= 48 && i11 <= 57) {
                    bArr[i11] = (byte) (i11 - 48);
                } else if (i11 >= 65 && i11 <= 70) {
                    bArr[i11] = (byte) (i11 - 55);
                } else if (i11 < 97 || i11 > 102) {
                    bArr[i11] = -1;
                } else {
                    bArr[i11] = (byte) (i11 - 87);
                }
            }
            return bArr;
        }
    }

    Base16Codec() {
    }

    public byte[] a(byte[] bArr, int i11) {
        if (i11 % 2 != 0) {
            throw new IllegalArgumentException("Input is expected to be encoded in multiple of 2 bytes but found: " + i11);
        }
        int i12 = i11 / 2;
        byte[] bArr2 = new byte[i12];
        int i13 = 0;
        for (int i14 = 0; i14 < i12; i14++) {
            int i15 = i13 + 1;
            int iC = c(bArr[i13]) << 4;
            i13 += 2;
            bArr2[i14] = (byte) (c(bArr[i15]) | iC);
        }
        return bArr2;
    }

    public byte[] b(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length * 2];
        int i11 = 0;
        for (byte b11 : bArr) {
            int i12 = i11 + 1;
            byte[] bArr3 = this.f18986a;
            bArr2[i11] = bArr3[(b11 >>> 4) & 15];
            i11 += 2;
            bArr2[i12] = bArr3[b11 & 15];
        }
        return bArr2;
    }

    protected int c(byte b11) {
        byte b12 = LazyHolder.f18987a[b11];
        if (b12 > -1) {
            return b12;
        }
        throw new IllegalArgumentException("Invalid base 16 character: '" + ((char) b11) + "'");
    }
}
