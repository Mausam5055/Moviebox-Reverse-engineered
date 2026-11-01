package com.bytedance.sdk.openadsdk.kF.sP;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.model.sU;

/* JADX INFO: loaded from: classes3.dex */
public class Dq extends sP {
    private int EjP;

    public Dq(Integer num, View view, sU sUVar, HiB.Sj sj2) {
        super(num, view, sUVar, 2000, sj2);
        this.EjP = 0;
    }

    @Override // com.bytedance.sdk.openadsdk.kF.sP.sP
    protected void EjP() {
        super.EjP();
    }

    @Override // com.bytedance.sdk.openadsdk.kF.sP.sP
    public void Sj() {
        if (this.EjP != 1) {
            return;
        }
        super.Sj();
    }

    @Override // com.bytedance.sdk.openadsdk.kF.sP.sP
    protected boolean TKC() {
        return vS.Sj(this.Sj.get(), this.sP.DKj()) && this.EjP == 1;
    }

    @Override // com.bytedance.sdk.openadsdk.kF.sP.sP
    public boolean aa() {
        int i11 = this.EjP;
        boolean z10 = i11 == 2 || i11 == 0;
        if (z10) {
            this.TKC.set(false);
        }
        return !z10 || super.aa();
    }

    @Override // com.bytedance.sdk.openadsdk.kF.sP.sP
    protected void sP(int i11) {
        if (uA()) {
            return;
        }
        if (i11 == 6 || i11 == 5) {
            this.EjP = 0;
            Dq();
        }
        if (i11 == 3 || i11 == 2) {
            this.EjP = 2;
            Dq();
        }
        if (this.EjP == 1 || i11 != 0) {
            return;
        }
        this.EjP = 1;
        Sj();
    }

    @Override // com.bytedance.sdk.openadsdk.kF.sP.sP
    public int vS() {
        return 200;
    }
}
