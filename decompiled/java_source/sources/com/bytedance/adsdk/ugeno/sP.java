package com.bytedance.adsdk.ugeno;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.adsdk.ugeno.EjP.uA;
import com.bytedance.adsdk.ugeno.Jcg.Dq;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class sP extends com.bytedance.adsdk.ugeno.sP.Sj<com.bytedance.adsdk.ugeno.vS.sP> implements com.bytedance.adsdk.ugeno.vS.TKC {
    private int AVc;
    private boolean Aw;
    private float GMp;
    private int Grp;
    private int Ov;
    private JSONArray Ph;
    private boolean RrR;
    private boolean SP;
    private float TX;
    private boolean Xqg;
    private float dLt;

    /* JADX INFO: renamed from: gq, reason: collision with root package name */
    private float f20822gq;
    private float hzV;

    /* JADX INFO: renamed from: mj, reason: collision with root package name */
    private int f20823mj;
    private int oWa;
    private boolean tX;

    /* JADX INFO: renamed from: vb, reason: collision with root package name */
    private int f20824vb;
    private String zwV;

    public sP(Context context) {
        super(context);
        this.AVc = 0;
        this.RrR = true;
        this.SP = true;
        this.dLt = 2000.0f;
        this.zwV = "normal";
        this.Xqg = false;
        this.oWa = Color.parseColor("#666666");
        this.f20823mj = Color.parseColor(IntegrationConstants.NAVIGATION_BAR_BACKGROUND_COLOR_DEFAULT);
        this.f20822gq = 1.0f;
        this.GMp = 0.0f;
        this.hzV = 0.0f;
        this.TX = 0.0f;
        this.f20824vb = 0;
        this.Grp = 0;
        this.tX = true;
    }

    private void Dq(int i11) {
        uA uAVar = this.tY;
        if (uAVar == null) {
            return;
        }
        uAVar.Sj("SwiperView://slide", Integer.valueOf(this.Ov), Integer.valueOf(i11), Integer.valueOf(!this.Aw ? 1 : 0));
    }

    private void Jcg(int i11) {
        if (this.tY == null) {
            return;
        }
        if (this.Ov == 0 && i11 == MuB() - 1) {
            this.tY.Sj("SwiperView://reloop", 1);
        }
        if (this.Ov == MuB() - 1 && i11 == 0) {
            this.tY.Sj("SwiperView://reloop", 0);
        }
    }

    private int MuB() {
        if (this.f20824vb == 1) {
            List<com.bytedance.adsdk.ugeno.sP.TKC<View>> list = ((com.bytedance.adsdk.ugeno.sP.Sj) this).Sj;
            if (list != null) {
                return list.size();
            }
            return 0;
        }
        JSONArray jSONArray = this.Ph;
        if (jSONArray != null) {
            return jSONArray.length();
        }
        return 0;
    }

    private void Sj(boolean z10, int i11, float f11) {
        if (this.tY != null && !z10 && i11 == MuB() - 1 && f11 == 0.0f && this.tX) {
            this.tY.Sj("SwiperView://finish", new Object[0]);
            this.tX = false;
        }
    }

    private void dwU() {
        List<com.bytedance.adsdk.ugeno.sP.TKC<View>> list = ((com.bytedance.adsdk.ugeno.sP.Sj) this).Sj;
        if (list == null || list.isEmpty()) {
            return;
        }
        com.bytedance.adsdk.ugeno.sP.TKC<View> tkc = ((com.bytedance.adsdk.ugeno.sP.Sj) this).Sj.get(0);
        if (this.Ph == null) {
            return;
        }
        for (int i11 = 0; i11 < this.Ph.length(); i11++) {
            com.bytedance.adsdk.ugeno.core.uA uAVar = new com.bytedance.adsdk.ugeno.core.uA(this.sP);
            uAVar.Sj(this.TO);
            try {
                JSONObject jSONObjectOptJSONObject = this.Ph.optJSONObject(i11);
                if (jSONObjectOptJSONObject != null) {
                    if (jSONObjectOptJSONObject.has("$chunk")) {
                        this.EjP.put("$item", jSONObjectOptJSONObject.optJSONArray("$chunk"));
                    } else {
                        this.EjP.put("$item", jSONObjectOptJSONObject);
                    }
                    ((com.bytedance.adsdk.ugeno.vS.sP) this.HiB).Sj(uAVar.Sj(tkc.Yf(), this.EjP, (JSONObject) null));
                }
            } catch (Throwable unused) {
            }
        }
    }

    private void sdp() {
        for (int i11 = 0; i11 < ((com.bytedance.adsdk.ugeno.sP.Sj) this).Sj.size(); i11++) {
            com.bytedance.adsdk.ugeno.sP.TKC<View> tkc = ((com.bytedance.adsdk.ugeno.sP.Sj) this).Sj.get(i11);
            if (tkc != null) {
                com.bytedance.adsdk.ugeno.core.uA uAVar = new com.bytedance.adsdk.ugeno.core.uA(this.sP);
                uAVar.Sj(this.TO);
                ((com.bytedance.adsdk.ugeno.vS.sP) this.HiB).Sj(uAVar.Sj(tkc.Yf(), this.EjP, (JSONObject) null));
            }
        }
    }

    public void EjP() {
        ((com.bytedance.adsdk.ugeno.vS.sP) this.HiB).aa(((com.bytedance.adsdk.ugeno.vS.sP) this.HiB).getCurrentItem() - 1);
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    public View Sj() {
        com.bytedance.adsdk.ugeno.vS.sP sPVar = new com.bytedance.adsdk.ugeno.vS.sP(this.sP);
        this.HiB = sPVar;
        sPVar.Sj((EjP) this);
        return this.HiB;
    }

    public void Sj(int i11) {
        if (((com.bytedance.adsdk.ugeno.vS.sP) this.HiB).getCurrentItem() != i11) {
            ((com.bytedance.adsdk.ugeno.vS.sP) this.HiB).aa(i11);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.sP.Sj
    public void Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc) {
        if (tkc == null) {
            return;
        }
        ((com.bytedance.adsdk.ugeno.sP.Sj) this).Sj.add(tkc);
    }

    @Override // com.bytedance.adsdk.ugeno.sP.Sj
    public void Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc, ViewGroup.LayoutParams layoutParams) {
        if (tkc == null) {
            return;
        }
        ((com.bytedance.adsdk.ugeno.sP.Sj) this).Sj.add(tkc);
    }

    @Override // com.bytedance.adsdk.ugeno.sP.TKC
    public void Sj(String str, String str2) {
        super.Sj(str, str2);
        if (TextUtils.isEmpty(str)) {
        }
        str.hashCode();
        switch (str) {
            case "startIndex":
                this.Grp = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0);
                break;
            case "indicatorColor":
                this.oWa = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(str2, this.oWa);
                break;
            case "nextMargin":
                this.TX = Dq.Sj(this.sP, com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f));
                break;
            case "driveMode":
                this.f20824vb = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0);
                break;
            case "effect":
                this.zwV = str2;
                break;
            case "direction":
                if (!TextUtils.equals(str2, "vertical")) {
                    this.AVc = 0;
                    break;
                } else {
                    this.AVc = 1;
                    break;
                }
                break;
            case "indicator":
                this.Xqg = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, false);
                break;
            case "previousMargin":
                this.hzV = Dq.Sj(this.sP, com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f));
                break;
            case "loop":
                this.RrR = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, true);
                break;
            case "speed":
                this.dLt = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 2000.0f);
                break;
            case "pageCount":
                this.f20822gq = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 1.0f);
                break;
            case "pageMargin":
                this.GMp = Dq.Sj(this.sP, com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, 0.0f));
                break;
            case "indicatorSelectedColor":
                this.f20823mj = com.bytedance.adsdk.ugeno.Jcg.Sj.Sj(str2, this.f20823mj);
                break;
            case "autoplay":
                this.SP = com.bytedance.adsdk.ugeno.Jcg.TKC.Sj(str2, true);
                break;
            case "dataList":
                this.Ph = com.bytedance.adsdk.ugeno.Jcg.sP.Sj(str2, (JSONArray) null);
                break;
        }
    }

    @Override // com.bytedance.adsdk.ugeno.vS.TKC
    public void Sj(boolean z10, int i11) {
        if (i11 == 0) {
            if (!z10) {
                this.tX = true;
            }
            this.Aw = false;
        } else if (i11 == 1) {
            this.Aw = true;
        }
        StringBuilder sb2 = new StringBuilder("onPageScrollStateChanged: loop=");
        sb2.append(z10);
        sb2.append("; state=");
        sb2.append(i11);
    }

    @Override // com.bytedance.adsdk.ugeno.vS.TKC
    public void Sj(boolean z10, int i11, float f11, int i12) {
        StringBuilder sb2 = new StringBuilder("onPageScrolled: loop=");
        sb2.append(z10);
        sb2.append("; position=");
        sb2.append(i11);
        sb2.append("; positionOffset=");
        sb2.append(f11);
        sb2.append("; positionOffsetPixels=");
        sb2.append(i12);
        Sj(z10, i11, f11);
    }

    @Override // com.bytedance.adsdk.ugeno.vS.TKC
    public void Sj(boolean z10, int i11, int i12, boolean z11, boolean z12) {
        if (this.Ov != i11) {
            Jcg(i11);
            Dq(i11);
            this.Ov = i11;
        }
        StringBuilder sb2 = new StringBuilder("onPageSelected: loop=");
        sb2.append(z10);
        sb2.append("; position=");
        sb2.append(i11);
        sb2.append("; loopPosition=");
        sb2.append(i12);
        sb2.append("; isFirst=");
        sb2.append(z11);
        sb2.append("; isLast=");
        sb2.append(z12);
    }

    public void TKC() {
        ((com.bytedance.adsdk.ugeno.vS.sP) this.HiB).aa(((com.bytedance.adsdk.ugeno.vS.sP) this.HiB).getCurrentItem() + 1);
    }

    @Override // com.bytedance.adsdk.ugeno.sP.Sj, com.bytedance.adsdk.ugeno.sP.TKC
    public void sP() {
        super.sP();
        ((com.bytedance.adsdk.ugeno.vS.sP) this.HiB).Sj(this.AVc).TKC(this.RrR).Sj(this.SP).sP((int) this.dLt).sP(this.Xqg).HiB(this.oWa).EjP(this.f20823mj).Jcg((int) this.hzV).Dq((int) this.TX).vS((int) this.GMp).Sj(this.f20822gq).Sj(this.zwV).aa(this.Grp);
        ((com.bytedance.adsdk.ugeno.vS.sP) this.HiB).setOnPageChangeListener(this);
        if (this.f20824vb == 1) {
            sdp();
        } else {
            dwU();
        }
        ((com.bytedance.adsdk.ugeno.vS.sP) this.HiB).sP();
    }
}
