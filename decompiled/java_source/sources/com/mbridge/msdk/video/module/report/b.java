package com.mbridge.msdk.video.module.report;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.net.wrapper.e;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.videocommon.entity.c;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static HashMap<String, ArrayList<String>> f39497a = new HashMap<>();

    private static String a(String str, e eVar) {
        if (eVar != null) {
            String strTrim = eVar.b().trim();
            if (!TextUtils.isEmpty(strTrim)) {
                String str2 = UrlUtils.QUESTION_MARK;
                if (!str.endsWith(UrlUtils.QUESTION_MARK) && !str.endsWith(UrlUtils.AND_MARK)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    if (str.contains(UrlUtils.QUESTION_MARK)) {
                        str2 = UrlUtils.AND_MARK;
                    }
                    sb2.append(str2);
                    str = sb2.toString();
                }
                return str + strTrim;
            }
        }
        return "";
    }

    public static void a(Context context, CampaignEx campaignEx) {
        if (campaignEx == null || campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().d() == null) {
            return;
        }
        String campaignUnitId = campaignEx.getCampaignUnitId();
        ArrayList<String> arrayList = f39497a.get(campaignUnitId);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            f39497a.put(campaignUnitId, arrayList);
        }
        if (arrayList.contains(campaignEx.getId())) {
            return;
        }
        try {
            d.b().a("2000142", campaignEx);
        } catch (Exception unused) {
        }
        com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), campaignEx.getNativeVideoTracking().d(), false, false);
        arrayList.add(campaignEx.getId());
    }

    public static void a(Context context, CampaignEx campaignEx, int i11, int i12) {
        try {
            String[] strArrH = campaignEx.getNativeVideoTracking().h();
            if (campaignEx.getNativeVideoTracking() == null || strArrH == null) {
                return;
            }
            String[] strArr = new String[strArrH.length];
            for (int i13 = 0; i13 < strArrH.length; i13++) {
                String str = strArrH[i13];
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("endscreen_type", i11);
                String string = jSONObject.toString();
                if (!TextUtils.isEmpty(string)) {
                    string = i0.b(string);
                }
                if (!TextUtils.isEmpty(string)) {
                    str = str + "&value=" + URLEncoder.encode(string);
                }
                strArr[i13] = campaignEx.getSpareOfferFlag() == 1 ? str + "&to=1&cbt=" + campaignEx.getCbt() + "&tmorl=" + i12 : str + "&to=0&cbt=" + campaignEx.getCbt() + "&tmorl=" + i12;
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, Integer.valueOf(i11));
                d.b().a("2000144", campaignEx, eVar);
                d.b().a("2000147", campaignEx, eVar);
            } catch (Exception unused) {
            }
            com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), strArr, false, true);
        } catch (Throwable unused2) {
            o0.b("VideoViewReport", "reportEndcardshowData error");
        }
    }

    public static void a(Context context, CampaignEx campaignEx, int i11, int i12, int i13) {
        String str;
        if (i12 == 0 || context == null || campaignEx == null) {
            return;
        }
        try {
            List<Map<Integer, String>> listO = campaignEx.getNativeVideoTracking().o();
            int i14 = ((i11 + 1) * 100) / i12;
            if (listO != null) {
                int i15 = 0;
                int i16 = 0;
                while (i15 < listO.size()) {
                    Map<Integer, String> map = listO.get(i15);
                    if (map != null && map.size() > 0) {
                        Iterator<Map.Entry<Integer, String>> it = map.entrySet().iterator();
                        int i17 = i15;
                        while (it.hasNext()) {
                            Map.Entry<Integer, String> next = it.next();
                            Integer key = next.getKey();
                            int iIntValue = key.intValue();
                            String value = next.getValue();
                            if (campaignEx.getSpareOfferFlag() == 1) {
                                str = value + "&to=1&cbt=" + campaignEx.getCbt() + "&tmorl=" + i13;
                            } else {
                                str = value + "&to=0&cbt=" + campaignEx.getCbt() + "&tmorl=" + i13;
                            }
                            if (iIntValue <= i14 && !TextUtils.isEmpty(str)) {
                                String[] strArr = {str};
                                if (i16 < 1) {
                                    i16++;
                                    try {
                                        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                                        eVar.a("percent", key);
                                        d.b().a("2000140", campaignEx, eVar);
                                    } catch (Exception unused) {
                                    }
                                }
                                int i18 = i16;
                                com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), strArr, false, true);
                                it.remove();
                                listO.remove(i17);
                                i17--;
                                i16 = i18;
                            }
                        }
                        i15 = i17;
                    }
                    i15++;
                }
            }
        } catch (Throwable unused2) {
            o0.b("VideoViewReport", "reportPlayPercentageData error");
        }
    }

    public static void a(CampaignEx campaignEx, c cVar, String str, String str2, String str3) {
        if (campaignEx == null || cVar == null) {
            return;
        }
        try {
            com.mbridge.msdk.video.module.request.b bVar = new com.mbridge.msdk.video.module.request.b(com.mbridge.msdk.foundation.controller.c.m().d());
            e eVar = new e();
            eVar.a("user_id", i0.b(str2));
            eVar.a("cb_type", "1");
            eVar.a(CampaignEx.JSON_KEY_REWARD_NAME, cVar.c());
            eVar.a(CampaignEx.JSON_KEY_REWARD_AMOUNT, cVar.a() + "");
            eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, str);
            eVar.a("click_id", campaignEx.getRequestIdNotice());
            if (!TextUtils.isEmpty(str3)) {
                eVar.a("extra", str3);
            }
            bVar.addExtraParams("", eVar);
            String strA = a(campaignEx.getHost() + "/addReward?", eVar);
            o0.b("VideoViewReport", "rewardUrl:" + strA);
            com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, campaignEx.getCampaignUnitId(), strA, false, false);
        } catch (Throwable th2) {
            o0.b("VideoViewReport", th2.getMessage(), th2);
        }
    }

    public static void a(CampaignEx campaignEx, String str) {
        if (campaignEx != null) {
            try {
                if (campaignEx.getAdUrlList() == null || campaignEx.getAdUrlList().size() <= 0) {
                    return;
                }
                for (String str2 : campaignEx.getAdUrlList()) {
                    if (!TextUtils.isEmpty(str2)) {
                        com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, str, str2, false, false);
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    public static void a(CampaignEx campaignEx, Map<Integer, String> map, String str, int i11) {
        if (campaignEx == null || map == null) {
            return;
        }
        try {
            if (map.size() > 0) {
                Iterator<Map.Entry<Integer, String>> it = map.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<Integer, String> next = it.next();
                    Integer key = next.getKey();
                    String value = next.getValue();
                    if (i11 == key.intValue() && !TextUtils.isEmpty(value)) {
                        com.mbridge.msdk.click.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, str, value, false, false);
                        it.remove();
                    }
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public static void a(String str) {
        f39497a.remove(str);
    }

    public static void b(Context context, CampaignEx campaignEx) {
        if (campaignEx == null || campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().e() == null) {
            return;
        }
        d.b().a("2000143", campaignEx);
        com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), campaignEx.getNativeVideoTracking().e(), false, false);
    }

    public static void c(Context context, CampaignEx campaignEx) {
        if (campaignEx == null || campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().n() == null) {
            return;
        }
        com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), campaignEx.getNativeVideoTracking().n(), false, false);
    }

    public static void d(Context context, CampaignEx campaignEx) {
        if (campaignEx == null || campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().k() == null) {
            return;
        }
        d.b().a("2000141", campaignEx);
        com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), campaignEx.getNativeVideoTracking().k(), false, false);
    }

    public static void e(Context context, CampaignEx campaignEx) {
        if (campaignEx == null || campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().m() == null) {
            return;
        }
        com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), campaignEx.getNativeVideoTracking().m(), false, false);
    }

    public static void f(Context context, CampaignEx campaignEx) {
        if (campaignEx == null || campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().s() == null) {
            return;
        }
        com.mbridge.msdk.click.a.a(context, campaignEx, campaignEx.getCampaignUnitId(), campaignEx.getNativeVideoTracking().s(), false, false);
    }
}
