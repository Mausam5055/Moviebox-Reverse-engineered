package com.apm.insight.runtime;

import androidx.annotation.Nullable;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static HashMap<String, d> f19790a = new HashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private JSONObject f19791b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private JSONObject f19792c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f19793d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f19794e;

    private d(JSONObject jSONObject, String str) {
        this.f19794e = str;
        a(jSONObject);
        f19790a.put(this.f19794e, this);
        com.apm.insight.a.a((Object) "after update aid ".concat(String.valueOf(str)));
    }

    public static void a(String str, JSONObject jSONObject) {
        d dVar = f19790a.get(str);
        if (dVar != null) {
            dVar.a(jSONObject);
        } else {
            new d(jSONObject, str);
        }
    }

    private void a(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        this.f19791b = jSONObject;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("error_module")) == null) {
            return;
        }
        this.f19793d = jSONObjectOptJSONObject.optInt("switcher") == 1 && jSONObjectOptJSONObject.optInt("err_sampling_rate") == 1;
    }

    public static boolean a(String str) {
        return f19790a.get(str) != null;
    }

    @Nullable
    public static JSONObject b(String str) {
        d dVar = f19790a.get(str);
        if (dVar != null) {
            return dVar.f19791b;
        }
        return null;
    }

    public static d c(String str) {
        return f19790a.get(str);
    }

    public static long d(String str) {
        d dVar = f19790a.get(str);
        if (dVar == null) {
            return 3600000L;
        }
        try {
            return Long.decode(com.apm.insight.a.a(dVar.f19791b, "over_all", "get_settings_interval")).longValue() * 1000;
        } catch (Throwable unused) {
            return 3600000L;
        }
    }

    public static boolean e(String str) {
        JSONObject jSONObject;
        d dVar = f19790a.get(str);
        return (dVar == null || (jSONObject = dVar.f19791b) == null || 1 != com.apm.insight.a.a(jSONObject, 0, "crash_module", "switcher")) ? false : true;
    }

    public static boolean f(String str) {
        JSONObject jSONObject;
        d dVar = f19790a.get(str);
        return (dVar == null || (jSONObject = dVar.f19791b) == null || 1 != com.apm.insight.a.a(jSONObject, 0, "crash_module", "switcher")) ? false : true;
    }

    public static boolean g(String str) {
        JSONObject jSONObject;
        d dVar = f19790a.get(str);
        return (dVar == null || (jSONObject = dVar.f19791b) == null || 1 != com.apm.insight.a.a(jSONObject, 0, "crash_module", "switcher")) ? false : true;
    }

    public final boolean a() {
        if (this.f19791b == null) {
            return false;
        }
        return this.f19793d;
    }
}
