package com.cloud.tmc.miniapp.performanceanalyse;

import android.os.Bundle;
import com.cloud.tmc.kernel.proxy.performanceanalyse.IPerformanceAnalyseType;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;

/* JADX INFO: loaded from: classes3.dex */
public final class PerformanceTrackNoop implements PerformanceAnalyseProxy {
    @Override // com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy
    public void record(String str, IPerformanceAnalyseType iPerformanceAnalyseType, String str2) {
    }

    @Override // com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy
    public void record(String str, IPerformanceAnalyseType iPerformanceAnalyseType, String str2, Bundle bundle) {
    }

    @Override // com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy
    public void recordForAd(String str, String str2, String str3, Bundle bundle) {
    }

    @Override // com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy
    public void recordForCommon(String str, String str2, Bundle bundle) {
    }
}
