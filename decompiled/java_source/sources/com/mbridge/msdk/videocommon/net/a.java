package com.mbridge.msdk.videocommon.net;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.same.net.wrapper.d;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.setting.h;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f39961a = "com.mbridge.msdk.videocommon.net.a";

    /* JADX INFO: renamed from: com.mbridge.msdk.videocommon.net.a$a, reason: collision with other inner class name */
    class C0575a extends d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39962b;

        C0575a(String str) {
            this.f39962b = str;
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(String str) {
            com.mbridge.msdk.videocommon.setting.b.b().b(false);
            o0.b(a.f39961a, str);
            a.this.a(2, 2, str);
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(JSONObject jSONObject) {
            try {
                if (t0.a(jSONObject)) {
                    com.mbridge.msdk.videocommon.setting.b.b().b(false);
                    if (jSONObject.optInt("vtag_status", 0) == 1) {
                        String strD = com.mbridge.msdk.videocommon.setting.b.b().d(this.f39962b);
                        if (!TextUtils.isEmpty(strD)) {
                            try {
                                jSONObject = h.b().a(new JSONObject(strD), jSONObject);
                            } catch (Exception e11) {
                                o0.b(a.f39961a, e11.getMessage());
                            }
                        }
                    }
                    try {
                        jSONObject.put("current_time", System.currentTimeMillis());
                        com.mbridge.msdk.videocommon.setting.b.b().f(this.f39962b, jSONObject.toString());
                    } catch (JSONException e12) {
                        o0.b(a.f39961a, e12.getMessage());
                    }
                } else {
                    com.mbridge.msdk.videocommon.setting.b.b().f(this.f39962b);
                }
                a.this.a(1, 2, "");
            } catch (Throwable th2) {
                o0.b(a.f39961a, th2.getMessage());
            }
        }
    }

    class b extends d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f39964b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ c f39965c;

        /* JADX INFO: renamed from: com.mbridge.msdk.videocommon.net.a$b$a, reason: collision with other inner class name */
        class RunnableC0576a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ JSONObject f39967a;

            RunnableC0576a(JSONObject jSONObject) {
                this.f39967a = jSONObject;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.videocommon.setting.b bVarB = com.mbridge.msdk.videocommon.setting.b.b();
                b bVar = b.this;
                bVarB.a(bVar.f39964b, bVar.unitId, this.f39967a.toString());
            }
        }

        b(String str, c cVar) {
            this.f39964b = str;
            this.f39965c = cVar;
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(String str) {
            try {
                com.mbridge.msdk.videocommon.setting.b.b().e(this.unitId);
            } catch (Exception e11) {
                o0.b(a.f39961a, e11.getMessage());
            }
            if (TextUtils.isEmpty(str)) {
                c cVar = this.f39965c;
                if (cVar != null) {
                    cVar.onFailed("request error");
                }
            } else {
                c cVar2 = this.f39965c;
                if (cVar2 != null) {
                    cVar2.onFailed(str);
                }
            }
            a.this.a(2, 3, str);
        }

        @Override // com.mbridge.msdk.foundation.same.net.wrapper.d
        public void a(JSONObject jSONObject) {
            try {
                try {
                    com.mbridge.msdk.videocommon.setting.b.b().e(this.unitId);
                } catch (Exception e11) {
                    o0.b(a.f39961a, e11.getMessage());
                }
                if (t0.a(jSONObject)) {
                    if (jSONObject.optInt("vtag_status", 0) == 1) {
                        String strB = com.mbridge.msdk.videocommon.setting.b.b().b(this.f39964b, this.unitId);
                        if (!TextUtils.isEmpty(strB)) {
                            try {
                                jSONObject = h.b().a(new JSONObject(strB), jSONObject);
                            } catch (Exception e12) {
                                o0.b(a.f39961a, e12.getMessage());
                            }
                        }
                    }
                    if (com.mbridge.msdk.videocommon.setting.b.c(jSONObject.toString())) {
                        jSONObject.put("current_time", System.currentTimeMillis());
                        RunnableC0576a runnableC0576a = new RunnableC0576a(jSONObject);
                        if (com.mbridge.msdk.foundation.controller.d.a().e()) {
                            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(runnableC0576a);
                        } else {
                            runnableC0576a.run();
                        }
                        c cVar = this.f39965c;
                        if (cVar != null) {
                            cVar.a("request success");
                        }
                    } else {
                        c cVar2 = this.f39965c;
                        if (cVar2 != null) {
                            cVar2.onFailed("data error");
                        }
                    }
                } else {
                    com.mbridge.msdk.videocommon.setting.b.b().g(this.f39964b, this.unitId);
                }
                a.this.a(1, 3, "");
            } catch (Throwable th2) {
                o0.b(a.f39961a, th2.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i11, int i12, String str) {
        try {
            com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            e eVar = new e();
            eVar.a("key", "2000112");
            eVar.a("st_net", Integer.valueOf(com.mbridge.msdk.foundation.same.net.utils.d.h().f35487t));
            eVar.a("result", Integer.valueOf(i11));
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, Integer.valueOf(i12));
            eVar.a("url", com.mbridge.msdk.foundation.same.net.utils.d.h().f35486s ? com.mbridge.msdk.foundation.same.net.utils.d.h().U : com.mbridge.msdk.foundation.same.net.utils.d.h().T);
            eVar.a("reason", str);
            cVar.a("2000112", eVar);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000112", cVar);
        } catch (Throwable th2) {
            o0.b(f39961a, th2.getMessage());
        }
    }

    public void a(Context context, String str, String str2) {
        com.mbridge.msdk.foundation.same.net.wrapper.e eVar = new com.mbridge.msdk.foundation.same.net.wrapper.e();
        eVar.a("app_id", str);
        eVar.a(TmcConstants.EXTRA_APP_DEV_TOKEN, SameMD5.getMD5(str + str2));
        try {
            com.mbridge.msdk.videocommon.setting.a aVarD = com.mbridge.msdk.videocommon.setting.b.b().d();
            if (aVarD == null) {
                eVar.a("vtag", "");
            } else {
                String strJ = aVarD.j();
                if (TextUtils.isEmpty(strJ)) {
                    strJ = "";
                }
                eVar.a("vtag", strJ);
            }
        } catch (Throwable th2) {
            o0.b(f39961a, th2.getMessage());
        }
        new com.mbridge.msdk.videocommon.net.b(context).get(1, com.mbridge.msdk.foundation.same.net.utils.d.h().T, eVar, new C0575a(str), "setting", 60000L);
        a(3, 2, "");
    }

    public void a(Context context, String str, String str2, String str3, c cVar) {
        com.mbridge.msdk.foundation.same.net.wrapper.e eVar = new com.mbridge.msdk.foundation.same.net.wrapper.e();
        eVar.a("app_id", str);
        eVar.a(TmcConstants.EXTRA_APP_DEV_TOKEN, SameMD5.getMD5(str + str2));
        eVar.a("unit_ids", "[" + str3 + "]");
        try {
            com.mbridge.msdk.videocommon.setting.c cVarD = com.mbridge.msdk.videocommon.setting.b.b().d(str, str3);
            if (cVarD == null) {
                eVar.a("vtag", "");
            } else {
                String strG = cVarD.G();
                if (TextUtils.isEmpty(strG)) {
                    strG = "";
                }
                eVar.a("vtag", strG);
            }
        } catch (Throwable th2) {
            o0.b(f39961a, th2.getMessage());
        }
        b bVar = new b(str, cVar);
        bVar.setUnitId(str3);
        new com.mbridge.msdk.videocommon.net.b(context).get(1, com.mbridge.msdk.foundation.same.net.utils.d.h().T, eVar, bVar, "setting", 60000L);
        a(3, 3, "");
    }
}
