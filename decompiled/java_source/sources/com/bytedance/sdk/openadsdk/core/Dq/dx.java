package com.bytedance.sdk.openadsdk.core.Dq;

import android.os.SystemClock;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class dx implements com.bytedance.sdk.openadsdk.core.TEQ.vS.TKC {
    private String vS;
    private long Sj = 0;
    private long sP = 0;
    private int TKC = 0;
    private String EjP = null;
    private String HiB = null;
    private final AtomicBoolean Jcg = new AtomicBoolean(false);

    @Override // com.bytedance.sdk.openadsdk.core.TEQ.vS.TKC
    public void Sj(int i11, String str, String str2) {
        this.TKC = i11;
        this.EjP = str;
        this.HiB = str2;
        this.sP = SystemClock.elapsedRealtime();
        this.Jcg.set(false);
    }

    public void Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar, String str) {
        if (this.Jcg.get()) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, false, str, NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, this.sP - this.Sj, this.HiB, this.vS, 0, null);
        } else {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVar, false, str, "fail", this.sP - this.Sj, this.HiB, this.vS, this.TKC, this.EjP);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.TEQ.vS.TKC
    public void Sj(String str) {
        this.vS = str;
        this.Sj = SystemClock.elapsedRealtime();
    }

    @Override // com.bytedance.sdk.openadsdk.core.TEQ.vS.TKC
    public void sP(String str) {
        this.HiB = str;
        this.sP = SystemClock.elapsedRealtime();
        this.Jcg.set(true);
    }
}
