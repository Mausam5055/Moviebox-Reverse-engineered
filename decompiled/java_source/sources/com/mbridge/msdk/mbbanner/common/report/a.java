package com.mbridge.msdk.mbbanner.common.report;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.h;
import com.mbridge.msdk.foundation.same.report.metrics.c;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.setting.l;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {
    public static c a(String str, String str2) {
        c cVar = new c();
        try {
            LinkedHashMap<String, c> linkedHashMapC = d.b().c();
            if (linkedHashMapC != null && !linkedHashMapC.isEmpty()) {
                Iterator<Map.Entry<String, c>> it = linkedHashMapC.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<String, c> next = it.next();
                    if (next != null && next.getValue().z()) {
                        it.remove();
                    }
                }
            }
            cVar = d.b().a(str2);
            if (cVar == null) {
                c cVar2 = new c();
                try {
                    d.b().c().put(str2, cVar2);
                    cVar2.d(true);
                    cVar = cVar2;
                } catch (Exception e11) {
                    e = e11;
                    cVar = cVar2;
                    o0.b("BannerReport", e.getMessage());
                }
            }
            cVar.a(296);
            cVar.h(str2);
            cVar.m(str);
        } catch (Exception e12) {
            e = e12;
        }
        return cVar;
    }

    public static void a(Context context, CampaignEx campaignEx) {
        if (campaignEx == null || campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().d() == null) {
            return;
        }
        com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), campaignEx.getNativeVideoTracking().d(), false, false);
    }

    public static void a(CampaignEx campaignEx, String str) {
        if (campaignEx != null) {
            try {
                String strB = com.mbridge.msdk.mbsignalcommon.mraid.c.b(campaignEx.getId());
                if (TextUtils.isEmpty(strB)) {
                    return;
                }
                new h(com.mbridge.msdk.foundation.controller.c.m().d()).b(campaignEx.getRequestId(), campaignEx.getRequestIdNotice(), campaignEx.getId(), str, strB, campaignEx.isBidCampaign());
                com.mbridge.msdk.mbsignalcommon.mraid.c.a(campaignEx.getId());
            } catch (Throwable th2) {
                o0.b("BannerReport", th2.getMessage());
            }
        }
    }

    public static void a(CampaignEx campaignEx, String str, String str2) {
        if (campaignEx != null) {
            try {
                if (TextUtils.isEmpty(str2)) {
                    return;
                }
                new h(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx.getRequestId(), campaignEx.getRequestIdNotice(), campaignEx.getId(), str, str2, campaignEx.isBidCampaign());
            } catch (Exception e11) {
                o0.b("BannerReport", e11.getMessage());
            }
        }
    }

    private static void a(c cVar, e eVar) {
        List<CampaignEx> listJ;
        try {
            String strW = cVar.w();
            if (TextUtils.isEmpty(strW) && (listJ = cVar.j()) != null && !listJ.isEmpty() && listJ.get(0) != null) {
                strW = listJ.get(0).getCampaignUnitId();
                cVar.a(listJ.get(0).getAdType());
                cVar.m(strW);
            }
            l lVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b(), strW);
            if (lVarD != null) {
                if (eVar == null) {
                    eVar = new e();
                }
                eVar.a("us_rid", lVarD.I());
                HashMap<String, String> map = com.mbridge.msdk.foundation.controller.a.f34994r;
                if (map == null) {
                    eVar.a("u_stid", lVarD.a());
                    return;
                }
                String str = map.get(strW);
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                eVar.a("u_stid", str);
            }
        } catch (Exception e11) {
            o0.b("BannerReport", e11.getMessage());
        }
    }

    public static void a(String str) {
        LinkedHashMap<String, c> linkedHashMapC;
        try {
            if (TextUtils.isEmpty(str) || (linkedHashMapC = d.b().c()) == null || linkedHashMapC.isEmpty()) {
                return;
            }
            Iterator<Map.Entry<String, c>> it = linkedHashMapC.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<String, c> next = it.next();
                if (next != null) {
                    c value = next.getValue();
                    if (value.z()) {
                        it.remove();
                    }
                    if (value.w().equals(str)) {
                        it.remove();
                    }
                }
            }
        } catch (Throwable th2) {
            o0.b("BannerReport", th2.getMessage());
        }
    }

    public static void a(String str, CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("key", "2000067");
                jSONObject.put("rid", campaignEx.getRequestId());
                jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
                jSONObject.put(BidResponsedEx.KEY_CID, campaignEx.getId());
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str);
                jSONObject.put(CampaignEx.JSON_KEY_HB, campaignEx.isBidCampaign() ? 1 : 0);
                HashMap<String, String> map = com.mbridge.msdk.foundation.controller.a.f34994r;
                if (map != null) {
                    String str2 = map.get(str);
                    if (!TextUtils.isEmpty(str2)) {
                        jSONObject.put("u_stid", str2);
                    }
                }
                d.b().a(jSONObject);
            } catch (Throwable th2) {
                o0.b("BannerReport", th2.getMessage());
            }
        }
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
            jSONObject.put("network_type", String.valueOf(k0.s(com.mbridge.msdk.foundation.controller.c.m().d())));
            d.b().a(jSONObject);
        } catch (Exception e11) {
            o0.b("BannerReport", e11.getMessage());
        }
    }

    public static void a(String str, c cVar, CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            d.b().a(str, cVar, campaignEx, context, aVar);
        } catch (Exception e11) {
            o0.b("BannerReport", e11.getMessage());
        }
    }

    public static void a(String str, c cVar, e eVar) {
        try {
            a(cVar, eVar);
            if (eVar != null) {
                cVar.a(str, eVar);
            }
            d.b().b(str, cVar, null);
        } catch (Exception e11) {
            o0.b("BannerReport", e11.getMessage());
        }
    }

    public static String b(String str) {
        String md5 = SameMD5.getMD5(t0.d());
        try {
            if (TextUtils.isEmpty(str)) {
                return md5;
            }
            String[] strArrSplit = str.split("_");
            if (strArrSplit.length >= 3) {
                String str2 = strArrSplit[2];
                return !TextUtils.isEmpty(str2) ? str2 : md5;
            }
        } catch (Exception e11) {
            o0.b("BannerReport", e11.getMessage());
        }
        return "";
    }
}
