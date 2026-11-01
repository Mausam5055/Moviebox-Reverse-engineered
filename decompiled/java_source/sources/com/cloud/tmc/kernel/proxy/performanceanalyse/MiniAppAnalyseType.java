package com.cloud.tmc.kernel.proxy.performanceanalyse;

/* JADX INFO: loaded from: classes3.dex */
public class MiniAppAnalyseType implements IPerformanceAnalyseType {
    public final Object data;
    public final String eventName;
    public final String pagePath;

    public MiniAppAnalyseType(String str, String str2, Object obj) {
        this.eventName = str;
        this.pagePath = str2;
        this.data = obj;
    }
}
