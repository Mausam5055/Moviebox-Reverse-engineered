package com.cloud.tmc.kernel.proxy.performanceanalyse;

/* JADX INFO: loaded from: classes3.dex */
public enum V8AnalyseType implements IPerformanceAnalyseType {
    CHECK_START("[V8]:[检测SO库]: 开始"),
    CHECK_EXIST("[V8]:[检测SO库]: 已存在"),
    CHECK_UN_EXIST("[V8]:[检测SO库]: 不存在"),
    DOWNLOAD_START("[V8]:[下载SO库]: 开始"),
    DOWNLOAD_SUCCESS("[V8]:[下载SO库]: 成功"),
    DOWNLOAD_FAIL("[V8]:[下载SO库]: 失败"),
    UNZIP_START("[V8]:[解压SO库]: 开始"),
    UNZIP_SUCCESS("[V8]:[解压SO库]: 成功"),
    UNZIP_FAIL("[V8]:[解压SO库]: 失败");

    String des;

    V8AnalyseType(String str) {
        this.des = str;
    }

    public String getDes() {
        return this.des;
    }
}
