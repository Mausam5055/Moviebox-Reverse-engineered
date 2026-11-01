package com.bytedance.sdk.component.sP.Sj.Sj.Sj;

import android.text.TextUtils;
import com.bytedance.sdk.component.sP.Sj.Fmk;
import com.bytedance.sdk.component.sP.Sj.Ym;

/* JADX INFO: loaded from: classes2.dex */
public class EjP extends Ym {
    public HiB Dq;
    public Sj uA;

    public EjP(Ym.Sj sj2) {
        super(sj2);
        HiB hiB = new HiB();
        this.Dq = hiB;
        this.uA = new Sj(hiB.sP());
    }

    @Override // com.bytedance.sdk.component.sP.Sj.Ym
    public com.bytedance.sdk.component.sP.Sj.EjP Sj() {
        return this.Dq;
    }

    @Override // com.bytedance.sdk.component.sP.Sj.Ym
    public com.bytedance.sdk.component.sP.Sj.sP Sj(Fmk fmk) {
        fmk.Sj(this);
        if (fmk.sP() == null || fmk.sP().Sj() == null || TextUtils.isEmpty(fmk.sP().Sj().toString())) {
            return null;
        }
        if (Sj.Sj == null || !Sj.Sj.sP() || !this.uA.HiB() || "setting".equals(fmk.vS())) {
            sP sPVar = new sP(fmk, this.Dq);
            this.Dq.TKC().add(sPVar);
            return sPVar;
        }
        sP sPVar2 = new sP(fmk, this.uA);
        this.uA.TKC().add(sPVar2);
        return sPVar2;
    }
}
