package com.bytedance.sdk.openadsdk.TEQ;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.Jcg;
import com.bytedance.sdk.openadsdk.RiZ.Sj.Sj.vS;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Sj implements TKC {
    private final sU Sj;
    private final Map<String, vS> TKC = new HashMap();
    private final sP sP;

    private Sj(sP sPVar, sU sUVar) {
        this.sP = sPVar;
        this.Sj = sUVar;
    }

    private vS Sj(@NonNull Context context, @NonNull sU sUVar, @NonNull JSONObject jSONObject, @NonNull String str, boolean z10) {
        vS vSVarSj = Jcg.Sj(context, sUVar, str);
        vSVarSj.Sj(true);
        return vSVarSj;
    }

    public static Sj Sj(sP sPVar, sU sUVar) {
        return new Sj(sPVar, sUVar);
    }

    private sU Sj(JSONObject jSONObject, String str) {
        String strSj;
        if (jSONObject == null) {
            return null;
        }
        sU sUVarVS = sU.vS();
        sUVarVS.EjP(jSONObject);
        if (!TextUtils.isEmpty(str)) {
            sUVarVS.sU(str);
        }
        if (this.Sj == null) {
            return sUVarVS;
        }
        String strSj2 = sUVarVS.tz() != null ? sUVarVS.tz().Sj() : null;
        if (TextUtils.isEmpty(strSj2)) {
            return this.Sj;
        }
        com.bytedance.sdk.openadsdk.core.model.EjP ejPTz = this.Sj.tz();
        if (ejPTz != null && strSj2.equals(ejPTz.Sj())) {
            return this.Sj;
        }
        JSONObject jSONObject2 = new JSONObject();
        if (ejPTz != null) {
            try {
                strSj = ejPTz.Sj();
            } catch (JSONException unused) {
            }
        } else {
            strSj = "null";
        }
        jSONObject2.put("lu", strSj);
        jSONObject2.put("ju", strSj2);
        sU sUVar = this.Sj;
        com.bytedance.sdk.openadsdk.core.EjP.Sj(sUVar, Mts.Sj(sUVar), -5, jSONObject2);
        if (ejPTz != null && strSj2.contains("play.google.com/store") && !strSj2.contains("referrer")) {
            sUVarVS.tz().Sj(ejPTz.Sj());
        }
        return sUVarVS;
    }

    private void Sj(Context context, sU sUVar, JSONObject jSONObject, int i11, boolean z10) {
        if (context == null || sUVar == null || sUVar.tz() == null || jSONObject == null || this.sP == null || this.TKC.get(sUVar.tz().Sj()) != null) {
            return;
        }
        String strSP = Mts.sP(i11);
        if (TextUtils.isEmpty(strSP)) {
            return;
        }
        this.TKC.put(sUVar.tz().Sj(), Sj(context, sUVar, jSONObject, strSP, z10));
    }

    private void Sj(sU sUVar, JSONObject jSONObject) {
        if (this.sP == null || sUVar == null || sUVar.tz() == null) {
            return;
        }
        String strSj = sUVar.tz().Sj();
        if (this.TKC.containsKey(strSj)) {
            this.TKC.remove(strSj);
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("message", NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS);
                jSONObject2.put(NotificationCompat.CATEGORY_STATUS, "unsubscribed");
                jSONObject2.put("appad", jSONObject);
                this.sP.Sj("app_ad_event", jSONObject2);
            } catch (JSONException e11) {
                com.bytedance.sdk.component.utils.sU.sP("JsAppAdDownloadManager", e11.getMessage());
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TEQ.TKC
    public void Sj() {
        this.TKC.clear();
    }

    @Override // com.bytedance.sdk.openadsdk.TEQ.TKC
    public void Sj(Context context, JSONObject jSONObject, String str) {
        sU sUVar;
        if (context == null || (sUVar = this.Sj) == null) {
            return;
        }
        Jcg.Sj(context, sUVar, str).EjP();
    }

    @Override // com.bytedance.sdk.openadsdk.TEQ.TKC
    public void Sj(Context context, JSONObject jSONObject, String str, int i11, boolean z10) {
        JSONObject jSONObjectOptJSONObject;
        if (context == null || jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("data")) == null) {
            return;
        }
        Sj(context, Sj(jSONObjectOptJSONObject, str), jSONObjectOptJSONObject, i11, z10);
    }

    @Override // com.bytedance.sdk.openadsdk.TEQ.TKC
    public void Sj(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("data")) == null) {
            return;
        }
        Sj(Sj(jSONObjectOptJSONObject, (String) null), jSONObjectOptJSONObject);
    }
}
