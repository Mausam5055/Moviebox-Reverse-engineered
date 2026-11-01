package com.bytedance.sdk.openadsdk.Zq.TKC;

/* JADX INFO: loaded from: classes2.dex */
class EjP implements sP {
    private static volatile EjP Sj;

    private EjP() {
    }

    public static EjP Sj() {
        if (Sj == null) {
            synchronized (EjP.class) {
                try {
                    if (Sj == null) {
                        Sj = new EjP();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    @Override // com.bytedance.sdk.openadsdk.Zq.TKC.sP
    public void Sj(com.bytedance.sdk.openadsdk.Zq.sP sPVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.Zq.TKC.sP
    public void Sj(com.bytedance.sdk.openadsdk.Zq.sP sPVar, boolean z10) {
    }
}
