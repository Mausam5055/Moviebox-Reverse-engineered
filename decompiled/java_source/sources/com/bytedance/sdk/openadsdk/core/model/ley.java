package com.bytedance.sdk.openadsdk.core.model;

import com.bytedance.sdk.openadsdk.utils.WMZ;

/* JADX INFO: loaded from: classes3.dex */
public class ley {
    private long Dq;
    private long HiB;
    private long Jcg;
    public boolean Sj;
    private long TEQ;
    private int Ym;
    public long sP;
    private long uA;
    private long vS;
    private WMZ TKC = WMZ.TKC();
    private WMZ EjP = WMZ.TKC();

    public int Dq() {
        return this.Ym;
    }

    public long EjP() {
        return this.Jcg;
    }

    public long HiB() {
        return this.Dq;
    }

    public long Jcg() {
        return this.TEQ;
    }

    public WMZ Sj() {
        return this.TKC;
    }

    public void Sj(int i11) {
        this.Ym = i11;
    }

    public void Sj(long j11) {
        this.TEQ = j11;
    }

    public void Sj(WMZ wmz) {
        this.TKC = wmz;
    }

    public void Sj(WMZ wmz, WMZ wmz2, int i11, WMZ wmz3) {
        this.HiB = wmz.Sj(this.TKC);
        this.vS = wmz2.Sj(wmz);
        this.Jcg = i11;
        this.Dq = wmz3.Sj(wmz2);
    }

    public long TKC() {
        return this.vS;
    }

    public long sP() {
        return this.HiB;
    }

    public void sP(WMZ wmz) {
        this.EjP = wmz;
        this.uA = wmz.Sj(this.TKC);
    }

    public long vS() {
        return this.uA;
    }
}
