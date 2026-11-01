package com.bytedance.sdk.openadsdk.core.TEQ.sP;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes3.dex */
public class sP extends com.bytedance.adsdk.ugeno.uA.vS.sP {
    private String SP;
    private String dLt;

    public sP(Context context) {
        super(context);
    }

    @Override // com.bytedance.adsdk.ugeno.uA.vS.sP
    public void Jcg(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, "null")) {
            str = "";
        }
        if (TextUtils.isEmpty(this.dLt) || TextUtils.equals(this.dLt, "null")) {
            this.dLt = "";
        }
        if (TextUtils.isEmpty(this.SP) || TextUtils.equals(this.SP, "null")) {
            this.SP = "";
        }
        String str2 = this.SP + str + this.dLt;
        ((com.bytedance.adsdk.ugeno.uA.vS.sP) this).Sj = str2;
        ((com.bytedance.adsdk.ugeno.uA.vS.Sj) this.HiB).setText(str2);
        try {
            float f11 = this.JcM ? this.ley : this.wE;
            float f12 = this.WMZ ? this.LqL : this.wE;
            float fMeasureText = ((com.bytedance.adsdk.ugeno.uA.vS.Sj) this.HiB).getPaint().measureText(((com.bytedance.adsdk.ugeno.uA.vS.sP) this).Sj);
            if (fMeasureText >= 0.0f) {
                HiB((int) (f11 + fMeasureText + f12));
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.adsdk.ugeno.uA.vS.sP, com.bytedance.adsdk.ugeno.sP.TKC
    public void Sj(String str, String str2) {
        super.Sj(str, str2);
        str.hashCode();
        if (str.equals("before")) {
            this.SP = str2;
        } else if (str.equals("after")) {
            this.dLt = str2;
        }
    }

    @Override // com.bytedance.adsdk.ugeno.uA.vS.sP, com.bytedance.adsdk.ugeno.sP.TKC
    public void sP() {
        super.sP();
        if (TextUtils.isEmpty(this.dLt) || TextUtils.equals(this.dLt, "null")) {
            this.dLt = "";
        }
        if (TextUtils.isEmpty(this.SP) || TextUtils.equals(this.SP, "null")) {
            this.SP = "";
        }
        String str = this.SP + this.dLt;
        ((com.bytedance.adsdk.ugeno.uA.vS.sP) this).Sj = str;
        ((com.bytedance.adsdk.ugeno.uA.vS.Sj) this.HiB).setText(str);
        ((com.bytedance.adsdk.ugeno.uA.vS.Sj) this.HiB).setGravity(17);
    }
}
