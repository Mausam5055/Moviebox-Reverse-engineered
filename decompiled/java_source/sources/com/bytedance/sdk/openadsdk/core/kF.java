package com.bytedance.sdk.openadsdk.core;

/* JADX INFO: loaded from: classes3.dex */
public class kF {
    private static kF Sj;
    private com.bytedance.sdk.openadsdk.Sj.HiB.Sj EjP;
    private com.bytedance.sdk.openadsdk.Sj.TKC.sP HiB;
    private com.bytedance.sdk.openadsdk.core.model.sU TKC;
    private com.bytedance.sdk.openadsdk.core.model.Sj sP;
    private com.bytedance.sdk.openadsdk.Sj.EjP.sP vS;

    private kF() {
    }

    public static kF Sj() {
        if (Sj == null) {
            Sj = new kF();
        }
        return Sj;
    }

    public com.bytedance.sdk.openadsdk.Sj.TKC.sP EjP() {
        return this.HiB;
    }

    public com.bytedance.sdk.openadsdk.Sj.EjP.sP HiB() {
        return this.vS;
    }

    public com.bytedance.sdk.openadsdk.core.model.Sj Jcg() {
        return this.sP;
    }

    public void Sj(com.bytedance.sdk.openadsdk.Sj.EjP.sP sPVar) {
        this.vS = sPVar;
    }

    public void Sj(com.bytedance.sdk.openadsdk.Sj.HiB.Sj sj2) {
        this.EjP = sj2;
    }

    public void Sj(com.bytedance.sdk.openadsdk.Sj.TKC.sP sPVar) {
        this.HiB = sPVar;
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.model.Sj sj2) {
        this.sP = sj2;
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        this.TKC = sUVar;
    }

    public com.bytedance.sdk.openadsdk.Sj.HiB.Sj TKC() {
        return this.EjP;
    }

    public com.bytedance.sdk.openadsdk.core.model.sU sP() {
        return this.TKC;
    }

    public void vS() {
        this.TKC = null;
        this.sP = null;
        this.EjP = null;
        this.HiB = null;
        this.vS = null;
    }
}
