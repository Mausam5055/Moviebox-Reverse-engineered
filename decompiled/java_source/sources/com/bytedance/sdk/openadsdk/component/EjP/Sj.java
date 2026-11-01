package com.bytedance.sdk.openadsdk.component.EjP;

import com.bytedance.sdk.openadsdk.Zq.Sj.EjP;
import com.bytedance.sdk.openadsdk.Zq.TKC;
import com.bytedance.sdk.openadsdk.Zq.sP;
import com.bytedance.sdk.openadsdk.core.model.ley;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.WMZ;
import com.transsion.push.PushConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    public static void Sj(final int i11, final int i12) {
        TKC.Sj("openad_load_ad_timeout", false, new sP() { // from class: com.bytedance.sdk.openadsdk.component.EjP.Sj.1
            @Override // com.bytedance.sdk.openadsdk.Zq.sP
            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("timeout_type", i11);
                jSONObject.put("user_timeout_time", i12);
                return EjP.sP().Sj("openad_load_ad_timeout").sP(jSONObject.toString());
            }
        });
    }

    public static void Sj(sU sUVar) {
        com.bytedance.sdk.openadsdk.EjP.TKC.EjP(sUVar, "cache_expire", (JSONObject) null);
    }

    public static void Sj(sU sUVar, int i11, int i12, float f11) {
        JSONObject jSONObject = new JSONObject();
        try {
            Sj(jSONObject, sUVar);
            jSONObject.put("openad_creative_type", sU.HiB(sUVar) ? "video_normal_ad" : "image_normal_ad");
            jSONObject.put("skip_time", i11);
            jSONObject.put("skip_show_time", i12);
            jSONObject.put("total_time", f11);
        } catch (JSONException e11) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAppOpenAdReport", "reportSkip json error", e11);
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, "skip", i11, jSONObject);
    }

    public static void Sj(sU sUVar, int i11, ley leyVar) {
        JSONObject jSONObject = new JSONObject();
        long jVS = 0;
        try {
            jSONObject.put("openad_creative_type", sU.HiB(sUVar) ? "video_normal_ad" : "image_normal_ad");
            jSONObject.put("open_ad_cache_type", i11);
            if (leyVar != null) {
                leyVar.sP(WMZ.sP());
                Sj(jSONObject, sUVar);
                jSONObject.put("client_start_time", leyVar.sP());
                jSONObject.put("sever_time", leyVar.EjP());
                jSONObject.put("network_time", leyVar.TKC());
                jSONObject.put("client_end_time", leyVar.HiB());
                jSONObject.put("download_resource_duration", leyVar.Jcg());
                jSONObject.put("resource_source", leyVar.Dq());
                jSONObject.put("is_bidding", leyVar.Sj ? 1 : 0);
                if (leyVar.Sj) {
                    jSONObject.put("load_wait_time", leyVar.sP);
                }
                jVS = leyVar.vS();
            }
        } catch (JSONException e11) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAppOpenAdReport", "reportLoadNetDuration json error", e11);
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, "load_net_duration", jVS, jSONObject);
    }

    public static void Sj(sU sUVar, long j11) {
        JSONObject jSONObject = new JSONObject();
        try {
            Sj(jSONObject, sUVar);
            jSONObject.put("openad_creative_type", sU.HiB(sUVar) ? "video_normal_ad" : "image_normal_ad");
        } catch (JSONException unused) {
            com.bytedance.sdk.component.utils.sU.sP("TTAppOpenAdReport", "reportLoadCacheDuration json error");
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, "load_cache_duration", j11, jSONObject);
    }

    public static void Sj(sU sUVar, long j11, float f11, boolean z10) {
        JSONObject jSONObject = new JSONObject();
        try {
            Sj(jSONObject, sUVar);
            jSONObject.put("openad_creative_type", sU.HiB(sUVar) ? "video_normal_ad" : "image_normal_ad");
            if (z10) {
                double d11 = f11;
                jSONObject.put("video_duration", d11);
                jSONObject.put("video_percent", (int) (((j11 * 1.0d) / 10.0d) / d11));
            } else {
                jSONObject.put("image_duration", f11);
            }
        } catch (JSONException e11) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAppOpenAdReport", "reportDestroy json error", e11);
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.EjP(sUVar, PushConstants.PROVIDER_FIELD_DESTROY, jSONObject);
    }

    public static void Sj(sU sUVar, long j11, boolean z10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("order", z10 ? 1 : 2);
        } catch (JSONException unused) {
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, "download_image_duration", j11, jSONObject);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x000e  */
    private static void Sj(JSONObject jSONObject, sU sUVar) {
        int i11;
        if (sUVar != null) {
            try {
                if (sUVar.yfI()) {
                    i11 = 1;
                } else {
                    i11 = 0;
                }
            } catch (JSONException e11) {
                com.bytedance.sdk.component.utils.sU.sP("TTAppOpenAdReport", e11.getMessage());
                return;
            }
        } else {
            i11 = 0;
        }
        jSONObject.put("is_icon_only", i11);
    }

    public static void sP(sU sUVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("openad_creative_type", sU.HiB(sUVar) ? "video_normal_ad" : "image_normal_ad");
        } catch (JSONException e11) {
            com.bytedance.sdk.component.utils.sU.Sj("TTAppOpenAdReport", "reportCacheLoss json error", e11);
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.EjP(sUVar, "cache_loss", jSONObject);
    }

    public static void sP(sU sUVar, long j11, boolean z10) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("size", sUVar.UHs().g());
            jSONObject.put("video_duration", sUVar.UHs().K());
            jSONObject.put("order", z10 ? 1 : 2);
        } catch (JSONException unused) {
        }
        com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, "download_video_duration", j11, jSONObject);
    }
}
