package com.bytedance.sdk.openadsdk.EjP.Sj;

/* JADX INFO: loaded from: classes2.dex */
class uA implements com.bytedance.sdk.component.vS.Sj.HiB.EjP {
    private final com.bytedance.sdk.component.Jcg.sP Sj;

    public uA(com.bytedance.sdk.component.Jcg.sP sPVar) {
        this.Sj = sPVar;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.HiB.EjP
    public boolean Sj() {
        com.bytedance.sdk.component.Jcg.sP sPVar = this.Sj;
        if (sPVar != null) {
            return sPVar.vS();
        }
        return false;
    }

    @Override // com.bytedance.sdk.component.vS.Sj.HiB.EjP
    public String TKC() {
        com.bytedance.sdk.component.Jcg.sP sPVar = this.Sj;
        return sPVar != null ? sPVar.sP() : "";
    }

    @Override // com.bytedance.sdk.component.vS.Sj.HiB.EjP
    public int sP() {
        com.bytedance.sdk.component.Jcg.sP sPVar = this.Sj;
        if (sPVar != null) {
            return sPVar.Sj();
        }
        return -1;
    }
}
