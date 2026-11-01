package com.bytedance.sdk.openadsdk.core.model;

import android.text.TextUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Zq {
    private Sj Sj;

    public static class Sj {
        C0277Sj Sj;
        C0277Sj sP;

        /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.model.Zq$Sj$Sj, reason: collision with other inner class name */
        public static class C0277Sj {
            String Sj;

            public C0277Sj(JSONObject jSONObject) {
                if (jSONObject == null) {
                    return;
                }
                this.Sj = jSONObject.optString("entry");
            }

            public boolean Sj() {
                return !TextUtils.isEmpty(this.Sj);
            }
        }

        public Sj(JSONObject jSONObject) {
            if (jSONObject == null) {
                return;
            }
            if (jSONObject.has("vertical")) {
                this.Sj = new C0277Sj(jSONObject.optJSONObject("vertical"));
            }
            if (jSONObject.has("horizontal")) {
                this.sP = new C0277Sj(jSONObject.optJSONObject("horizontal"));
            }
        }

        public String Sj(boolean z10) {
            if (z10) {
                C0277Sj c0277Sj = this.Sj;
                return c0277Sj != null ? c0277Sj.Sj : "";
            }
            C0277Sj c0277Sj2 = this.sP;
            return c0277Sj2 != null ? c0277Sj2.Sj : "";
        }

        public boolean Sj() {
            C0277Sj c0277Sj = this.sP;
            if (c0277Sj != null && c0277Sj.Sj()) {
                return true;
            }
            C0277Sj c0277Sj2 = this.Sj;
            return c0277Sj2 != null && c0277Sj2.Sj();
        }
    }

    public Zq(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("easy_playable")) == null) {
            return;
        }
        this.Sj = new Sj(jSONObjectOptJSONObject.optJSONObject("components"));
    }

    public static boolean Sj(sU sUVar) {
        Zq zqTX;
        Sj sj2;
        return (sUVar == null || (zqTX = sUVar.tX()) == null || (sj2 = zqTX.Sj) == null || !sj2.Sj()) ? false : true;
    }

    public static Sj sP(sU sUVar) {
        Zq zqTX;
        if (sUVar == null || (zqTX = sUVar.tX()) == null) {
            return null;
        }
        return zqTX.Sj;
    }
}
