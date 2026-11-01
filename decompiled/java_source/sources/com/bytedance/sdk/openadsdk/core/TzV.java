package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class TzV {
    public static void Sj(Context context, boolean z10, JSONObject jSONObject, com.bytedance.sdk.openadsdk.core.model.sU sUVar, String str, int i11, WebView webView, com.bytedance.sdk.openadsdk.core.widget.HiB hiB) {
        int iOptInt = jSONObject.optInt("landingStyle");
        String strOptString = jSONObject.optString("url");
        String strOptString2 = jSONObject.optString("fallback_url");
        try {
            jSONObject.put("is_activity", z10);
        } catch (JSONException unused) {
        }
        boolean z11 = true;
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, str, 1, jSONObject);
        if (TextUtils.isEmpty(strOptString)) {
            return;
        }
        if (iOptInt == 0) {
            if (webView != null) {
                webView.loadUrl(strOptString);
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, str, 2, (JSONObject) null);
            } else {
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, str, -1, (JSONObject) null);
            }
        } else if (iOptInt == 1 || iOptInt == 8) {
            com.bytedance.sdk.openadsdk.Zq.Sj.sP sPVar = new com.bytedance.sdk.openadsdk.Zq.Sj.sP();
            sPVar.Sj(com.bytedance.sdk.openadsdk.EjP.sP.Sj.sP);
            sPVar.Sj(sUVar);
            sPVar.sP(str);
            sPVar.Sj(-1);
            sPVar.Sj(false);
            sPVar.sP(sUVar.sdp());
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sPVar);
            com.bytedance.sdk.openadsdk.utils.dx.Sj(context, strOptString, sUVar, com.bytedance.sdk.openadsdk.EjP.sP.Sj.sP);
        } else if (iOptInt == 2) {
            if (!com.bytedance.sdk.openadsdk.utils.dx.sP(context, strOptString, sUVar, str)) {
                com.bytedance.sdk.openadsdk.Zq.Sj.sP sPVar2 = new com.bytedance.sdk.openadsdk.Zq.Sj.sP();
                sPVar2.Sj(com.bytedance.sdk.openadsdk.EjP.sP.Sj.sP);
                sPVar2.Sj(sUVar);
                sPVar2.sP(str);
                sPVar2.Sj(-1);
                sPVar2.Sj(false);
                sPVar2.sP(sUVar.sdp());
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sPVar2);
                HashMap map = new HashMap();
                map.put("deeplink_url", strOptString);
                map.put("fallback_url", strOptString2);
                map.put("jsb_deeplink", 1);
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, str, "open_fallback_url", map);
                com.bytedance.sdk.openadsdk.utils.dx.Sj(context, strOptString2, sUVar, com.bytedance.sdk.openadsdk.EjP.sP.Sj.sP);
            }
        } else if (iOptInt != 3) {
            z11 = false;
        } else if (fF.sP(context, strOptString, sUVar, i11, str, false)) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, str, 3, (JSONObject) null);
        } else {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, str, -2, (JSONObject) null);
        }
        if (hiB == null || !z11) {
            return;
        }
        hiB.Sj();
    }
}
