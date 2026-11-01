package com.mbridge.msdk.mbnative.report;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.c;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.out.Campaign;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {
    public static void a(Context context, CampaignEx campaignEx, String str) {
        if (campaignEx != null) {
            try {
                if (campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().h() == null) {
                    return;
                }
                for (String str2 : campaignEx.getNativeVideoTracking().h()) {
                    if (!TextUtils.isEmpty(str2)) {
                        com.mbridge.msdk.click.a.a(context, campaignEx, str, str2, false, true);
                    }
                }
            } catch (Exception e11) {
                o0.b("NativeReport", e11.getMessage());
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
                jSONObject.put("network_type", k0.s(context));
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                jSONObject.put("st", System.currentTimeMillis());
                if (campaignEx != null) {
                    jSONObject.put(BidResponsedEx.KEY_CID, campaignEx.getId());
                    jSONObject.put("adtp", campaignEx.getAdType());
                    jSONObject.put("rid", campaignEx.getRequestId());
                    jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
                }
                if (!TextUtils.isEmpty(str2)) {
                    String str3 = com.mbridge.msdk.foundation.controller.a.f34994r.get(str2);
                    if (str3 == null) {
                        str3 = "";
                    }
                    jSONObject.put("u_stid", str3);
                }
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.V)) {
                    jSONObject.put(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.V);
                }
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.f35335g)) {
                    jSONObject.put("c", com.mbridge.msdk.foundation.same.a.f35335g);
                }
                jSONObject.put(CampaignEx.JSON_KEY_HB, z10 ? 1 : 0);
                jSONObject.put("reason", str);
                d.b().a(jSONObject);
            } catch (Throwable th2) {
                o0.b("NativeReport", th2.getMessage());
            }
        }
    }

    public static void a(Context context, List<Campaign> list, String str) {
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
            CampaignEx campaignEx = (CampaignEx) list.get(0);
            jSONObject.put(BidResponsedEx.KEY_CID, campaignEx.getId());
            jSONObject.put("network_type", k0.s(context));
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str);
            jSONObject.put(CampaignEx.JSON_KEY_HB, "1");
            if (t0.c(campaignEx)) {
                jSONObject.put(CampaignEx.JSON_KEY_RETARGET_TYPE, campaignEx.getRtinsType());
            }
            jSONObject.put("rid", campaignEx.getRequestId());
            jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
            d.b().a(jSONObject);
        } catch (Throwable th2) {
            o0.b("NativeReport", th2.getMessage());
        }
    }

    public static void a(String str, c cVar, CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            d.b().a(str, cVar, campaignEx, context, aVar);
        } catch (Exception e11) {
            o0.b("NativeReport", e11.getMessage());
        }
    }
}
