package com.bytedance.sdk.openadsdk.RiZ.Sj.sP;

import com.bytedance.sdk.openadsdk.core.dNu;
import com.cloud.tmc.integration.net.UrlKt;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    private static volatile Sj sP;
    private String Sj = "";

    private Sj() {
    }

    public static Sj Sj() {
        if (sP == null) {
            synchronized (Sj.class) {
                try {
                    if (sP == null) {
                        sP = new Sj();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return sP;
    }

    public void Sj(String str) {
        this.Sj = str;
    }

    public String sP() {
        return dNu.EjP().LqL(UrlKt.KEY_MINI_GAID) ? this.Sj : "";
    }
}
