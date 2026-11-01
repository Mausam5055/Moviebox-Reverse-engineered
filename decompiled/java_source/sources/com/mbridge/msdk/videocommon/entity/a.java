package com.mbridge.msdk.videocommon.entity;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f39954a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f39955b;

    public a(String str, String str2) {
        this.f39954a = str;
        this.f39955b = str2;
    }

    public static a a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            return new a(jSONObject.optString("appId"), jSONObject.optString("placementId"));
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }
}
