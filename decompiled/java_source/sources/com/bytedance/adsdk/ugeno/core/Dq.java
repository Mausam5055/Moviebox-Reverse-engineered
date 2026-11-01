package com.bytedance.adsdk.ugeno.core;

import android.content.Context;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Dq {
    private Map<String, Object> EjP;
    private Context Sj;
    private JSONObject TKC;
    private JSONObject sP;

    public JSONObject Sj() {
        return this.TKC;
    }

    public void Sj(Context context) {
        this.Sj = context;
    }

    public void Sj(Map<String, Object> map) {
        this.EjP = map;
    }

    public void Sj(JSONObject jSONObject) {
        this.sP = jSONObject;
    }

    public Map<String, Object> sP() {
        return this.EjP;
    }

    public void sP(JSONObject jSONObject) {
        this.TKC = jSONObject;
    }
}
