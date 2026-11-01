package com.bytedance.sdk.openadsdk.core;

import android.util.Base64;

/* JADX INFO: loaded from: classes3.dex */
public final class Sj {
    private static final String Sj = TKC();
    private static final String sP = dNu.EjP().TKC();

    public static String Sj() {
        return new String(Base64.decode(Sj, 0)).substring(2);
    }

    private static String TKC() {
        char[] cArr = {203, 182, 168, 176, 207, 148, 149, 178, 205, 182, 149, 166, 134, 178, 184, 176, 206, 174, 187, 178, 150, 185, 167, 166};
        char[] cArr2 = new char[24];
        for (int i11 = 23; i11 >= 0; i11--) {
            cArr2[23 - i11] = (char) (cArr[i11] ^ 255);
        }
        return new String(cArr2);
    }

    public static String sP() {
        return new String(Base64.decode(sP, 0)).substring(2);
    }
}
