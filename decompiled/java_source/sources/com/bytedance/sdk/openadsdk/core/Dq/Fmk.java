package com.bytedance.sdk.openadsdk.core.Dq;

import com.bytedance.sdk.openadsdk.utils.JcM;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Fmk implements com.bytedance.adsdk.ugeno.core.Zq, com.bytedance.sdk.component.adexpress.sP.uA {
    private final String EjP;
    private long HiB;
    private final com.bytedance.sdk.openadsdk.EjP.EjP.HiB Sj;
    private final com.bytedance.sdk.openadsdk.core.model.sU TKC;
    private final String sP;

    public Fmk(com.bytedance.sdk.openadsdk.EjP.EjP.HiB hiB, String str, com.bytedance.sdk.openadsdk.core.model.sU sUVar, String str2) {
        this.Sj = hiB;
        this.sP = str;
        this.EjP = str2;
        this.TKC = sUVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.uA
    public void Dq() {
        this.Sj.sef();
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.uA
    public void EjP() {
        this.Sj.Sj();
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.uA
    public void EjP(int i11) {
        if (i11 == 3) {
            this.Sj.EjP("dynamic_sub_render2_start");
        } else {
            this.Sj.EjP("dynamic_sub_render_start");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.uA
    public void HiB() {
        this.Sj.sP();
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.uA
    public void HiB(int i11) {
        if (i11 == 3) {
            this.Sj.EjP("dynamic_sub_render2_end");
        } else {
            this.Sj.EjP("dynamic_sub_render_end");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.uA
    public void Jcg() {
        this.Sj.Sj(true);
        this.Sj.Fmk();
        JcM.sP(new com.bytedance.sdk.component.Dq.Dq("native_success") { // from class: com.bytedance.sdk.openadsdk.core.Dq.Fmk.2
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.EjP.TKC.sP(Fmk.this.TKC, Fmk.this.sP, "dynamic_backup_render", (JSONObject) null);
            }
        }, 10);
    }

    @Override // com.bytedance.adsdk.ugeno.core.Zq
    public void Sj() {
        this.Sj.HiB("ugen_render_start");
        this.Sj.HiB("ugen_sub_analysis_start");
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.uA
    public void Sj(int i11) {
        this.HiB = System.currentTimeMillis();
        if (i11 == 3) {
            this.Sj.TKC("dynamic_render2_start");
        } else {
            this.Sj.TKC("dynamic_render_start");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.uA
    public void Sj(int i11, int i12, String str, boolean z10) {
        if (!z10) {
            this.Sj.Sj(true);
        }
        if (i11 == 3) {
            this.Sj.sP(i12, "dynamic_render2_error");
        } else {
            this.Sj.sP(i12, "dynamic_render_error");
        }
        Ym.Sj("NDR", i12, str, this.sP, this.EjP, this.TKC);
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.uA
    public void Sj(int i11, String str) {
        this.Sj.Sj(i11, str);
        Ym.Sj("Web", i11, str, this.sP, this.EjP, this.TKC);
    }

    @Override // com.bytedance.adsdk.ugeno.core.Zq
    public void Sj(com.bytedance.adsdk.ugeno.core.sef sefVar) {
        if (sefVar.Sj() == 0) {
            this.Sj.HiB("ugen_sub_render_end");
            this.Sj.vS("ugen_render_success");
        } else {
            this.Sj.TKC(sefVar.Sj(), "ugen_render_error");
            Ym.Sj("UGen", sefVar.Sj(), sefVar.sP(), this.sP, this.EjP, this.TKC);
        }
        this.Sj.Sj(true);
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.uA
    public void Sj(boolean z10) {
        this.Sj.Sj(z10 ? 1 : 0);
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.uA
    public void TEQ() {
        this.Sj.sP();
    }

    @Override // com.bytedance.adsdk.ugeno.core.Zq
    public void TKC() {
        this.Sj.HiB("ugen_sub_render_start");
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.uA
    public void TKC(int i11) {
        if (i11 == 3) {
            this.Sj.EjP("dynamic_sub_analysis2_end");
        } else {
            this.Sj.EjP("dynamic_sub_analysis_end");
        }
    }

    public void Ym() {
        this.Sj.Ym();
        this.Sj.aa();
    }

    @Override // com.bytedance.adsdk.ugeno.core.Zq
    public void sP() {
        this.Sj.HiB("ugen_sub_analysis_end");
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.uA
    public void sP(int i11) {
        if (i11 == 3) {
            this.Sj.EjP("dynamic_sub_analysis2_start");
        } else {
            this.Sj.EjP("dynamic_sub_analysis_start");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.uA
    public void uA() {
        this.Sj.Zq();
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.uA
    public void vS() {
        this.Sj.TKC();
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.uA
    public void vS(int i11) {
        final String str;
        System.currentTimeMillis();
        if (i11 == 3) {
            this.Sj.Jcg("dynamic_render2_success");
            str = "dynamic2_render";
        } else {
            this.Sj.Jcg("dynamic_render_success");
            str = "dynamic_backup_native_render";
        }
        this.Sj.Sj(true);
        JcM.sP(new com.bytedance.sdk.component.Dq.Dq("dynamic_success") { // from class: com.bytedance.sdk.openadsdk.core.Dq.Fmk.1
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.EjP.TKC.sP(Fmk.this.TKC, Fmk.this.sP, str, (JSONObject) null);
            }
        }, 10);
    }
}
