package com.bytedance.sdk.openadsdk.EjP.HiB.sP;

import com.bytedance.sdk.component.utils.sU;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Jcg implements TKC {
    private long Sj;
    private long sP;

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
        } catch (Throwable th2) {
            sU.sP("FeedPauseModel", th2.getMessage());
        }
    }

    public void sP(long j11) {
        this.sP = j11;
    }
}
