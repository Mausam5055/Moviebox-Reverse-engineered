package com.bytedance.adsdk.sP.Sj.sP;

import android.graphics.Path;
import com.bytedance.adsdk.sP.Sj.Sj.RiZ;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Fmk extends Sj<com.bytedance.adsdk.sP.TKC.sP.sef, Path> {
    private final com.bytedance.adsdk.sP.TKC.sP.sef EjP;
    private final Path HiB;
    private List<RiZ> vS;

    public Fmk(List<com.bytedance.adsdk.sP.Jcg.Sj<com.bytedance.adsdk.sP.TKC.sP.sef>> list) {
        super(list);
        this.EjP = new com.bytedance.adsdk.sP.TKC.sP.sef();
        this.HiB = new Path();
    }

    public void Sj(List<RiZ> list) {
        this.vS = list;
    }

    @Override // com.bytedance.adsdk.sP.Sj.sP.Sj
    /* JADX INFO: renamed from: sP, reason: merged with bridge method [inline-methods] */
    public Path Sj(com.bytedance.adsdk.sP.Jcg.Sj<com.bytedance.adsdk.sP.TKC.sP.sef> sj2, float f11) {
        this.EjP.Sj(sj2.Sj, sj2.sP, f11);
        com.bytedance.adsdk.sP.TKC.sP.sef sefVarSj = this.EjP;
        List<RiZ> list = this.vS;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                sefVarSj = this.vS.get(size).Sj(sefVarSj);
            }
        }
        com.bytedance.adsdk.sP.vS.HiB.Sj(sefVarSj, this.HiB);
        return this.HiB;
    }
}
