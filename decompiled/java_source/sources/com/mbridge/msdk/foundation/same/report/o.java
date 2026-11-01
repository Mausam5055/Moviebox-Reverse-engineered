package com.mbridge.msdk.foundation.same.report;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class o {
    public static void a(com.mbridge.msdk.foundation.entity.m mVar) {
        if (mVar != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", mVar.n());
                jSONObject.put(NotificationCompat.CATEGORY_EVENT, t0.a(mVar.k()));
                jSONObject.put("template", t0.a(mVar.A()));
                jSONObject.put(TtmlNode.TAG_LAYOUT, t0.a(mVar.o()));
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, t0.a(mVar.B()));
                jSONObject.put(BidResponsedEx.KEY_CID, t0.a(mVar.d()));
                if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                    jSONObject.put("network_str", mVar.r());
                    jSONObject.put("network_type", mVar.q());
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Exception e11) {
                o0.b("VideoDataReport", e11.getMessage());
            }
        }
    }

    public static void a(List<com.mbridge.msdk.foundation.entity.m> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (com.mbridge.msdk.foundation.entity.m mVar : list) {
            try {
                JSONObject jSONObject = new JSONObject();
                if (mVar.w() != null) {
                    jSONObject.put("resource_type", mVar.w());
                }
                if (mVar.e() != null) {
                    jSONObject.put("creative", mVar.e());
                }
                jSONObject.put("key", mVar.n());
                jSONObject.put("result", mVar.x());
                jSONObject.put("duration", mVar.g());
                jSONObject.put(CampaignEx.JSON_KEY_VIDEO_SIZE, mVar.D());
                jSONObject.put(CampaignEx.JSON_KEY_VIDEO_LENGTHL, mVar.C());
                jSONObject.put("reason", mVar.t());
                jSONObject.put(BidResponsedEx.KEY_CID, mVar.d());
                jSONObject.put(CampaignEx.JSON_KEY_VIDEO_URL, mVar.E());
                jSONObject.put("rid", mVar.u());
                jSONObject.put("rid_n", mVar.v());
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, mVar.B());
                jSONObject.put("offer_url", mVar.s());
                if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                    jSONObject.put("network_type", mVar.q());
                    jSONObject.put("network_str", mVar.r());
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Throwable th2) {
                o0.b("VideoDataReport", th2.getMessage());
            }
        }
    }

    public static String b(com.mbridge.msdk.foundation.entity.m mVar) {
        if (mVar == null) {
            return "";
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", mVar.n());
            jSONObject.put(NotificationCompat.CATEGORY_EVENT, t0.a(mVar.k()));
            jSONObject.put("template", t0.a(mVar.A()));
            jSONObject.put(TtmlNode.TAG_LAYOUT, t0.a(mVar.o()));
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, t0.a(mVar.B()));
            jSONObject.put(BidResponsedEx.KEY_CID, t0.a(mVar.d()));
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                jSONObject.put("network_str", mVar.r());
                jSONObject.put("network_type", mVar.q());
            }
            return jSONObject.toString();
        } catch (Exception e11) {
            o0.b("VideoDataReport", e11.getMessage());
            return "";
        }
    }

    public static void b(List<com.mbridge.msdk.foundation.entity.m> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (com.mbridge.msdk.foundation.entity.m mVar : list) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", mVar.n());
                jSONObject.put("result", mVar.x());
                jSONObject.put("duration", mVar.g());
                jSONObject.put("endcard_url", mVar.i());
                jSONObject.put(BidResponsedEx.KEY_CID, mVar.d());
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, mVar.B());
                jSONObject.put("reason", mVar.t());
                jSONObject.put("ad_type", mVar.a());
                jSONObject.put("rid", mVar.u());
                jSONObject.put("rid_n", mVar.v());
                jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, mVar.h());
                jSONObject.put(CampaignEx.JSON_KEY_NEW_INTERSTITIAL_AD_SPACE_T, mVar.b());
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Throwable th2) {
                o0.b("VideoDataReport", th2.getMessage());
            }
        }
    }

    public static void c(com.mbridge.msdk.foundation.entity.m mVar) {
        if (mVar != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", mVar.n());
                jSONObject.put(BidResponsedEx.KEY_CID, mVar.d());
                jSONObject.put("rid", mVar.u());
                jSONObject.put("rid_n", mVar.v());
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, mVar.B());
                jSONObject.put("network_type", mVar.q());
                jSONObject.put("mraid_type", mVar.p());
                jSONObject.put(TrackingKey.PLATFORM, "1");
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Throwable th2) {
                o0.b("VideoDataReport", th2.getMessage());
            }
        }
    }

    public static void c(List<com.mbridge.msdk.foundation.entity.m> list) {
        if (list != null) {
            try {
                if (list.isEmpty()) {
                    return;
                }
                Iterator<com.mbridge.msdk.foundation.entity.m> it = list.iterator();
                while (it.hasNext()) {
                    a(it.next());
                }
            } catch (Throwable th2) {
                o0.b("VideoDataReport", th2.getMessage());
            }
        }
    }

    public static void d(com.mbridge.msdk.foundation.entity.m mVar) {
        if (mVar != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", mVar.n());
                jSONObject.put(BidResponsedEx.KEY_CID, mVar.d());
                jSONObject.put("rid", mVar.u());
                jSONObject.put("rid_n", mVar.v());
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, mVar.B());
                jSONObject.put("reason", mVar.t());
                jSONObject.put("case", mVar.c());
                jSONObject.put("network_type", mVar.q());
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Throwable th2) {
                o0.b("VideoDataReport", th2.getMessage());
            }
        }
    }

    public static void d(List<com.mbridge.msdk.foundation.entity.m> list) {
        if (list != null) {
            try {
                if (list.isEmpty()) {
                    return;
                }
                for (com.mbridge.msdk.foundation.entity.m mVar : list) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("key", mVar.n());
                    jSONObject.put(BidResponsedEx.KEY_CID, mVar.d());
                    jSONObject.put("image_url", mVar.l());
                    jSONObject.put("reason", mVar.t());
                    jSONObject.put("rid", mVar.u());
                    jSONObject.put("rid_n", mVar.v());
                    jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, mVar.B());
                    if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                        jSONObject.put("network_type", mVar.q());
                    }
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
                }
            } catch (Throwable th2) {
                o0.b("VideoDataReport", th2.getMessage());
            }
        }
    }

    public static void e(com.mbridge.msdk.foundation.entity.m mVar) {
        if (mVar != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", mVar.n());
                jSONObject.put(BidResponsedEx.KEY_CID, mVar.d());
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, mVar.B());
                jSONObject.put("network_type", mVar.q());
                jSONObject.put("rid", mVar.u());
                jSONObject.put("rid_n", mVar.v());
                jSONObject.put("reason", mVar.t());
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Throwable th2) {
                o0.b("VideoDataReport", th2.getMessage());
            }
        }
    }

    public static void e(List<com.mbridge.msdk.foundation.entity.m> list) {
        if (list != null) {
            try {
                if (list.isEmpty()) {
                    return;
                }
                for (com.mbridge.msdk.foundation.entity.m mVar : list) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("key", mVar.n());
                    jSONObject.put("reason", mVar.t());
                    jSONObject.put(BidResponsedEx.KEY_CID, mVar.d());
                    jSONObject.put(CampaignEx.JSON_KEY_VIDEO_URL, mVar.E());
                    jSONObject.put("rid", mVar.u());
                    jSONObject.put("rid_n", mVar.v());
                    jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, mVar.B());
                    jSONObject.put("offer_url", mVar.s());
                    if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                        jSONObject.put("network_type", mVar.q());
                        jSONObject.put("network_str", mVar.r());
                    }
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
                }
            } catch (Throwable th2) {
                o0.b("VideoDataReport", th2.getMessage());
            }
        }
    }

    public static String f(List<com.mbridge.msdk.foundation.entity.m> list) {
        if (list == null) {
            return null;
        }
        try {
            if (list.isEmpty()) {
                return null;
            }
            for (com.mbridge.msdk.foundation.entity.m mVar : list) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", mVar.n());
                jSONObject.put(BidResponsedEx.KEY_CID, mVar.d());
                jSONObject.put("template_url", mVar.z());
                jSONObject.put("reason", mVar.t());
                jSONObject.put("rid", mVar.u());
                jSONObject.put("rid_n", mVar.v());
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, mVar.B());
                jSONObject.put("result", mVar.x());
                if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                    jSONObject.put("network_type", mVar.q());
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            }
            return null;
        } catch (Throwable th2) {
            o0.b("VideoDataReport", th2.getMessage());
            return null;
        }
    }

    public static void f(com.mbridge.msdk.foundation.entity.m mVar) {
        if (mVar != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", mVar.n());
                jSONObject.put("result", mVar.x());
                jSONObject.put("duration", mVar.g());
                jSONObject.put(BidResponsedEx.KEY_CID, mVar.d());
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, mVar.B());
                jSONObject.put("reason", mVar.t());
                jSONObject.put("ad_type", mVar.a());
                jSONObject.put("rid", mVar.u());
                jSONObject.put("rid_n", mVar.v());
                jSONObject.put("network_type", mVar.q());
                jSONObject.put("mraid_type", mVar.p());
                jSONObject.put("devid", mVar.f());
                jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, mVar.h());
                if (mVar.w() != null) {
                    jSONObject.put("resource_type", mVar.w());
                }
                if (!TextUtils.isEmpty(mVar.i())) {
                    jSONObject.put("endcard_url", mVar.i());
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Throwable th2) {
                o0.b("VideoDataReport", th2.getMessage());
            }
        }
    }

    public static void g(com.mbridge.msdk.foundation.entity.m mVar) {
        if (mVar != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", mVar.n());
                jSONObject.put("result", mVar.x());
                jSONObject.put("duration", mVar.g());
                jSONObject.put(BidResponsedEx.KEY_CID, mVar.d());
                jSONObject.put("reason", mVar.t());
                jSONObject.put("ad_type", mVar.a());
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, mVar.B());
                jSONObject.put("devid", mVar.f());
                jSONObject.put("mraid_type", mVar.p());
                jSONObject.put("network_type", mVar.q());
                jSONObject.put("rid_n", mVar.v());
                jSONObject.put("rid", mVar.u());
                if (!TextUtils.isEmpty(mVar.i())) {
                    jSONObject.put("endcard_url", mVar.i());
                }
                if (!TextUtils.isEmpty(mVar.h())) {
                    jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, mVar.h());
                }
                if (mVar.w() != null) {
                    jSONObject.put("resource_type", mVar.w());
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Throwable th2) {
                o0.b("VideoDataReport", th2.getMessage());
            }
        }
    }

    public static void h(com.mbridge.msdk.foundation.entity.m mVar) {
        if (mVar != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", mVar.n());
                jSONObject.put(BidResponsedEx.KEY_CID, mVar.d());
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, mVar.B());
                jSONObject.put("network_type", mVar.q());
                jSONObject.put("mraid_type", mVar.p());
                jSONObject.put("rid_n", mVar.v());
                jSONObject.put("rid", mVar.u());
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Throwable th2) {
                o0.b("VideoDataReport", th2.getMessage());
            }
        }
    }

    public static void i(com.mbridge.msdk.foundation.entity.m mVar) {
        if (mVar != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", mVar.n());
                jSONObject.put("error", t0.a(mVar.j()));
                jSONObject.put("template_url", t0.a(mVar.z()));
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, t0.a(mVar.B()));
                jSONObject.put(BidResponsedEx.KEY_CID, t0.a(mVar.d()));
                if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                    jSONObject.put("network_str", mVar.r());
                    jSONObject.put("network_type", mVar.q());
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
            } catch (Exception e11) {
                o0.b("VideoDataReport", e11.getMessage());
            }
        }
    }
}
