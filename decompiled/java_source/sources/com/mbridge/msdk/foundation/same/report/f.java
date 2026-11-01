package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.text.TextUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.foundation.tools.o0;
import java.net.URLEncoder;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile f f35561b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile com.mbridge.msdk.tracker.m f35562a;

    public static f a() {
        if (f35561b == null) {
            synchronized (f.class) {
                try {
                    if (f35561b == null) {
                        f35561b = new f();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f35561b;
    }

    public void a(Context context, String str, String str2, String str3, String str4, int i11) {
        com.mbridge.msdk.tracker.m mVarB = a().b();
        if (mVarB == null) {
            return;
        }
        if (!mVarB.a("2000105")) {
            o0.a("MetricsReportUtil", "reportClickImpException can not track");
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            if (TextUtils.isEmpty(str2)) {
                jSONObject.put("url", "");
            } else {
                jSONObject.put("url", URLEncoder.encode(str2, "utf-8"));
            }
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, i11);
            if (!TextUtils.isEmpty(str3)) {
                jSONObject.put("rid", str3);
            }
            if (!TextUtils.isEmpty(str4)) {
                jSONObject.put("rid_n", str4);
            }
            try {
                long[] jArrE = mVarB.e();
                jSONObject.put("track_time", jArrE[0]);
                jSONObject.put("track_count", jArrE[1]);
                jSONObject.put("session_id", mVarB.d());
            } catch (Exception unused) {
            }
            jSONObject.put("reason", URLEncoder.encode(str, "utf-8"));
            com.mbridge.msdk.tracker.e eVar = new com.mbridge.msdk.tracker.e("2000105");
            eVar.a(jSONObject);
            eVar.a(0);
            eVar.b(0);
            eVar.a(c.d());
            mVarB.d(eVar);
        } catch (Exception e11) {
            o0.b("MetricsReportUtil", e11.getMessage());
        }
    }

    public com.mbridge.msdk.tracker.m b() {
        if (this.f35562a == null) {
            this.f35562a = com.mbridge.msdk.foundation.same.report.metrics.d.b().d();
        }
        return this.f35562a;
    }

    public void c() {
        b().a();
    }
}
