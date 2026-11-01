package com.amazonaws.util;

/* JADX INFO: loaded from: classes2.dex */
public enum CodecUtils {
    ;

    static int sanitize(String str, byte[] bArr) {
        int length = bArr.length;
        char[] charArray = str.toCharArray();
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12++) {
            char c11 = charArray[i12];
            if (c11 != '\r' && c11 != '\n' && c11 != ' ') {
                if (c11 > 127) {
                    throw new IllegalArgumentException("Invalid character found at position " + i12 + " for " + str);
                }
                bArr[i11] = (byte) c11;
                i11++;
            }
        }
        return i11;
    }

    static void sanityCheckLastPos(int i11, int i12) {
        if ((i11 & i12) != 0) {
            throw new IllegalArgumentException("Invalid last non-pad character detected");
        }
    }

    public static byte[] toBytesDirect(String str) {
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        byte[] bArr = new byte[length];
        for (int i11 = 0; i11 < length; i11++) {
            char c11 = charArray[i11];
            if (c11 > 127) {
                throw new IllegalArgumentException("Invalid character found at position " + i11 + " for " + str);
            }
            bArr[i11] = (byte) c11;
        }
        return bArr;
    }

    public static String toStringDirect(byte[] bArr) {
        char[] cArr = new char[bArr.length];
        int length = bArr.length;
        int i11 = 0;
        int i12 = 0;
        while (i11 < length) {
            cArr[i12] = (char) bArr[i11];
            i11++;
            i12++;
        }
        return new String(cArr);
    }
}
