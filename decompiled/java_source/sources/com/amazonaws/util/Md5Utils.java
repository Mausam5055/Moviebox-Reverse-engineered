package com.amazonaws.util;

import com.amazonaws.logging.LogFactory;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes2.dex */
public class Md5Utils {
    public static byte[] a(File file) {
        return b(new FileInputStream(file));
    }

    public static byte[] b(InputStream inputStream) {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        try {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                byte[] bArr = new byte[16384];
                while (true) {
                    int i11 = bufferedInputStream.read(bArr, 0, 16384);
                    if (i11 == -1) {
                        break;
                    }
                    messageDigest.update(bArr, 0, i11);
                    try {
                        bufferedInputStream.close();
                    } catch (Exception e11) {
                        LogFactory.b(Md5Utils.class).a("Unable to close input stream of hash candidate: " + e11);
                    }
                    throw th;
                }
                byte[] bArrDigest = messageDigest.digest();
                try {
                    bufferedInputStream.close();
                } catch (Exception e12) {
                    LogFactory.b(Md5Utils.class).a("Unable to close input stream of hash candidate: " + e12);
                }
                return bArrDigest;
            } catch (NoSuchAlgorithmException e13) {
                throw new IllegalStateException(e13);
            }
        } catch (Throwable th2) {
            bufferedInputStream.close();
            throw th2;
        }
    }

    public static byte[] c(byte[] bArr) {
        try {
            return MessageDigest.getInstance("MD5").digest(bArr);
        } catch (NoSuchAlgorithmException e11) {
            throw new IllegalStateException(e11);
        }
    }

    public static String d(File file) {
        return Base64.encodeAsString(a(file));
    }

    public static String e(byte[] bArr) {
        return Base64.encodeAsString(c(bArr));
    }
}
