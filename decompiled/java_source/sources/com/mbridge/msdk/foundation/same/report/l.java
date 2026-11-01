package com.mbridge.msdk.foundation.same.report;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.o0;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, String> f35567a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f35568b;

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map<String, String> f35569a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f35570b;

        public b(String str) {
            this.f35570b = str;
        }

        public l a() {
            return new l(this);
        }
    }

    private l(b bVar) {
        this.f35568b = bVar.f35570b;
        this.f35567a = bVar.f35569a;
    }

    private String a(String str) {
        try {
            return URLEncoder.encode(str, "utf-8");
        } catch (Exception unused) {
            return str;
        }
    }

    private void a(Map<String, String> map, JSONObject jSONObject) {
        if (map == null || map.isEmpty() || jSONObject == null) {
            return;
        }
        try {
            for (String str : map.keySet()) {
                jSONObject.put(str, a(map.get(str)));
            }
        } catch (Exception e11) {
            o0.b("SameCommonReporter", e11.getMessage());
        }
    }

    public void b(String str) {
        if (TextUtils.isEmpty(this.f35568b)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", this.f35568b);
            a(this.f35567a, jSONObject);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(jSONObject);
        } catch (Throwable th2) {
            o0.b("SameCommonReporter", th2.getMessage());
        }
    }
}
