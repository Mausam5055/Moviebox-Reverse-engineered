package com.cloud.tmc.kernel.proxy.performanceanalyse;

/* JADX INFO: loaded from: classes3.dex */
public enum RenderAnalyseType implements IPerformanceAnalyseType {
    INIT("[Render]:[初始化]"),
    CREATE_START("[Render]:[创建Webview]: 开始"),
    CREATE_END("[Render]:[创建Webview]: 完成"),
    LOAD_URL("[Render]:[加载Url]: 开始"),
    LOAD_FINISH("[Render]:[加载Url]: 完成"),
    LOAD_FAIL("[Render]:[加载Url]: 失败"),
    ERROR("[Render]:[执行失败]"),
    CONSOLE("[Render]:[console]"),
    WARMUP("[warmup]:[预热]");

    String des;

    RenderAnalyseType(String str) {
        this.des = str;
    }

    public String getDes() {
        return this.des;
    }
}
