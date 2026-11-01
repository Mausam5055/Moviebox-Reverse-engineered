package com.bytedance.sdk.component.utils;

import java.security.MessageDigest;

/* JADX INFO: loaded from: classes2.dex */
public class uvD {
    private static final char[] Sj = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static String Sj(String str) {
        if (str != null) {
            try {
                if (str.length() != 0) {
                    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    messageDigest.update(str.getBytes("UTF-8"));
                    return Sj(messageDigest.digest());
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static String Sj(byte[] bArr) {
        if (bArr != null) {
            return Sj(bArr, 0, bArr.length);
        }
        throw new NullPointerException("bytes is null");
    }

    public static String Sj(byte[] bArr, int i11, int i12) {
        if (bArr == null) {
            throw new NullPointerException("bytes is null");
        }
        if (i11 < 0 || i11 + i12 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        int i13 = i12 * 2;
        char[] cArr = new char[i13];
        int i14 = 0;
        for (int i15 = 0; i15 < i12; i15++) {
            byte b11 = bArr[i15 + i11];
            int i16 = i14 + 1;
            char[] cArr2 = Sj;
            cArr[i14] = cArr2[(b11 & 255) >> 4];
            i14 += 2;
            cArr[i16] = cArr2[b11 & 15];
        }
        return new String(cArr, 0, i13);
    }
}
