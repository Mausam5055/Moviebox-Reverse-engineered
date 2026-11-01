package com.bytedance.adsdk.ugeno.HiB;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TKC {
    int Dq;
    int Fmk;
    int HiB;
    int Jcg;
    float TEQ;
    boolean TzV;
    float Ym;
    int Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    int f20811aa;
    boolean dNu;
    int uA;
    int uvD;
    int vS;
    int Sj = Integer.MAX_VALUE;
    int sP = Integer.MAX_VALUE;
    int TKC = Integer.MIN_VALUE;
    int EjP = Integer.MIN_VALUE;
    List<Integer> sef = new ArrayList();

    TKC() {
    }

    public int Sj() {
        return this.Jcg;
    }

    void Sj(View view, int i11, int i12, int i13, int i14) {
        sP sPVar = (sP) view.getLayoutParams();
        this.Sj = Math.min(this.Sj, (view.getLeft() - sPVar.Fmk()) - i11);
        this.sP = Math.min(this.sP, (view.getTop() - sPVar.sef()) - i12);
        this.TKC = Math.max(this.TKC, view.getRight() + sPVar.Zq() + i13);
        this.EjP = Math.max(this.EjP, view.getBottom() + sPVar.uvD() + i14);
    }

    public int sP() {
        return this.Dq - this.uA;
    }
}
