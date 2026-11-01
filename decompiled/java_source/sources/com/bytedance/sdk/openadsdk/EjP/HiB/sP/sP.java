package com.bytedance.sdk.openadsdk.EjP.HiB.sP;

import com.bytedance.sdk.component.utils.sU;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class sP implements TKC {
    private int EjP;
    private long Sj;
    private int TKC;
    private long sP;

    public void Sj(int i11) {
        this.TKC = i11;
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
            jSONObject.put("total_duration", this.sP);
            jSONObject.put("vbtt_skip_type", this.TKC);
            jSONObject.put("skip_reason", this.EjP);
        } catch (Throwable th2) {
            sU.sP("EndcardSkipModel", th2.getMessage());
        }
    }

    public void sP(int i11) {
        this.EjP = i11;
    }

    public void sP(long j11) {
        this.sP = j11;
    }
}
