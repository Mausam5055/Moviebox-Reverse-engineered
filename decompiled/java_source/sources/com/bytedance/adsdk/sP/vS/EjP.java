package com.bytedance.adsdk.sP.vS;

/* JADX INFO: loaded from: classes2.dex */
public class EjP {
    private float Sj;
    private int sP;

    public void Sj(float f11) {
        float f12 = this.Sj + f11;
        this.Sj = f12;
        int i11 = this.sP + 1;
        this.sP = i11;
        if (i11 == Integer.MAX_VALUE) {
            this.Sj = f12 / 2.0f;
            this.sP = i11 / 2;
        }
    }
}
