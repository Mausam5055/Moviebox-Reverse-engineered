package com.cloud.tmc.kernel.api.bytedata;

/* JADX INFO: loaded from: classes3.dex */
public final class ByteOrderValues {
    public static final int BIG_ENDIAN = 1;
    public static final int LITTLE_ENDIAN = 2;

    private ByteOrderValues() {
    }

    public static boolean getBoolean(byte[] bArr) {
        return bArr[0] > 0;
    }

    public static byte getByte(byte[] bArr) {
        return getByte(bArr, 1);
    }

    public static byte getByte(byte[] bArr, int i11) {
        return bArr[0];
    }

    public static double getDouble(byte[] bArr) {
        return getDouble(bArr, 1);
    }

    public static double getDouble(byte[] bArr, int i11) {
        return Double.longBitsToDouble(getLong(bArr, i11));
    }

    public static float getFloat(byte[] bArr) {
        return getFloat(bArr, 1);
    }

    public static float getFloat(byte[] bArr, int i11) {
        return Float.intBitsToFloat(getInt(bArr, i11));
    }

    public static int getInt(byte[] bArr) {
        return getInt(bArr, 1);
    }

    public static int getInt(byte[] bArr, int i11) {
        int i12;
        byte b11;
        if (i11 == 1) {
            i12 = ((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8);
            b11 = bArr[3];
        } else {
            i12 = ((bArr[3] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[1] & 255) << 8);
            b11 = bArr[0];
        }
        return (b11 & 255) | i12;
    }

    public static long getLong(byte[] bArr) {
        return getLong(bArr, 1);
    }

    public static long getLong(byte[] bArr, int i11) {
        long j11;
        byte b11;
        if (i11 == 1) {
            j11 = (((long) (bArr[0] & 255)) << 56) | (((long) (bArr[1] & 255)) << 48) | (((long) (bArr[2] & 255)) << 40) | (((long) (bArr[3] & 255)) << 32) | (((long) (bArr[4] & 255)) << 24) | (((long) (bArr[5] & 255)) << 16) | (((long) (bArr[6] & 255)) << 8);
            b11 = bArr[7];
        } else {
            j11 = (((long) (bArr[7] & 255)) << 56) | (((long) (bArr[6] & 255)) << 48) | (((long) (bArr[5] & 255)) << 40) | (((long) (bArr[4] & 255)) << 32) | (((long) (bArr[3] & 255)) << 24) | (((long) (bArr[2] & 255)) << 16) | (((long) (bArr[1] & 255)) << 8);
            b11 = bArr[0];
        }
        return j11 | ((long) (b11 & 255));
    }

    public static short getShort(byte[] bArr) {
        return getShort(bArr, 1);
    }

    public static short getShort(byte[] bArr, int i11) {
        int i12;
        byte b11;
        if (i11 == 1) {
            i12 = (bArr[0] & 255) << 8;
            b11 = bArr[1];
        } else {
            i12 = (bArr[1] & 255) << 8;
            b11 = bArr[0];
        }
        return (short) ((b11 & 255) | i12);
    }

    public static void putBoolean(boolean z10, byte[] bArr) {
        bArr[0] = z10 ? (byte) 1 : (byte) 0;
    }

    public static void putByte(byte b11, byte[] bArr) {
        putByte(b11, bArr, 1);
    }

    public static void putByte(byte b11, byte[] bArr, int i11) {
        bArr[0] = b11;
    }

    public static void putDouble(double d11, byte[] bArr) {
        putDouble(d11, bArr, 1);
    }

    public static void putDouble(double d11, byte[] bArr, int i11) {
        putLong(Double.doubleToLongBits(d11), bArr, i11);
    }

    public static void putFloat(float f11, byte[] bArr) {
        putFloat(f11, bArr, 1);
    }

    public static void putFloat(float f11, byte[] bArr, int i11) {
        putInt(Float.floatToIntBits(f11), bArr, i11);
    }

    public static void putInt(int i11, byte[] bArr) {
        putInt(i11, bArr, 1);
    }

    public static void putInt(int i11, byte[] bArr, int i12) {
        if (i12 == 1) {
            bArr[0] = (byte) (i11 >> 24);
            bArr[1] = (byte) (i11 >> 16);
            bArr[2] = (byte) (i11 >> 8);
            bArr[3] = (byte) i11;
            return;
        }
        bArr[0] = (byte) i11;
        bArr[1] = (byte) (i11 >> 8);
        bArr[2] = (byte) (i11 >> 16);
        bArr[3] = (byte) (i11 >> 24);
    }

    public static void putLong(long j11, byte[] bArr) {
        putLong(j11, bArr, 1);
    }

    public static void putLong(long j11, byte[] bArr, int i11) {
        if (i11 == 1) {
            bArr[0] = (byte) (j11 >> 56);
            bArr[1] = (byte) (j11 >> 48);
            bArr[2] = (byte) (j11 >> 40);
            bArr[3] = (byte) (j11 >> 32);
            bArr[4] = (byte) (j11 >> 24);
            bArr[5] = (byte) (j11 >> 16);
            bArr[6] = (byte) (j11 >> 8);
            bArr[7] = (byte) j11;
            return;
        }
        bArr[0] = (byte) j11;
        bArr[1] = (byte) (j11 >> 8);
        bArr[2] = (byte) (j11 >> 16);
        bArr[3] = (byte) (j11 >> 24);
        bArr[4] = (byte) (j11 >> 32);
        bArr[5] = (byte) (j11 >> 40);
        bArr[6] = (byte) (j11 >> 48);
        bArr[7] = (byte) (j11 >> 56);
    }

    public static void putShort(short s11, byte[] bArr) {
        putShort(s11, bArr, 1);
    }

    public static void putShort(short s11, byte[] bArr, int i11) {
        if (i11 == 1) {
            bArr[0] = (byte) (s11 >> 8);
            bArr[1] = (byte) s11;
        } else {
            bArr[0] = (byte) s11;
            bArr[1] = (byte) (s11 >> 8);
        }
    }
}
