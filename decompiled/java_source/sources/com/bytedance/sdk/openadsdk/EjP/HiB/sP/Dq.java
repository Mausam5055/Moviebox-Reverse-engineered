package com.bytedance.sdk.openadsdk.EjP.HiB.sP;

import com.bytedance.sdk.component.utils.sU;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class Dq implements TKC {
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
            jSONObject.put("video_start_duration", this.Sj);
            jSONObject.put("video_cache_size", this.sP);
            jSONObject.put("is_auto_play", this.TKC);
        } catch (Throwable th2) {
            sU.sP("FeedPlayModel", th2.getMessage());
        }
    }

    public void sP(long j11) {
        this.sP = j11;
    }
}
