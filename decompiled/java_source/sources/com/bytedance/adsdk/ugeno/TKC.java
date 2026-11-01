package com.bytedance.adsdk.ugeno;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import com.bytedance.adsdk.ugeno.Jcg.Dq;
import com.bytedance.adsdk.ugeno.core.uA;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class TKC extends com.bytedance.adsdk.ugeno.sP.Sj<com.bytedance.adsdk.ugeno.vS.sP> {
    private String AVc;
    private JSONArray GMp;
    private float Grp;
    private float Ph;
    private boolean RrR;
    private boolean SP;
    private float TX;
    private String Xqg;
    private float dLt;

    /* JADX INFO: renamed from: gq, reason: collision with root package name */
    private int f20815gq;
    private com.bytedance.adsdk.ugeno.sP.TKC hzV;

    /* JADX INFO: renamed from: mj, reason: collision with root package name */
    private int f20816mj;
    private boolean oWa;

    /* JADX INFO: renamed from: vb, reason: collision with root package name */
    private float f20817vb;
    private float zwV;

    public TKC(Context context) {
        super(context);
        this.RrR = true;
        this.SP = true;
        this.dLt = 0.0f;
        this.zwV = 2000.0f;
        this.Xqg = "normal";
        this.oWa = true;
        this.f20816mj = Color.parseColor("#666666");
        this.f20815gq = Color.parseColor(IntegrationConstants.NAVIGATION_BAR_BACKGROUND_COLOR_DEFAULT);
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    public View Sj() {
        com.bytedance.adsdk.ugeno.vS.sP sPVar = new com.bytedance.adsdk.ugeno.vS.sP(this.sP);
        this.HiB = sPVar;
        sPVar.Sj((EjP) this);
        return this.HiB;
    }

    public void Sj(int i11) {
        T t11 = this.HiB;
        if (t11 != 0) {
            ((com.bytedance.adsdk.ugeno.vS.sP) t11).aa(i11);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.sP.Sj
    public void Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc) {
        this.hzV = tkc;
    }

    public void Sj(com.bytedance.adsdk.ugeno.vS.TKC tkc) {
        T t11 = this.HiB;
        if (t11 != 0) {
            ((com.bytedance.adsdk.ugeno.vS.sP) t11).setOnPageChangeListener(tkc);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    public void Sj(String str, String str2) {
        super.Sj(str, str2);
        if (TextUtils.isEmpty(str)) {
        }
        str.hashCode();
        switch (str) {
            case "delayStart":
                this.dLt = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f);
                break;
            case "indicatorColor":
                this.f20816mj = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(str2);
                break;
            case "nextMargin":
                this.Grp = Dq.Sj(this.sP, com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f));
                break;
            case "effect":
                this.Xqg = str2;
                break;
            case "direction":
                this.AVc = str2;
                break;
            case "indicator":
                this.oWa = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, true);
                break;
            case "previousMargin":
                this.f20817vb = Dq.Sj(this.sP, com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f));
                break;
            case "loop":
                this.RrR = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, true);
                break;
            case "speed":
                this.zwV = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 500.0f);
                break;
            case "pageCount":
                this.Ph = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 1.0f);
                break;
            case "pageMargin":
                this.TX = Dq.Sj(this.sP, com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f));
                break;
            case "indicatorSelectedColor":
                this.f20815gq = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(str2);
                break;
            case "autoplay":
                this.SP = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, true);
                break;
            case "dataList":
                this.GMp = com.bytedance.adsdk.ugeno.Jcg.sP.Sj(str2, (JSONArray) null);
                break;
        }
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    public void Sj(JSONObject jSONObject) {
    }

    @Override // com.bytedance.adsdk.ugeno.sP.Sj, com.bytedance.adsdk.ugeno.sP.TKC
    public void sP() {
        super.sP();
        JSONArray jSONArray = this.GMp;
        if (jSONArray == null || jSONArray.length() <= 0) {
            return;
        }
        ((com.bytedance.adsdk.ugeno.vS.sP) this.HiB).vS((int) this.TX).Jcg((int) this.f20817vb).Dq((int) this.Grp).sP(this.oWa).EjP(this.f20815gq).HiB(this.f20816mj).Sj(this.Xqg).TKC(this.RrR).Sj(this.Ph).Sj(this.SP).TKC((int) this.zwV).sP(this.oWa);
        for (int i11 = 0; i11 < this.GMp.length(); i11++) {
            uA uAVar = new uA(this.sP);
            uAVar.Sj(this.TO);
            com.bytedance.adsdk.ugeno.sP.TKC<View> tkcSP = uAVar.sP(this.hzV.Yf(), null);
            uAVar.sP(this.GMp.optJSONObject(i11));
            ((com.bytedance.adsdk.ugeno.vS.sP) this.HiB).Sj(tkcSP);
        }
        if (this.SP) {
            ((com.bytedance.adsdk.ugeno.vS.sP) this.HiB).sP();
        }
    }
}
