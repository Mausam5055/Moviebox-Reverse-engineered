package com.bytedance.sdk.openadsdk.core.act;

import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
public class Sj {
    private static Boolean EjP = null;
    private static int Sj = -1;
    private static volatile boolean TKC = false;
    private static int sP = -1;

    public static int Sj() {
        Boolean bool = EjP;
        return (bool != null && bool.booleanValue()) ? 1 : 0;
    }

    public static String Sj(Context context) {
        return null;
    }

    public static void Sj(int i11) {
        Sj = i11;
    }

    public static int sP(Context context) {
        return 0;
    }

    public static void sP(int i11) {
        sP = i11;
    }
}
