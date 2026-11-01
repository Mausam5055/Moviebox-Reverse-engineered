package com.bytedance.sdk.openadsdk.sU.Sj;

import android.content.Context;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.aa.vS;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.FPG;

/* JADX INFO: loaded from: classes3.dex */
public class sP extends Sj {
    private final FrameLayout EjP;
    private FrameLayout HiB;
    private vS TKC;
    private volatile boolean sP;
    private String vS;

    public sP(Context context, sU sUVar, int i11, boolean z10, FrameLayout frameLayout, String str) {
        super(context, sUVar, i11, z10, frameLayout);
        this.EjP = frameLayout;
        this.vS = str;
        sP(false);
        int iTKC = FPG.TKC(context);
        int iHiB = FPG.HiB(context);
        if (i11 == 1) {
            if (iTKC <= iHiB) {
                this.Sj.layout(0, 0, iTKC, iHiB);
                return;
            }
        } else {
            if (i11 != 2) {
                return;
            }
            if (iTKC > iHiB) {
                this.Sj.layout(0, 0, iTKC, iHiB);
                return;
            }
        }
        this.Sj.layout(0, 0, iHiB, iTKC);
    }

    public String Dq() {
        return this.vS;
    }

    public void Jcg() {
        super.Sj(true, new vS() { // from class: com.bytedance.sdk.openadsdk.sU.Sj.sP.1
            @Override // com.bytedance.sdk.openadsdk.aa.vS
            public void Sj() {
                if (sP.this.TKC != null) {
                    sP.this.TKC.Sj();
                } else {
                    sP.this.sP = true;
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.sU.Sj.Sj
    public void Sj() {
        this.HiB.setVisibility(0);
        super.Sj();
    }

    public void Sj(FrameLayout frameLayout, vS vSVar) {
        this.HiB = frameLayout;
        frameLayout.addView(this.EjP);
        this.TKC = vSVar;
        if (this.sP) {
            this.TKC.Sj();
        }
    }
}
