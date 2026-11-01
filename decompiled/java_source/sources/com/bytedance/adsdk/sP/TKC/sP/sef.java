package com.bytedance.adsdk.sP.TKC.sP;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class sef {
    private final List<com.bytedance.adsdk.sP.TKC.Sj> Sj;
    private boolean TKC;
    private PointF sP;

    public sef() {
        this.Sj = new ArrayList();
    }

    public sef(PointF pointF, boolean z10, List<com.bytedance.adsdk.sP.TKC.Sj> list) {
        this.sP = pointF;
        this.TKC = z10;
        this.Sj = new ArrayList(list);
    }

    public PointF Sj() {
        return this.sP;
    }

    public void Sj(float f11, float f12) {
        if (this.sP == null) {
            this.sP = new PointF();
        }
        this.sP.set(f11, f12);
    }

    public void Sj(sef sefVar, sef sefVar2, float f11) {
        if (this.sP == null) {
            this.sP = new PointF();
        }
        this.TKC = sefVar.sP() || sefVar2.sP();
        if (sefVar.TKC().size() != sefVar2.TKC().size()) {
            sefVar.TKC().size();
            sefVar2.TKC().size();
        }
        int iMin = Math.min(sefVar.TKC().size(), sefVar2.TKC().size());
        if (this.Sj.size() < iMin) {
            for (int size = this.Sj.size(); size < iMin; size++) {
                this.Sj.add(new com.bytedance.adsdk.sP.TKC.Sj());
            }
        } else if (this.Sj.size() > iMin) {
            for (int size2 = this.Sj.size() - 1; size2 >= iMin; size2--) {
                List<com.bytedance.adsdk.sP.TKC.Sj> list = this.Sj;
                list.remove(list.size() - 1);
            }
        }
        PointF pointFSj = sefVar.Sj();
        PointF pointFSj2 = sefVar2.Sj();
        Sj(com.bytedance.adsdk.sP.vS.HiB.Sj(pointFSj.x, pointFSj2.x, f11), com.bytedance.adsdk.sP.vS.HiB.Sj(pointFSj.y, pointFSj2.y, f11));
        for (int size3 = this.Sj.size() - 1; size3 >= 0; size3--) {
            com.bytedance.adsdk.sP.TKC.Sj sj2 = sefVar.TKC().get(size3);
            com.bytedance.adsdk.sP.TKC.Sj sj3 = sefVar2.TKC().get(size3);
            PointF pointFSj3 = sj2.Sj();
            PointF pointFSP = sj2.sP();
            PointF pointFTKC = sj2.TKC();
            PointF pointFSj4 = sj3.Sj();
            PointF pointFSP2 = sj3.sP();
            PointF pointFTKC2 = sj3.TKC();
            this.Sj.get(size3).Sj(com.bytedance.adsdk.sP.vS.HiB.Sj(pointFSj3.x, pointFSj4.x, f11), com.bytedance.adsdk.sP.vS.HiB.Sj(pointFSj3.y, pointFSj4.y, f11));
            this.Sj.get(size3).sP(com.bytedance.adsdk.sP.vS.HiB.Sj(pointFSP.x, pointFSP2.x, f11), com.bytedance.adsdk.sP.vS.HiB.Sj(pointFSP.y, pointFSP2.y, f11));
            this.Sj.get(size3).TKC(com.bytedance.adsdk.sP.vS.HiB.Sj(pointFTKC.x, pointFTKC2.x, f11), com.bytedance.adsdk.sP.vS.HiB.Sj(pointFTKC.y, pointFTKC2.y, f11));
        }
    }

    public void Sj(boolean z10) {
        this.TKC = z10;
    }

    public List<com.bytedance.adsdk.sP.TKC.Sj> TKC() {
        return this.Sj;
    }

    public boolean sP() {
        return this.TKC;
    }

    public String toString() {
        return "ShapeData{numCurves=" + this.Sj.size() + "closed=" + this.TKC + '}';
    }
}
