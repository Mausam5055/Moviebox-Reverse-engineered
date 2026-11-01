package com.amazonaws.util;

/* JADX INFO: loaded from: classes2.dex */
public class BinaryUtils {
    public static byte[] a(String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str);
    }

    public static byte[] b(String str) {
        byte[] bArr = new byte[(str.length() + 1) / 2];
        int i11 = 0;
        int i12 = 0;
        while (i11 < str.length()) {
            int i13 = i11 + 2;
            bArr[i12] = (byte) Integer.parseInt(str.substring(i11, i13), 16);
            i11 = i13;
            i12++;
        }
        return bArr;
    }

    public static String c(byte[] bArr) {
        return Base64.encodeAsString(bArr);
    }

    public static String d(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder(bArr.length * 2);
        for (byte b11 : bArr) {
            String hexString = Integer.toHexString(b11);
            if (hexString.length() == 1) {
                sb2.append("0");
            } else if (hexString.length() == 8) {
                hexString = hexString.substring(6);
            }
            sb2.append(hexString);
        }
        return StringUtils.b(sb2.toString());
    }
}
