package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.net.UrlKt;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.DomainCampaignEx;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.w0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.MBConfiguration;
import java.io.File;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class j extends b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f35566b = "j";

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String[] list;
            try {
                String strB = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_CRASH_INFO);
                if (TextUtils.isEmpty(strB)) {
                    return;
                }
                File file = new File(strB);
                if (file.exists() && file.isDirectory() && (list = file.list()) != null) {
                    for (String str : list) {
                        File file2 = new File(strB + "/" + str);
                        if (file2.exists()) {
                            String strE = m0.e(file2);
                            if (!TextUtils.isEmpty(strE)) {
                                String[] strArrSplit = strE.split("====");
                                if (strArrSplit.length > 0) {
                                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(new JSONObject(strArrSplit[0]));
                                }
                            }
                            com.mbridge.msdk.foundation.same.d.a(file2);
                        }
                    }
                }
            } catch (Throwable th2) {
                o0.b(j.f35566b, th2.getMessage());
            }
        }
    }

    public static com.mbridge.msdk.foundation.same.net.wrapper.e a(Context context) {
        String str = "1";
        com.mbridge.msdk.foundation.same.net.wrapper.e eVar = new com.mbridge.msdk.foundation.same.net.wrapper.e();
        try {
            eVar.a(TrackingKey.PLATFORM, "1");
            eVar.a("package_name", URLEncoder.encode(k0.t(context)));
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                eVar.a("os_version", Build.VERSION.RELEASE);
                eVar.a("brand", URLEncoder.encode(k0.s()));
                eVar.a("model", URLEncoder.encode(k0.n()));
                if (com.mbridge.msdk.util.b.a()) {
                    eVar.a(UrlKt.KEY_MINI_GAID, "");
                } else {
                    eVar.a(UrlKt.KEY_MINI_GAID, com.mbridge.msdk.foundation.tools.f.d());
                }
                eVar.a("mnc", k0.r(context));
                eVar.a("mcc", k0.q(context));
                int iS = k0.s(context);
                eVar.a("network_type", iS + "");
                eVar.a("network_str", k0.a(context, iS));
                eVar.a(TmcConstants.KEY_LANGUAGE, URLEncoder.encode(k0.p(context)));
                eVar.a("timezone", URLEncoder.encode(k0.w()));
                eVar.a("ua", URLEncoder.encode(k0.i()));
                eVar.a("adid_limit", com.mbridge.msdk.foundation.tools.f.a() + "");
                if (!com.mbridge.msdk.foundation.controller.authoritycontroller.b.j()) {
                    str = "0";
                }
                eVar.a("adid_limit_dev", str);
            }
            eVar.a("sdk_version", MBConfiguration.SDK_VERSION);
            eVar.a("app_version_name", URLEncoder.encode(k0.B(context)));
            eVar.a("orientation", URLEncoder.encode(k0.F(context) + ""));
            eVar.a("screen_size", k0.n(context) + "x" + k0.m(context));
            if (com.mbridge.msdk.util.b.a()) {
                com.mbridge.msdk.foundation.same.net.wrapper.f.f(eVar);
            }
            k.a(eVar, context);
            com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (gVarD == null) {
                gVarD = com.mbridge.msdk.setting.h.b().a();
            }
            if (gVarD != null) {
                JSONObject jSONObjectA = a(context, gVarD);
                if (!TextUtils.isEmpty(jSONObjectA.toString())) {
                    String strB = i0.b(jSONObjectA.toString());
                    if (!TextUtils.isEmpty(strB)) {
                        eVar.a("dvi", strB);
                    }
                }
            }
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                e11.printStackTrace();
            }
        }
        return eVar;
    }

    public static JSONObject a(Context context, com.mbridge.msdk.setting.g gVar) throws Exception {
        return k.a(context, gVar);
    }

    public static JSONObject a(Campaign campaign, int i11, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("category", "adtrack");
            jSONObject.put(EventConstants.KEY_ACTION, str);
            jSONObject.put("label", i11);
            if (campaign != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("id", campaign.getId());
                jSONObject2.put(CampaignEx.JSON_KEY_TITLE, campaign.getAppName());
                jSONObject.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, jSONObject2);
            } else {
                jSONObject.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, "");
            }
        } catch (Exception e11) {
            o0.b(f35566b, e11.getMessage());
        }
        return jSONObject;
    }

    public static JSONObject a(String str, Map<String, Object> map) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", str);
            if (map != null && !map.isEmpty()) {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            }
            return jSONObject;
        } catch (Throwable th2) {
            o0.b(f35566b, th2.getMessage());
            return null;
        }
    }

    public static void a(int i11, String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", "2000080");
            jSONObject.put("ad_type", i11);
            jSONObject.put("url", str);
            jSONObject.put("reason", str2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
        } catch (Exception e11) {
            o0.b(f35566b, e11.getMessage());
        }
    }

    public static void a(Context context, CampaignEx campaignEx, int i11, String str, String str2) {
        if (context == null || campaignEx == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", "2000114");
            jSONObject.put("network_type", k0.s(context));
            jSONObject.put(DomainCampaignEx.KEY_GH_ID, TextUtils.isEmpty(campaignEx.getGhId()) ? "" : campaignEx.getGhId());
            jSONObject.put(DomainCampaignEx.KEY_GH_PATH, TextUtils.isEmpty(campaignEx.getGhPath()) ? "" : campaignEx.getGhPath());
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
            jSONObject.put("rid", campaignEx.getRequestId());
            jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
            jSONObject.put("result", i11);
            if (TextUtils.isEmpty(str)) {
                str = "";
            }
            jSONObject.put("reason", str);
            jSONObject.put(BidResponsedEx.KEY_CID, campaignEx.getId());
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
        } catch (Throwable th2) {
            o0.b(f35566b, th2.getMessage());
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String str2) {
        if (context != null) {
            try {
                if ((!TextUtils.isEmpty(str)) && (!TextUtils.isEmpty(str2))) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("key", "2000054");
                    jSONObject.put("network_type", k0.s(context));
                    jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str);
                    jSONObject.put("reason", str2);
                    jSONObject.put("result", 1);
                    jSONObject.put("devid", com.mbridge.msdk.foundation.tools.f.d());
                    if (campaignEx != null) {
                        jSONObject.put(BidResponsedEx.KEY_CID, campaignEx.getId());
                        if (campaignEx.getAdType() == 287) {
                            jSONObject.put("creative", campaignEx.getendcard_url());
                            jSONObject.put("ad_type", 3);
                        } else if (campaignEx.getAdType() == 94) {
                            jSONObject.put("creative", campaignEx.getendcard_url());
                            jSONObject.put("ad_type", 1);
                        } else if (campaignEx.getAdType() == 296) {
                            jSONObject.put("ad_type", 5);
                            jSONObject.put("creative", campaignEx.getCreativeId());
                        } else if (campaignEx.getAdType() == 297) {
                            jSONObject.put("ad_type", 6);
                            jSONObject.put(CampaignEx.JSON_KEY_AD_HTML, campaignEx.getCreativeId());
                            jSONObject.put(CampaignEx.JSON_KEY_AD_ZIP, campaignEx.getAdZip());
                        } else if (campaignEx.getAdType() == 298) {
                            jSONObject.put("ad_type", 7);
                            jSONObject.put(CampaignEx.JSON_KEY_AD_HTML, campaignEx.getCreativeId());
                            jSONObject.put(CampaignEx.JSON_KEY_AD_ZIP, campaignEx.getAdZip());
                        } else {
                            jSONObject.put("creative", campaignEx.getendcard_url());
                            jSONObject.put("ad_type", 1);
                        }
                        jSONObject.put("devid", com.mbridge.msdk.foundation.tools.f.d());
                        if (campaignEx.isBidCampaign()) {
                            jSONObject.put(CampaignEx.JSON_KEY_HB, "1");
                        }
                        jSONObject.put("rid", campaignEx.getRequestId());
                        jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
                        jSONObject.put(CampaignEx.JSON_KEY_NEW_INTERSTITIAL_AD_SPACE_T, campaignEx.getAdSpaceT());
                    }
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
                }
            } catch (Throwable th2) {
                o0.b(f35566b, th2.getMessage());
            }
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String str2, int i11, int i12) {
        if (context == null || campaignEx == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", "2000074");
            jSONObject.put("network_type", k0.s(context));
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
            jSONObject.put(BidResponsedEx.KEY_CID, campaignEx.getId());
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, i11);
            jSONObject.put("adtp", campaignEx.getAdType());
            jSONObject.put("rid", campaignEx.getRequestId());
            jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
            if (i12 != -1) {
                jSONObject.put("d_t", i12);
            }
            jSONObject.put("url", str);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
        } catch (Throwable th2) {
            o0.b(f35566b, th2.getMessage());
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String str2, int i11, int i12, int i13) {
        if (context == null || campaignEx == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", "2000075");
            jSONObject.put("network_type", k0.s(context));
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
            jSONObject.put(BidResponsedEx.KEY_CID, campaignEx.getId());
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, i11);
            jSONObject.put("adtp", campaignEx.getAdType());
            jSONObject.put("rid", campaignEx.getRequestId());
            jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
            jSONObject.put(NotificationCompat.CATEGORY_STATUS, i12);
            if (i13 != -1) {
                jSONObject.put("d_t", i13);
            }
            jSONObject.put("url", str);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
        } catch (Throwable th2) {
            o0.b(f35566b, th2.getMessage());
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String str2, int i11, String str3, int i12) {
        if (context == null || campaignEx == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", "2000073");
            jSONObject.put("network_type", k0.s(context));
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
            jSONObject.put(BidResponsedEx.KEY_CID, campaignEx.getId());
            jSONObject.put("reason", str3);
            jSONObject.put("result", i11);
            jSONObject.put("rid", campaignEx.getRequestId());
            jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
            if (i12 != -1) {
                jSONObject.put("d_t", i12);
            }
            jSONObject.put("url", str);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
        } catch (Throwable th2) {
            o0.b(f35566b, th2.getMessage());
        }
    }

    public static void a(Context context, String str, String str2, int i11, String str3) {
        if (context != null) {
            try {
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000076");
                jSONObject.put("network_type", k0.s(context));
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                jSONObject.put("reason", str3);
                jSONObject.put("result", i11);
                jSONObject.put("url", str);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Throwable th2) {
                o0.b(f35566b, th2.getMessage());
            }
        }
    }

    public static void a(Context context, String str, String str2, boolean z10, CampaignEx campaignEx) {
        if (context != null) {
            try {
                if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000047");
                if (!TextUtils.isEmpty(str2)) {
                    String str3 = com.mbridge.msdk.foundation.controller.a.f34994r.get(str2);
                    if (str3 == null) {
                        str3 = "";
                    }
                    jSONObject.put("u_stid", str3);
                }
                if (campaignEx != null) {
                    jSONObject.put(BidResponsedEx.KEY_CID, campaignEx.getId());
                    jSONObject.put("adtp", campaignEx.getAdType());
                    jSONObject.put("rid", campaignEx.getRequestId());
                    jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
                }
                jSONObject.put("st", System.currentTimeMillis());
                jSONObject.put("network_type", k0.s(context));
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                jSONObject.put(CampaignEx.JSON_KEY_HB, z10 ? 1 : 0);
                jSONObject.put("reason", str);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Throwable th2) {
                o0.b(f35566b, th2.getMessage());
            }
        }
    }

    public static void a(Context context, String str, String str2, boolean z10, String str3, String str4, String str5, String str6) {
        if (context != null) {
            try {
                if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000104");
                if (!TextUtils.isEmpty(str2)) {
                    String str7 = com.mbridge.msdk.foundation.controller.a.f34994r.get(str2);
                    if (str7 == null) {
                        str7 = "";
                    }
                    jSONObject.put("u_stid", str7);
                }
                jSONObject.put("network_type", k0.s(context));
                jSONObject.put("rid", str3);
                jSONObject.put("rid_n", str4);
                jSONObject.put(BidResponsedEx.KEY_CID, str5);
                jSONObject.put("template_id", str6);
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                jSONObject.put(CampaignEx.JSON_KEY_HB, z10 ? 1 : 0);
                jSONObject.put("reason", str);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Throwable th2) {
                o0.b(f35566b, th2.getMessage());
            }
        }
    }

    public static void a(Context context, List<CampaignEx> list, String str, boolean z10) {
        if (context == null || list == null) {
            return;
        }
        try {
            if (list.isEmpty() || TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", "2000048");
            jSONObject.put("st", System.currentTimeMillis());
            jSONObject.put("network_type", k0.s(context));
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str);
            jSONObject.put(CampaignEx.JSON_KEY_HB, z10 ? 1 : 0);
            CampaignEx campaignEx = list.get(0);
            if (campaignEx != null) {
                jSONObject.put(BidResponsedEx.KEY_CID, campaignEx.getId());
                jSONObject.put("rid", campaignEx.getRequestId());
                jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
            }
            StringBuilder sb2 = new StringBuilder();
            for (int i11 = 0; i11 < list.size(); i11++) {
                CampaignEx campaignEx2 = list.get(i11);
                if (i11 < list.size() - 1) {
                    sb2.append(campaignEx2.getRtinsType());
                    sb2.append(",");
                } else {
                    sb2.append(campaignEx2.getRtinsType());
                }
            }
            jSONObject.put(CampaignEx.JSON_KEY_RETARGET_TYPE, sb2.toString());
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
        } catch (Throwable th2) {
            o0.b(f35566b, th2.getMessage());
        }
    }

    public static void a(CampaignEx campaignEx, String str, int i11, int i12, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", "2000121");
            jSONObject.put("rid", campaignEx.getRequestId());
            jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
            jSONObject.put(BidResponsedEx.KEY_CID, campaignEx.getId());
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str);
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, i11);
            jSONObject.put("result", i12);
            jSONObject.put("reason", str2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
        } catch (Exception e11) {
            o0.b(f35566b, e11.getMessage());
        }
    }

    public static void a(CampaignEx campaignEx, String str, int i11, int i12, String str2, int i13, int i14, int i15, String str3) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVar;
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("key", URLEncoder.encode("2000094", "utf-8"));
            if (campaignEx != null) {
                eVar.a("rid", URLEncoder.encode(campaignEx.getRequestId(), "utf-8"));
                eVar.a("rid_n", URLEncoder.encode(campaignEx.getRequestIdNotice(), "utf-8"));
                eVar.a(BidResponsedEx.KEY_CID, URLEncoder.encode(campaignEx.getId(), "utf-8"));
                cVar = com.mbridge.msdk.foundation.same.report.metrics.d.b().a(campaignEx.getCurrentLocalRid());
            } else {
                cVar = null;
            }
            eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, URLEncoder.encode(str, "utf-8"));
            if (i11 == 0) {
                if (TextUtils.isEmpty(str3)) {
                    str3 = "0";
                }
                eVar.a("video_prg", str3 + "");
            } else {
                eVar.a("video_prg", i11 + "");
            }
            eVar.a("phase", i12 + "");
            eVar.a("feedback_content", URLEncoder.encode(str2, "utf-8"));
            eVar.a("feedback_close", i13 + "");
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, i15 + "");
            eVar.a("ad_type", i14 + "");
            eVar.a("network_type", URLEncoder.encode(String.valueOf(k0.s(com.mbridge.msdk.foundation.controller.c.m().d())), "utf-8"));
            if (cVar == null) {
                cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            cVar.m(str);
            cVar.a(i14);
            cVar.a("2000094", eVar);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000094", cVar);
        } catch (Exception e11) {
            o0.b(f35566b, e11.getMessage());
        }
    }

    public static void a(String str) {
        try {
            if (com.mbridge.msdk.foundation.controller.c.m().d() == null) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", "2000088");
            jSONObject.put("state", str);
            com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (gVarD == null || b.a(gVarD, jSONObject.toString())) {
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            }
        } catch (Throwable th2) {
            o0.b(f35566b, th2.getMessage());
        }
    }

    public static void a(String str, int i11, int i12, String str2, int i13, String str3) {
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("key", URLEncoder.encode("m_water_mark_result", "utf-8"));
            eVar.a("water_mark_result", i12 + "");
            eVar.a("water_mark_error_msg", URLEncoder.encode(str2, "utf-8"));
            eVar.a("render_result", i13 + "");
            eVar.a("water_mark_str", URLEncoder.encode(str3, "utf-8"));
            com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            cVar.a(i11);
            cVar.m(str);
            cVar.a("m_water_mark_result", eVar);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_water_mark_result", cVar);
        } catch (Throwable th2) {
            o0.b(f35566b, th2.getMessage());
        }
    }

    public static void a(boolean z10, long j11, String str) {
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a(NotificationCompat.CATEGORY_STATUS, z10 ? "1" : "2");
            eVar.a("is_allow_crash", com.mbridge.msdk.foundation.controller.c.m().e().b() ? "1" : "2");
            eVar.a("is_allow_anr", com.mbridge.msdk.foundation.controller.c.m().e().a() ? "1" : "2");
            eVar.a("executionTime", String.valueOf(j11));
            if (!TextUtils.isEmpty(str)) {
                eVar.a("reason", str);
            }
            com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            cVar.a("m_init_sdk", eVar);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_init_sdk", cVar);
        } catch (Throwable th2) {
            o0.b(f35566b, th2.getMessage());
        }
    }

    public static boolean a() {
        try {
            return System.currentTimeMillis() - 86400000 > ((Long) w0.a(com.mbridge.msdk.foundation.controller.c.m().d(), "privateAuthorityTimesTamp", 0L)).longValue();
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public static void b() {
        try {
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new a());
        } catch (Throwable th2) {
            o0.b(f35566b, th2.getMessage());
        }
    }

    public static void b(Context context, CampaignEx campaignEx, String str, String str2) {
        if (context == null || campaignEx == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(str2);
            jSONObject.put("key", "2000054");
            jSONObject.put("network_type", k0.s(context));
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str);
            jSONObject.put(BidResponsedEx.KEY_CID, campaignEx.getId());
            jSONObject.put("reason", "");
            jSONObject.put("result", 2);
            if (campaignEx.getAdType() == 287) {
                jSONObject.put("creative", campaignEx.getendcard_url());
                jSONObject.put("ad_type", 3);
            } else if (campaignEx.getAdType() == 94) {
                jSONObject.put("creative", campaignEx.getendcard_url());
                jSONObject.put("ad_type", 1);
            } else if (campaignEx.getAdType() == 296) {
                jSONObject.put("ad_type", 5);
                jSONObject.put("creative", campaignEx.getCreativeId());
            } else if (campaignEx.getAdType() == 297) {
                jSONObject.put("ad_type", 6);
                jSONObject.put("creative", campaignEx.getCreativeId());
            } else if (campaignEx.getAdType() == 298) {
                jSONObject.put("ad_type", 7);
                jSONObject.put("creative", campaignEx.getCreativeId());
            } else {
                jSONObject.put("creative", campaignEx.getendcard_url());
                jSONObject.put("ad_type", 1);
            }
            jSONObject.put("devid", com.mbridge.msdk.foundation.tools.f.d());
            if (campaignEx.isBidCampaign()) {
                jSONObject.put(CampaignEx.JSON_KEY_HB, "1");
            }
            jSONObject.put("rid", campaignEx.getRequestId());
            jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
            jSONObject.put(CampaignEx.JSON_KEY_NEW_INTERSTITIAL_AD_SPACE_T, campaignEx.getAdSpaceT());
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
        } catch (Throwable th2) {
            o0.b(f35566b, th2.getMessage());
        }
    }

    public static void b(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", "2000090");
            jSONObject.put("reason", TextUtils.isEmpty(str) ? "" : str);
            jSONObject.put("result", str);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
        } catch (Exception e11) {
            o0.b(f35566b, e11.getMessage());
        }
    }

    public static void c() {
        try {
            w0.b(com.mbridge.msdk.foundation.controller.c.m().d(), "privateAuthorityTimesTamp", Long.valueOf(System.currentTimeMillis()));
        } catch (Throwable th2) {
            o0.b(f35566b, th2.getMessage());
        }
    }
}
