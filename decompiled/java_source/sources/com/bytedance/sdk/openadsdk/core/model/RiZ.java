package com.bytedance.sdk.openadsdk.core.model;

/* JADX INFO: loaded from: classes3.dex */
public class RiZ {
    private long Sj = 10000;
    private long sP = 10000;
    private long TKC = 10;
    private long EjP = 20;
    private String HiB = "";

    public long EjP() {
        return this.EjP;
    }

    public void EjP(long j11) {
        if (j11 < 0) {
            this.EjP = 20L;
        } else {
            this.EjP = j11;
        }
    }

    public String HiB() {
        return this.HiB;
    }

    public long Sj() {
        return this.Sj;
    }

    public void Sj(long j11) {
        if (j11 <= 0) {
            this.Sj = 10L;
        } else {
            this.Sj = j11;
        }
    }

    public void Sj(String str) {
        this.HiB = str;
    }

    public long TKC() {
        return this.TKC;
    }

    public void TKC(long j11) {
        if (j11 <= 0) {
            this.TKC = 10L;
        } else {
            this.TKC = j11;
        }
    }

    public long sP() {
        return this.sP;
    }

    public void sP(long j11) {
        if (j11 < 0) {
            this.sP = 20L;
        } else {
            this.sP = j11;
        }
    }
}
