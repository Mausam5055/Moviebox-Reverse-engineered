package com.transsion.push.utils;

import android.text.TextUtils;
import android.util.Base64;
import com.transsion.api.gateway.utils.EncoderUtil;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes6.dex */
public class e0 {
    public static byte[] a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(EncoderUtil.ALGORITHM_SHA_256);
            messageDigest.reset();
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return new String(Base64.decode(str, 0));
    }

    public static int c(String str) {
        int iD = d(str);
        if (iD <= 0) {
            return 1;
        }
        return iD;
    }

    public static int d(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        try {
            return Integer.valueOf(str).intValue();
        } catch (Exception e11) {
            e11.printStackTrace();
            return -1;
        }
    }

    public static long e(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        try {
            return Long.valueOf(str).longValue();
        } catch (Exception e11) {
            e11.printStackTrace();
            return -1L;
        }
    }
}
