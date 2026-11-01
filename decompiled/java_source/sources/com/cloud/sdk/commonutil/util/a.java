package com.cloud.sdk.commonutil.util;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.sdk.commonutil.R$string;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f23178a = "";

    public static String a(String str) {
        try {
            byte[] bytes = b().getBytes();
            byte[] bArr = new byte[12];
            new SecureRandom().nextBytes(bArr);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bytes, "AES");
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(1, secretKeySpec, new GCMParameterSpec(128, bArr));
            byte[] bArrDoFinal = cipher.doFinal(str.getBytes("UTF8"));
            byte[] bArr2 = new byte[bArrDoFinal.length + 12];
            System.arraycopy(bArr, 0, bArr2, 0, 12);
            System.arraycopy(bArrDoFinal, 0, bArr2, 12, bArrDoFinal.length);
            return f(bArr2);
        } catch (Exception e11) {
            c.Log().e("AESUtils", Log.getStackTraceString(e11));
            return "";
        }
    }

    private static String b() {
        if (TextUtils.isEmpty(f23178a)) {
            f23178a = "sOWGI8Lv" + c(1, 2) + e() + d();
        }
        return f23178a;
    }

    private static String c(int i11, int i12) {
        for (int i13 = 1; i13 <= i11 * i12; i13++) {
            if (i13 % i11 == 0 && i13 % i12 == 0) {
                return "FnvyH19r";
            }
        }
        return "FnvyH19r";
    }

    private static String d() {
        return e.a().getResources().getString(R$string.bk4);
    }

    private static String e() {
        return "s2DytdII";
    }

    public static String f(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b11 : bArr) {
            String hexString = Integer.toHexString(b11 & 255);
            if (hexString.length() == 1) {
                hexString = '0' + hexString;
            }
            stringBuffer.append(hexString.toUpperCase());
        }
        return stringBuffer.toString();
    }
}
