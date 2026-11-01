package com.bytedance.sdk.openadsdk.core.TEQ.EjP;

import android.R;
import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.adsdk.ugeno.core.Fmk;
import com.bytedance.adsdk.ugeno.core.TEQ;
import com.bytedance.sdk.openadsdk.EjP.TKC;
import com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.Jcg;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.PangleAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.core.TEQ.vS.EjP;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.fF;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class sP implements Fmk, Sj.InterfaceC0257Sj {
    protected static int Sj = 8;
    private String Dq;
    private final sU EjP;
    private View Fmk;
    private final com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj HiB;
    private String Jcg;
    private long RiZ;
    private final com.bytedance.sdk.openadsdk.core.TEQ.vS.sP TEQ;
    private final Activity TKC;
    private long TzV;
    private com.bytedance.sdk.openadsdk.core.TEQ.vS.Sj Ym;
    private float Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private String f21026aa;
    private float dNu;
    private Sj sP;
    private boolean sU = true;
    private float sef;
    private JSONObject uA;
    private float uvD;
    private String vS;

    public sP(Activity activity, sU sUVar, com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj sj2, String str, com.bytedance.sdk.openadsdk.core.TEQ.vS.sP sPVar) {
        this.TKC = activity;
        this.f21026aa = str;
        this.EjP = sUVar;
        this.TEQ = sPVar;
        this.HiB = sj2;
    }

    private void Sj(TEQ teq, sU sUVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("down_x", this.sef);
            jSONObject.put("down_y", this.Zq);
            jSONObject.put("down_time", this.TzV);
            jSONObject.put("up_x", this.uvD);
            jSONObject.put("up_y", this.dNu);
            jSONObject.put("up_time", this.RiZ);
            View viewYm = teq.Sj().Ym();
            int i11 = 1;
            if (viewYm != null) {
                JSONObject jSONObject2 = new JSONObject();
                int[] iArr = new int[2];
                float width = viewYm.getWidth();
                float height = viewYm.getHeight();
                viewYm.getLocationOnScreen(iArr);
                float f11 = iArr[0];
                float f12 = iArr[1];
                jSONObject2.put("width", width);
                jSONObject2.put("height", height);
                jSONObject2.put(TtmlNode.LEFT, f11);
                jSONObject2.put(IntegrationConstants.TAB_BAR_POSITION_TOP, f12);
                jSONObject.put("rectInfo", jSONObject2);
            }
            View view = this.Fmk;
            if (view != null) {
                int[] iArr2 = new int[2];
                view.getLocationOnScreen(iArr2);
                jSONObject.put("button_x", iArr2[0]);
                jSONObject.put("button_y", iArr2[1]);
                jSONObject.put("button_width", this.Fmk.getWidth());
                jSONObject.put("button_height", this.Fmk.getHeight());
            }
            View viewFindViewById = this.TKC.findViewById(R.id.content);
            if (viewFindViewById != null) {
                int[] iArr3 = new int[2];
                viewFindViewById.getLocationOnScreen(iArr3);
                jSONObject.put("ad_x", iArr3[0]);
                jSONObject.put("ad_y", iArr3[1]);
                jSONObject.put("width", viewFindViewById.getWidth());
                jSONObject.put("height", viewFindViewById.getHeight());
            }
            jSONObject.put("click_area_type", teq.Sj().WMZ());
            jSONObject.put("brick_id", teq.Sj().JcM());
            jSONObject.put("endcard_id", this.vS);
            jSONObject.put("click_scence", 2);
            if (!this.sU) {
                i11 = 2;
            }
            jSONObject.put("user_behavior_type", i11);
            com.bytedance.sdk.openadsdk.core.TEQ.vS.Sj sj2 = this.Ym;
            if (sj2 != null) {
                jSONObject.put("endcard_type", sj2.Sj());
            }
            TKC.Sj(sUVar, this.f21026aa, "click", jSONObject);
        } catch (JSONException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(JSONObject jSONObject, JSONObject jSONObject2) {
        this.sP.Sj((Sj.InterfaceC0257Sj) this);
        this.sP.Sj((Fmk) this);
        this.TEQ.Sj();
        this.sP.Sj(jSONObject, jSONObject2, new EjP() { // from class: com.bytedance.sdk.openadsdk.core.TEQ.EjP.sP.2
            @Override // com.bytedance.sdk.openadsdk.core.TEQ.vS.EjP
            public void Sj(int i11, String str) {
                if (sP.this.TEQ != null) {
                    sP.this.TEQ.Sj(i11, str);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.TEQ.vS.EjP
            public void Sj(com.bytedance.adsdk.ugeno.sP.TKC<View> tkc) {
                if (sP.this.TEQ != null) {
                    sP.this.TEQ.Sj(tkc);
                }
            }
        });
    }

    private void sP() {
        int iSdp = this.EjP.sdp();
        if (iSdp != 2 && iSdp != 3) {
            if (iSdp == 4) {
                Jcg.Sj(this.TKC, this.EjP, this.f21026aa).EjP();
                return;
            } else {
                if (iSdp != 5) {
                    return;
                }
                Mts.sP(this.TKC, this.EjP.aNB());
                return;
            }
        }
        if (iSdp == 3) {
            String strChv = this.EjP.Chv();
            if (!TextUtils.isEmpty(strChv) && strChv.contains("play.google.com/store")) {
                if (com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.EjP.Sj(this.TKC, strChv, strChv.substring(strChv.indexOf("?id=") + 4), this.f21026aa, this.EjP)) {
                    return;
                }
            }
        }
        Activity activity = this.TKC;
        sU sUVar = this.EjP;
        int iSj = Mts.Sj(this.f21026aa);
        String str = this.f21026aa;
        fF.Sj((Context) activity, sUVar, iSj, (PAGNativeAd) null, (PangleAd) null, str, Jcg.Sj(this.TKC, this.EjP, str), true, 0);
    }

    public void Sj() {
        if (this.EjP == null) {
            this.TEQ.Sj(1, "material is null", "net");
            return;
        }
        if (this.HiB == null) {
            this.TEQ.Sj(1, "material ugen template is null", "net");
            return;
        }
        this.sP = new Sj(this.TKC);
        this.Dq = this.HiB.TKC();
        this.vS = this.HiB.Sj();
        this.Jcg = this.HiB.sP();
        this.uA = this.EjP.SP();
        this.TEQ.Sj(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD);
        com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.Sj().Sj(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, this.Dq, this.vS, this.Jcg, "", new com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.Sj() { // from class: com.bytedance.sdk.openadsdk.core.TEQ.EjP.sP.1
            @Override // com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.Sj
            public void Sj(int i11, String str, String str2) {
                sP.this.TEQ.Sj(i11, str, str2);
            }

            @Override // com.bytedance.sdk.openadsdk.core.TEQ.Sj.sP.Sj
            public void Sj(JSONObject jSONObject, String str) {
                sP sPVar = sP.this;
                sPVar.Sj(jSONObject, sPVar.uA);
                sP.this.TEQ.sP(str);
            }
        });
    }

    public void Sj(View view) {
        this.Fmk = view;
    }

    @Override // com.bytedance.sdk.openadsdk.core.TEQ.EjP.Sj.InterfaceC0257Sj
    public void Sj(TEQ teq) {
        String strOptString = teq.TKC().optString(NativeComponentConstants.KEY_COMPONENT_TYPE);
        strOptString.hashCode();
        switch (strOptString) {
            case "privacy":
                if (this.TKC != null && !TextUtils.isEmpty(dNu.EjP().JcM())) {
                    TTWebsiteActivity.Sj(this.TKC, this.EjP, this.f21026aa);
                    break;
                }
                break;
            case "close":
                com.bytedance.sdk.openadsdk.core.TEQ.vS.Sj sj2 = this.Ym;
                if (sj2 != null) {
                    sj2.sP();
                    break;
                }
                break;
            case "creative":
                if (this.TKC != null && this.EjP != null) {
                    sP();
                    ComponentCallbacks2 componentCallbacks2 = this.TKC;
                    if (componentCallbacks2 instanceof com.bytedance.sdk.openadsdk.core.aa.EjP.sP) {
                        ((com.bytedance.sdk.openadsdk.core.aa.EjP.sP) componentCallbacks2).EjP();
                    }
                    Sj(teq, this.EjP);
                    break;
                }
                break;
        }
    }

    @Override // com.bytedance.adsdk.ugeno.core.Fmk
    public void Sj(com.bytedance.adsdk.ugeno.sP.TKC tkc, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.TzV = System.currentTimeMillis();
            this.sef = motionEvent.getRawX();
            this.Zq = motionEvent.getRawY();
            this.sU = true;
            return;
        }
        if (action != 1) {
            if (action != 2) {
                return;
            }
            if (Math.abs(motionEvent.getRawX() - this.sef) >= Sj || Math.abs(motionEvent.getRawY() - this.Zq) >= Sj) {
                this.sU = false;
                return;
            }
            return;
        }
        this.uvD = motionEvent.getRawX();
        this.dNu = motionEvent.getRawY();
        if (Math.abs(this.uvD - this.sef) >= Sj || Math.abs(this.dNu - this.Zq) >= Sj) {
            this.sU = false;
        }
        this.RiZ = System.currentTimeMillis();
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.TEQ.vS.Sj sj2) {
        this.Ym = sj2;
    }
}
