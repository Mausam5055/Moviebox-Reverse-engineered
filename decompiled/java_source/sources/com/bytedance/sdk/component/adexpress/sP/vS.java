package com.bytedance.sdk.component.adexpress.sP;

import android.content.Context;
import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public class vS implements TEQ {
    private Context Sj;
    private Fmk TKC;
    private Sj sP;

    public vS(Context context, Fmk fmk, Sj sj2) {
        this.Sj = context;
        this.sP = sj2;
        this.TKC = fmk;
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.TEQ
    public void Sj() {
    }

    public void Sj(TKC tkc) {
        this.sP.Sj(tkc);
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.TEQ
    public boolean Sj(final TEQ.Sj sj2) {
        this.TKC.HiB().vS();
        this.sP.Sj(new Jcg() { // from class: com.bytedance.sdk.component.adexpress.sP.vS.1
            @Override // com.bytedance.sdk.component.adexpress.sP.Jcg
            public void Sj(int i11, String str) {
                Zq zqSP = sj2.sP();
                if (zqSP != null) {
                    zqSP.a_(i11);
                }
            }

            @Override // com.bytedance.sdk.component.adexpress.sP.Jcg
            public void Sj(View view, sef sefVar) {
                if (sj2.TKC()) {
                    return;
                }
                Zq zqSP = sj2.sP();
                if (zqSP != null) {
                    zqSP.Sj(vS.this.sP, sefVar);
                }
                sj2.Sj(true);
            }
        });
        return true;
    }
}
