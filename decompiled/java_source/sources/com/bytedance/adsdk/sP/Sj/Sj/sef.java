package com.bytedance.adsdk.sP.Sj.Sj;

import android.graphics.Path;
import android.graphics.PointF;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class sef implements Fmk, Ym, com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0195Sj {
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<?, PointF> Dq;
    private final com.bytedance.adsdk.sP.TKC.sP.TEQ.Sj EjP;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> Fmk;
    private final boolean HiB;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> Jcg;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> TEQ;
    private final com.bytedance.adsdk.sP.uA TKC;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> Ym;
    private boolean Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> f20774aa;
    private final String sP;
    private final com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> uA;
    private final boolean vS;
    private final Path Sj = new Path();
    private final sP sef = new sP();

    /* JADX INFO: renamed from: com.bytedance.adsdk.sP.Sj.Sj.sef$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] Sj;

        static {
            int[] iArr = new int[com.bytedance.adsdk.sP.TKC.sP.TEQ.Sj.values().length];
            Sj = iArr;
            try {
                iArr[com.bytedance.adsdk.sP.TKC.sP.TEQ.Sj.STAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                Sj[com.bytedance.adsdk.sP.TKC.sP.TEQ.Sj.POLYGON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public sef(com.bytedance.adsdk.sP.uA uAVar, com.bytedance.adsdk.sP.TKC.TKC.Sj sj2, com.bytedance.adsdk.sP.TKC.sP.TEQ teq) {
        this.TKC = uAVar;
        this.sP = teq.Sj();
        com.bytedance.adsdk.sP.TKC.sP.TEQ.Sj sjSP = teq.sP();
        this.EjP = sjSP;
        this.HiB = teq.TEQ();
        this.vS = teq.Ym();
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Sj = teq.TKC().Sj();
        this.Jcg = Sj;
        com.bytedance.adsdk.sP.Sj.sP.Sj<PointF, PointF> Sj2 = teq.EjP().Sj();
        this.Dq = Sj2;
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Sj3 = teq.HiB().Sj();
        this.uA = Sj3;
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Sj4 = teq.Jcg().Sj();
        this.Ym = Sj4;
        com.bytedance.adsdk.sP.Sj.sP.Sj<Float, Float> Sj5 = teq.uA().Sj();
        this.Fmk = Sj5;
        com.bytedance.adsdk.sP.TKC.sP.TEQ.Sj sj3 = com.bytedance.adsdk.sP.TKC.sP.TEQ.Sj.STAR;
        if (sjSP == sj3) {
            this.TEQ = teq.vS().Sj();
            this.f20774aa = teq.Dq().Sj();
        } else {
            this.TEQ = null;
            this.f20774aa = null;
        }
        sj2.Sj(Sj);
        sj2.Sj(Sj2);
        sj2.Sj(Sj3);
        sj2.Sj(Sj4);
        sj2.Sj(Sj5);
        if (sjSP == sj3) {
            sj2.Sj(this.TEQ);
            sj2.Sj(this.f20774aa);
        }
        Sj.Sj(this);
        Sj2.Sj(this);
        Sj3.Sj(this);
        Sj4.Sj(this);
        Sj5.Sj(this);
        if (sjSP == sj3) {
            this.TEQ.Sj(this);
            this.f20774aa.Sj(this);
        }
    }

    private void HiB() {
        int iFloor = (int) Math.floor(this.Jcg.Jcg().floatValue());
        com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> sj2 = this.uA;
        double radians = Math.toRadians((sj2 == null ? 0.0d : sj2.Jcg().floatValue()) - 90.0d);
        double d11 = iFloor;
        float fFloatValue = this.Fmk.Jcg().floatValue() / 100.0f;
        float fFloatValue2 = this.Ym.Jcg().floatValue();
        double d12 = fFloatValue2;
        float fCos = (float) (Math.cos(radians) * d12);
        float fSin = (float) (Math.sin(radians) * d12);
        this.Sj.moveTo(fCos, fSin);
        double d13 = (float) (6.283185307179586d / d11);
        double d14 = radians + d13;
        double dCeil = Math.ceil(d11);
        int i11 = 0;
        while (i11 < dCeil) {
            float fCos2 = (float) (Math.cos(d14) * d12);
            double d15 = dCeil;
            float fSin2 = (float) (d12 * Math.sin(d14));
            if (fFloatValue != 0.0f) {
                double dAtan2 = (float) (Math.atan2(fSin, fCos) - 1.5707963267948966d);
                float fCos3 = (float) Math.cos(dAtan2);
                float fSin3 = (float) Math.sin(dAtan2);
                double dAtan3 = (float) (Math.atan2(fSin2, fCos2) - 1.5707963267948966d);
                float f11 = fFloatValue2 * fFloatValue * 0.25f;
                this.Sj.cubicTo(fCos - (fCos3 * f11), fSin - (fSin3 * f11), fCos2 + (((float) Math.cos(dAtan3)) * f11), fSin2 + (f11 * ((float) Math.sin(dAtan3))), fCos2, fSin2);
            } else {
                this.Sj.lineTo(fCos2, fSin2);
            }
            d14 += d13;
            i11++;
            fSin = fSin2;
            fCos = fCos2;
            dCeil = d15;
            d12 = d12;
            d13 = d13;
        }
        PointF pointFJcg = this.Dq.Jcg();
        this.Sj.offset(pointFJcg.x, pointFJcg.y);
        this.Sj.close();
    }

    private void TKC() {
        float f11;
        float f12;
        double d11;
        float fSin;
        float f13;
        float f14;
        float f15;
        float fFloatValue = this.Jcg.Jcg().floatValue();
        com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> sj2 = this.uA;
        double radians = Math.toRadians((sj2 == null ? 0.0d : sj2.Jcg().floatValue()) - 90.0d);
        double d12 = fFloatValue;
        float f16 = (float) (6.283185307179586d / d12);
        if (this.vS) {
            f16 *= -1.0f;
        }
        float f17 = f16 / 2.0f;
        float f18 = fFloatValue - ((int) fFloatValue);
        if (f18 != 0.0f) {
            radians += (double) ((1.0f - f18) * f17);
        }
        float fFloatValue2 = this.Ym.Jcg().floatValue();
        float fFloatValue3 = this.TEQ.Jcg().floatValue();
        com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> sj3 = this.f20774aa;
        float fFloatValue4 = sj3 != null ? sj3.Jcg().floatValue() / 100.0f : 0.0f;
        com.bytedance.adsdk.sP.Sj.sP.Sj<?, Float> sj4 = this.Fmk;
        float fFloatValue5 = sj4 != null ? sj4.Jcg().floatValue() / 100.0f : 0.0f;
        if (f18 != 0.0f) {
            f13 = ((fFloatValue2 - fFloatValue3) * f18) + fFloatValue3;
            double d13 = f13;
            float fCos = (float) (d13 * Math.cos(radians));
            fSin = (float) (d13 * Math.sin(radians));
            this.Sj.moveTo(fCos, fSin);
            d11 = radians + ((double) ((f16 * f18) / 2.0f));
            f11 = fCos;
            f12 = f17;
        } else {
            double d14 = fFloatValue2;
            float fCos2 = (float) (Math.cos(radians) * d14);
            float fSin2 = (float) (d14 * Math.sin(radians));
            this.Sj.moveTo(fCos2, fSin2);
            f11 = fCos2;
            f12 = f17;
            d11 = radians + ((double) f12);
            fSin = fSin2;
            f13 = 0.0f;
        }
        double dCeil = Math.ceil(d12) * 2.0d;
        int i11 = 0;
        float f19 = f12;
        float f20 = f11;
        boolean z10 = false;
        while (true) {
            double d15 = i11;
            if (d15 >= dCeil) {
                PointF pointFJcg = this.Dq.Jcg();
                this.Sj.offset(pointFJcg.x, pointFJcg.y);
                this.Sj.close();
                return;
            }
            float f21 = z10 ? fFloatValue2 : fFloatValue3;
            float f22 = (f13 == 0.0f || d15 != dCeil - 2.0d) ? f19 : (f16 * f18) / 2.0f;
            if (f13 == 0.0f || d15 != dCeil - 1.0d) {
                f13 = f21;
            }
            double d16 = f13;
            double d17 = dCeil;
            float fCos3 = (float) (d16 * Math.cos(d11));
            float fSin3 = (float) (d16 * Math.sin(d11));
            if (fFloatValue4 == 0.0f && fFloatValue5 == 0.0f) {
                this.Sj.lineTo(fCos3, fSin3);
                f14 = fFloatValue4;
                f15 = fFloatValue5;
            } else {
                f14 = fFloatValue4;
                double dAtan2 = (float) (Math.atan2(fSin, f20) - 1.5707963267948966d);
                float fCos4 = (float) Math.cos(dAtan2);
                float fSin4 = (float) Math.sin(dAtan2);
                f15 = fFloatValue5;
                double dAtan3 = (float) (Math.atan2(fSin3, fCos3) - 1.5707963267948966d);
                float fCos5 = (float) Math.cos(dAtan3);
                float fSin5 = (float) Math.sin(dAtan3);
                float f23 = z10 ? f14 : f15;
                float f24 = z10 ? f15 : f14;
                float f25 = (z10 ? fFloatValue3 : fFloatValue2) * f23 * 0.47829f;
                float f26 = fCos4 * f25;
                float f27 = f25 * fSin4;
                float f28 = (z10 ? fFloatValue2 : fFloatValue3) * f24 * 0.47829f;
                float f29 = fCos5 * f28;
                float f30 = f28 * fSin5;
                if (f18 != 0.0f) {
                    if (i11 == 0) {
                        f26 *= f18;
                        f27 *= f18;
                    } else if (d15 == d17 - 1.0d) {
                        f29 *= f18;
                        f30 *= f18;
                    }
                }
                this.Sj.cubicTo(f20 - f26, fSin - f27, fCos3 + f29, fSin3 + f30, fCos3, fSin3);
            }
            d11 += (double) f22;
            z10 = !z10;
            i11++;
            f20 = fCos3;
            fSin = fSin3;
            fFloatValue5 = f15;
            fFloatValue4 = f14;
            f13 = f13;
            f16 = f16;
            dCeil = d17;
        }
    }

    private void sP() {
        this.Zq = false;
        this.TKC.invalidateSelf();
    }

    @Override // com.bytedance.adsdk.sP.Sj.Sj.Fmk
    public Path EjP() {
        if (this.Zq) {
            return this.Sj;
        }
        this.Sj.reset();
        if (this.HiB) {
            this.Zq = true;
            return this.Sj;
        }
        int i11 = AnonymousClass1.Sj[this.EjP.ordinal()];
        if (i11 == 1) {
            TKC();
        } else if (i11 == 2) {
            HiB();
        }
        this.Sj.close();
        this.sef.Sj(this.Sj);
        this.Zq = true;
        return this.Sj;
    }

    @Override // com.bytedance.adsdk.sP.Sj.sP.Sj.InterfaceC0195Sj
    public void Sj() {
        sP();
    }

    @Override // com.bytedance.adsdk.sP.Sj.Sj.TKC
    public void Sj(List<TKC> list, List<TKC> list2) {
        for (int i11 = 0; i11 < list.size(); i11++) {
            TKC tkc = list.get(i11);
            if (tkc instanceof dx) {
                dx dxVar = (dx) tkc;
                if (dxVar.sP() == com.bytedance.adsdk.sP.TKC.sP.RiZ.Sj.SIMULTANEOUSLY) {
                    this.sef.Sj(dxVar);
                    dxVar.Sj(this);
                }
            }
        }
    }
}
