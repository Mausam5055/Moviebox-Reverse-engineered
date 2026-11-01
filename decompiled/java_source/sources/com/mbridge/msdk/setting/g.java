package com.mbridge.msdk.setting;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class g extends b {
    public static g C(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return b.b(new JSONObject(str));
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                o0.b("Setting", "parseSetting", e11);
            }
            return null;
        }
    }

    public String L0() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("cc", k());
            jSONObject.put("cfc", m());
            jSONObject.put("cfb", B0());
            jSONObject.put(CampaignEx.JSON_KEY_PLCT, Z());
            jSONObject.put("awct", i());
            jSONObject.put("rurl", I0());
            jSONObject.put("ujds", J0());
            jSONObject.put(CampaignEx.JSON_KEY_PLCTB, a0());
            jSONObject.put("tcto", o0());
            jSONObject.put("mv_wildcard", P());
            jSONObject.put("is_startup_crashsystem", E());
            jSONObject.put("sfct", l0());
            jSONObject.put("pcrn", W());
            jSONObject.put("adct", e());
            jSONObject.put("atrqt", h());
            jSONObject.put("omsdkjs_url", U());
            jSONObject.put("mcs", N());
            jSONObject.put("GDPR_area", E0());
            jSONObject.put("alrbs", f());
            jSONObject.put("ct", t());
            jSONObject.put("isDefault", D());
            jSONObject.put("st_net", n0());
            jSONObject.put("vtag", v0());
            return jSONObject.toString();
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                o0.b("Setting", "toJSON", th2);
            }
            return null;
        }
    }
}
