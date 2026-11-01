package com.bytedance.sdk.openadsdk.component.Dq;

/* JADX INFO: loaded from: classes2.dex */
public final class Sj {
    private float Sj;
    private long sP;

    public float Sj() {
        return this.Sj;
    }

    public void Sj(float f11) {
        StringBuilder sb2 = new StringBuilder("setTotalTime() called with: time = [");
        sb2.append(f11);
        sb2.append("]");
        this.Sj = f11;
    }

    public void Sj(long j11) {
        this.sP = j11;
    }

    public long sP() {
        return this.sP;
    }
}
