package com.bytedance.sdk.openadsdk.core.Dq;

import android.text.TextUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Ym {
    private static int Sj(String str) {
        str.hashCode();
        switch (str) {
            case "banner_ad":
                return 1;
            case "rewarded_video":
                return 7;
            case "open_ad":
                return 3;
            case "fullscreen_interstitial_ad":
                return 8;
            case "interaction":
                return 2;
            default:
                return 5;
        }
    }

    public static void Sj(String str, int i11, String str2, String str3, String str4, com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        if (TextUtils.isEmpty(str2)) {
            str2 = com.bytedance.sdk.openadsdk.core.Dq.Sj(i11);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("render_source", str);
            com.bytedance.sdk.openadsdk.core.model.sU.Sj sjXhi = sUVar.xhi();
            if (sjXhi != null) {
                jSONObject.put("tpl_id", sjXhi.vS());
                if ("Web".equals(str)) {
                    if (sjXhi.sef()) {
                        jSONObject.put("engine_version", "v3");
                    } else {
                        jSONObject.put("engine_version", "v1");
                    }
                }
            } else if (sUVar.ndK() != null) {
                jSONObject.put("tpl_id", sUVar.ndK().Sj());
                if ("Web".equals(str)) {
                    jSONObject.put("engine_version", "v3");
                }
            }
        } catch (Exception unused) {
        }
        com.bytedance.sdk.openadsdk.Zq.TKC.Sj().Sj(com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj(Sj(str3)).TKC(str4).HiB(sUVar != null ? sUVar.cKW() : "").sP(i11).sP(jSONObject.toString()).vS(str2));
    }
}
