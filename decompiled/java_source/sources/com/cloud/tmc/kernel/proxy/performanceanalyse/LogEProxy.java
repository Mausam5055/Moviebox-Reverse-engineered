package com.cloud.tmc.kernel.proxy.performanceanalyse;

import com.cloud.tmc.kernel.annotation.DefaultImpl;
import com.cloud.tmc.kernel.proxy.Proxiable;

/* JADX INFO: loaded from: classes3.dex */
@DefaultImpl("com.cloud.tmc.miniapp.performanceanalyse.LogEReportManager")
public interface LogEProxy extends Proxiable {
    void destroy(String str);

    void e(String str, String str2);

    void init(String str);

    void saveConfig(float f11);
}
