package com.mbridge.msdk.splash.signal;

import android.text.TextUtils;
import android.util.Base64;
import android.webkit.WebView;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.db.m;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.l;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.s0;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import java.io.File;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f37618a = "SplashSignalUtils";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f37619b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f37620c = 1;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ CampaignEx f37621a;

        a(CampaignEx campaignEx) {
            this.f37621a = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                j jVarA = j.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                if (jVarA != null) {
                    if (jVarA.a(this.f37621a.getId())) {
                        jVarA.b(this.f37621a.getId());
                    } else {
                        com.mbridge.msdk.foundation.entity.g gVar = new com.mbridge.msdk.foundation.entity.g();
                        gVar.a(this.f37621a.getId());
                        gVar.b(this.f37621a.getFca());
                        gVar.c(this.f37621a.getFcb());
                        gVar.a(0);
                        gVar.d(1);
                        gVar.a(System.currentTimeMillis());
                        jVarA.b(gVar);
                    }
                }
                c.b(this.f37621a.getCampaignUnitId(), this.f37621a);
            } catch (Throwable th2) {
                o0.b(c.f37618a, th2.getMessage(), th2);
            }
        }
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
            o0.b(f37618a, "code to string is error");
        }
        return "";
    }

    public static void a(WebView webView) {
        o0.b(f37618a, "fireOnSignalCommunication");
        f.a().a(webView);
    }

    public static void a(WebView webView, String str, String str2) {
        f.a().a(webView, str, str2);
    }

    public static void a(CampaignEx campaignEx) {
        new Thread(new a(campaignEx)).start();
    }

    public static void a(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", f37620c);
            jSONObject.put("message", str);
            jSONObject.put("data", new JSONObject());
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e11) {
            o0.a(f37618a, e11.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.lang.Object, org.json.JSONArray] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r5v0, types: [org.json.JSONObject] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Object, org.json.JSONObject] */
    public static void a(Object obj, JSONObject jSONObject) {
        ?? r11;
        String str;
        JSONArray jSONArray;
        int i11;
        boolean z10;
        String str2;
        String str3;
        String str4 = "";
        ?? jSONObject2 = new JSONObject();
        String str5 = "message";
        int i12 = 1;
        if (jSONObject == null) {
            try {
                jSONObject2.put("code", 1);
                jSONObject2.put("message", "params is null");
                f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                return;
            } catch (JSONException e11) {
                o0.a(f37618a, e11.getMessage());
                return;
            }
        }
        try {
            jSONObject2.put("code", 0);
            jSONObject2.put("message", "");
            JSONArray jSONArray2 = jSONObject.getJSONArray("resource");
            try {
                if (jSONArray2 != null) {
                    try {
                        if (jSONArray2.length() > 0) {
                            ?? jSONArray3 = new JSONArray();
                            int length = jSONArray2.length();
                            int i13 = 0;
                            while (i13 < length) {
                                JSONObject jSONObject3 = jSONArray2.getJSONObject(i13);
                                String strOptString = jSONObject3.optString("ref", str4);
                                int i14 = jSONObject3.getInt(NativeComponentConstants.KEY_COMPONENT_TYPE);
                                ?? jSONObject4 = new JSONObject();
                                if (i14 != i12 || TextUtils.isEmpty(strOptString)) {
                                    str4 = str4;
                                    str = str5;
                                    jSONArray = jSONArray2;
                                    i11 = length;
                                    z10 = false;
                                    if (i14 == 2 && !TextUtils.isEmpty(strOptString)) {
                                        JSONObject jSONObject5 = new JSONObject();
                                        jSONObject5.put(NativeComponentConstants.KEY_COMPONENT_TYPE, 2);
                                        jSONObject5.put("path", H5DownLoadManager.getInstance().getH5ResAddress(strOptString) == null ? str4 : H5DownLoadManager.getInstance().getH5ResAddress(strOptString));
                                        jSONObject4.put(strOptString, jSONObject5);
                                        jSONArray3.put(jSONObject4);
                                    } else if (i14 == 3 && !TextUtils.isEmpty(strOptString)) {
                                        try {
                                            File file = new File(strOptString);
                                            if (file.exists() && file.isFile() && file.canRead()) {
                                                o0.a(f37618a, "getFileInfo Mraid file " + strOptString);
                                                str2 = "file:////" + strOptString;
                                            } else {
                                                str2 = str4;
                                            }
                                        } catch (Throwable th2) {
                                            if (MBridgeConstans.DEBUG) {
                                                th2.printStackTrace();
                                            }
                                        }
                                        JSONObject jSONObject6 = new JSONObject();
                                        jSONObject6.put(NativeComponentConstants.KEY_COMPONENT_TYPE, 3);
                                        jSONObject6.put("path", str2);
                                        jSONObject4.put(strOptString, jSONObject6);
                                        jSONArray3.put(jSONObject4);
                                    } else if (i14 == 4 && !TextUtils.isEmpty(strOptString)) {
                                        JSONObject jSONObject7 = new JSONObject();
                                        jSONObject7.put(NativeComponentConstants.KEY_COMPONENT_TYPE, 4);
                                        jSONObject7.put("path", s0.a(strOptString) == null ? str4 : s0.a(strOptString));
                                        jSONObject4.put(strOptString, jSONObject7);
                                        jSONArray3.put(jSONObject4);
                                    }
                                } else {
                                    JSONObject jSONObject8 = new JSONObject();
                                    l lVarB = m.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d())).b(strOptString);
                                    if (lVarB != null) {
                                        jSONArray = jSONArray2;
                                        i11 = length;
                                        o0.a(f37618a, "VideoBean not null");
                                        jSONObject8.put(NativeComponentConstants.KEY_COMPONENT_TYPE, 1);
                                        jSONObject8.put("videoDataLength", lVarB.d());
                                        String strE = lVarB.e();
                                        str = str5;
                                        if (TextUtils.isEmpty(strE)) {
                                            o0.a(f37618a, "VideoPath null");
                                            jSONObject8.put("path", str4);
                                            jSONObject8.put("path4Web", str4);
                                        } else {
                                            o0.a(f37618a, "VideoPath not null");
                                            jSONObject8.put("path", strE);
                                            jSONObject8.put("path4Web", strE);
                                        }
                                        if (lVarB.b() == 5) {
                                            jSONObject8.put("downloaded", 1);
                                            z10 = false;
                                        } else {
                                            z10 = false;
                                            jSONObject8.put("downloaded", 0);
                                        }
                                        jSONObject4.put(strOptString, jSONObject8);
                                        jSONArray3.put(jSONObject4);
                                    } else {
                                        str4 = str4;
                                        str = str5;
                                        jSONArray = jSONArray2;
                                        i11 = length;
                                        z10 = false;
                                        o0.a(f37618a, "VideoBean null");
                                    }
                                }
                                i13++;
                                jSONArray2 = jSONArray;
                                length = i11;
                                str5 = str;
                                str4 = str4;
                                i12 = 1;
                            }
                            jSONObject2.put("resource", jSONArray3);
                            f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                            return;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        str = str5;
                        r11 = str;
                        try {
                            jSONObject2.put("code", 1);
                            jSONObject2.put(r11, th.getLocalizedMessage());
                            f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                        } catch (JSONException e12) {
                            o0.a(f37618a, e12.getMessage());
                            return;
                        }
                    }
                }
                r11 = 1;
                try {
                    try {
                        jSONObject2.put("code", 1);
                        str3 = "message";
                        try {
                            jSONObject2.put(str3, "resource is null");
                            f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                            r11 = str3;
                        } catch (JSONException e13) {
                            e = e13;
                            o0.a(f37618a, e.getMessage());
                            r11 = str3;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        jSONObject2.put("code", 1);
                        jSONObject2.put(r11, th.getLocalizedMessage());
                        f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                    }
                } catch (JSONException e14) {
                    e = e14;
                    str3 = "message";
                }
            } catch (Throwable th5) {
                th = th5;
                r11 = str;
                jSONObject2.put("code", 1);
                jSONObject2.put(r11, th.getLocalizedMessage());
                f.a().b(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
            }
        } catch (Throwable th6) {
            th = th6;
            r11 = "message";
        }
    }

    public static void b(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", f37619b);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", str);
            jSONObject.put("data", jSONObject2);
            f.a().b(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Exception e11) {
            a(obj, e11.getMessage());
            o0.a(f37618a, e11.getMessage());
        }
    }

    public static void b(Object obj, JSONObject jSONObject) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, CampaignEx campaignEx) {
        if (com.mbridge.msdk.foundation.same.buffer.b.f35372m == null || TextUtils.isEmpty(campaignEx.getId())) {
            return;
        }
        com.mbridge.msdk.foundation.same.buffer.b.a(str, campaignEx, "splash");
    }
}
