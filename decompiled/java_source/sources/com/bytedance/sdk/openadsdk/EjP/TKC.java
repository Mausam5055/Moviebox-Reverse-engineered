package com.bytedance.sdk.openadsdk.EjP;

import android.app.Application;
import android.text.TextUtils;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ib;
import com.bytedance.sdk.openadsdk.core.model.LqL;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.bytedance.sdk.openadsdk.utils.WMZ;
import com.cloud.tmc.ad.utils.CommonLogUtil;
import com.cloud.tmc.integration.ui.p001native.NativeImgComponent;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.pgl.ssdk.ces.out.DungeonFlag;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TKC {

    public static class Sj {
        public static void Sj(final int i11, final int i12, final int i13, final int i14, final sU sUVar, String str, final int i15) {
            if (str == null || TextUtils.isEmpty(sUVar.eMB())) {
                return;
            }
            TKC.Sj(System.currentTimeMillis(), sUVar, str, "landing_page_resource_detail", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.Sj.4
                @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
                public JSONObject Sj() {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("next_url", sUVar.Chv());
                        jSONObject2.put("channel_name", sUVar.eMB());
                        jSONObject2.put("preload_status", i11 <= 0 ? 0 : 2);
                        jSONObject2.put("first_page", i15);
                        jSONObject2.put("preload_h5_type", sUVar.rd());
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("channel_response", i11);
                        jSONObject3.put("failResourceCount", i12);
                        jSONObject3.put("successCount", i13);
                        jSONObject3.put("failCount", i14);
                        jSONObject2.put("resource_info", jSONObject3);
                        jSONObject.put("ad_extra_data", jSONObject2.toString());
                    } catch (Throwable unused) {
                    }
                    return jSONObject;
                }
            });
        }

        public static void Sj(final int i11, final int i12, sU sUVar) {
            String strSj = Mts.Sj(sUVar);
            if (strSj == null) {
                return;
            }
            TKC.Sj(System.currentTimeMillis(), sUVar, strSj + "_landingpage", "local_res_hit_rate", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.Sj.2
                @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
                public JSONObject Sj() {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("all_times", i12);
                        jSONObject2.put("hit_times", i11);
                        jSONObject.put("ad_extra_data", jSONObject2.toString());
                    } catch (Throwable unused) {
                    }
                    return jSONObject;
                }
            });
        }

        public static void Sj(final long j11, final sU sUVar, String str, final ILoader iLoader, final String str2) {
            if (str == null) {
                return;
            }
            TKC.Sj(System.currentTimeMillis(), sUVar, str, "landingpage_init", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.Sj.3
                @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
                public JSONObject Sj() {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        int iSj = com.bytedance.sdk.openadsdk.Jcg.sP.Sj().Sj(iLoader, str2);
                        JSONObject jSONObject2 = new JSONObject();
                        JSONObject jSONObject3 = new JSONObject();
                        int i11 = 0;
                        jSONObject3.put(sU.TKC, sUVar.IOh() ? 1 : 0);
                        jSONObject2.put("pag_json_data", jSONObject3.toString());
                        jSONObject2.put("url", sUVar.Chv());
                        jSONObject2.put("channel_name", sUVar.eMB());
                        if (!TextUtils.isEmpty(sUVar.eMB()) && iSj > 0) {
                            i11 = 1;
                        }
                        jSONObject2.put("interceptor_status", i11);
                        JSONObject jSONObject4 = new JSONObject();
                        jSONObject4.put("resource_count", iSj);
                        jSONObject2.put("resource_info", jSONObject4);
                        jSONObject.put("ad_extra_data", jSONObject2.toString());
                        jSONObject.put("duration", j11);
                    } catch (Throwable unused) {
                    }
                    return jSONObject;
                }
            });
        }

        public static void Sj(String str, final JSONObject jSONObject, sU sUVar) {
            String strSj = Mts.Sj(sUVar);
            if (strSj == null) {
                return;
            }
            TKC.Sj(System.currentTimeMillis(), sUVar, strSj + "_landingpage", str, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.Sj.1
                @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
                public JSONObject Sj() {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put("ad_extra_data", jSONObject.toString());
                    } catch (Throwable unused) {
                    }
                    return jSONObject2;
                }
            });
        }
    }

    public static void EjP(sU sUVar, final com.bytedance.sdk.openadsdk.Zq.Sj.Sj sj2, final String str) {
        Sj(System.currentTimeMillis(), sUVar, str, "web_behavior_scroll", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.30
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("arbi_current_url", sj2.TKC());
                    jSONObject2.put("current_url_index", sj2.EjP());
                    jSONObject2.put("trigger_scroll_x", sj2.uA());
                    jSONObject2.put("trigger_scroll_y", sj2.TEQ());
                    jSONObject2.put("arbi_offset_y", sj2.Ym());
                    jSONObject2.put("scroll_type", sj2.aa());
                    jSONObject2.put("scroll_duration", sj2.Fmk());
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP("TTAD.AdEvent", "onWebBehaviorScroll", th2.getMessage());
                }
                return jSONObject;
            }
        });
    }

    public static void EjP(final sU sUVar, final String str, final int i11) {
        Sj(System.currentTimeMillis(), sUVar, str, "material_status", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.13
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put(TrackingKey.TRIGGER_TYPE, i11);
                    jSONObject3.put("image_mode", sUVar.HcZ());
                    jSONObject.put("pag_json_data", jSONObject3.toString());
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                    jSONObject.toString();
                } catch (Throwable unused) {
                }
                return jSONObject2;
            }
        });
    }

    @DungeonFlag
    private static void EjP(final sU sUVar, final String str, final String str2, final JSONObject jSONObject) {
        if (sUVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (sUVar.xH() && PushConstants.PUSH_SERVICE_TYPE_SHOW.equals(str)) {
            return;
        }
        if (PushConstants.PUSH_SERVICE_TYPE_SHOW.equals(str)) {
            sUVar.Dq(true);
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        Sj(new com.bytedance.sdk.component.Dq.Dq("onShow") { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.49
            @Override // java.lang.Runnable
            public void run() {
                final String strSj;
                if (com.bytedance.sdk.openadsdk.core.dNu.EjP().aNB()) {
                    strSj = com.bytedance.sdk.openadsdk.core.uA.Sj.Sj.Sj((Application) com.bytedance.sdk.openadsdk.core.dNu.Sj()).Sj(str2, DeviceUtils.Sj(), sUVar.If());
                } else {
                    strSj = "none";
                }
                TKC.Sj(jCurrentTimeMillis, sUVar, str2, str, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.49.1
                    @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
                    public JSONObject Sj() {
                        Object obj;
                        try {
                            ib.sP(sUVar);
                            JSONObject jSONObject2 = new JSONObject();
                            try {
                                AnonymousClass49 anonymousClass49 = AnonymousClass49.this;
                                JSONObject jSONObject3 = jSONObject;
                                if (jSONObject3 != null) {
                                    jSONObject3.put("interaction_method", sUVar.zR());
                                    AnonymousClass49 anonymousClass410 = AnonymousClass49.this;
                                    jSONObject.put("real_interaction_method", sUVar.dx());
                                    jSONObject.put("video_skip_result", com.bytedance.sdk.openadsdk.core.dNu.EjP().Fmk(String.valueOf(sUVar.If())));
                                    jSONObject.put("au_show", strSj);
                                    AnonymousClass49 anonymousClass411 = AnonymousClass49.this;
                                    com.bytedance.sdk.openadsdk.sU.Sj.Sj.Sj(sUVar, jSONObject);
                                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                                } else {
                                    JSONObject jSONObject4 = new JSONObject();
                                    jSONObject4.put("interaction_method", sUVar.zR());
                                    jSONObject4.put("real_interaction_method", sUVar.dx());
                                    jSONObject4.put("video_skip_result", com.bytedance.sdk.openadsdk.core.dNu.EjP().Fmk(String.valueOf(sUVar.If())));
                                    jSONObject4.put("au_show", strSj);
                                    com.bytedance.sdk.openadsdk.sU.Sj.Sj.Sj(sUVar, jSONObject4);
                                    jSONObject2.put("ad_extra_data", jSONObject4.toString());
                                }
                                jSONObject2.putOpt("log_extra", sUVar.mZN());
                                float fFloatValue = Double.valueOf((System.currentTimeMillis() / 1000) - sUVar.cra()).floatValue();
                                if (fFloatValue <= 0.0f) {
                                    fFloatValue = 0.0f;
                                }
                                jSONObject2.putOpt(TrackingKey.SHOW_TIME, Float.valueOf(fFloatValue));
                                jSONObject2.putOpt("ua_policy", Integer.valueOf(sUVar.HpB()));
                                String strWMZ = sUVar.WMZ();
                                if (!TextUtils.isEmpty(strWMZ) && !TextUtils.isEmpty(strWMZ)) {
                                    try {
                                        jSONObject2.put("ttdsp_price", Math.round(Float.parseFloat(strWMZ) * 100000.0f));
                                    } catch (Throwable th2) {
                                        jSONObject2.put("ttdsp_price", 0);
                                        com.bytedance.sdk.component.utils.sU.sP("TTAD.AdEvent", th2.getMessage());
                                    }
                                }
                                if (sUVar.QZ() == null) {
                                    return jSONObject2;
                                }
                                try {
                                    Object obj2 = sUVar.QZ().get(TTAdConstant.SDK_BIDDING_TYPE);
                                    if (obj2 == null || Integer.parseInt(obj2.toString()) != 2 || (obj = sUVar.QZ().get(BidResponsed.KEY_PRICE)) == null) {
                                        return jSONObject2;
                                    }
                                    jSONObject2.put("ttdsp_price", Math.round(Double.parseDouble(obj.toString()) * 100000.0d));
                                    return jSONObject2;
                                } catch (Throwable th3) {
                                    com.bytedance.sdk.component.utils.sU.Sj("TTAD.AdEvent", "client bidding price error: ", th3);
                                    return jSONObject2;
                                }
                            } catch (Exception unused) {
                                return jSONObject2;
                            }
                        } catch (Exception unused2) {
                            return null;
                        }
                    }
                });
                if (PushConstants.PUSH_SERVICE_TYPE_SHOW.equals(str)) {
                    if (!sUVar.Aw()) {
                        if (sUVar.Fqk()) {
                            com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.Sj(sUVar.cX(), new com.bytedance.sdk.openadsdk.core.Ym.sP.TKC.sP("show_urls", sUVar));
                        } else {
                            TKC.Sj(sUVar);
                        }
                    }
                    JSONObject jSONObject2 = jSONObject;
                    if (jSONObject2 != null) {
                        int iOptInt = jSONObject2.optInt("dynamic_show_type");
                        if (sUVar.nbp() == 1 && (iOptInt == 7 || iOptInt == 10)) {
                            com.bytedance.sdk.component.utils.uA.Sj().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.49.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    JSONObject jSONObject3 = new JSONObject();
                                    try {
                                        jSONObject3.put("auto_click", true);
                                        AnonymousClass49 anonymousClass49 = AnonymousClass49.this;
                                        TKC.sP(sUVar, str2, "click", jSONObject3);
                                    } catch (Exception unused) {
                                        com.bytedance.sdk.component.utils.sU.sP("TTAD.AdEvent", "ugen click exception");
                                    }
                                }
                            }, com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().tz());
                        }
                    }
                    com.bytedance.sdk.openadsdk.core.uA.TKC.Sj(sUVar, strSj);
                }
            }
        });
    }

    public static void EjP(sU sUVar, String str, JSONObject jSONObject) {
        if (sUVar == null) {
            return;
        }
        Sj(sUVar, str, -1L, jSONObject);
    }

    public static void HiB(sU sUVar, final com.bytedance.sdk.openadsdk.Zq.Sj.Sj sj2, final String str) {
        Sj(System.currentTimeMillis(), sUVar, str, "web_behavior_click", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.31
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("arbi_current_url", sj2.TKC());
                    jSONObject2.put("current_url_index", sj2.EjP());
                    jSONObject2.put("arbi_start_x", sj2.HiB());
                    jSONObject2.put("arbi_start_y", sj2.vS());
                    jSONObject2.put("click_duration", sj2.Jcg());
                    jSONObject2.put("is_trigger_jump", sj2.Dq());
                    jSONObject2.put("click_type", String.valueOf(sj2.RiZ()));
                    if (sj2.Sj() != -1) {
                        JSONObject jSONObject3 = new JSONObject();
                        jSONObject3.put("hit_type", sj2.Sj());
                        jSONObject3.put("hit_extra", sj2.sP());
                        jSONObject2.put("pag_json_data", jSONObject3.toString());
                    }
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP("TTAD.AdEvent", "onWebBehaviorClick", th2.getMessage());
                }
                return jSONObject;
            }
        });
    }

    public static void HiB(sU sUVar, String str, JSONObject jSONObject) {
        EjP(sUVar, "activity_recreate", str, jSONObject);
    }

    public static void Sj() {
        try {
            Class.forName(TKC.class.getName());
        } catch (ClassNotFoundException unused) {
        }
    }

    public static void Sj(int i11, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("ad_show_order", i11);
            jSONObject.put("pag_json_data", jSONObject2.toString());
        } catch (Throwable unused) {
        }
    }

    public static void Sj(final long j11, final sU sUVar, String str) {
        if (sUVar == null || !sU.TKC(sUVar) || sUVar.cF() == null) {
            return;
        }
        Sj(System.currentTimeMillis(), sUVar, str, "endcard_close", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.32
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt("url", sUVar.cF().TKC());
                    jSONObject2.putOpt("id", sUVar.cF().Sj());
                    jSONObject2.putOpt("md5", sUVar.cF().sP());
                    if (sUVar.UHs() != null) {
                        jSONObject2.putOpt("render_type", Integer.valueOf(sUVar.UHs().c()));
                    }
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                    jSONObject.put("duration", j11);
                } catch (Exception e11) {
                    com.bytedance.sdk.component.utils.sU.sP(e11.getMessage(), new Object[0]);
                }
                return jSONObject;
            }
        });
    }

    @DungeonFlag
    public static void Sj(long j11, sU sUVar, String str, String str2) {
        Sj(j11, sUVar, str, str2, (com.bytedance.sdk.openadsdk.Zq.TKC.Sj) null);
    }

    @DungeonFlag
    public static void Sj(final long j11, final sU sUVar, final String str, final String str2, final com.bytedance.sdk.openadsdk.Zq.TKC.Sj sj2) {
        if (sUVar == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || Sj(sUVar.RqK(), str2)) {
            return;
        }
        Sj(new com.bytedance.sdk.component.Dq.Dq(str2) { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.23
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject;
                try {
                    com.bytedance.sdk.openadsdk.Zq.TKC.Sj sj3 = sj2;
                    if (sj3 != null) {
                        jSONObject = sj3.Sj();
                        if (jSONObject == null) {
                            try {
                                jSONObject = new JSONObject();
                            } catch (Exception unused) {
                            }
                        }
                    } else {
                        jSONObject = new JSONObject();
                    }
                    jSONObject.putOpt("log_extra", sUVar.mZN());
                    jSONObject.putOpt("ua_policy", Integer.valueOf(sUVar.HpB()));
                } catch (Exception unused2) {
                    jSONObject = null;
                }
                new com.bytedance.sdk.openadsdk.EjP.Sj.C0234Sj(j11, sUVar).sP(str).TKC(str2).HiB(sUVar.aZ()).Dq(sUVar.Ci()).Sj(sUVar.HS()).Sj(jSONObject).Jcg(sUVar.cKW()).Sj((com.bytedance.sdk.openadsdk.EjP.sP.Sj) null);
            }
        });
    }

    public static void Sj(long j11, sU sUVar, String str, String str2, final JSONObject jSONObject, Jcg jcg, com.bytedance.sdk.openadsdk.EjP.sP.Sj sj2) {
        Sj(j11, sUVar, str, str2, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.48
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                return jSONObject;
            }
        });
    }

    public static void Sj(final com.bytedance.sdk.component.Dq.Dq dq2) {
        if (dq2 == null) {
            return;
        }
        if (JcM.vS()) {
            com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.42
                @Override // java.lang.Runnable
                public void run() {
                    JcM.sP(dq2, 10);
                }
            });
        } else if (JcM.Jcg()) {
            dq2.run();
        } else {
            JcM.sP(dq2, 10);
        }
    }

    public static void Sj(final com.bytedance.sdk.openadsdk.Zq.Sj.sP sPVar) {
        if (sPVar == null || sPVar.sP() == null) {
            return;
        }
        final sU sUVarSP = sPVar.sP();
        final int iSdp = sUVarSP.sdp();
        if (iSdp == 2 || iSdp == 8 || (Mts.EjP(sUVarSP) && sP.Sj.EjP.equals(sPVar.Sj()))) {
            Sj(System.currentTimeMillis(), sUVarSP, sPVar.TKC(), "open_browser", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.43
                @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
                public JSONObject Sj() {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        int iEjP = sPVar.EjP();
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("count", Mts.sef(com.bytedance.sdk.openadsdk.core.dNu.Sj()));
                        jSONObject2.put("interceptor", iEjP);
                        jSONObject2.put(NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, sPVar.HiB());
                        jSONObject2.put("link", sPVar.Sj());
                        jSONObject2.put("interaction_type", iSdp);
                        jSONObject2.put("real_interaction_type", sPVar.Jcg());
                        if (sPVar.EjP() == 9) {
                            jSONObject2.put("is_act_signals_api_available", sPVar.Dq());
                            jSONObject2.put("is_act_signals_callback", sPVar.uA());
                        }
                        if (!TextUtils.isEmpty(sPVar.vS())) {
                            jSONObject2.put("exception_msg", sPVar.vS());
                        }
                        if (iEjP == 2 || iEjP == 5) {
                            jSONObject2.put("meta", sUVarSP.SP().toString());
                        }
                        jSONObject.put("ad_extra_data", jSONObject2.toString());
                    } catch (Exception e11) {
                        com.bytedance.sdk.component.utils.sU.sP("TTAD.AdEvent", e11.getMessage());
                    }
                    return jSONObject;
                }
            });
        }
    }

    public static void Sj(sU sUVar) {
        if (TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.aa.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj()))) {
            return;
        }
        com.bytedance.sdk.openadsdk.EjP.Sj.EjP.Sj(com.bytedance.sdk.openadsdk.kF.Sj.Sj(sUVar.cX(), true), 1, sUVar.aZ());
    }

    public static void Sj(sU sUVar, final com.bytedance.sdk.openadsdk.Zq.Sj.Sj sj2, final String str) {
        Sj(System.currentTimeMillis(), sUVar, str, "web_behavior_keyword", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.27
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("arbi_current_url", sj2.TKC());
                    jSONObject2.put("keyword", sj2.dNu());
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP("TTAD.AdEvent", "onWebBehaviorKeyword", th2.getMessage());
                }
                return jSONObject;
            }
        });
    }

    public static void Sj(final sU sUVar, String str) {
        Sj(System.currentTimeMillis(), sUVar, str, "endcard_load_start", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.12
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    if (sU.TKC(sUVar)) {
                        if (sUVar.cF() != null) {
                            jSONObject2.putOpt("url", sUVar.cF().TKC());
                            jSONObject2.putOpt("id", sUVar.cF().Sj());
                            jSONObject2.putOpt("md5", sUVar.cF().sP());
                        }
                        if (sUVar.UHs() != null) {
                            jSONObject2.putOpt("render_type", 7);
                        }
                    } else {
                        jSONObject2.putOpt("url", sUVar.UHs().z());
                        jSONObject2.putOpt("style_id", sUVar.XgY());
                        if (sUVar.UHs() != null) {
                            jSONObject2.putOpt("render_type", 0);
                        }
                    }
                    jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
                } catch (Exception e11) {
                    com.bytedance.sdk.component.utils.sU.sP(e11.getMessage(), new Object[0]);
                }
                return jSONObject;
            }
        });
    }

    public static void Sj(sU sUVar, String str, final int i11) {
        Sj(System.currentTimeMillis(), sUVar, str, "open_url_h5", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.1
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt("render_type", "h5");
                    jSONObject2.putOpt("render_type_2", 0);
                    jSONObject2.putOpt("preload_status", Integer.valueOf(i11));
                    jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
                } catch (Exception unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void Sj(sU sUVar, String str, final int i11, final long j11) {
        Sj(System.currentTimeMillis(), sUVar, str, "video_choose", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.17
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("video_choose", i11);
                    jSONObject2.put("video_choose_duration", j11);
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP(th2.toString(), new Object[0]);
                }
                return jSONObject;
            }
        });
    }

    public static void Sj(sU sUVar, final String str, final int i11, final String str2, final float f11) {
        Sj(System.currentTimeMillis(), sUVar, str, sP.sP, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.10
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put("index", i11);
                    jSONObject.put("arbi_current_url", str2);
                    jSONObject.put("arbi_load_duration", f11);
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP(th2.toString(), new Object[0]);
                }
                return jSONObject2;
            }
        });
    }

    public static void Sj(sU sUVar, final String str, final int i11, final String str2, final int i12) {
        Sj(System.currentTimeMillis(), sUVar, str, sP.Sj, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.9
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put("index", i11);
                    jSONObject.put("arbi_current_url", str2);
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("new_index", i12);
                    jSONObject.put("pag_json_data", jSONObject3.toString());
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP(th2.toString(), new Object[0]);
                }
                return jSONObject2;
            }
        });
    }

    public static void Sj(sU sUVar, final String str, final int i11, final String str2, final long j11, final boolean z10, final int i12, final long j12) {
        Sj(System.currentTimeMillis(), sUVar, str, sP.EjP, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.4
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put("invisible_scene", i11);
                    jSONObject.put("arbi_current_url", str2);
                    jSONObject.put("loading_visible_time", j11);
                    jSONObject.put("arbi_trigger_start", z10);
                    jSONObject.put("arbi_convert_count", i12);
                    jSONObject.put("loading_start_timestamp", j12);
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP(th2.toString(), new Object[0]);
                }
                return jSONObject2;
            }
        });
    }

    public static void Sj(sU sUVar, final String str, final int i11, final String str2, final String str3, final int i12) {
        Sj(System.currentTimeMillis(), sUVar, str, sP.TKC, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.11
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put("index", i11);
                    jSONObject.put("arbi_current_url", str2);
                    jSONObject.put("load_url", str3);
                    jSONObject.put("url_flag", i12);
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP(th2.toString(), new Object[0]);
                }
                return jSONObject2;
            }
        });
    }

    public static void Sj(sU sUVar, String str, int i11, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, i11);
        } catch (JSONException unused) {
        }
        sP(sUVar, str, "open_ad_land_page_links", jSONObject);
    }

    public static void Sj(final sU sUVar, String str, final long j11) {
        Sj(System.currentTimeMillis(), sUVar, str, "endcard_load_finish", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.22
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    if (sU.TKC(sUVar)) {
                        if (sUVar.cF() != null) {
                            jSONObject2.putOpt("url", sUVar.cF().TKC());
                            jSONObject2.putOpt("id", sUVar.cF().Sj());
                            jSONObject2.putOpt("md5", sUVar.cF().sP());
                        }
                        if (sUVar.UHs() != null) {
                            jSONObject2.putOpt("render_type", 7);
                        }
                    } else {
                        jSONObject2.putOpt("url", sUVar.UHs().z());
                        jSONObject2.putOpt("style_id", sUVar.XgY());
                        if (sUVar.UHs() != null) {
                            jSONObject2.putOpt("render_type", 0);
                        }
                    }
                    jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
                    jSONObject.put("duration", j11);
                } catch (Exception e11) {
                    com.bytedance.sdk.component.utils.sU.sP(e11.getMessage(), new Object[0]);
                }
                return jSONObject;
            }
        });
    }

    public static void Sj(final sU sUVar, String str, final long j11, final int i11, final int i12) {
        Sj(System.currentTimeMillis(), sUVar, str, NativeImgComponent.EVENT_LOAD, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.44
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt("render_type", "h5");
                    jSONObject2.putOpt("render_type_2", 0);
                    jSONObject2.putOpt("interaction_method", Integer.valueOf(sUVar.zR()));
                    jSONObject2.put("first_page", i12);
                    jSONObject2.put("preload_h5_type", sUVar.rd());
                    int i13 = i11;
                    if (i13 >= 0) {
                        jSONObject2.putOpt("preload_status", Integer.valueOf(i13));
                    }
                    jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
                    jSONObject.put("duration", Math.min(j11, 600000L));
                } catch (Exception unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void Sj(final sU sUVar, String str, final long j11, final int i11, final String str2, final String str3) {
        Sj(System.currentTimeMillis(), sUVar, str, "endcard_load_fail", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.33
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    if (sU.TKC(sUVar)) {
                        if (sUVar.cF() != null) {
                            jSONObject2.putOpt("url", sUVar.cF().TKC());
                            jSONObject2.putOpt("id", sUVar.cF().Sj());
                            jSONObject2.putOpt("md5", sUVar.cF().sP());
                        }
                        if (sUVar.UHs() != null) {
                            jSONObject2.putOpt("render_type", 7);
                        }
                    } else {
                        jSONObject2.putOpt("url", sUVar.UHs().z());
                        jSONObject2.putOpt("style_id", sUVar.XgY());
                        if (!TextUtils.isEmpty(str3)) {
                            jSONObject2.putOpt("error_url", str3);
                        }
                        if (sUVar.UHs() != null) {
                            jSONObject2.putOpt("render_type", 0);
                        }
                    }
                    jSONObject2.put("error_code", i11);
                    jSONObject2.put(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, str2);
                    jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
                    jSONObject.put("duration", j11);
                } catch (Exception e11) {
                    com.bytedance.sdk.component.utils.sU.sP(e11.getMessage(), new Object[0]);
                }
                return jSONObject;
            }
        });
    }

    public static void Sj(sU sUVar, String str, final long j11, final JSONObject jSONObject) {
        Sj(System.currentTimeMillis(), sUVar, "open_ad", str, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.41
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    long j12 = j11;
                    if (j12 != -1) {
                        jSONObject2.put("duration", j12);
                    }
                    JSONObject jSONObject3 = jSONObject;
                    if (jSONObject3 != null) {
                        jSONObject2.put("ad_extra_data", jSONObject3.toString());
                    } else {
                        jSONObject2.put("ad_extra_data", new JSONObject().toString());
                    }
                } catch (Exception e11) {
                    com.bytedance.sdk.component.utils.sU.sP("TTAD.AdEvent", e11.getMessage());
                }
                return jSONObject2;
            }
        });
    }

    public static void Sj(sU sUVar, String str, final long j11, final boolean z10) {
        Sj(System.currentTimeMillis(), sUVar, str, "lp_loading", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.5
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put("if_lp_loading_success", z10 ? 1 : 2);
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                    jSONObject2.put("duration", j11);
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP(th2.toString(), new Object[0]);
                }
                return jSONObject2;
            }
        });
    }

    public static void Sj(final sU sUVar, final String str, final WMZ wmz) {
        if (sUVar == null) {
            return;
        }
        final long jEjP = wmz.EjP();
        Sj(System.currentTimeMillis(), sUVar, str, "stay_duration", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.2
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put("click_stay_time", jEjP);
                    jSONObject.put(TrackingKey.CLICK_TIME, wmz.Sj);
                    if (str.equals("open_ad")) {
                        jSONObject.put("is_icon_only", sUVar.yfI() ? 1 : 0);
                    }
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable unused) {
                }
                return jSONObject2;
            }
        });
    }

    public static void Sj(sU sUVar, String str, final String str2) {
        Sj(System.currentTimeMillis(), sUVar, str, "show_error", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.34
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.putOpt(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, str2);
                    jSONObject.putOpt("ad_extra_data", jSONObject2.toString());
                } catch (Exception unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void Sj(sU sUVar, String str, final String str2, final long j11, final int i11, JSONObject jSONObject, final Jcg jcg) {
        final JSONObject jSONObject2 = jSONObject == null ? new JSONObject() : jSONObject;
        Sj(System.currentTimeMillis(), sUVar, str, str2, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.18
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                Jcg jcg2;
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("duration", j11);
                    jSONObject3.put("percent", i11);
                    if (("feed_break".equals(str2) || "feed_over".equals(str2)) && (jcg2 = jcg) != null) {
                        jcg2.Sj(jSONObject2);
                    }
                    jSONObject3.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable unused) {
                }
                return jSONObject3;
            }
        });
    }

    public static void Sj(sU sUVar, String str, String str2, final long j11, final JSONObject jSONObject) {
        if (sUVar == null || jSONObject == null) {
            return;
        }
        Sj(System.currentTimeMillis(), sUVar, str, str2, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.35
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("duration", j11);
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Exception e11) {
                    com.bytedance.sdk.component.utils.sU.sP("TTAD.AdEvent", e11.getMessage());
                }
                return jSONObject2;
            }
        });
    }

    public static void Sj(sU sUVar, String str, final String str2, final com.bytedance.sdk.openadsdk.Zq.TKC.Sj sj2) {
        Sj(System.currentTimeMillis(), sUVar, str, "playable_track", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.24
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject;
                JSONObject jSONObject2 = new JSONObject();
                try {
                    com.bytedance.sdk.openadsdk.Zq.TKC.Sj sj3 = sj2;
                    if (sj3 == null || (jSONObject = sj3.Sj()) == null) {
                        jSONObject = new JSONObject();
                    }
                    jSONObject.put("is_new_playable", 1);
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("pag_json_data", jSONObject.toString());
                    jSONObject3.put("playable_event", str2);
                    jSONObject2.put("ad_extra_data", jSONObject3.toString());
                } catch (Exception unused) {
                }
                return jSONObject2;
            }
        });
    }

    @DungeonFlag
    public static void Sj(final sU sUVar, final String str, final String str2, final String str3, final long j11, final long j12, final JSONObject jSONObject, final boolean z10) {
        if (sUVar == null || Sj(sUVar.RqK(), str3)) {
            return;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        Sj(new com.bytedance.sdk.component.Dq.Dq("sendJsAdEvent") { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.40
            @Override // java.lang.Runnable
            public void run() {
                JSONArray jSONArrayOptJSONArray;
                String strHS = sUVar.HS();
                if (jSONObject != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        String strOptString = jSONObject.optString("ad_extra_data");
                        if (!TextUtils.isEmpty(strOptString)) {
                            jSONObject2 = new JSONObject(strOptString);
                        }
                        if (!"click".equals(str3)) {
                            jSONObject2.put("device", DeviceUtils.Jcg(com.bytedance.sdk.openadsdk.core.dNu.Sj()).toString());
                        }
                        if ("click".equals(str3)) {
                            if (z10) {
                                jSONObject2.put("click_scence", 1);
                            } else if (uP.sP(sUVar)) {
                                jSONObject2.put("click_scence", 3);
                            }
                        }
                        if (sUVar.pR()) {
                            try {
                                JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("pag_json_data");
                                if (jSONObjectOptJSONObject == null) {
                                    jSONObjectOptJSONObject = new JSONObject();
                                }
                                jSONObjectOptJSONObject.put("is_new_playable", 1);
                                if (sUVar.WO()) {
                                    jSONObjectOptJSONObject.put("is_pre_render", 1);
                                }
                                jSONObject2.put("pag_json_data", jSONObjectOptJSONObject.toString());
                            } catch (Throwable unused) {
                            }
                        }
                        int i11 = 0;
                        if (com.bytedance.sdk.openadsdk.Fmk.Sj.TKC(sUVar)) {
                            JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("pag_json_data");
                            if (jSONObjectOptJSONObject2 == null) {
                                jSONObjectOptJSONObject2 = new JSONObject();
                            }
                            jSONObjectOptJSONObject2.put("is_lp_pre_render", sUVar.FcE() ? 1 : 0);
                            jSONObject2.put("pag_json_data", jSONObjectOptJSONObject2.toString());
                        }
                        jSONObject.put("ad_extra_data", jSONObject2.toString());
                        jSONObject.put("tag", str2);
                        int iOptInt = jSONObject2.optInt("agg_request_type", -1);
                        if (z10 && iOptInt == 2) {
                            strHS = jSONObject2.optString("app_log_url");
                        }
                        if ("click".equals(str3)) {
                            ib.TKC(sUVar);
                            float fFloatValue = Double.valueOf((System.currentTimeMillis() / 1000) - sU.sP(jSONObject.optString("log_extra"))).floatValue();
                            JSONObject jSONObject3 = jSONObject;
                            if (fFloatValue <= 0.0f) {
                                fFloatValue = 0.0f;
                            }
                            jSONObject3.putOpt(TrackingKey.SHOW_TIME, Float.valueOf(fFloatValue));
                            if (!TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.aa.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj()))) {
                                if (z10 && iOptInt == 2) {
                                    JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray("click_tracking_url");
                                    if (jSONArrayOptJSONArray2 != null) {
                                        ArrayList arrayList = new ArrayList();
                                        while (i11 < jSONArrayOptJSONArray2.length()) {
                                            arrayList.add(jSONArrayOptJSONArray2.optString(i11));
                                            i11++;
                                        }
                                        com.bytedance.sdk.openadsdk.EjP.Sj.EjP.Sj(com.bytedance.sdk.openadsdk.kF.Sj.Sj(arrayList, true), 2, String.valueOf(j11));
                                    }
                                } else {
                                    sU sUVar2 = sUVar;
                                    if (sUVar2 != null) {
                                        com.bytedance.sdk.openadsdk.EjP.Sj.EjP.Sj(com.bytedance.sdk.openadsdk.kF.Sj.Sj(sUVar2.kb(), true), 2, sUVar.aZ());
                                    }
                                }
                            }
                        } else if (PushConstants.PUSH_SERVICE_TYPE_SHOW.equals(str3) && !TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.aa.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj())) && z10 && iOptInt == 2 && (jSONArrayOptJSONArray = jSONObject2.optJSONArray("show_tracking_url")) != null) {
                            ArrayList arrayList2 = new ArrayList();
                            while (i11 < jSONArrayOptJSONArray.length()) {
                                arrayList2.add(jSONArrayOptJSONArray.optString(i11));
                                i11++;
                            }
                            com.bytedance.sdk.openadsdk.EjP.Sj.EjP.Sj(com.bytedance.sdk.openadsdk.kF.Sj.Sj(arrayList2, true), 1, String.valueOf(j11));
                        }
                    } catch (Exception unused2) {
                    }
                }
                new com.bytedance.sdk.openadsdk.EjP.Sj.C0234Sj(jCurrentTimeMillis, sUVar).EjP(str).sP(str2).TKC(str3).HiB(String.valueOf(j11)).vS(String.valueOf(j12)).Sj(strHS).Sj(jSONObject).Dq(sUVar.Ci()).Jcg(sUVar.cKW()).Sj((com.bytedance.sdk.openadsdk.EjP.sP.Sj) null);
            }
        });
    }

    public static void Sj(final sU sUVar, String str, String str2, final Map<String, Object> map) {
        Sj(System.currentTimeMillis(), sUVar, str, str2, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.21
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    Map map2 = map;
                    if (map2 != null) {
                        for (Map.Entry entry : map2.entrySet()) {
                            jSONObject2.put((String) entry.getKey(), entry.getValue());
                        }
                        Object obj = map.get("duration");
                        if (obj instanceof Long) {
                            jSONObject.put("duration", obj);
                        }
                    }
                    jSONObject2.put("dp_creative_type", sUVar.AE());
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Exception unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void Sj(sU sUVar, String str, String str2, final JSONObject jSONObject) {
        Sj(System.currentTimeMillis(), sUVar, str, str2, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.16
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                if (jSONObject == null) {
                    return null;
                }
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                    if (jSONObject.has("duration")) {
                        jSONObject2.put("duration", jSONObject.get("duration"));
                    }
                } catch (Exception e11) {
                    com.bytedance.sdk.component.utils.sU.sP("TTAD.AdEvent", e11.getMessage());
                }
                return jSONObject2;
            }
        });
        if ("click".equals(str2)) {
            ib.TKC(sUVar);
        }
    }

    public static void Sj(sU sUVar, String str, String str2, final JSONObject jSONObject, final long j11) {
        Sj(System.currentTimeMillis(), sUVar, str, str2, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.20
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    JSONObject jSONObject3 = jSONObject;
                    if (jSONObject3 != null) {
                        jSONObject2.put("ad_extra_data", jSONObject3.toString());
                    }
                    jSONObject2.put("duration", j11);
                } catch (Exception unused) {
                }
                return jSONObject2;
            }
        });
    }

    @DungeonFlag
    public static void Sj(sU sUVar, String str, JSONObject jSONObject) {
        EjP(sUVar, PushConstants.PUSH_SERVICE_TYPE_SHOW, str, jSONObject);
    }

    public static void Sj(sU sUVar, String str, final boolean z10, final boolean z11, final boolean z12, final boolean z13, final int i11, final Map<String, Object> map) {
        Sj(System.currentTimeMillis(), sUVar, str, "start_show_plb", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.45
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("isSkip", z10);
                    jSONObject2.put("force", z11);
                    jSONObject2.put("isFromLandingPage", z12);
                    jSONObject2.put("finishing", z13);
                    jSONObject2.put("from", i11);
                    Map map2 = map;
                    if (map2 != null) {
                        for (Map.Entry entry : map2.entrySet()) {
                            jSONObject2.put((String) entry.getKey(), entry.getValue());
                        }
                    }
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void Sj(final sU sUVar, final boolean z10, String str, final String str2, final long j11, final String str3, final String str4, final int i11, final String str5) {
        Sj(System.currentTimeMillis(), sUVar, str, "load_ugen_template", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.46
            /* JADX WARN: Code duplicated, block: B:21:0x0046  */
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                byte b11;
                LqL lqLNdK;
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    String str6 = str4;
                    int iHashCode = str6.hashCode();
                    if (iHashCode != -1606803861) {
                        if (iHashCode != 3107) {
                            if (iHashCode == 2989536 && str6.equals("adv3")) {
                                b11 = 2;
                            } else {
                                b11 = -1;
                            }
                        } else if (str6.equals(CommonLogUtil.TAG_AD)) {
                            b11 = 1;
                        } else {
                            b11 = -1;
                        }
                    } else if (str6.equals(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD)) {
                        b11 = 0;
                    } else {
                        b11 = -1;
                    }
                    if (b11 != 0) {
                        if (b11 == 1) {
                            sU.Sj sjXhi = sUVar.xhi();
                            if (sjXhi != null) {
                                jSONObject2.putOpt("url", sjXhi.Zq());
                                jSONObject2.putOpt("id", sjXhi.vS());
                                jSONObject2.putOpt("md5", sjXhi.uvD());
                            }
                        } else if (b11 == 2 && (lqLNdK = sUVar.ndK()) != null) {
                            jSONObject2.putOpt("url", lqLNdK.TKC());
                            jSONObject2.putOpt("id", lqLNdK.Sj());
                            jSONObject2.putOpt("md5", lqLNdK.sP());
                        }
                    } else if (z10) {
                        com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj sjEfv = sUVar.efv();
                        if (sjEfv != null) {
                            jSONObject2.putOpt("url", sjEfv.TKC());
                            jSONObject2.putOpt("id", sjEfv.Sj());
                            jSONObject2.putOpt("md5", sjEfv.sP());
                        }
                    } else {
                        com.bytedance.sdk.openadsdk.core.TEQ.Jcg.Sj sjCF = sUVar.cF();
                        if (sjCF != null) {
                            jSONObject2.putOpt("url", sjCF.TKC());
                            jSONObject2.putOpt("id", sjCF.Sj());
                            jSONObject2.putOpt("md5", sjCF.sP());
                        }
                    }
                    jSONObject2.put("ugen_status", str2);
                    jSONObject2.put("from", str3);
                    jSONObject2.put("ugen_scene", str4);
                    if ("fail".equals(str2)) {
                        jSONObject2.put("error_code", i11);
                        jSONObject2.put(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, str5);
                    }
                    jSONObject.put("duration", j11);
                } catch (Throwable th2) {
                    try {
                        jSONObject2.put("error_code", Sdk$SDKError.Reason.OMSDK_JS_WRITE_FAILED_VALUE);
                        jSONObject2.put(OfflineConstantsKt.TRACK_KEY_PRE_ERROR_MSG, "send template error " + th2.getMessage());
                    } catch (Throwable unused) {
                    }
                }
                try {
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable unused2) {
                }
                return jSONObject;
            }
        });
    }

    public static void Sj(String str, long j11) {
        com.bytedance.sdk.openadsdk.core.Jcg.TKC.Sj(str, j11);
    }

    @DungeonFlag
    public static void Sj(final String str, final sU sUVar, final com.bytedance.sdk.openadsdk.core.model.TEQ teq, final String str2, final boolean z10, final Map<String, Object> map, final int i11) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        Sj(new com.bytedance.sdk.component.Dq.Dq("onClick") { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.15
            @Override // java.lang.Runnable
            public void run() {
                sU sUVar2 = sUVar;
                if (sUVar2 == null) {
                    return;
                }
                TKC.Sj(jCurrentTimeMillis, sUVar2, str2, str, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.15.1
                    @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
                    public JSONObject Sj() {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            com.bytedance.sdk.openadsdk.core.model.TEQ teq2 = teq;
                            if (teq2 != null) {
                                JSONObject jSONObjectSj = teq2.Sj();
                                jSONObjectSj.put("is_valid", z10);
                                int i12 = i11;
                                if (i12 > 0 && i12 <= 2) {
                                    jSONObjectSj.put("user_behavior_type", i12);
                                }
                                Map map2 = map;
                                if (map2 != null) {
                                    if (map2.containsKey("duration")) {
                                        jSONObject.put("duration", map.get("duration"));
                                    }
                                    for (Map.Entry entry : map.entrySet()) {
                                        if (!"duration".equals(entry.getKey())) {
                                            jSONObjectSj.put((String) entry.getKey(), entry.getValue());
                                        }
                                    }
                                }
                                jSONObjectSj.put("interaction_method", sUVar.zR());
                                if (str2.equals("open_ad")) {
                                    jSONObjectSj.put("is_icon_only", sUVar.yfI() ? 1 : 0);
                                }
                                jSONObject.put("ad_extra_data", jSONObjectSj.toString());
                            }
                            jSONObject.putOpt("log_extra", sUVar.mZN());
                            float fFloatValue = Double.valueOf((System.currentTimeMillis() / 1000) - sUVar.cra()).floatValue();
                            if (fFloatValue <= 0.0f) {
                                fFloatValue = 0.0f;
                            }
                            jSONObject.putOpt(TrackingKey.SHOW_TIME, Float.valueOf(fFloatValue));
                            jSONObject.putOpt("ua_policy", Integer.valueOf(sUVar.HpB()));
                        } catch (Exception unused) {
                        }
                        return jSONObject;
                    }
                });
                if (!TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.aa.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj())) && "click".equals(str)) {
                    com.bytedance.sdk.openadsdk.EjP.Sj.EjP.Sj(com.bytedance.sdk.openadsdk.kF.Sj.Sj(sUVar.kb(), true), 2, sUVar.aZ());
                }
                if ("click".equals(str)) {
                    ib.TKC(sUVar);
                }
            }
        });
    }

    @DungeonFlag
    public static void Sj(final String str, final sU sUVar, final String str2, final Jcg jcg) {
        if (sUVar == null || jcg == null || !jcg.Sj()) {
            return;
        }
        Sj(System.currentTimeMillis(), sUVar, str2, "ad_show_time", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.50
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("duration", str);
                    Jcg jcg2 = jcg;
                    if (jcg2 != null && jcg2.sP() != null) {
                        JSONObject jSONObjectSP = jcg.sP();
                        if (str2.equals("open_ad")) {
                            jSONObjectSP.put("is_icon_only", sUVar.yfI() ? 1 : 0);
                        }
                        jSONObject.put("ad_extra_data", jSONObjectSP.toString());
                    }
                } catch (Throwable unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void Sj(String str, sU sUVar, String str2, final Map<String, Object> map) {
        Sj(System.currentTimeMillis(), sUVar, str2, str, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.47
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                try {
                    if (map != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        for (Map.Entry entry : map.entrySet()) {
                            jSONObject2.put((String) entry.getKey(), entry.getValue());
                        }
                        jSONObject.put("ad_extra_data", jSONObject2.toString());
                    }
                } catch (Exception unused) {
                }
                return jSONObject;
            }
        });
    }

    private static boolean Sj(int i11, String str) {
        int iYf;
        try {
            Set<String> setRrR = com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().RrR();
            if ((i11 == 1 && setRrR != null && setRrR.contains(str)) || (iYf = com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().Yf(str)) == 0) {
                return true;
            }
            return iYf != 100 && ((int) ((Math.random() * 100.0d) + 1.0d)) > iYf;
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("TTAD.AdEvent", th2.getMessage());
            return false;
        }
    }

    public static void TKC(sU sUVar, final com.bytedance.sdk.openadsdk.Zq.Sj.Sj sj2, final String str) {
        Sj(System.currentTimeMillis(), sUVar, str, "web_behavior_stay", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.29
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("arbi_current_url", sj2.TKC());
                    jSONObject2.put("current_url_index", sj2.EjP());
                    jSONObject2.put("arbi_stay_duration", sj2.sef());
                    jSONObject2.put("browsing_percentage", sj2.Zq());
                    jSONObject2.put("out_focus_scene", sj2.uvD());
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP("TTAD.AdEvent", "onWebBehaviorStay", th2.getMessage());
                }
                return jSONObject;
            }
        });
    }

    public static void TKC(final sU sUVar, String str) {
        if (sUVar == null || !sU.TKC(sUVar) || sUVar.cF() == null) {
            return;
        }
        Sj(System.currentTimeMillis(), sUVar, str, CampaignEx.JSON_NATIVE_VIDEO_ENDCARD_SHOW, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.26
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.putOpt("url", sUVar.cF().TKC());
                    jSONObject2.putOpt("id", sUVar.cF().Sj());
                    jSONObject2.putOpt("md5", sUVar.cF().sP());
                    if (sUVar.UHs() != null) {
                        jSONObject2.putOpt("render_type", Integer.valueOf(sUVar.UHs().c()));
                    }
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Exception unused) {
                }
                return jSONObject;
            }
        });
    }

    public static void TKC(sU sUVar, String str, final int i11) {
        Sj(System.currentTimeMillis(), sUVar, str, "check_meta_more", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.8
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put("error_code", i11);
                    jSONObject.put("check_url", com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().nP());
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP(th2.toString(), new Object[0]);
                }
                return jSONObject2;
            }
        });
    }

    public static void TKC(sU sUVar, String str, final long j11) {
        Sj(System.currentTimeMillis(), sUVar, str, "load_feeling_duration", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.6
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("duration", j11);
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP("TTAD.AdEvent", th2.getMessage());
                }
                jSONObject.toString();
                return jSONObject;
            }
        });
    }

    public static void TKC(sU sUVar, final String str, final String str2, final JSONObject jSONObject) {
        if (sUVar == null || jSONObject == null) {
            return;
        }
        Sj(System.currentTimeMillis(), sUVar, str, str2, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.37
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (JSONException unused) {
                }
                return jSONObject2;
            }
        });
    }

    public static void TKC(sU sUVar, final String str, final JSONObject jSONObject) {
        Sj(System.currentTimeMillis(), sUVar, str, sP.vS, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.39
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("pag_json_data", jSONObject);
                    jSONObject2.put("ad_extra_data", jSONObject3);
                } catch (JSONException unused) {
                }
                String str2 = sP.Sj;
                return jSONObject2;
            }
        });
    }

    public static void sP(final long j11, final sU sUVar, String str, final String str2) {
        Sj(System.currentTimeMillis(), sUVar, str, "endcard_feeling_duraion", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.25
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject.put("duration", j11);
                    if (sU.TKC(sUVar)) {
                        if (sUVar.cF() != null) {
                            jSONObject2.putOpt("url", sUVar.cF().TKC());
                            jSONObject2.putOpt("id", sUVar.cF().Sj());
                            jSONObject2.putOpt("md5", sUVar.cF().sP());
                        }
                        jSONObject2.putOpt("from", str2);
                        if (sUVar.UHs() != null) {
                            jSONObject2.putOpt("render_type", 7);
                        }
                    } else {
                        jSONObject2.put("url", sUVar.UHs().z());
                        jSONObject2.put("style_id", sUVar.XgY());
                        if (sUVar.UHs() != null) {
                            jSONObject2.putOpt("render_type", 0);
                        }
                    }
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Exception e11) {
                    com.bytedance.sdk.component.utils.sU.sP(e11.getMessage(), new Object[0]);
                }
                return jSONObject;
            }
        });
    }

    public static void sP(sU sUVar, final com.bytedance.sdk.openadsdk.Zq.Sj.Sj sj2, final String str) {
        Sj(System.currentTimeMillis(), sUVar, str, "web_behavior_load", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.28
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("arbi_current_url", sj2.TKC());
                    jSONObject2.put("current_url_index", sj2.EjP());
                    jSONObject2.put("arbi_load_duration", sj2.TzV());
                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP("TTAD.AdEvent", "onWebBehaviorLoad", th2.getMessage());
                }
                return jSONObject;
            }
        });
    }

    public static void sP(final sU sUVar, String str) {
        Sj(System.currentTimeMillis(), sUVar, str, "picture_click", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.14
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put("ad_slot_type", sUVar.xD().getNativeAdType());
                    jSONObject.put("interaction_method", sUVar.zR());
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP(th2.toString(), new Object[0]);
                }
                return jSONObject2;
            }
        });
    }

    public static void sP(sU sUVar, String str, final int i11) {
        Sj(System.currentTimeMillis(), sUVar, str, "check_meta", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.7
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject.put("error_code", i11);
                    jSONObject.put("check_url", com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().nP());
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP(th2.toString(), new Object[0]);
                }
                return jSONObject2;
            }
        });
    }

    public static void sP(sU sUVar, String str, int i11, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, i11);
        } catch (JSONException unused) {
        }
        sP(sUVar, str, "download_app_ad_track", jSONObject);
    }

    public static void sP(sU sUVar, String str, final long j11) {
        if (sUVar != null && j11 > 0 && j11 < 200000) {
            Sj(System.currentTimeMillis(), sUVar, str, "video_click_duration", new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.3
                @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
                public JSONObject Sj() {
                    JSONObject jSONObject = new JSONObject();
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject.put("video_click_duration_time", j11);
                        jSONObject2.put("ad_extra_data", jSONObject.toString());
                    } catch (Throwable unused) {
                    }
                    return jSONObject2;
                }
            });
        }
    }

    public static void sP(sU sUVar, String str, String str2, final JSONObject jSONObject) {
        Sj(System.currentTimeMillis(), sUVar, str, str2, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.19
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    JSONObject jSONObject3 = jSONObject;
                    if (jSONObject3 != null) {
                        jSONObject2.put("ad_extra_data", jSONObject3.toString());
                    }
                } catch (Exception unused) {
                }
                return jSONObject2;
            }
        });
    }

    public static void sP(sU sUVar, String str, String str2, final JSONObject jSONObject, final long j11) {
        if (sUVar == null || jSONObject == null) {
            return;
        }
        Sj(System.currentTimeMillis(), sUVar, str, str2, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.36
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("ad_extra_data", jSONObject.toString());
                    jSONObject2.put("duration", j11);
                } catch (Throwable unused) {
                }
                return jSONObject2;
            }
        });
    }

    public static void sP(sU sUVar, final String str, final JSONObject jSONObject) {
        Sj(System.currentTimeMillis(), sUVar, str, sP.HiB, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.EjP.TKC.38
            @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
            public JSONObject Sj() {
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                try {
                    jSONObject3.put("pag_json_data", jSONObject);
                    jSONObject2.put("ad_extra_data", jSONObject3);
                } catch (JSONException unused) {
                }
                String str2 = sP.Sj;
                return jSONObject2;
            }
        });
    }
}
