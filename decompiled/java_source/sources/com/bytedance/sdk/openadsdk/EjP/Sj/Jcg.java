package com.bytedance.sdk.openadsdk.EjP.Sj;

/* JADX INFO: loaded from: classes2.dex */
class Jcg implements com.bytedance.sdk.component.vS.Sj.HiB.TKC {
    private final com.bytedance.sdk.component.Jcg.sP.sP Sj;

    public Jcg() {
        com.bytedance.sdk.component.Jcg.sP.sP sPVarTKC = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().TKC();
        this.Sj = sPVarTKC;
        sPVarTKC.Sj(7);
        sPVarTKC.Sj("track_url");
    }

    @Override // com.bytedance.sdk.component.vS.Sj.HiB.TKC
    public com.bytedance.sdk.component.vS.Sj.HiB.EjP Sj() {
        return new uA(this.Sj.Sj());
    }

    @Override // com.bytedance.sdk.component.vS.Sj.HiB.TKC
    public void Sj(String str) {
        this.Sj.sP(str);
    }

    @Override // com.bytedance.sdk.component.vS.Sj.HiB.TKC
    public void Sj(String str, String str2) {
        this.Sj.sP(str, str2);
    }
}
