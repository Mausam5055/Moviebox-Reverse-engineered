package com.bytedance.sdk.openadsdk.core.model;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class sP {
    private String EjP;
    private boolean HiB;
    private String Sj;
    private String TKC;
    private String sP;

    public String EjP() {
        return this.EjP;
    }

    public boolean HiB() {
        return this.HiB;
    }

    public String Sj() {
        return this.Sj;
    }

    public void Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.Sj = jSONObject.optString(RewardPlus.ICON);
        this.sP = jSONObject.optString(MimeTypes.BASE_TYPE_TEXT);
        this.TKC = jSONObject.optString(CampaignEx.JSON_KEY_PRIVACY_URL);
        this.EjP = jSONObject.optString("privacy_title");
    }

    public void Sj(boolean z10) {
        this.HiB = z10;
    }

    public String TKC() {
        return this.TKC;
    }

    public String sP() {
        return this.sP;
    }

    public JSONObject vS() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(CampaignEx.JSON_KEY_PRIVACY_URL, this.TKC);
            jSONObject.put("privacy_title", this.EjP);
            jSONObject.put(MimeTypes.BASE_TYPE_TEXT, this.sP);
            jSONObject.put(RewardPlus.ICON, this.Sj);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
