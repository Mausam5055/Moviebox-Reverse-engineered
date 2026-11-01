package com.cloud.tmc.integration.resource;

import com.cloud.tmc.kernel.proxy.performanceanalyse.IPerformanceAnalyseType;

/* JADX INFO: loaded from: classes3.dex */
public enum ResourceAnalyseType implements IPerformanceAnalyseType {
    INTERCEPT_RESOURCE("[Render]:替换资源:");

    String des;

    ResourceAnalyseType(String str) {
        this.des = str;
    }

    public String getDes() {
        return this.des;
    }
}
