package com.bytedance.sdk.openadsdk.component.reward.view;

import android.view.View;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.component.reward.Sj.RiZ;
import com.bytedance.sdk.openadsdk.component.reward.Sj.dNu;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Zq;

/* JADX INFO: loaded from: classes3.dex */
public class vS {
    private RiZ EjP;
    private boolean HiB;
    private final com.bytedance.sdk.openadsdk.component.reward.Sj.Sj Sj;
    private boolean TKC;

    @Nullable
    private RFEndCardBackUpLayout sP;

    public vS(com.bytedance.sdk.openadsdk.component.reward.Sj.Sj sj2) {
        this.Sj = sj2;
    }

    public void EjP() {
        RiZ riZ = this.EjP;
        if (riZ != null) {
            riZ.sP();
        }
    }

    public boolean HiB() {
        RiZ riZ = this.EjP;
        if (riZ != null) {
            return riZ.TKC();
        }
        return false;
    }

    public void Sj() {
        if (this.TKC) {
            return;
        }
        this.TKC = true;
        RFEndCardBackUpLayout rFEndCardBackUpLayout = (RFEndCardBackUpLayout) this.Sj.xD.findViewById(Zq.eMB);
        this.sP = rFEndCardBackUpLayout;
        if (rFEndCardBackUpLayout != null) {
            rFEndCardBackUpLayout.init(this.Sj);
        }
        if (this.Sj.sP.Ph()) {
            this.EjP = new RiZ(this.Sj);
        }
    }

    public void Sj(int i11) {
        RFEndCardBackUpLayout rFEndCardBackUpLayout = this.sP;
        if (rFEndCardBackUpLayout == null) {
            return;
        }
        rFEndCardBackUpLayout.setShownAdCount(i11);
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.sP.HiB hiB) {
        RFEndCardBackUpLayout rFEndCardBackUpLayout = this.sP;
        if (rFEndCardBackUpLayout == null) {
            return;
        }
        FPG.Sj(rFEndCardBackUpLayout, new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.vS.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        }, "TTBaseVideoActivity#mFLEndCardBackupContainer");
        RiZ riZ = this.EjP;
        if (riZ != null) {
            riZ.Sj(hiB);
        }
    }

    public boolean Sj(dNu dnu) {
        this.HiB = true;
        RiZ riZ = this.EjP;
        if (riZ == null || !riZ.Sj(dnu)) {
            return false;
        }
        FPG.Sj((View) this.sP, 0);
        return true;
    }

    public void TKC() {
        RiZ riZ = this.EjP;
        if (riZ != null) {
            riZ.Sj();
        }
    }

    public void sP() {
        this.HiB = true;
        FPG.Sj((View) this.sP, 0);
    }

    public boolean vS() {
        return this.HiB;
    }
}
