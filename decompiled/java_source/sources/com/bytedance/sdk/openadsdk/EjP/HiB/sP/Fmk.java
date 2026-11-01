package com.bytedance.sdk.openadsdk.EjP.HiB.sP;

import com.bytedance.sdk.component.utils.sU;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Fmk implements TKC {
    public long Sj;
    public long TKC;
    public int sP;

    public void Sj(int i11) {
        this.sP = i11;
    }

    public void Sj(long j11) {
        this.Sj = j11;
    }

    @Override // com.bytedance.sdk.openadsdk.EjP.HiB.sP.TKC
    public void Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            jSONObject.put("buffers_time", this.Sj);
            jSONObject.put("buffers_count", this.sP);
            jSONObject.put("total_duration", this.TKC);
        } catch (Throwable th2) {
            sU.sP("PlayBufferModel", th2.getMessage());
        }
    }

    public void sP(long j11) {
        this.TKC = j11;
    }
}
