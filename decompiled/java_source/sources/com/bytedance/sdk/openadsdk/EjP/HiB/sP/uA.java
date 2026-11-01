package com.bytedance.sdk.openadsdk.EjP.HiB.sP;

import com.bytedance.sdk.component.utils.sU;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class uA implements TKC {
    private final String Sj;
    private final long sP;

    public uA(String str, long j11) {
        this.Sj = str;
        this.sP = j11;
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.HiB.sP.TKC
    public void Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("preload_url", this.Sj);
            jSONObject.put("preload_size", this.sP);
        } catch (Throwable th2) {
            sU.sP("LoadVideoCancelModel", th2.getMessage());
        }
    }
}
