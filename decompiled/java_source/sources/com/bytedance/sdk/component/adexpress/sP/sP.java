package com.bytedance.sdk.component.adexpress.sP;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;

/* JADX INFO: loaded from: classes2.dex */
public class sP implements TEQ {
    private Dq EjP;
    private Fmk HiB;
    private Context Sj;
    private ThemeStatusBroadcastReceiver TKC;
    private com.bytedance.sdk.component.adexpress.dynamic.Sj.Sj sP;
    private int vS;

    public sP(Context context, Fmk fmk, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z10, com.bytedance.sdk.component.adexpress.dynamic.HiB.Dq dq2, Dq dq3, com.bytedance.sdk.component.adexpress.dynamic.vS.Sj sj2, com.bytedance.sdk.component.adexpress.dynamic.Sj.Sj sj3) {
        this.Sj = context;
        this.HiB = fmk;
        this.TKC = themeStatusBroadcastReceiver;
        this.EjP = dq3;
        if (sj3 != null) {
            this.sP = sj3;
        } else {
            this.sP = new com.bytedance.sdk.component.adexpress.dynamic.Sj.Sj(context, themeStatusBroadcastReceiver, z10, dq2, fmk, sj2);
        }
        this.sP.Sj(this.EjP);
        if (dq2 instanceof com.bytedance.sdk.component.adexpress.dynamic.HiB.Jcg) {
            this.vS = 3;
        } else {
            this.vS = 2;
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.TEQ
    public void Sj() {
        com.bytedance.sdk.component.adexpress.dynamic.Sj.Sj sj2 = this.sP;
        if (sj2 != null) {
            sj2.sP();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.TEQ
    public boolean Sj(final TEQ.Sj sj2) {
        this.HiB.HiB().Sj(this.vS);
        this.sP.Sj(new Jcg() { // from class: com.bytedance.sdk.component.adexpress.sP.sP.1
            @Override // com.bytedance.sdk.component.adexpress.sP.Jcg
            public void Sj(int i11, String str) {
                sP.this.HiB.HiB().Sj(sP.this.vS, i11, str, sj2.sP(sP.this));
                if (sj2.sP(sP.this)) {
                    sj2.Sj(sP.this);
                    return;
                }
                Zq zqSP = sj2.sP();
                if (zqSP == null) {
                    return;
                }
                zqSP.a_(i11);
            }

            @Override // com.bytedance.sdk.component.adexpress.sP.Jcg
            public void Sj(View view, sef sefVar) {
                if (sj2.TKC()) {
                    return;
                }
                sP.this.HiB.HiB().HiB(sP.this.vS);
                sP.this.HiB.HiB().vS(sP.this.vS);
                sP.this.HiB.HiB().TEQ();
                Zq zqSP = sj2.sP();
                if (zqSP == null) {
                    return;
                }
                zqSP.Sj(sP.this.sP, sefVar);
                sj2.Sj(true);
            }
        });
        return true;
    }

    public com.bytedance.sdk.component.adexpress.dynamic.EjP sP() {
        com.bytedance.sdk.component.adexpress.dynamic.Sj.Sj sj2 = this.sP;
        if (sj2 != null) {
            return sj2.EjP();
        }
        return null;
    }
}
