package com.cloud.tmc.kernel.proxy.performanceanalyse;

import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.performanceanalyse.PerformanceUtils")
public interface PerformanceImprovesProxy extends Proxiable {
    void addPeroformanceImprove(String str, String str2);

    void clearPerformanceImproves(String str);

    String getPerformanceImproves(String str);

    void resetPerformanceImproves(String str);
}
