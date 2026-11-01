package com.aliyun.utils;

import android.text.TextUtils;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes2.dex */
public class EncodeUtils {
    private static final String TAG = "EncodeUtils";

    public static String getBase64(String str) {
        byte[] bytes;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            bytes = str.getBytes("utf-8");
        } catch (UnsupportedEncodingException unused) {
            bytes = null;
        }
        if (bytes != null) {
            return new String(Base64.encode(bytes, 0));
        }
        return null;
    }

    public static String getDecodeBase64(String str) {
        byte[] bytes;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            bytes = str.getBytes("utf-8");
        } catch (UnsupportedEncodingException unused) {
            bytes = null;
        }
        if (bytes != null) {
            return new String(Base64.decode(bytes, 0));
        }
        return null;
    }

    public static String getMD5(String str) {
        return getMD5(str.getBytes());
    }

    public static String getMD5(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            byte[] bArrDigest = messageDigest.digest();
            char[] cArr2 = new char[32];
            int i11 = 0;
            for (int i12 = 0; i12 < 16; i12++) {
                byte b11 = bArrDigest[i12];
                int i13 = i11 + 1;
                cArr2[i11] = cArr[(b11 >>> 4) & 15];
                i11 += 2;
                cArr2[i13] = cArr[b11 & 15];
            }
            return new String(cArr2);
        } catch (Exception unused) {
            return "";
        }
    }
}
