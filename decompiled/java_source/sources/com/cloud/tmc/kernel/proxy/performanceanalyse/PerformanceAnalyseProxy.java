package com.cloud.tmc.kernel.proxy.performanceanalyse;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.performanceanalyse.PerformanceTrackNoop")
public interface PerformanceAnalyseProxy extends Proxiable {
    void record(String str, IPerformanceAnalyseType iPerformanceAnalyseType, String str2);

    void record(String str, IPerformanceAnalyseType iPerformanceAnalyseType, String str2, @Nullable Bundle bundle);

    void recordForAd(String str, String str2, String str3, @Nullable Bundle bundle);

    void recordForCommon(String str, String str2, @Nullable Bundle bundle);
}
