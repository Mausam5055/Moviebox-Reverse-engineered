package com.bytedance.sdk.component.Sj;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class Zq {
    private final Map<String, Object> Sj = new ConcurrentHashMap();

    private Zq() {
    }

    public static Zq Sj() {
        return new Zq();
    }

    public Zq Sj(String str, Object obj) {
        if (!TextUtils.isEmpty(str) && obj != null) {
            this.Sj.put(str, obj);
        }
        return this;
    }

    public String sP() {
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, Object> entry : this.Sj.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
            return jSONObject.toString();
        } catch (JSONException unused) {
            return "";
        }
    }
}
