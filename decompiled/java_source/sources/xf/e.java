package xf;

import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes5.dex */
public abstract class e {
    public static int a(byte[] bArr, int i11, ByteOrder byteOrder) {
        int i12;
        int i13;
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            int i14 = ((bArr[i11 + 1] & 255) << 16) | ((bArr[i11] & 255) << 24);
            i12 = i14 | ((bArr[i11 + 2] & 255) << 8);
            i13 = bArr[i11 + 3] & 255;
        } else {
            int i15 = ((bArr[i11 + 1] & 255) << 8) | (bArr[i11] & 255);
            i12 = i15 | ((bArr[i11 + 2] & 255) << 16);
            i13 = (bArr[i11 + 3] & 255) << 24;
        }
        return i13 | i12;
    }

    public static short b(byte[] bArr, int i11, ByteOrder byteOrder) {
        int i12;
        byte b11;
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            i12 = bArr[i11] << 8;
            b11 = bArr[i11 + 1];
        } else {
            i12 = bArr[i11 + 1] << 8;
            b11 = bArr[i11];
        }
        return (short) ((b11 & 255) | i12);
    }
}
