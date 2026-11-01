package com.bytedance.adsdk.sP.TKC;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes2.dex */
public class sP {
    public int Dq;
    public Sj EjP;
    public PointF Fmk;
    public int HiB;
    public float Jcg;
    public String Sj;
    public float TEQ;
    public float TKC;
    public boolean Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    public PointF f20790aa;
    public String sP;
    public int uA;
    public float vS;

    public enum Sj {
        LEFT_ALIGN,
        RIGHT_ALIGN,
        CENTER
    }

    public sP() {
    }

    public sP(String str, String str2, float f11, Sj sj2, int i11, float f12, float f13, int i12, int i13, float f14, boolean z10, PointF pointF, PointF pointF2) {
        Sj(str, str2, f11, sj2, i11, f12, f13, i12, i13, f14, z10, pointF, pointF2);
    }

    public void Sj(String str, String str2, float f11, Sj sj2, int i11, float f12, float f13, int i12, int i13, float f14, boolean z10, PointF pointF, PointF pointF2) {
        this.Sj = str;
        this.sP = str2;
        this.TKC = f11;
        this.EjP = sj2;
        this.HiB = i11;
        this.vS = f12;
        this.Jcg = f13;
        this.Dq = i12;
        this.uA = i13;
        this.TEQ = f14;
        this.Ym = z10;
        this.f20790aa = pointF;
        this.Fmk = pointF2;
    }

    public int hashCode() {
        int iHashCode = (((((int) ((((this.Sj.hashCode() * 31) + this.sP.hashCode()) * 31) + this.TKC)) * 31) + this.EjP.ordinal()) * 31) + this.HiB;
        long jFloatToRawIntBits = Float.floatToRawIntBits(this.vS);
        return (((iHashCode * 31) + ((int) (jFloatToRawIntBits ^ (jFloatToRawIntBits >>> 32)))) * 31) + this.Dq;
    }
}
