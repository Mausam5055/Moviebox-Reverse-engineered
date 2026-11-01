package com.mbridge.msdk.setting;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.e0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37324a = "j";

    class a extends com.mbridge.msdk.foundation.same.net.wrapper.d {
        a() {
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(String str) {
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(JSONObject jSONObject) {
            if (jSONObject == null || !jSONObject.has(com.mbridge.msdk.foundation.entity.b.JSON_KEY_C_I)) {
                return;
            }
            try {
                e0.a().a(jSONObject.getString(com.mbridge.msdk.foundation.entity.b.JSON_KEY_C_I));
            } catch (Exception e11) {
                o0.b(j.f37324a, e11.getMessage());
            }
        }
    }

    class b extends com.mbridge.msdk.foundation.same.net.wrapper.d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f37326b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f37327c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f37328d;

        b(String str, Context context, String str2) {
            this.f37326b = str;
            this.f37327c = context;
            this.f37328d = str2;
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(String str) {
            try {
                j.this.a(2, 0, str);
            } catch (Throwable th2) {
                o0.b(j.f37324a, th2.getMessage());
            }
            if (com.mbridge.msdk.foundation.same.net.utils.d.h().f35486s) {
                com.mbridge.msdk.foundation.same.net.utils.d.h().f35490w++;
            } else {
                com.mbridge.msdk.foundation.same.net.utils.d.h().f35489v++;
            }
            j.this.a(this.f37327c, this.f37326b, this.f37328d);
            j.this.c();
            o0.b(j.f37324a, "get app setting error" + str);
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(JSONObject jSONObject) {
            try {
                j.this.a(1, 0, "");
            } catch (Throwable th2) {
                o0.b(j.f37324a, th2.getMessage());
            }
            try {
                if (t0.a(jSONObject)) {
                    if (jSONObject.optInt("vtag_status", 0) == 1) {
                        String strE = h.b().e(this.f37326b);
                        if (!TextUtils.isEmpty(strE)) {
                            try {
                                jSONObject = h.b().a(new JSONObject(strE), jSONObject);
                            } catch (Exception e11) {
                                o0.b(j.f37324a, e11.getMessage());
                            }
                        }
                    }
                    k.a(jSONObject);
                    jSONObject.put("current_time", System.currentTimeMillis());
                    if (com.mbridge.msdk.foundation.same.net.utils.d.h().f35486s) {
                        if (TextUtils.isEmpty(jSONObject.optString("hst_st_t"))) {
                            jSONObject.put("hst_st_t", com.mbridge.msdk.foundation.same.net.utils.d.h().f35480m);
                        }
                    } else if (TextUtils.isEmpty(jSONObject.optString("hst_st"))) {
                        jSONObject.put("hst_st", com.mbridge.msdk.foundation.same.net.utils.d.h().f35476i);
                    }
                    h.b().h(this.f37326b, jSONObject.toString());
                    com.mbridge.msdk.foundation.same.net.utils.d.h().j();
                    k.a();
                    try {
                        if (!TextUtils.isEmpty(jSONObject.optString("mraid_js"))) {
                            com.mbridge.msdk.setting.util.a.a().a(this.f37327c, jSONObject.optString("mraid_js"));
                        }
                    } catch (Exception e12) {
                        o0.b(j.f37324a, e12.getMessage());
                    }
                    if (!TextUtils.isEmpty(jSONObject.optString("web_env_url"))) {
                        com.mbridge.msdk.setting.util.b.c().a(this.f37327c, jSONObject.optString("web_env_url"));
                    }
                    j.this.a(this.f37327c, this.f37326b);
                } else {
                    h.b().h(this.f37326b);
                }
                j.this.c();
            } catch (Exception e13) {
                o0.b(j.f37324a, e13.getMessage());
            }
        }
    }

    class c extends com.mbridge.msdk.foundation.same.net.handler.a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f37330b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f37331c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f37332d;

        c(Context context, String str, String str2) {
            this.f37330b = context;
            this.f37331c = str;
            this.f37332d = str2;
        }

        @Override // com.mbridge.msdk.foundation.same.net.handler.a
        public void a(String str) {
            com.mbridge.msdk.foundation.same.net.utils.d.h().f35485r = false;
            o0.a(j.f37324a, "fetch CNDSettingHost failed, errorCode = " + str);
        }

        @Override // com.mbridge.msdk.foundation.same.net.handler.a
        public void b(String str) {
            o0.a(j.f37324a, "fetch CNDSettingHost success, content = " + str);
            if (TextUtils.isEmpty(str)) {
                return;
            }
            com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("mkey_spare_host_ts", System.currentTimeMillis());
            com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("mkey_spare_host", str);
            for (String str2 : str.split("\n")) {
                if (!TextUtils.isEmpty(str2.trim()) && !com.mbridge.msdk.foundation.same.net.utils.d.h().f35488u.contains(str2.trim())) {
                    com.mbridge.msdk.foundation.same.net.utils.d.h().f35488u.add(str2.trim());
                    com.mbridge.msdk.foundation.same.net.utils.d.h().f35491x.add(str2.trim());
                }
            }
            j.this.a(this.f37330b, this.f37331c, this.f37332d);
        }
    }

    class d extends com.mbridge.msdk.foundation.same.net.wrapper.d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f37334b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f37335c;

        d(String str, String str2) {
            this.f37334b = str;
            this.f37335c = str2;
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(String str) {
            j.this.a(2, 1, "");
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(JSONObject jSONObject) {
            try {
                if (t0.a(jSONObject)) {
                    String strOptString = jSONObject.optString("vtag", "");
                    String strOptString2 = jSONObject.optString("rid", "");
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("unitSetting");
                    if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                        JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(0);
                        if (jSONObject.optInt("vtag_status", 0) == 1) {
                            String strF = h.b().f(this.f37334b, this.f37335c);
                            if (!TextUtils.isEmpty(strF)) {
                                try {
                                    jSONObjectOptJSONObject = h.b().a(new JSONObject(strF), jSONObjectOptJSONObject);
                                } catch (Exception e11) {
                                    e11.printStackTrace();
                                }
                            }
                        }
                        jSONObjectOptJSONObject.put("current_time", System.currentTimeMillis());
                        jSONObjectOptJSONObject.put("vtag", strOptString);
                        jSONObjectOptJSONObject.put("rid", strOptString2);
                        h.b().a(this.f37334b, this.f37335c, jSONObjectOptJSONObject.toString());
                    }
                } else {
                    h.b().j(this.f37334b, this.f37335c);
                }
                j.this.a(1, 1, "");
            } catch (Exception e12) {
                o0.b(j.f37324a, e12.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i11, int i12, String str) {
        String strB;
        try {
            com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("key", "2000112");
            eVar.a("st_net", Integer.valueOf(com.mbridge.msdk.foundation.same.net.utils.d.h().f35487t));
            eVar.a("result", Integer.valueOf(i11));
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, Integer.valueOf(i12));
            if (i12 == 0) {
                strB = b();
            } else {
                strB = com.mbridge.msdk.foundation.same.net.utils.d.h().f35486s ? com.mbridge.msdk.foundation.same.net.utils.d.h().R : com.mbridge.msdk.foundation.same.net.utils.d.h().Q;
            }
            eVar.a("url", strB);
            eVar.a("reason", str);
            cVar.a("2000112", eVar);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000112", cVar);
        } catch (Throwable th2) {
            o0.b(f37324a, th2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str) {
        g gVarD;
        h hVarB = h.b();
        if (hVarB != null && (gVarD = hVarB.d(str)) != null) {
            MBridgeConstans.OMID_JS_SERVICE_URL = gVarD.U();
            MBridgeConstans.OMID_JS_H5_URL = gVarD.T();
        }
        com.mbridge.msdk.omsdk.b.b(context);
        com.mbridge.msdk.omsdk.b.c(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, String str2) {
        if (com.mbridge.msdk.foundation.same.net.utils.d.h().g()) {
            b(context, str, str2);
        } else {
            d(context, str, str2);
        }
    }

    private String b() {
        String str = com.mbridge.msdk.foundation.same.net.utils.d.h().f35486s ? com.mbridge.msdk.foundation.same.net.utils.d.h().R : com.mbridge.msdk.foundation.same.net.utils.d.h().Q;
        try {
            if (!com.mbridge.msdk.foundation.same.net.utils.d.h().f35486s || !com.mbridge.msdk.foundation.same.net.utils.d.h().f35485r || com.mbridge.msdk.foundation.same.net.utils.d.h().f35490w >= com.mbridge.msdk.foundation.same.net.utils.d.h().f35491x.size()) {
                return str;
            }
            String str2 = com.mbridge.msdk.foundation.same.net.utils.d.h().f35491x.get(com.mbridge.msdk.foundation.same.net.utils.d.h().f35490w);
            if (TextUtils.isEmpty(str2)) {
                return str;
            }
            if (!str2.startsWith("http") && !str2.startsWith("https")) {
                return str;
            }
            return str2 + "/setting";
        } catch (Throwable th2) {
            o0.b(f37324a, th2.getMessage());
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        try {
            new com.mbridge.msdk.foundation.same.report.h(com.mbridge.msdk.foundation.controller.c.m().d()).a();
        } catch (Throwable th2) {
            o0.b(f37324a, th2.getMessage());
        }
    }

    public void a(Context context, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            str = com.mbridge.msdk.foundation.controller.c.m().b();
            str2 = com.mbridge.msdk.foundation.controller.c.m().c();
        }
        if (h.b().g(str3, str) && h.b().a(str, 2, str3)) {
            com.mbridge.msdk.foundation.same.net.wrapper.e eVar = new com.mbridge.msdk.foundation.same.net.wrapper.e();
            String str4 = "[" + str3 + "]";
            eVar.a("unit_ids", str4);
            eVar.a("app_id", str);
            eVar.a(TmcConstants.EXTRA_APP_DEV_TOKEN, SameMD5.getMD5(str + str2));
            try {
                String strJ = h.b().d(str, str4).J();
                if (TextUtils.isEmpty(strJ)) {
                    strJ = "";
                }
                eVar.a("vtag", strJ);
            } catch (Throwable th2) {
                o0.b(f37324a, th2.getMessage());
            }
            d dVar = new d(str, str3);
            dVar.setUnitId(str3);
            new com.mbridge.msdk.setting.net.c(context).get(1, com.mbridge.msdk.foundation.same.net.utils.d.h().Q, eVar, dVar, "setting", 60000L);
            a(3, 1, "");
        }
    }

    public void a(Context context, String str, String str2, String str3, com.mbridge.msdk.foundation.same.net.wrapper.d dVar) {
        if (context == null) {
            return;
        }
        com.mbridge.msdk.foundation.same.net.wrapper.e eVar = new com.mbridge.msdk.foundation.same.net.wrapper.e();
        eVar.a("app_id", str);
        eVar.a(TmcConstants.EXTRA_APP_DEV_TOKEN, SameMD5.getMD5(str + str2));
        try {
            String strV0 = h.b().b(str).v0();
            if (TextUtils.isEmpty(strV0)) {
                strV0 = "";
            }
            eVar.a("vtag", strV0);
        } catch (Throwable th2) {
            o0.b(f37324a, th2.getMessage());
        }
        if (com.mbridge.msdk.foundation.same.net.utils.d.h().f35485r) {
            eVar.a("st_net", com.mbridge.msdk.foundation.same.net.utils.d.h().f35487t + "");
        }
        eVar.a("only_p_info", str3);
        com.mbridge.msdk.setting.net.c cVar = new com.mbridge.msdk.setting.net.c(context);
        String str4 = com.mbridge.msdk.foundation.same.net.utils.d.h().Q;
        try {
            if (com.mbridge.msdk.foundation.same.net.utils.d.h().f35486s && com.mbridge.msdk.foundation.same.net.utils.d.h().f35485r && com.mbridge.msdk.foundation.same.net.utils.d.h().f35490w < com.mbridge.msdk.foundation.same.net.utils.d.h().f35491x.size()) {
                String str5 = com.mbridge.msdk.foundation.same.net.utils.d.h().f35491x.get(com.mbridge.msdk.foundation.same.net.utils.d.h().f35490w);
                if (!TextUtils.isEmpty(str5) && (str5.startsWith("http") || str5.startsWith("https"))) {
                    str4 = str5 + "/setting";
                }
            }
        } catch (Throwable th3) {
            o0.b(f37324a, th3.getMessage());
        }
        cVar.get(1, str4, eVar, dVar, "setting", 60000L);
    }

    public void b(Context context, String str, String str2) {
        if (context == null) {
            return;
        }
        a(context, str, str2, "0", new b(str, context, str2));
        a(3, 0, "");
    }

    public void c(Context context, String str, String str2) {
        a(context, str, str2, "1", new a());
    }

    public void d(Context context, String str, String str2) {
        try {
            if (com.mbridge.msdk.foundation.same.net.utils.d.h().f35485r) {
                return;
            }
            com.mbridge.msdk.foundation.same.net.utils.d.h().f35485r = true;
            if (System.currentTimeMillis() >= com.mbridge.msdk.foundation.buffer.sharedperference.a.b().b("mkey_spare_host_ts").longValue() + 86400000) {
                String strA = com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("mkey_spare_host");
                if (!TextUtils.isEmpty(strA)) {
                    for (String str3 : strA.split("\n")) {
                        if (!TextUtils.isEmpty(str3.trim()) && !com.mbridge.msdk.foundation.same.net.utils.d.h().f35488u.contains(str3.trim())) {
                            com.mbridge.msdk.foundation.same.net.utils.d.h().f35488u.add(str3.trim());
                            com.mbridge.msdk.foundation.same.net.utils.d.h().f35491x.add(str3.trim());
                        }
                    }
                    a(context, str, str2);
                    return;
                }
            }
            new com.mbridge.msdk.foundation.same.net.wrapper.c(context.getApplicationContext()).get(0, com.mbridge.msdk.foundation.same.net.utils.d.h().f35466c, new com.mbridge.msdk.foundation.same.net.wrapper.e(), new c(context, str, str2), "setting", 60000L);
        } catch (Throwable th2) {
            com.mbridge.msdk.foundation.same.net.utils.d.h().f35485r = false;
            o0.b(f37324a, th2.getMessage());
        }
    }
}
