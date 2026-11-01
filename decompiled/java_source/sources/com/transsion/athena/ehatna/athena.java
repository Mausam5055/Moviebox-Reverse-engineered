package com.transsion.athena.ehatna;

import java.io.Serializable;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class athena implements Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f42713a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f42714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f42715c;

    public athena(long j11, long j12, String str) {
        this.f42713a = j11;
        this.f42714b = j12;
        this.f42715c = str;
    }

    public athena(String str) throws Exception {
        JSONObject jSONObject = new JSONObject(str);
        this.f42713a = jSONObject.getLong("serverTime");
        this.f42714b = jSONObject.getLong("elapsedRealtime");
        this.f42715c = jSONObject.getString("bootId");
    }
}
