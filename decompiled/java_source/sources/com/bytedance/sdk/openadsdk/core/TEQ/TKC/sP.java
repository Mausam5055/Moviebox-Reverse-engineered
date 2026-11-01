package com.bytedance.sdk.openadsdk.core.TEQ.TKC;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.Dq.sef;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.bytedance.sdk.openadsdk.core.model.Zq;
import com.bytedance.sdk.openadsdk.core.model.sU;

/* JADX INFO: loaded from: classes3.dex */
public class sP {
    private com.bytedance.sdk.openadsdk.core.TEQ.TKC.Sj EjP;
    private TKC Sj;
    private sU TKC;
    private Context sP;

    public static class Sj {
        public static TKC Sj(Context context, sU sUVar) {
            if (Zq.Sj(sUVar)) {
                return new EjP(context, sUVar);
            }
            return null;
        }
    }

    public sP(Context context, sU sUVar) {
        this.sP = context;
        this.TKC = sUVar;
    }

    public void Sj() {
        TKC tkc = this.Sj;
        if (tkc != null) {
            tkc.sP();
        }
    }

    public void Sj(int i11) {
        Yf yfHiB;
        TKC tkc = this.Sj;
        if (!(tkc instanceof EjP) || (yfHiB = ((EjP) tkc).HiB()) == null || yfHiB.Sj() == null) {
            return;
        }
        yfHiB.Sj().Sj(i11);
    }

    public void Sj(sef sefVar) {
        TKC tkcSj = Sj.Sj(this.sP, this.TKC);
        this.Sj = tkcSj;
        if (tkcSj != null) {
            tkcSj.Sj();
            this.Sj.Sj(sefVar);
        }
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.TEQ.TKC.Sj sj2) {
        this.EjP = sj2;
        TKC tkc = this.Sj;
        if (tkc != null) {
            tkc.Sj(sj2);
        }
    }

    public void TKC() {
        TKC tkc = this.Sj;
        if (tkc != null) {
            tkc.TKC();
        }
    }

    public View sP() {
        TKC tkc = this.Sj;
        if (tkc != null) {
            return tkc.EjP();
        }
        return null;
    }
}
