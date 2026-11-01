package w5;

import android.text.TextUtils;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final MessageDigest f77595a = c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final char[] f77596b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public static String a(String str) {
        byte[] bArrDigest;
        MessageDigest messageDigest = f77595a;
        if (messageDigest == null || TextUtils.isEmpty(str)) {
            return "";
        }
        byte[] bytes = str.getBytes(Charset.forName("UTF-8"));
        synchronized (c.class) {
            bArrDigest = messageDigest.digest(bytes);
        }
        return b(bArrDigest);
    }

    public static String b(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        char[] cArr = new char[bArr.length << 1];
        int i11 = 0;
        for (byte b11 : bArr) {
            int i12 = i11 + 1;
            char[] cArr2 = f77596b;
            cArr[i11] = cArr2[(b11 & 240) >> 4];
            i11 += 2;
            cArr[i12] = cArr2[b11 & 15];
        }
        return new String(cArr);
    }

    private static MessageDigest c() {
        try {
            return MessageDigest.getInstance("md5");
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }
}
