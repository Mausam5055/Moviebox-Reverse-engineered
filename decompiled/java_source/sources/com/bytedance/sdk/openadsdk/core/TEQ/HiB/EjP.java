package com.bytedance.sdk.openadsdk.core.TEQ.HiB;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.bytedance.adsdk.ugeno.core.TEQ;
import com.bytedance.sdk.openadsdk.core.TzV;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.Mts;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class EjP {
    private final sU Dq;
    private com.bytedance.adsdk.ugeno.sP.TKC EjP;
    private boolean Fmk;
    private com.bytedance.adsdk.ugeno.sP.TKC HiB;
    private final Context Jcg;
    private com.bytedance.sdk.openadsdk.core.widget.HiB TEQ;
    private com.bytedance.adsdk.ugeno.sP.TKC TKC;
    private JSONObject Ym;
    private boolean Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private final JSONObject f21027aa;
    private boolean sef;
    private final String uA;
    private JSONArray uvD;
    private int Sj = -1;
    private int sP = -1;
    private final String vS = "UGenSwiperEvent";

    public EjP(Context context, sU sUVar, String str, JSONObject jSONObject) {
        this.Jcg = context;
        this.Dq = sUVar;
        this.uA = str;
        this.f21027aa = jSONObject;
    }

    private Context Sj(View view) {
        Activity activitySj = view != null ? com.bytedance.sdk.component.utils.sP.Sj(view) : null;
        return activitySj == null ? this.Jcg : activitySj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(int i11) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("index", i11);
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.sP(this.Dq, this.uA, "carousel_show", jSONObject);
    }

    private void Sj(TextView textView, int i11) {
        int currentTextColor = textView.getCurrentTextColor();
        textView.setTextColor(Color.argb(i11, Color.red(currentTextColor), Color.green(currentTextColor), Color.blue(currentTextColor)));
    }

    private void Sj(JSONObject jSONObject, View view) {
        if (Sj(jSONObject.optInt("landingStyle"), jSONObject.optString("url"), jSONObject.optString("fallback_url"))) {
            TzV.Sj(Sj(view), this.Jcg instanceof Activity, jSONObject, this.Dq, this.uA, Mts.Sj(this.uA), null, this.TEQ);
        }
    }

    private void Sj(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null || jSONObject2 == null) {
            return;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("clickInfo");
        this.Ym = jSONObjectOptJSONObject;
        if (jSONObjectOptJSONObject != null) {
            Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                try {
                    this.Ym.putOpt(next, com.bytedance.adsdk.ugeno.TKC.sP.Sj((String) this.Ym.opt(next), jSONObject2));
                } catch (Throwable unused) {
                }
            }
            try {
                jSONObject.putOpt("clickInfo", this.Ym);
            } catch (Throwable unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(boolean z10, boolean z11, boolean z12) {
        com.bytedance.adsdk.ugeno.sP.TKC tkc = this.TKC;
        if (tkc == null || this.EjP == null) {
            return;
        }
        View viewYm = tkc.Ym();
        View viewYm2 = this.EjP.Ym();
        JSONArray jSONArray = this.uvD;
        if (jSONArray != null && jSONArray.length() == 1) {
            viewYm.setVisibility(8);
            viewYm2.setVisibility(8);
            return;
        }
        if (z10) {
            return;
        }
        if (z11) {
            if (viewYm instanceof TextView) {
                Sj((TextView) viewYm, 90);
            }
            if (viewYm2 instanceof TextView) {
                Sj((TextView) viewYm2, 255);
                return;
            }
            return;
        }
        if (z12) {
            if (viewYm instanceof TextView) {
                Sj((TextView) viewYm, 255);
            }
            if (viewYm2 instanceof TextView) {
                Sj((TextView) viewYm2, 90);
                return;
            }
            return;
        }
        if (viewYm instanceof TextView) {
            Sj((TextView) viewYm, 255);
        }
        if (viewYm2 instanceof TextView) {
            Sj((TextView) viewYm2, 255);
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x001f  */
    /* JADX WARN: Code duplicated, block: B:24:? A[RETURN, SYNTHETIC] */
    private boolean Sj(int i11, String str, String str2) {
        if (i11 == 1) {
            if (!com.bytedance.sdk.component.utils.TzV.Sj(str)) {
                return false;
            }
        } else if (i11 != 2) {
            if (i11 == 3) {
                if (!com.bytedance.sdk.component.utils.TzV.Sj(str)) {
                    return false;
                }
            }
        } else if ((TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) || !com.bytedance.sdk.component.utils.TzV.Sj(str2)) {
            return false;
        }
        return true;
    }

    public JSONObject EjP() {
        return this.Ym;
    }

    public void Sj() {
        Sj(this.Fmk, this.sef, this.Zq);
    }

    public void Sj(com.bytedance.adsdk.ugeno.sP.TKC<View> tkc) {
        com.bytedance.adsdk.ugeno.sP.TKC<T> TKC = tkc.TKC("swiperLayout");
        this.HiB = TKC;
        if (TKC instanceof com.bytedance.adsdk.ugeno.TKC) {
            this.uvD = this.f21027aa.optJSONArray("dpa_data");
            this.TKC = tkc.TKC("swiperLeftArrow");
            this.EjP = tkc.TKC("swiperRightArrow");
            ((com.bytedance.adsdk.ugeno.TKC) this.HiB).Sj(new com.bytedance.adsdk.ugeno.vS.TKC() { // from class: com.bytedance.sdk.openadsdk.core.TEQ.HiB.EjP.1
                @Override // com.bytedance.adsdk.ugeno.vS.TKC
                public void Sj(boolean z10, int i11) {
                }

                @Override // com.bytedance.adsdk.ugeno.vS.TKC
                public void Sj(boolean z10, int i11, float f11, int i12) {
                }

                @Override // com.bytedance.adsdk.ugeno.vS.TKC
                public void Sj(boolean z10, int i11, int i12, boolean z11, boolean z12) {
                    EjP.this.sP = i11;
                    EjP.this.Sj = i12;
                    EjP.this.Fmk = z10;
                    EjP.this.sef = z11;
                    EjP.this.Zq = z12;
                    EjP.this.Sj(z10, z11, z12);
                    EjP.this.Sj(i11);
                }
            });
        }
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.widget.HiB hiB) {
        this.TEQ = hiB;
    }

    public boolean Sj(TEQ teq) {
        JSONObject jSONObjectOptJSONObject;
        this.Ym = null;
        int i11 = this.sP;
        if (i11 != -1 && i11 != 0) {
            try {
                JSONObject jSONObjectTKC = teq.TKC();
                if (jSONObjectTKC != null && (jSONObjectOptJSONObject = jSONObjectTKC.optJSONObject("related_dpa_click")) != null) {
                    boolean zOptBoolean = jSONObjectOptJSONObject.optBoolean("enableOpenExternalUrl");
                    int iOptInt = jSONObjectOptJSONObject.optInt("landingStyle");
                    if (zOptBoolean && iOptInt != -1) {
                        if (this.uvD != null) {
                            String strSj = com.bytedance.adsdk.ugeno.TKC.sP.Sj(jSONObjectOptJSONObject.optString("url"), this.uvD.optJSONObject(this.sP));
                            String strSj2 = com.bytedance.adsdk.ugeno.TKC.sP.Sj(jSONObjectOptJSONObject.optString("fallback_url"), this.uvD.optJSONObject(this.sP));
                            jSONObjectOptJSONObject.put("url", strSj);
                            jSONObjectOptJSONObject.put("fallback_url", strSj2);
                            Sj(jSONObjectOptJSONObject, this.uvD.optJSONObject(this.sP));
                        }
                        Sj(jSONObjectOptJSONObject, teq.Sj().Ym());
                        return true;
                    }
                    return false;
                }
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.sU.sP("UGenSwiperEvent", th2.getMessage());
            }
        }
        return false;
    }

    public void TKC() {
        int i11;
        com.bytedance.adsdk.ugeno.sP.TKC tkc = this.HiB;
        if (!(tkc instanceof com.bytedance.adsdk.ugeno.TKC) || (i11 = this.Sj) == -1) {
            return;
        }
        ((com.bytedance.adsdk.ugeno.TKC) tkc).Sj(i11 + 1);
    }

    public void sP() {
        int i11;
        com.bytedance.adsdk.ugeno.sP.TKC tkc = this.HiB;
        if (!(tkc instanceof com.bytedance.adsdk.ugeno.TKC) || (i11 = this.Sj) == -1) {
            return;
        }
        ((com.bytedance.adsdk.ugeno.TKC) tkc).Sj(i11 - 1);
    }
}
