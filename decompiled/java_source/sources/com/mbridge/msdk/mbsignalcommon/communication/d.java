package com.mbridge.msdk.mbsignalcommon.communication;

import android.text.TextUtils;
import android.util.Base64;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f36495a = "d";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f36496b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f36497c = 1;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f36498a;

        a(CampaignEx campaignEx) {
            this.f36498a = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                j jVarA = j.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                if (jVarA != null) {
                    if (jVarA.a(this.f36498a.getId())) {
                        jVarA.b(this.f36498a.getId());
                    } else {
                        com.mbridge.msdk.foundation.entity.g gVar = new com.mbridge.msdk.foundation.entity.g();
                        gVar.a(this.f36498a.getId());
                        gVar.b(this.f36498a.getFca());
                        gVar.c(this.f36498a.getFcb());
                        gVar.a(0);
                        gVar.d(1);
                        gVar.a(System.currentTimeMillis());
                        jVarA.b(gVar);
                    }
                }
                d.b(this.f36498a.getCampaignUnitId(), this.f36498a);
            } catch (Throwable th2) {
                o0.b(d.f36495a, th2.getMessage(), th2);
            }
        }
    }

    public static String a(float f11, float f12) {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35336h, t0.b(com.mbridge.msdk.foundation.controller.c.m().d(), f11));
            jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35337i, t0.b(com.mbridge.msdk.foundation.controller.c.m().d(), f12));
            jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35341m, 0);
            jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35339k, com.mbridge.msdk.foundation.controller.c.m().d().getResources().getConfiguration().orientation);
            jSONObject2.put(com.mbridge.msdk.foundation.same.a.f35340l, t0.d(com.mbridge.msdk.foundation.controller.c.m().d()));
            jSONObject.put(com.mbridge.msdk.foundation.same.a.f35338j, jSONObject2);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return jSONObject.toString();
    }

    public static String a(int i11) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i11);
            String string = jSONObject.toString();
            if (!TextUtils.isEmpty(string)) {
                return Base64.encodeToString(string.getBytes(), 2);
            }
        } catch (Throwable unused) {
            o0.b(f36495a, "code to string is error");
        }
        return "";
    }

    public static void a(CampaignEx campaignEx) {
        new Thread(new a(campaignEx)).start();
    }

    public static void a(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", f36497c);
            jSONObject.put("message", str);
            jSONObject.put("data", new JSONObject());
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e11) {
            o0.a(f36495a, e11.getMessage());
        }
    }

    public static void a(Object obj, JSONObject jSONObject) {
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("data");
            if (jSONObjectOptJSONObject == null) {
                a(obj, "data is empty");
                return;
            }
            CampaignEx campaignWithBackData = CampaignEx.parseCampaignWithBackData(jSONObjectOptJSONObject);
            if (campaignWithBackData == null) {
                a(obj, "data camapign is empty");
            } else {
                a(campaignWithBackData);
                b(obj, "");
            }
        } catch (Throwable th2) {
            a(obj, th2.getMessage());
        }
    }

    public static void b(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", f36496b);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", str);
            jSONObject.put("data", jSONObject2);
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e11) {
            a(obj, e11.getMessage());
            o0.a(f36495a, e11.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, CampaignEx campaignEx) {
        if (com.mbridge.msdk.foundation.same.buffer.b.f35362c == null || TextUtils.isEmpty(campaignEx.getId())) {
            return;
        }
        com.mbridge.msdk.foundation.same.buffer.b.a(str, campaignEx, "banner");
    }
}
