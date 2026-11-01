package com.bytedance.sdk.component.HiB.HiB;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes2.dex */
public class TKC extends Sj {
    @Override // com.bytedance.sdk.component.HiB.HiB.uA
    public String Sj() {
        return "generate_key";
    }

    @Override // com.bytedance.sdk.component.HiB.HiB.uA
    public void Sj(com.bytedance.sdk.component.HiB.TKC.TKC tkc) {
        if (TextUtils.isEmpty(tkc.TEQ())) {
            com.bytedance.sdk.component.HiB.aa aaVarVS = tkc.TzV().vS();
            tkc.sP(aaVarVS.Sj(tkc));
            tkc.Sj(aaVarVS.sP(tkc));
        }
        tkc.Sj(new Jcg());
    }
}
