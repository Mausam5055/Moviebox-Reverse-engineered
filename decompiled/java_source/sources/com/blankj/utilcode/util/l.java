package com.blankj.utilcode.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l {
    public static byte[] a(byte[] bArr) {
        return d(bArr, "MD5");
    }

    public static String b(String str) {
        return (str == null || str.length() == 0) ? "" : c(str.getBytes());
    }

    public static String c(byte[] bArr) {
        return e0.b(a(bArr));
    }

    static byte[] d(byte[] bArr, String str) {
        if (bArr != null && bArr.length > 0) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(str);
                messageDigest.update(bArr);
                return messageDigest.digest();
            } catch (NoSuchAlgorithmException e11) {
                e11.printStackTrace();
            }
        }
        return null;
    }
}
