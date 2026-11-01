package com.cloud.tmc.miniutils.util;

/* JADX INFO: loaded from: classes3.dex */
public class HexUtil {
    private static final char[] DIGITS_LOWER = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final char[] DIGITS_UPPER = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static byte charToByte(char c11) {
        return (byte) "0123456789ABCDEF".indexOf(c11);
    }

    public static char[] encodeHex(byte[] bArr) {
        return encodeHex(bArr, true);
    }

    public static char[] encodeHex(byte[] bArr, boolean z10) {
        return encodeHex(bArr, z10 ? DIGITS_LOWER : DIGITS_UPPER);
    }

    protected static char[] encodeHex(byte[] bArr, char[] cArr) {
        if (bArr == null) {
            return null;
        }
        char[] cArr2 = new char[bArr.length << 1];
        int i11 = 0;
        for (byte b11 : bArr) {
            int i12 = i11 + 1;
            cArr2[i11] = cArr[(b11 & 240) >>> 4];
            i11 += 2;
            cArr2[i12] = cArr[b11 & 15];
        }
        return cArr2;
    }

    public static String encodeHexStr(byte[] bArr) {
        return encodeHexStr(bArr, true);
    }

    public static String encodeHexStr(byte[] bArr, boolean z10) {
        return encodeHexStr(bArr, z10 ? DIGITS_LOWER : DIGITS_UPPER);
    }

    protected static String encodeHexStr(byte[] bArr, char[] cArr) {
        return new String(encodeHex(bArr, cArr));
    }

    public static String extractData(byte[] bArr, int i11) {
        return formatHexString(new byte[]{bArr[i11]});
    }

    public static String formatHexString(byte[] bArr) {
        return formatHexString(bArr, false);
    }

    public static String formatHexString(byte[] bArr, boolean z10) {
        if (bArr == null || bArr.length < 1) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        for (byte b11 : bArr) {
            String hexString = Integer.toHexString(b11 & 255);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            sb2.append(hexString);
            if (z10) {
                sb2.append(" ");
            }
        }
        return sb2.toString().trim();
    }

    public static byte[] hexStringToBytes(String str) {
        if (str == null || str.equals("")) {
            return new byte[0];
        }
        String upperCase = str.trim().toUpperCase();
        int length = upperCase.length() / 2;
        char[] charArray = upperCase.toCharArray();
        byte[] bArr = new byte[length];
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = i11 * 2;
            bArr[i11] = (byte) ((charToByte(charArray[i12 + 1]) & 255) | (charToByte(charArray[i12]) << 4));
        }
        return bArr;
    }
}
