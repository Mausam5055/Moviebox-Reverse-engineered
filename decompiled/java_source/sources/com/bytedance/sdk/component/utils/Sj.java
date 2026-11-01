package com.bytedance.sdk.component.utils;

import android.os.Build;
import android.text.TextUtils;
import java.security.SecureRandom;
import java.util.Random;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {

    /* JADX INFO: renamed from: com.bytedance.sdk.component.utils.Sj$Sj, reason: collision with other inner class name */
    static class C0228Sj {
        static final Random Sj = Sj.TKC();
    }

    public static String Sj() {
        String strSj = Sj(16);
        if (strSj == null || strSj.length() != 32) {
            return null;
        }
        return strSj;
    }

    public static String Sj(int i11) {
        try {
            byte[] bArr = new byte[i11];
            C0228Sj.Sj.nextBytes(bArr);
            return HiB.Sj(bArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String Sj(String str, int i11) {
        if (str == null || str.length() != i11) {
            return null;
        }
        int i12 = i11 / 2;
        return str.substring(i12, i11) + str.substring(0, i12);
    }

    public static JSONObject Sj(String str) {
        JSONObject jSONObject = new JSONObject();
        if (TextUtils.isEmpty(str)) {
            return jSONObject;
        }
        try {
            try {
                String strSP = sP(str);
                if (TextUtils.isEmpty(strSP)) {
                    jSONObject.put("message", str);
                    jSONObject.put("cypher", 0);
                } else {
                    jSONObject.put("message", strSP);
                    jSONObject.put("cypher", 3);
                }
            } catch (Throwable th2) {
                th2.getMessage();
            }
        } catch (Throwable unused) {
            jSONObject.put("message", str);
            jSONObject.put("cypher", 0);
        }
        return jSONObject;
    }

    public static JSONObject Sj(JSONObject jSONObject) {
        return jSONObject == null ? new JSONObject() : Sj(jSONObject.toString());
    }

    public static String TKC(String str) {
        if (TextUtils.isEmpty(str) || str.length() < 49) {
            return str;
        }
        String strSj = Sj(str.substring(1, 33), 32);
        String strSubstring = str.substring(33, 49);
        return (strSubstring == null || strSj == null) ? str : com.bytedance.sdk.component.EjP.Sj.sP(str.substring(49), strSubstring, strSj);
    }

    public static Random TKC() {
        if (Build.VERSION.SDK_INT < 26) {
            return new SecureRandom();
        }
        try {
            return SecureRandom.getInstanceStrong();
        } catch (Throwable unused) {
            return new SecureRandom();
        }
    }

    public static String sP() {
        String strSj = Sj(8);
        if (strSj == null || strSj.length() != 16) {
            return null;
        }
        return strSj;
    }

    public static String sP(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String strSj = Sj();
        String strSj2 = Sj(strSj, 32);
        String strSP = sP();
        return 3 + strSj + strSP + ((strSj2 == null || strSP == null) ? null : com.bytedance.sdk.component.EjP.Sj.Sj(str, strSP, strSj2));
    }
}
