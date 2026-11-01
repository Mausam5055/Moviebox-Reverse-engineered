package com.bytedance.sdk.openadsdk.EjP.HiB.sP;

import com.bytedance.sdk.component.utils.sU;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class aa implements TKC {
    private long EjP;
    private String Sj;
    private long TKC;
    private long sP;

    public void Sj(long j11) {
        this.sP = j11;
    }

    public void Sj(String str) {
        this.Sj = str;
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.HiB.sP.TKC
    public void Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("preload_url", this.Sj);
            jSONObject.put("preload_size", this.sP);
            jSONObject.put("load_time", this.TKC);
            jSONObject.put("local_cache", this.EjP);
        } catch (Throwable th2) {
            sU.sP("LoadVideoSuccessModel", th2.getMessage());
        }
    }

    public void TKC(long j11) {
        this.EjP = j11;
    }

    public void sP(long j11) {
        this.TKC = j11;
    }
}
