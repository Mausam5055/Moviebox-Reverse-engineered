package com.bytedance.sdk.openadsdk.Ym.Sj;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.Sj.dNu;
import com.bytedance.sdk.openadsdk.core.Yf;
import com.cloud.tmc.kernel.constants.TmcConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg extends com.bytedance.sdk.component.Sj.HiB<JSONObject, JSONObject> {
    private final String Sj;
    private final Yf sP;

    public Jcg(String str, Yf yf2) {
        this.sP = yf2;
        this.Sj = str;
    }

    public static void Sj(dNu dnu, Yf yf2) {
        dnu.Sj(TmcConstants.EXTRA_APPINFO, new Jcg(TmcConstants.EXTRA_APPINFO, yf2));
        dnu.Sj("adInfo", new Jcg("adInfo", yf2));
        dnu.Sj("sendLog", new Jcg("sendLog", yf2));
        dnu.Sj("playable_style", new Jcg("playable_style", yf2));
        dnu.Sj("getTemplateInfo", new Jcg("getTemplateInfo", yf2));
        dnu.Sj("getTeMaiAds", new Jcg("getTeMaiAds", yf2));
        dnu.Sj("isViewable", new Jcg("isViewable", yf2));
        dnu.Sj("getScreenSize", new Jcg("getScreenSize", yf2));
        dnu.Sj("getCloseButtonInfo", new Jcg("getCloseButtonInfo", yf2));
        dnu.Sj("getVolume", new Jcg("getVolume", yf2));
        dnu.Sj("removeLoading", new Jcg("removeLoading", yf2));
        dnu.Sj("sendReward", new Jcg("sendReward", yf2));
        dnu.Sj("subscribe_app_ad", new Jcg("subscribe_app_ad", yf2));
        dnu.Sj("download_app_ad", new Jcg("download_app_ad", yf2));
        dnu.Sj("cancel_download_app_ad", new Jcg("cancel_download_app_ad", yf2));
        dnu.Sj("unsubscribe_app_ad", new Jcg("unsubscribe_app_ad", yf2));
        dnu.Sj("landscape_click", new Jcg("landscape_click", yf2));
        dnu.Sj("clickEvent", new Jcg("clickEvent", yf2));
        dnu.Sj("renderDidFinish", new Jcg("renderDidFinish", yf2));
        dnu.Sj("dynamicTrack", new Jcg("dynamicTrack", yf2));
        dnu.Sj("skipVideo", new Jcg("skipVideo", yf2));
        dnu.Sj("muteVideo", new Jcg("muteVideo", yf2));
        dnu.Sj("changeVideoState", new Jcg("changeVideoState", yf2));
        dnu.Sj("getCurrentVideoState", new Jcg("getCurrentVideoState", yf2));
        dnu.Sj("send_temai_product_ids", new Jcg("send_temai_product_ids", yf2));
        dnu.Sj("getMaterialMeta", new Jcg("getMaterialMeta", yf2));
        dnu.Sj("endcard_load", new Jcg("endcard_load", yf2));
        dnu.Sj("pauseWebView", new Jcg("pauseWebView", yf2));
        dnu.Sj("pauseWebViewTimers", new Jcg("pauseWebViewTimers", yf2));
        dnu.Sj("webview_time_track", new Jcg("webview_time_track", yf2));
        dnu.Sj("openPrivacy", new Jcg("openPrivacy", yf2));
        dnu.Sj("openAdLandPageLinks", new Jcg("openAdLandPageLinks", yf2));
        dnu.Sj("getNativeSiteCustomData", new Jcg("getNativeSiteCustomData", yf2));
        dnu.Sj("close", new Jcg("close", yf2));
    }

    @Override // com.bytedance.sdk.component.Sj.HiB
    @Nullable
    public JSONObject Sj(@NonNull JSONObject jSONObject, @NonNull com.bytedance.sdk.component.Sj.vS vSVar) throws Exception {
        Yf.sP sPVar = new Yf.sP();
        sPVar.Sj = "call";
        sPVar.TKC = this.Sj;
        sPVar.EjP = jSONObject;
        return this.sP.Sj(sPVar, 3);
    }
}
