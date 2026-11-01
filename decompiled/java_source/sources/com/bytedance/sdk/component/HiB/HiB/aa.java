package com.bytedance.sdk.component.HiB.HiB;

/* JADX INFO: loaded from: classes2.dex */
public class aa extends Sj {
    @Override // com.bytedance.sdk.component.HiB.HiB.uA
    public String Sj() {
        return "raw_cache";
    }

    @Override // com.bytedance.sdk.component.HiB.HiB.uA
    public void Sj(com.bytedance.sdk.component.HiB.TKC.TKC tkc) {
        byte[] bArrSj = tkc.TzV().sP(tkc.RiZ()).Sj(tkc.uA());
        if (bArrSj == null) {
            tkc.Sj(new vS());
        } else {
            tkc.Sj(new sP(bArrSj, null));
        }
    }
}
