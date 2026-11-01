package com.bytedance.sdk.openadsdk.EjP.HiB.sP;

import com.bytedance.sdk.component.utils.sU;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class vS implements TKC {
    private long Sj;
    private int TKC = 0;
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
            jSONObject.put("total_duration", this.Sj);
            jSONObject.put("buffers_time", this.sP);
            jSONObject.put("video_backup", this.TKC);
        } catch (Throwable th2) {
            sU.sP("FeedOverModel", th2.getMessage());
        }
    }

    public void sP(long j11) {
        this.sP = j11;
    }
}
