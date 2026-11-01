package com.bytedance.sdk.openadsdk.EjP.HiB.sP;

import com.bytedance.sdk.component.utils.sU;
import com.hisavana.common.tracking.TrackingKey;
import org.json.JSONObject;
import y5.a;

/* JADX INFO: loaded from: classes2.dex */
public class sef implements TKC {
    private final int EjP;
    private final String HiB;
    private long Sj;
    private final int TKC;
    private long sP;

    public sef(a aVar) {
        this.TKC = aVar.a();
        this.EjP = aVar.d();
        this.HiB = aVar.c();
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
            jSONObject.put("error_code", this.TKC);
            jSONObject.put("extra_error_code", this.EjP);
            jSONObject.put(TrackingKey.ERROR_MESSAGE, this.HiB);
        } catch (Throwable th2) {
            sU.sP("PlayErrorModel", th2.getMessage());
        }
    }

    public void sP(long j11) {
        this.sP = j11;
    }
}
