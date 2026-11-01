package com.apm.insight.entity;

import android.os.Environment;
import com.apm.insight.e;
import com.apm.insight.l.f;
import java.io.IOException;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f19490a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static JSONObject f19491b;

    private static void a() {
        if (f19490a == null) {
            f19490a = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/data/" + e.g().getPackageName() + "/AutomationTestInfo.json";
        }
        if (f19491b == null) {
            try {
                f19491b = new JSONObject(f.a(f19490a, "\n"));
            } catch (IOException unused) {
                f19491b = new JSONObject();
            } catch (JSONException unused2) {
                f19491b = new JSONObject();
            }
        }
    }

    public static void a(JSONObject jSONObject) {
        Object objOpt;
        if (jSONObject == null) {
            return;
        }
        try {
            a();
            JSONObject jSONObject2 = f19491b;
            if (jSONObject2 != null) {
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (!"slardar_filter".equals(next) && (objOpt = f19491b.opt(next)) != null) {
                        try {
                            jSONObject.put(next, objOpt);
                        } catch (JSONException unused) {
                        }
                    }
                }
            }
        } catch (Throwable unused2) {
        }
    }

    public static void b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            a();
            JSONObject jSONObject2 = f19491b;
            if (jSONObject2 != null) {
                JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("slardar_filter");
                if (com.apm.insight.a.a(jSONObjectOptJSONObject)) {
                    return;
                }
                JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("filters");
                if (jSONObjectOptJSONObject2 == null) {
                    jSONObjectOptJSONObject2 = new JSONObject();
                    try {
                        jSONObject.put("filters", jSONObjectOptJSONObject2);
                    } catch (JSONException unused) {
                    }
                }
                a.b(jSONObjectOptJSONObject2, jSONObjectOptJSONObject);
            }
        } catch (Throwable unused2) {
        }
    }
}
