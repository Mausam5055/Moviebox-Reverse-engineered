package com.mbridge.msdk.mbbanner.common.communication;

import android.util.Base64;
import android.webkit.WebView;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {
    public static void a(WebView webView) {
        o0.b("BannerCallJS", "fireOnJSBridgeConnected");
        f.a().a(webView);
    }

    public static void a(WebView webView, float f11, float f12) {
        o0.b("BannerCallJS", "fireOnBannerWebViewShow");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("startX", f11);
            jSONObject.put("startY", f12);
            jSONObject.put("scale", t0.d(c.m().d()));
            f.a().a(webView, "webviewshow", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Throwable th2) {
            o0.b("BannerCallJS", "fireOnBannerWebViewShow", th2);
        }
    }

    public static void a(WebView webView, int i11, int i12) {
        o0.b("BannerCallJS", "fireOnBannerViewSizeChange");
        try {
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().c(webView, i11, i12);
        } catch (Throwable th2) {
            o0.b("BannerCallJS", "fireOnBannerViewSizeChange", th2);
        }
    }

    public static void a(WebView webView, int i11, int i12, int i13, int i14) {
        String str;
        o0.b("BannerCallJS", "transInfoForMraid");
        try {
            int i15 = c.m().d().getResources().getConfiguration().orientation;
            JSONObject jSONObject = new JSONObject();
            if (i15 == 2) {
                str = TmcStartParams.KEY_LANDSCAPE;
            } else {
                str = i15 == 1 ? "portrait" : "undefined";
            }
            jSONObject.put("orientation", str);
            jSONObject.put("locked", "true");
            float fN = k0.n(c.m().d());
            float fM = k0.m(c.m().d());
            HashMap mapV = k0.v(c.m().d());
            int iIntValue = ((Integer) mapV.get("width")).intValue();
            int iIntValue2 = ((Integer) mapV.get("height")).intValue();
            HashMap map = new HashMap();
            map.put("placementType", "inline");
            map.put("state", "default");
            map.put("viewable", "true");
            map.put("currentAppOrientation", jSONObject);
            float f11 = i11;
            float f12 = i12;
            float f13 = i13;
            float f14 = i14;
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(webView, f11, f12, f13, f14);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView, f11, f12, f13, f14);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().b(webView, fN, fM);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView, iIntValue, iIntValue2);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView, map);
            com.mbridge.msdk.mbsignalcommon.mraid.a.a().a(webView);
        } catch (Throwable th2) {
            o0.b("BannerCallJS", "transInfoForMraid", th2);
        }
    }
}
