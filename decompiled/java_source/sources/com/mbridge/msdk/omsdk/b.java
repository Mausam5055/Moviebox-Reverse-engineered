package com.mbridge.msdk.omsdk;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import com.iab.omid.library.mmadbridge.adsession.CreativeType;
import com.iab.omid.library.mmadbridge.adsession.ImpressionType;
import com.iab.omid.library.mmadbridge.adsession.Owner;
import com.iab.omid.library.mmadbridge.adsession.f;
import com.iab.omid.library.mmadbridge.adsession.g;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.DomainNameUtils;
import com.mbridge.msdk.foundation.same.directory.e;
import com.mbridge.msdk.foundation.same.report.h;
import com.mbridge.msdk.foundation.tools.m0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.out.MBConfiguration;
import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f36768a = DomainNameUtils.VERIFICATION_URL;

    class a extends com.mbridge.msdk.foundation.same.net.handler.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f36769b;

        a(Context context) {
            this.f36769b = context;
        }

        @Override // com.mbridge.msdk.foundation.same.net.handler.a
        public void a(String str) {
            o0.a("OMSDK", "fetch OMJSContent failed, errorCode = " + str);
            new h(this.f36769b).a("", "", "", "", "fetch OM failed, request failed");
        }

        @Override // com.mbridge.msdk.foundation.same.net.handler.a
        public void b(String str) {
            MBridgeConstans.OMID_JS_SERVICE_CONTENT = str;
            b.b(str);
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.omsdk.b$b, reason: collision with other inner class name */
    class RunnableC0518b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f36770a;

        RunnableC0518b(String str) {
            this.f36770a = str;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            try {
                File file = new File(e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_OTHER), "/omsdk/om_js_content.txt");
                if (file.exists()) {
                    file.delete();
                }
                m0.a(this.f36770a.getBytes(), file);
            } catch (Exception e11) {
                o0.a("OMSDK", e11.getMessage());
            }
        }
    }

    class c extends com.mbridge.msdk.foundation.same.net.handler.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f36771b;

        c(Context context) {
            this.f36771b = context;
        }

        @Override // com.mbridge.msdk.foundation.same.net.handler.a
        public void a(String str) {
            o0.a("OMSDK", "fetch OMJSH5Content failed, errorCode = " + str);
            new h(this.f36771b).a("", "", "", "", "fetch OM H5 failed, request failed");
        }

        @Override // com.mbridge.msdk.foundation.same.net.handler.a
        public void b(String str) {
            MBridgeConstans.OMID_JS_H5_CONTENT = str;
            b.c(str);
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f36772a;

        d(String str) {
            this.f36772a = str;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            try {
                File file = new File(e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_OTHER), "/omsdk/om_js_h5_content.txt");
                if (file.exists()) {
                    file.delete();
                }
                m0.a(this.f36772a.getBytes(), file);
            } catch (Exception e11) {
                o0.a("OMSDK", e11.getMessage());
            }
        }
    }

    public static com.iab.omid.library.mmadbridge.adsession.b a(Context context, WebView webView, String str, CreativeType creativeType) {
        a(context);
        com.iab.omid.library.mmadbridge.adsession.b bVarB = com.iab.omid.library.mmadbridge.adsession.b.b(com.iab.omid.library.mmadbridge.adsession.c.a(CreativeType.HTML_DISPLAY, ImpressionType.BEGIN_TO_RENDER, Owner.NATIVE, Owner.NONE, false), com.iab.omid.library.mmadbridge.adsession.d.a(f.a("Mintegral", MBConfiguration.SDK_VERSION), webView, null, str));
        bVarB.d(webView);
        return bVarB;
    }

    public static com.iab.omid.library.mmadbridge.adsession.b a(Context context, WebView webView, String str, CampaignEx campaignEx) {
        if (TextUtils.isEmpty(MBridgeConstans.OMID_JS_SERVICE_CONTENT)) {
            MBridgeConstans.OMID_JS_SERVICE_CONTENT = a();
        }
        if (TextUtils.isEmpty(MBridgeConstans.OMID_JS_H5_CONTENT)) {
            MBridgeConstans.OMID_JS_H5_CONTENT = b();
        }
        if (!TextUtils.isEmpty(MBridgeConstans.OMID_JS_SERVICE_CONTENT) && !TextUtils.isEmpty(campaignEx.getOmid())) {
            return a(context, webView, (String) null, CreativeType.DEFINED_BY_JAVASCRIPT);
        }
        o0.a("OMSDK", "createNativeAdSession: TextUtils.isEmpty(omid) = " + TextUtils.isEmpty(campaignEx.getOmid()) + " TextUtils.isEmpty(MIntegralConstans.OMID_JS_SERVICE_CONTENT) = " + TextUtils.isEmpty(MBridgeConstans.OMID_JS_SERVICE_CONTENT));
        new h(context).a(campaignEx.getRequestId(), campaignEx.getRequestIdNotice(), campaignEx.getId(), campaignEx.getCampaignUnitId(), "failed, OMID_JS_SERVICE_CONTENT null or omid null");
        return null;
    }

    public static com.iab.omid.library.mmadbridge.adsession.b a(Context context, boolean z10, String str, String str2, String str3, String str4, String str5, String str6) {
        if (TextUtils.isEmpty(MBridgeConstans.OMID_JS_SERVICE_CONTENT)) {
            MBridgeConstans.OMID_JS_SERVICE_CONTENT = a();
        }
        com.iab.omid.library.mmadbridge.adsession.b bVarB = null;
        if (TextUtils.isEmpty(MBridgeConstans.OMID_JS_SERVICE_CONTENT) || TextUtils.isEmpty(str)) {
            o0.a("OMSDK", "createNativeAdSession: TextUtils.isEmpty(omid) = " + TextUtils.isEmpty(str) + " TextUtils.isEmpty(MIntegralConstans.OMID_JS_SERVICE_CONTENT) = " + TextUtils.isEmpty(MBridgeConstans.OMID_JS_SERVICE_CONTENT));
            new h(context).a(str2, str6, str3, str4, "failed, OMID_JS_SERVICE_CONTENT null or omid null");
            return null;
        }
        try {
            a(context);
            f fVarA = f.a("Mintegral", MBConfiguration.SDK_VERSION);
            CreativeType creativeType = z10 ? CreativeType.NATIVE_DISPLAY : CreativeType.VIDEO;
            ImpressionType impressionType = ImpressionType.BEGIN_TO_RENDER;
            Owner owner = Owner.NATIVE;
            try {
                bVarB = com.iab.omid.library.mmadbridge.adsession.b.b(com.iab.omid.library.mmadbridge.adsession.c.a(creativeType, impressionType, owner, z10 ? Owner.NONE : owner, false), com.iab.omid.library.mmadbridge.adsession.d.b(fVarA, MBridgeConstans.OMID_JS_SERVICE_CONTENT, a(str, context, str2, str3, str4, str6), str5, str2));
                o0.a("OMSDK", "adSession create success");
                return bVarB;
            } catch (IllegalArgumentException e11) {
                e = e11;
                o0.b("OMSDK", e.getMessage());
                new h(context).a(str2, str6, str3, str4, "failed, exception " + e.getMessage());
                return bVarB;
            } catch (Exception e12) {
                e = e12;
                o0.b("OMSDK", e.getMessage());
                new h(context).a(str2, str6, str3, str4, "failed, exception " + e.getMessage());
                return bVarB;
            }
        } catch (IllegalArgumentException e13) {
            e = e13;
        } catch (Exception e14) {
            e = e14;
        }
    }

    public static String a() {
        try {
            return m0.e(new File(e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_OTHER), "/omsdk/om_js_content.txt"));
        } catch (Exception e11) {
            o0.a("OMSDK", e11.getMessage());
            return "";
        }
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(MBridgeConstans.OMID_JS_H5_CONTENT)) {
            MBridgeConstans.OMID_JS_H5_CONTENT = b();
        }
        return TextUtils.isEmpty(str) ? str : str.replace("/*OMSDK_INSERT_HERE*/", MBridgeConstans.OMID_JS_H5_CONTENT).replace("[INSERT RESOURCE URL]", f36768a);
    }

    private static List<g> a(String str, Context context, String str2, String str3, String str4, String str5) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (str != null) {
                for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i11);
                    String strOptString = jSONObjectOptJSONObject.optString("vkey", "");
                    URL url = new URL(jSONObjectOptJSONObject.optString("et_url", ""));
                    String strOptString2 = jSONObjectOptJSONObject.optString("verification_p", "");
                    arrayList.add(TextUtils.isEmpty(strOptString2) ? TextUtils.isEmpty(strOptString) ? g.b(url) : g.b(url) : g.a(strOptString, url, strOptString2));
                }
            }
        } catch (IllegalArgumentException e11) {
            o0.b("OMSDK", e11.getMessage());
            new h(context).a(str2, str5, str3, str4, "failed, exception " + e11.getMessage());
        } catch (MalformedURLException e12) {
            o0.b("OMSDK", e12.getMessage());
            new h(context).a(str2, str5, str3, str4, "failed, exception " + e12.getMessage());
        } catch (JSONException e13) {
            o0.b("OMSDK", e13.getMessage());
            new h(context).a(str2, str5, str3, str4, "failed, exception " + e13.getMessage());
        }
        return arrayList;
    }

    private static void a(Context context) {
        if (le.a.b()) {
            return;
        }
        le.a.a(context);
    }

    public static String b() {
        try {
            File file = new File(e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_OTHER), "/omsdk/om_js_h5_content.txt");
            if (file.exists()) {
                return m0.e(file);
            }
        } catch (Exception e11) {
            o0.a("OMSDK", e11.getMessage());
        }
        return "";
    }

    public static void b(Context context) {
        if (TextUtils.isEmpty(MBridgeConstans.OMID_JS_SERVICE_URL)) {
            MBridgeConstans.OMID_JS_SERVICE_CONTENT = "";
            new h(context).a("", "", "", "", "fetch OM failed, OMID_JS_SERVICE_URL null");
        } else {
            if (context == null) {
                return;
            }
            try {
                new com.mbridge.msdk.omsdk.a(context.getApplicationContext()).get(0, MBridgeConstans.OMID_JS_SERVICE_URL, (com.mbridge.msdk.foundation.same.net.wrapper.e) null, new a(context), "om_sdk", 60000L);
            } catch (Exception e11) {
                o0.b("OMSDK", e11.getMessage());
            }
        }
    }

    public static void b(String str) {
        new Thread(new RunnableC0518b(str)).start();
    }

    public static void c(Context context) {
        if (TextUtils.isEmpty(MBridgeConstans.OMID_JS_H5_URL)) {
            MBridgeConstans.OMID_JS_H5_CONTENT = "";
            new h(context).a("", "", "", "", "fetch OM failed, OMID_JS_H5_URL null");
        } else {
            if (context == null) {
                return;
            }
            try {
                new com.mbridge.msdk.omsdk.a(context.getApplicationContext()).get(0, MBridgeConstans.OMID_JS_H5_URL, (com.mbridge.msdk.foundation.same.net.wrapper.e) null, new c(context), "om_sdk", 60000L);
            } catch (Exception e11) {
                o0.b("OMSDK", e11.getMessage());
            }
        }
    }

    public static void c(String str) {
        new Thread(new d(str)).start();
    }
}
