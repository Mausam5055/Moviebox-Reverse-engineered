package com.bytedance.sdk.openadsdk.core.sP;

import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.openadsdk.utils.Zq;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Jcg extends TKC {
    private final String Sj;
    private TKC TKC;
    private final com.bytedance.sdk.openadsdk.core.Ym.Sj sP;

    public Jcg(String str, com.bytedance.sdk.openadsdk.core.Ym.Sj sj2) {
        this(str, sj2, null);
    }

    public Jcg(String str, com.bytedance.sdk.openadsdk.core.Ym.Sj sj2, TKC tkc) {
        this.Sj = str;
        this.sP = sj2;
        this.TKC = tkc;
    }

    @Override // com.bytedance.sdk.openadsdk.core.sP.TKC
    protected void Sj(View view, float f11, float f12, float f13, float f14, SparseArray<TKC.Sj> sparseArray, boolean z10) {
        com.bytedance.sdk.openadsdk.core.Ym.Sj sj2 = this.sP;
        if (sj2 != null) {
            sj2.HiB(this.Sj);
        }
        if (view != null) {
            if (view.getId() == Zq.TKC) {
                view.setTag(570425345, "VAST_TITLE");
            } else if (view.getId() == Zq.Jcg) {
                view.setTag(570425345, "VAST_DESCRIPTION");
            } else {
                view.setTag(570425345, this.Sj);
            }
        }
        TKC tkc = this.TKC;
        if (tkc != null) {
            tkc.uP = this.uP;
            tkc.wE = this.wE;
            tkc.ley = this.ley;
            int i11 = this.ley;
            tkc.LqL = i11;
            tkc.Yf = i11;
            tkc.Sj(view, f11, f12, f13, f14, sparseArray, z10);
        }
    }

    public void Sj(TKC tkc) {
        this.TKC = tkc;
    }

    @Override // com.bytedance.sdk.openadsdk.core.sP.TKC, android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        return super.onTouch(view, motionEvent);
    }
}
