package com.bytedance.sdk.openadsdk.EjP.HiB.sP;

import com.bytedance.sdk.component.utils.sU;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class EjP implements TKC {
    public int EjP = 0;
    public long Sj;
    public int TKC;
    public long sP;

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
            jSONObject.put("break_reason", this.TKC);
            jSONObject.put("video_backup", this.EjP);
        } catch (Throwable th2) {
            sU.sP("FeedBreakModel", th2.getMessage());
        }
    }

    public void sP(int i11) {
        this.EjP = i11;
    }

    public void sP(long j11) {
        this.sP = j11;
    }
}
