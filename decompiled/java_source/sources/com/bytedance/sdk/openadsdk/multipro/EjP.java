package com.bytedance.sdk.openadsdk.multipro;

import com.bytedance.sdk.openadsdk.core.dNu;

/* JADX INFO: loaded from: classes3.dex */
public class EjP {
    public static String Sj = "com.bytedance.openadsdk";
    public static String sP = "content://" + Sj + ".TTMultiProvider";

    static {
        Sj();
    }

    public static void Sj() {
        if (dNu.Sj() != null) {
            Sj = dNu.Sj().getPackageName();
            sP = "content://" + Sj + ".TTMultiProvider";
        }
    }
}
