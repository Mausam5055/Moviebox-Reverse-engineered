package com.google.firebase.crashlytics.internal.settings;

import com.google.firebase.crashlytics.internal.common.c0;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
class j implements g {
    j() {
    }

    private static c.a b(JSONObject jSONObject) {
        return new c.a(jSONObject.optBoolean("collect_reports", true), jSONObject.optBoolean("collect_anrs", false), jSONObject.optBoolean("collect_build_ids", false));
    }

    private static c.b c(JSONObject jSONObject) {
        return new c.b(jSONObject.optInt("max_custom_exception_events", 8), 4);
    }

    private static long d(c0 c0Var, long j11, JSONObject jSONObject) {
        return jSONObject.has("expires_at") ? jSONObject.optLong("expires_at") : c0Var.a() + (j11 * 1000);
    }

    @Override // com.google.firebase.crashlytics.internal.settings.g
    public c a(c0 c0Var, JSONObject jSONObject) {
        int iOptInt = jSONObject.optInt("settings_version", 0);
        int iOptInt2 = jSONObject.optInt("cache_duration", 3600);
        return new c(d(c0Var, iOptInt2, jSONObject), jSONObject.has("session") ? c(jSONObject.getJSONObject("session")) : c(new JSONObject()), b(jSONObject.getJSONObject("features")), iOptInt, iOptInt2, jSONObject.optDouble("on_demand_upload_rate_per_minute", 10.0d), jSONObject.optDouble("on_demand_backoff_base", 1.2d), jSONObject.optInt("on_demand_backoff_step_duration_seconds", 60));
    }
}
