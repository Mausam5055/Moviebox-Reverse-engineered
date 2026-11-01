package com.bytedance.sdk.openadsdk.component.reward.Sj;

import android.util.SparseArray;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.model.sU;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class EjP {
    private boolean EjP;
    private final com.bytedance.sdk.openadsdk.component.reward.Sj.Sj HiB;
    com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS Sj;
    private final String TKC;
    private final sU sP;

    public interface Sj {
        void Sj(View view, float f11, float f12, float f13, float f14, SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray, int i11, int i12, int i13);

        void Sj(String str, JSONObject jSONObject);
    }

    public EjP(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        this.HiB = sj2;
        this.sP = sj2.sP;
        this.TKC = sj2.HiB;
    }

    private void EjP() {
        if (!com.bytedance.sdk.openadsdk.multipro.sP.TKC() && this.sP.sdp() == 4) {
            this.Sj = com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.Jcg.Sj(this.HiB.Ei, this.sP, this.TKC);
        }
        if (this.Sj == null) {
            this.Sj = com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.Jcg.Sj(this.HiB.Fm, this.sP, this.TKC);
        }
    }

    public void Sj() {
        if (this.EjP) {
            return;
        }
        this.EjP = true;
        EjP();
    }

    public void Sj(View view, float f11, float f12, float f13, float f14, SparseArray<com.bytedance.sdk.openadsdk.core.sP.TKC.Sj> sparseArray, int i11, int i12, int i13, Sj sj2) {
        if (this.Sj == null) {
            sj2.Sj(view, f11, f12, f13, f14, sparseArray, i11, i12, i13);
            return;
        }
        int id2 = view.getId();
        if (id2 == com.bytedance.sdk.openadsdk.utils.Zq.HiB) {
            sj2.Sj("click_play_star_level", null);
            return;
        }
        if (id2 == com.bytedance.sdk.openadsdk.utils.Zq.EjP) {
            sj2.Sj("click_play_star_nums", null);
        } else if (id2 == com.bytedance.sdk.openadsdk.utils.Zq.TKC) {
            sj2.Sj("click_play_source", null);
        } else if (id2 == com.bytedance.sdk.openadsdk.utils.Zq.sP) {
            sj2.Sj("click_play_logo", null);
        }
    }

    public com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS TKC() {
        return this.Sj;
    }

    public void sP() {
        com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS vSVar = this.Sj;
        if (vSVar != null) {
            vSVar.EjP();
        }
    }
}
