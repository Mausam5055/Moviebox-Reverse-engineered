package com.bytedance.sdk.openadsdk.component.HiB;

import com.bytedance.sdk.openadsdk.core.model.sU;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    private com.bytedance.sdk.openadsdk.core.model.Sj EjP;
    private int HiB;
    private boolean Jcg;
    private int Sj;
    private sU TKC;
    private int sP;
    private String vS;

    public sP(int i11, int i12, int i13, String str) {
        this.Sj = i11;
        this.sP = i12;
        this.HiB = i13;
        this.vS = str;
    }

    public sP(int i11, int i12, sU sUVar, com.bytedance.sdk.openadsdk.core.model.Sj sj2) {
        this.Sj = i11;
        this.sP = i12;
        this.TKC = sUVar;
        this.EjP = sj2;
    }

    public int EjP() {
        return this.sP;
    }

    public sU HiB() {
        return this.TKC;
    }

    public String Jcg() {
        return this.vS;
    }

    public com.bytedance.sdk.openadsdk.core.model.Sj Sj() {
        return this.EjP;
    }

    public void Sj(boolean z10) {
        this.Jcg = z10;
    }

    public int TKC() {
        return this.Sj;
    }

    public boolean sP() {
        return this.Jcg;
    }

    public int vS() {
        return this.HiB;
    }
}
