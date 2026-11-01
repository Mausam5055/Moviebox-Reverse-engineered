package com.bytedance.adsdk.sP.TKC;

import android.annotation.SuppressLint;
import android.graphics.PointF;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    private final PointF Sj;
    private final PointF TKC;
    private final PointF sP;

    public Sj() {
        this.Sj = new PointF();
        this.sP = new PointF();
        this.TKC = new PointF();
    }

    public Sj(PointF pointF, PointF pointF2, PointF pointF3) {
        this.Sj = pointF;
        this.sP = pointF2;
        this.TKC = pointF3;
    }

    public PointF Sj() {
        return this.Sj;
    }

    public void Sj(float f11, float f12) {
        this.Sj.set(f11, f12);
    }

    public PointF TKC() {
        return this.TKC;
    }

    public void TKC(float f11, float f12) {
        this.TKC.set(f11, f12);
    }

    public PointF sP() {
        return this.sP;
    }

    public void sP(float f11, float f12) {
        this.sP.set(f11, f12);
    }

    @SuppressLint({"DefaultLocale"})
    public String toString() {
        return String.format("v=%.2f,%.2f cp1=%.2f,%.2f cp2=%.2f,%.2f", Float.valueOf(this.TKC.x), Float.valueOf(this.TKC.y), Float.valueOf(this.Sj.x), Float.valueOf(this.Sj.y), Float.valueOf(this.sP.x), Float.valueOf(this.sP.y));
    }
}
