package com.bytedance.sdk.openadsdk.EjP;

import java.text.SimpleDateFormat;
import java.util.Locale;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class vS extends Sj {
    public static final SimpleDateFormat TKC = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);

    public vS(String str, JSONObject jSONObject) {
        super(str, jSONObject);
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.Sj
    public JSONObject TKC() {
        return this.sP;
    }
}
