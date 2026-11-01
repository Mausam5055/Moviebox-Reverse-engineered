package com.cloud.tmc.kernel.proxy.perf;

import android.content.Context;
import com.cloud.tmc.kernel.proxy.Proxiable;

/* JADX INFO: loaded from: classes3.dex */
public interface IPerformanceAndErrorTracker extends Proxiable {
    void sendErr(Context context, ErrReportBean errReportBean);

    void sendPerf(String str, String str2);

    void sendPerfStageLog(String str, String str2);

    void sendPerfV2(String str);
}
