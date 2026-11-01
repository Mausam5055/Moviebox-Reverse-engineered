package com.mbridge.msdk.splash.report;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.m;
import com.mbridge.msdk.foundation.same.report.g;
import com.mbridge.msdk.foundation.same.report.h;
import com.mbridge.msdk.foundation.same.report.j;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {
    public static void a(int i11, String str, String str2, CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000068");
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                jSONObject.put(BidResponsedEx.KEY_CID, campaignEx.getId());
                jSONObject.put("rid", campaignEx.getRequestId());
                jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
                jSONObject.put(CampaignEx.JSON_KEY_CREATIVE_ID, campaignEx.getCreativeId());
                jSONObject.put(CampaignEx.JSON_KEY_HB, campaignEx.isBidCampaign() ? 1 : 0);
                jSONObject.put("network_type", k0.s(c.m().d()));
                jSONObject.put("result", i11);
                jSONObject.put("reason", str);
                d.b().a(jSONObject);
            } catch (Throwable th2) {
                o0.b("SplashReport", th2.getMessage());
            }
        }
    }

    public static void a(Context context, CampaignEx campaignEx) {
        if (campaignEx == null || campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().d() == null) {
            return;
        }
        com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), campaignEx.getNativeVideoTracking().d(), false, false);
    }

    public static void a(Context context, CampaignEx campaignEx, String str) {
        if (campaignEx != null) {
            try {
                if (campaignEx.isMraid()) {
                    m mVar = new m();
                    mVar.n(campaignEx.getRequestId());
                    mVar.o(campaignEx.getRequestIdNotice());
                    mVar.b(campaignEx.getId());
                    mVar.b(campaignEx.isMraid() ? m.N : m.O);
                    g.d(mVar, context.getApplicationContext(), str);
                }
            } catch (Exception e11) {
                o0.b("SplashReport", e11.getMessage());
            }
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String str2, long j11, int i11) {
        if (campaignEx != null) {
            try {
                if (campaignEx.isMraid()) {
                    m mVar = new m();
                    mVar.n(campaignEx.getRequestId());
                    mVar.o(campaignEx.getRequestIdNotice());
                    mVar.b(campaignEx.getId());
                    mVar.d(i11);
                    mVar.e(String.valueOf(System.currentTimeMillis() - j11));
                    mVar.g("");
                    mVar.m(str2);
                    mVar.a(PrepareException.ERROR_NO_URL);
                    mVar.b(m.N);
                    g.b(mVar, str, campaignEx);
                }
            } catch (Exception e11) {
                o0.b("SplashReport", e11.getMessage());
            }
        }
    }

    public static void a(CampaignEx campaignEx, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", "2000092");
            jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
            jSONObject.put("rid", campaignEx.getRequestId());
            jSONObject.put(BidResponsedEx.KEY_CID, campaignEx.getId());
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str);
            jSONObject.put("network_type", String.valueOf(k0.s(c.m().d())));
            d.b().a(jSONObject);
        } catch (Exception e11) {
            o0.b("SplashReport", e11.getMessage());
        }
    }

    public static void a(CampaignEx campaignEx, String str, int i11) {
        try {
            a(str, i11, campaignEx);
        } catch (Exception e11) {
            o0.b("SplashReport", e11.getMessage());
        }
    }

    public static void a(CampaignEx campaignEx, String str, int i11, int i12, int i13) {
        try {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("flb_size", i12);
                jSONObject.put("x", i11);
                jSONObject.put("flb_type", i13);
            } catch (JSONException e11) {
                o0.b("SplashReport", "e:" + e11.getMessage());
            }
            j.b(c.m().d(), campaignEx, str, jSONObject.toString());
        } catch (Exception e12) {
            o0.b("SplashReport", e12.getMessage());
        }
    }

    public static void a(CampaignEx campaignEx, String str, String str2) {
        if (campaignEx != null) {
            try {
                if (TextUtils.isEmpty(str2) || !campaignEx.isMraid()) {
                    return;
                }
                new h(c.m().d()).a(campaignEx.getRequestId(), campaignEx.getRequestIdNotice(), campaignEx.getId(), str, str2, campaignEx.isBidCampaign());
            } catch (Exception e11) {
                o0.b("SplashReport", e11.getMessage());
            }
        }
    }

    public static void a(String str, int i11, CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000069");
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str);
                jSONObject.put(BidResponsedEx.KEY_CID, campaignEx.getId());
                jSONObject.put("rid", campaignEx.getRequestId());
                jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
                jSONObject.put(CampaignEx.JSON_KEY_CREATIVE_ID, campaignEx.getCreativeId());
                jSONObject.put(CampaignEx.JSON_KEY_HB, campaignEx.isBidCampaign() ? 1 : 0);
                jSONObject.put("network_type", k0.s(c.m().d()));
                jSONObject.put("close_type", i11);
                d.b().a(jSONObject);
            } catch (Throwable th2) {
                o0.b("SplashReport", th2.getMessage());
            }
        }
    }

    public static void a(String str, CampaignEx campaignEx) {
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        m mVar = new m("2000061", campaignEx.getId(), campaignEx.getRequestId(), campaignEx.getRequestIdNotice(), str, k0.s(c.m().d()));
        mVar.b(m.N);
        g.b(mVar, c.m().d(), str);
    }

    public static void a(String str, CampaignEx campaignEx, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (campaignEx.isBidCampaign()) {
                jSONObject.put(CampaignEx.JSON_KEY_HB, 1);
            }
            jSONObject.put("key", "2000070");
            jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
            jSONObject.put("rid", campaignEx.getRequestId());
            jSONObject.put(BidResponsedEx.KEY_CID, campaignEx.getId());
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str);
            jSONObject.put(CampaignEx.JSON_KEY_CLICK_URL, str2);
            jSONObject.put("network_type", String.valueOf(k0.s(c.m().d())));
            d.b().a(jSONObject);
        } catch (Exception e11) {
            o0.b("SplashReport", e11.getMessage());
        }
    }

    public static void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar, CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            d.b().a(str, cVar, campaignEx, context, aVar);
        } catch (Exception e11) {
            o0.b("SplashReport", e11.getMessage());
        }
    }

    public static void b(String str, CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000067");
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str);
                jSONObject.put(BidResponsedEx.KEY_CID, campaignEx.getId());
                jSONObject.put("rid", campaignEx.getRequestId());
                jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
                jSONObject.put(CampaignEx.JSON_KEY_CREATIVE_ID, campaignEx.getCreativeId());
                jSONObject.put(CampaignEx.JSON_KEY_HB, campaignEx.isBidCampaign() ? 1 : 0);
                jSONObject.put("network_type", k0.s(c.m().d()));
                d.b().a(jSONObject);
            } catch (Throwable th2) {
                o0.b("SplashReport", th2.getMessage());
            }
        }
    }
}
