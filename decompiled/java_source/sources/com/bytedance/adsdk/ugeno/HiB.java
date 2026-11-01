package com.bytedance.adsdk.ugeno;

import android.content.Context;
import com.bytedance.adsdk.ugeno.EjP.Dq;
import com.bytedance.adsdk.ugeno.EjP.TEQ;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class HiB {
    private static volatile HiB Sj;
    private Sj EjP;
    private com.bytedance.adsdk.ugeno.TKC.Sj HiB;
    private com.bytedance.adsdk.ugeno.core.Sj.Sj Jcg;
    private com.bytedance.adsdk.ugeno.core.TKC TKC;
    private List<com.bytedance.adsdk.ugeno.core.sP> sP;
    private com.bytedance.adsdk.ugeno.core.sP.TKC vS;

    private HiB() {
    }

    public static HiB Sj() {
        if (Sj == null) {
            synchronized (HiB.class) {
                try {
                    if (Sj == null) {
                        Sj = new HiB();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    private void vS() {
        ArrayList arrayList = new ArrayList();
        this.sP = arrayList;
        com.bytedance.adsdk.ugeno.core.TKC tkc = this.TKC;
        if (tkc != null) {
            arrayList.addAll(tkc.Sj());
        }
        com.bytedance.adsdk.ugeno.core.EjP.Sj(this.sP);
    }

    public com.bytedance.adsdk.ugeno.core.sP.TKC EjP() {
        return this.vS;
    }

    public com.bytedance.adsdk.ugeno.core.Sj.Sj HiB() {
        return this.Jcg;
    }

    public void Sj(Context context, com.bytedance.adsdk.ugeno.core.TKC tkc, Sj sj2) {
        this.TKC = tkc;
        this.EjP = sj2;
        vS();
    }

    public void Sj(Dq dq2) {
        ArrayList arrayList = new ArrayList(new com.bytedance.adsdk.ugeno.EjP.Sj().Sj());
        if (dq2 != null) {
            arrayList.addAll(dq2.Sj());
        }
        TEQ.Sj(arrayList);
    }

    public void Sj(com.bytedance.adsdk.ugeno.EjP.TKC tkc) {
        ArrayList arrayList = new ArrayList(new com.bytedance.adsdk.ugeno.EjP.HiB().Sj());
        if (tkc != null) {
            arrayList.addAll(tkc.Sj());
        }
        com.bytedance.adsdk.ugeno.EjP.EjP.Sj(arrayList);
    }

    public void Sj(com.bytedance.adsdk.ugeno.TKC.Sj sj2) {
        this.HiB = sj2;
    }

    public com.bytedance.adsdk.ugeno.TKC.Sj TKC() {
        return this.HiB;
    }

    public Sj sP() {
        return this.EjP;
    }
}
