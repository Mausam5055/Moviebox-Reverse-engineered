package com.bytedance.sdk.openadsdk.core;

import android.content.Context;

/* JADX INFO: loaded from: classes3.dex */
public class TKC {
    private static volatile TKC Sj;

    private TKC() {
    }

    public static TKC Sj(Context context) {
        if (Sj == null) {
            synchronized (TKC.class) {
                try {
                    if (Sj == null) {
                        Sj = new TKC();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    public void Sj(String str, int i11) {
        com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("ttopenadsdk", str, Integer.valueOf(i11));
    }

    public void Sj(String str, long j11) {
        com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("ttopenadsdk", str, Long.valueOf(j11));
    }

    public void Sj(String str, String str2) {
        com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("ttopenadsdk", str, str2);
    }

    public int sP(String str, int i11) {
        return com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("ttopenadsdk", str, i11);
    }

    public Long sP(String str, long j11) {
        return Long.valueOf(com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("ttopenadsdk", str, j11));
    }

    public String sP(String str, String str2) {
        return com.bytedance.sdk.openadsdk.multipro.EjP.EjP.sP("ttopenadsdk", str, str2);
    }
}
