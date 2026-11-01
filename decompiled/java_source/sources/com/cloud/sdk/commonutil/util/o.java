package com.cloud.sdk.commonutil.util;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.cloud.sdk.commonutil.R$string;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes3.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f23211a = "#PART#".getBytes();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static byte[] f23212b = new byte[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f23213c = "hisavana_rsa_public_key.pem";

    public static byte[] a(byte[] bArr, byte[] bArr2) throws InvalidKeySpecException, NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bArr2));
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(1, publicKeyGeneratePublic);
        return cipher.doFinal(bArr);
    }

    public static String b(String str) {
        try {
            if (f23212b.length == 0) {
                f23212b = Base64.decode(k(), 0);
            }
            return !TextUtils.isEmpty(str) ? Base64.encodeToString(d(str.getBytes(), f23212b), 0) : "";
        } catch (Exception e11) {
            c.Log().d("RSAUtils", Log.getStackTraceString(e11));
            return "";
        }
    }

    public static ArrayList c(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        if (arrayList != null) {
            try {
                if (!arrayList.isEmpty()) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        String str = (String) it.next();
                        if (!TextUtils.isEmpty(str)) {
                            arrayList2.add(b(str));
                        }
                    }
                }
            } catch (Exception e11) {
                c.Log().d("RSAUtils", Log.getStackTraceString(e11));
            }
        }
        return arrayList2;
    }

    public static byte[] d(byte[] bArr, byte[] bArr2) throws InvalidKeySpecException, NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        int length = bArr.length;
        if (length <= 245) {
            return a(bArr, bArr2);
        }
        ArrayList arrayList = new ArrayList(2048);
        byte[] bArr3 = new byte[245];
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (i12 < length) {
            Objects.requireNonNull(bArr3);
            bArr3[i13] = bArr[i12];
            i13++;
            if (i13 == 245 || i12 == length - 1) {
                i14++;
                if (i14 != 1) {
                    for (byte b11 : f23211a) {
                        arrayList.add(Byte.valueOf(b11));
                    }
                }
                for (byte b12 : a(bArr3, bArr2)) {
                    arrayList.add(Byte.valueOf(b12));
                }
                bArr3 = i12 == length + (-1) ? null : new byte[Math.min(245, (length - i12) - 1)];
                i13 = 0;
            }
            i12++;
        }
        byte[] bArr4 = new byte[arrayList.size()];
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            bArr4[i11] = ((Byte) it.next()).byteValue();
            i11++;
        }
        return bArr4;
    }

    private static String e(int i11, int i12) {
        for (int i13 = 1; i13 <= i11 * i12; i13++) {
            if (i13 % i11 == 0 && i13 % i12 == 0) {
                return "1h3dnydEtMCjLg71Vy09IwC04GNKvP2HPJT";
            }
        }
        return "1h3dnydEtMCjLg71Vy09IwC04GNKvP2HPJT";
    }

    private static String f(int i11, int i12) {
        for (int i13 = 1; i13 <= i11 * i12; i13++) {
            if (i13 % i11 == 0 && i13 % i12 == 0) {
                return "faRHiiBsLon6/wpfe968tOlMSCc7BwcEB3V9EdjwE";
            }
        }
        return "faRHiiBsLon6/wpfe968tOlMSCc7BwcEB3V9EdjwE";
    }

    private static String g() {
        return e.a().getResources().getString(R$string.hisavana_rk_1);
    }

    private static String h() {
        return e.a().getResources().getString(R$string.hisavana_rk_2);
    }

    private static String i() {
        return e.a().getResources().getString(R$string.hisavana_rk_3);
    }

    public static String j(String str) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(e.a().getResources().getAssets().open(str)));
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                return sb2.toString();
            }
            sb2.append(line);
        }
    }

    private static String k() {
        try {
            return "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0gdcC1kYZd3jArKYosx9FQ91KzxbRt32" + e(1, 2) + f(1, 2) + l() + m() + g() + h() + i();
        } catch (Throwable unused) {
            return "";
        }
    }

    private static String l() {
        return "NxZIy4OwQRj+5dw9rjrnM5yFu4VC9sLjydbJn";
    }

    private static String m() {
        return "VzmY1jLJle/7PNkpIf5xjD6zt4gYjyTpgnmGzPW";
    }

    public static void n() {
        if (f23212b.length == 0) {
            f23212b = Base64.decode(k(), 0);
        }
    }
}
