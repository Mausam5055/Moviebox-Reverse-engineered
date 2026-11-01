package com.cloud.tmc.integration.defaultImpl;

import android.content.Context;
import com.cloud.tmc.integration.proxy.PerformanceProxy;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.perf.ErrReportBean;
import com.cloud.tmc.kernel.proxy.perf.IPerformanceAndErrorTracker;

/* JADX INFO: loaded from: classes3.dex */
public class TmcPerformanceAndErrorTracker implements IPerformanceAndErrorTracker {
    private static final String TAG = "peTracker";

    @Override // com.cloud.tmc.kernel.proxy.perf.IPerformanceAndErrorTracker
    public void sendErr(Context context, ErrReportBean errReportBean) {
        String.valueOf(errReportBean);
    }

    @Override // com.cloud.tmc.kernel.proxy.perf.IPerformanceAndErrorTracker
    public void sendPerf(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(str2);
    }

    @Override // com.cloud.tmc.kernel.proxy.perf.IPerformanceAndErrorTracker
    public void sendPerfStageLog(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(str2);
        ((PerformanceProxy) TmcProxy.get(PerformanceProxy.class)).sendPerfStageLog(str, str2);
    }

    @Override // com.cloud.tmc.kernel.proxy.perf.IPerformanceAndErrorTracker
    public void sendPerfV2(String str) {
        ((PerformanceProxy) TmcProxy.get(PerformanceProxy.class)).sendPerfV2(str);
    }
}
