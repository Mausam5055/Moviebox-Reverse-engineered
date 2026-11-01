package com.bytedance.adsdk.sP.Jcg;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.bytedance.adsdk.sP.Jcg;

/* JADX INFO: loaded from: classes2.dex */
public class Sj<T> {
    public PointF Dq;
    public final Interpolator EjP;
    private int Fmk;
    public final Interpolator HiB;
    public Float Jcg;
    public final T Sj;
    private final Jcg TEQ;
    public final Interpolator TKC;
    private float Ym;
    private float Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private float f20769aa;
    public T sP;
    private int sef;
    public PointF uA;
    private float uvD;
    public final float vS;

    public Sj(Jcg jcg, T t11, T t12, Interpolator interpolator, float f11, Float f12) {
        this.Ym = -3987645.8f;
        this.f20769aa = -3987645.8f;
        this.Fmk = 784923401;
        this.sef = 784923401;
        this.Zq = Float.MIN_VALUE;
        this.uvD = Float.MIN_VALUE;
        this.Dq = null;
        this.uA = null;
        this.TEQ = jcg;
        this.Sj = t11;
        this.sP = t12;
        this.TKC = interpolator;
        this.EjP = null;
        this.HiB = null;
        this.vS = f11;
        this.Jcg = f12;
    }

    public Sj(Jcg jcg, T t11, T t12, Interpolator interpolator, Interpolator interpolator2, float f11, Float f12) {
        this.Ym = -3987645.8f;
        this.f20769aa = -3987645.8f;
        this.Fmk = 784923401;
        this.sef = 784923401;
        this.Zq = Float.MIN_VALUE;
        this.uvD = Float.MIN_VALUE;
        this.Dq = null;
        this.uA = null;
        this.TEQ = jcg;
        this.Sj = t11;
        this.sP = t12;
        this.TKC = null;
        this.EjP = interpolator;
        this.HiB = interpolator2;
        this.vS = f11;
        this.Jcg = f12;
    }

    protected Sj(Jcg jcg, T t11, T t12, Interpolator interpolator, Interpolator interpolator2, Interpolator interpolator3, float f11, Float f12) {
        this.Ym = -3987645.8f;
        this.f20769aa = -3987645.8f;
        this.Fmk = 784923401;
        this.sef = 784923401;
        this.Zq = Float.MIN_VALUE;
        this.uvD = Float.MIN_VALUE;
        this.Dq = null;
        this.uA = null;
        this.TEQ = jcg;
        this.Sj = t11;
        this.sP = t12;
        this.TKC = interpolator;
        this.EjP = interpolator2;
        this.HiB = interpolator3;
        this.vS = f11;
        this.Jcg = f12;
    }

    public Sj(T t11) {
        this.Ym = -3987645.8f;
        this.f20769aa = -3987645.8f;
        this.Fmk = 784923401;
        this.sef = 784923401;
        this.Zq = Float.MIN_VALUE;
        this.uvD = Float.MIN_VALUE;
        this.Dq = null;
        this.uA = null;
        this.TEQ = null;
        this.Sj = t11;
        this.sP = t11;
        this.TKC = null;
        this.EjP = null;
        this.HiB = null;
        this.vS = Float.MIN_VALUE;
        this.Jcg = Float.valueOf(Float.MAX_VALUE);
    }

    private Sj(T t11, T t12) {
        this.Ym = -3987645.8f;
        this.f20769aa = -3987645.8f;
        this.Fmk = 784923401;
        this.sef = 784923401;
        this.Zq = Float.MIN_VALUE;
        this.uvD = Float.MIN_VALUE;
        this.Dq = null;
        this.uA = null;
        this.TEQ = null;
        this.Sj = t11;
        this.sP = t12;
        this.TKC = null;
        this.EjP = null;
        this.HiB = null;
        this.vS = Float.MIN_VALUE;
        this.Jcg = Float.valueOf(Float.MAX_VALUE);
    }

    public int Dq() {
        if (this.Fmk == 784923401) {
            this.Fmk = ((Integer) this.Sj).intValue();
        }
        return this.Fmk;
    }

    public float EjP() {
        if (this.TEQ == null) {
            return 1.0f;
        }
        if (this.uvD == Float.MIN_VALUE) {
            if (this.Jcg == null) {
                this.uvD = 1.0f;
            } else {
                this.uvD = TKC() + ((this.Jcg.floatValue() - this.vS) / this.TEQ.dNu());
            }
        }
        return this.uvD;
    }

    public boolean HiB() {
        return this.TKC == null && this.EjP == null && this.HiB == null;
    }

    public float Jcg() {
        if (this.f20769aa == -3987645.8f) {
            this.f20769aa = ((Float) this.sP).floatValue();
        }
        return this.f20769aa;
    }

    public Sj<T> Sj(T t11, T t12) {
        return new Sj<>(t11, t12);
    }

    public boolean Sj(float f11) {
        return f11 >= TKC() && f11 < EjP();
    }

    public float TKC() {
        Jcg jcg = this.TEQ;
        if (jcg == null) {
            return 0.0f;
        }
        if (this.Zq == Float.MIN_VALUE) {
            this.Zq = (this.vS - jcg.vS()) / this.TEQ.dNu();
        }
        return this.Zq;
    }

    public String toString() {
        return "Keyframe{startValue=" + this.Sj + ", endValue=" + this.sP + ", startFrame=" + this.vS + ", endFrame=" + this.Jcg + ", interpolator=" + this.TKC + '}';
    }

    public int uA() {
        if (this.sef == 784923401) {
            this.sef = ((Integer) this.sP).intValue();
        }
        return this.sef;
    }

    public float vS() {
        if (this.Ym == -3987645.8f) {
            this.Ym = ((Float) this.Sj).floatValue();
        }
        return this.Ym;
    }
}
