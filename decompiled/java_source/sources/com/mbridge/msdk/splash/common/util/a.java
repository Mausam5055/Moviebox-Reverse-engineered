package com.mbridge.msdk.splash.common.util;

import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37411a = "a";

    public static CampaignEx a(String str, CampaignEx campaignEx) throws JSONException {
        String strValueOf;
        String strValueOf2;
        if (TextUtils.isEmpty(str)) {
            return campaignEx;
        }
        if (TextUtils.isEmpty(str) && campaignEx == null) {
            return null;
        }
        if (str.contains("notice")) {
            try {
                JSONObject jSONObjectCampaignToJsonObject = CampaignEx.campaignToJsonObject(campaignEx);
                JSONObject jSONObject = new JSONObject(str);
                try {
                    if (!jSONObject.has(CampaignEx.JSON_KEY_DEEP_LINK_URL)) {
                        jSONObjectCampaignToJsonObject.put(CampaignEx.JSON_KEY_DEEP_LINK_URL, "");
                    }
                } catch (Exception e11) {
                    o0.b(f37411a, e11.getMessage());
                }
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    jSONObjectCampaignToJsonObject.put(next, jSONObject.getString(next));
                }
                CampaignEx campaignWithBackData = CampaignEx.parseCampaignWithBackData(jSONObjectCampaignToJsonObject);
                String strOptString = jSONObjectCampaignToJsonObject.optString("unitId");
                if (!TextUtils.isEmpty(strOptString)) {
                    campaignWithBackData.setCampaignUnitId(strOptString);
                }
                return campaignWithBackData;
            } catch (JSONException e12) {
                o0.b(f37411a, e12.getMessage());
                return campaignEx;
            }
        }
        try {
            JSONObject jSONObjectCampaignToJsonObject2 = CampaignEx.campaignToJsonObject(campaignEx);
            CampaignEx campaignWithBackData2 = CampaignEx.parseCampaignWithBackData(jSONObjectCampaignToJsonObject2);
            if (campaignWithBackData2 == null) {
                campaignWithBackData2 = campaignEx;
            }
            if (!TextUtils.isEmpty(str)) {
                String strOptString2 = jSONObjectCampaignToJsonObject2.optString("unitId");
                if (!TextUtils.isEmpty(strOptString2)) {
                    campaignWithBackData2.setCampaignUnitId(strOptString2);
                }
                JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject(com.mbridge.msdk.foundation.same.a.f35338j);
                if (jSONObjectOptJSONObject != null) {
                    String string = jSONObjectOptJSONObject.getString(com.mbridge.msdk.foundation.same.a.f35336h);
                    String string2 = jSONObjectOptJSONObject.getString(com.mbridge.msdk.foundation.same.a.f35337i);
                    if (TextUtils.isEmpty(string)) {
                        string = "-999";
                    }
                    int i11 = Integer.parseInt(string);
                    if (TextUtils.isEmpty(string2)) {
                        string2 = "-999";
                    }
                    int i12 = Integer.parseInt(string2);
                    strValueOf = i11 != -999 ? String.valueOf(t0.a(c.m().d(), i11)) : "-999";
                    strValueOf2 = i12 != -999 ? String.valueOf(t0.a(c.m().d(), i12)) : "-999";
                } else {
                    strValueOf = "-999";
                    strValueOf2 = strValueOf;
                }
                campaignWithBackData2.setClickURL(com.mbridge.msdk.click.c.a(campaignWithBackData2.getClickURL(), strValueOf, strValueOf2));
                String noticeUrl = campaignWithBackData2.getNoticeUrl();
                if (jSONObjectOptJSONObject != null) {
                    Iterator<String> itKeys2 = jSONObjectOptJSONObject.keys();
                    StringBuilder sb2 = new StringBuilder();
                    while (itKeys2.hasNext()) {
                        sb2.append(UrlUtils.AND_MARK);
                        String next2 = itKeys2.next();
                        String strOptString3 = jSONObjectOptJSONObject.optString(next2);
                        if (com.mbridge.msdk.foundation.same.a.f35336h.equals(next2) || com.mbridge.msdk.foundation.same.a.f35337i.equals(next2)) {
                            if (TextUtils.isEmpty(strOptString3)) {
                                strOptString3 = "-999";
                            }
                            int i13 = Integer.parseInt(strOptString3);
                            strOptString3 = i13 != -999 ? String.valueOf(t0.a(c.m().d(), i13)) : "-999";
                        }
                        sb2.append(next2);
                        sb2.append(UrlUtils.EQUAL_MARK);
                        sb2.append(strOptString3);
                    }
                    campaignWithBackData2.setNoticeUrl(noticeUrl + ((Object) sb2));
                }
            }
            return campaignWithBackData2;
        } catch (Throwable unused) {
            return campaignEx;
        }
    }

    public static String a(int i11, float f11, float f12) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (i11 == 4) {
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35336h, -999);
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35337i, -999);
            } else {
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35336h, t0.b(c.m().d(), f11));
                jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35337i, t0.b(c.m().d(), f12));
            }
            jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35341m, i11);
            jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35339k, c.m().d().getResources().getConfiguration().orientation);
            jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35340l, t0.d(c.m().d()));
            jSONObject.put(com.mbridge.msdk.foundation.same.a.f35338j, jSONObject2);
        } catch (Exception e11) {
            o0.b(f37411a, e11.getMessage());
        }
        return jSONObject.toString();
    }
}
