package com.bytedance.adsdk.sP.Sj.sP;

import android.graphics.Color;
import android.graphics.Paint;

/* JADX INFO: loaded from: classes2.dex */
public class TKC implements Sj.InterfaceC0195Sj {
    private final Sj<Float, Float> EjP;
    private final Sj<Float, Float> HiB;
    private boolean Jcg = true;
    private final Sj.InterfaceC0195Sj Sj;
    private final Sj<Float, Float> TKC;
    private final Sj<Integer, Integer> sP;
    private final Sj<Float, Float> vS;

    public TKC(Sj.InterfaceC0195Sj interfaceC0195Sj, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2, com.bytedance.adsdk.sP.HiB.TEQ teq) {
        this.Sj = interfaceC0195Sj;
        Sj<Integer, Integer> Sj = teq.Sj().Sj();
        this.sP = Sj;
        Sj.Sj(this);
        sj2.Sj(Sj);
        Sj<Float, Float> Sj2 = teq.sP().Sj();
        this.TKC = Sj2;
        Sj2.Sj(this);
        sj2.Sj(Sj2);
        Sj<Float, Float> Sj3 = teq.TKC().Sj();
        this.EjP = Sj3;
        Sj3.Sj(this);
        sj2.Sj(Sj3);
        Sj<Float, Float> Sj4 = teq.EjP().Sj();
        this.HiB = Sj4;
        Sj4.Sj(this);
        sj2.Sj(Sj4);
        Sj<Float, Float> Sj5 = teq.HiB().Sj();
        this.vS = Sj5;
        Sj5.Sj(this);
        sj2.Sj(Sj5);
    }

    @Override // com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0195Sj
    public void Sj() {
        this.Jcg = true;
        this.Sj.Sj();
    }

    public void Sj(Paint paint) {
        if (this.Jcg) {
            this.Jcg = false;
            double dFloatValue = ((double) this.EjP.Jcg().floatValue()) * 0.017453292519943295d;
            float fFloatValue = this.HiB.Jcg().floatValue();
            float fSin = ((float) Math.sin(dFloatValue)) * fFloatValue;
            float fCos = ((float) Math.cos(dFloatValue + 3.141592653589793d)) * fFloatValue;
            int iIntValue = this.sP.Jcg().intValue();
            paint.setShadowLayer(this.vS.Jcg().floatValue(), fSin, fCos, Color.argb(Math.round(this.TKC.Jcg().floatValue()), Color.red(iIntValue), Color.green(iIntValue), Color.blue(iIntValue)));
        }
    }
}
