package com.mbridge.msdk.foundation.controller;

import android.util.Log;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap<String, com.mbridge.msdk.foundation.cache.d> f35033a;

    /* JADX INFO: renamed from: com.mbridge.msdk.foundation.controller.b$b, reason: collision with other inner class name */
    static class C0482b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static b f35034a = new b();
    }

    private b() {
        this.f35033a = new HashMap<>();
    }

    public static b a() {
        return C0482b.f35034a;
    }

    public com.mbridge.msdk.foundation.cache.d a(String str, JSONArray jSONArray) {
        if (this.f35033a == null) {
            this.f35033a = new HashMap<>();
        }
        if (this.f35033a.containsKey(str)) {
            return this.f35033a.get(str);
        }
        com.mbridge.msdk.foundation.cache.d dVar = new com.mbridge.msdk.foundation.cache.d(str, jSONArray);
        this.f35033a.put(str, dVar);
        return dVar;
    }

    public com.mbridge.msdk.foundation.cache.d b(String str, JSONArray jSONArray) {
        JSONArray jSONArray2;
        Exception e11;
        if (this.f35033a == null) {
            this.f35033a = new HashMap<>();
        }
        if (this.f35033a.containsKey(str)) {
            return this.f35033a.get(str);
        }
        if (jSONArray == null) {
            try {
                jSONArray2 = new JSONArray();
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("c_cb", 0);
                    jSONObject.put("t_disc", 0.95d);
                    jSONObject.put("u_disc", 0.95d);
                    jSONObject.put("max_ecppv_diff", 0);
                    jSONObject.put("max_cache_num", 20);
                    jSONObject.put("max_usage_limit", 10);
                    jSONObject.put("time_interval", 7200);
                    jSONArray2.put(jSONObject);
                } catch (Exception e12) {
                    e11 = e12;
                    Log.e("CandidateController", e11.getMessage());
                }
            } catch (Exception e13) {
                jSONArray2 = jSONArray;
                e11 = e13;
            }
            jSONArray = jSONArray2;
        }
        return a(str, jSONArray);
    }
}
