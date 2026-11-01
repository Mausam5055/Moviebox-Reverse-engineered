package com.cloud.tmc.kernel.proxy.performanceanalyse;

/* JADX INFO: loaded from: classes3.dex */
public enum WorkerAnalyseType implements IPerformanceAnalyseType {
    INIT("[Worker]:[初始化]"),
    CREATE_START("[Worker]:[创建Worker引擎]: 开始"),
    CREATE_END("[Worker]:[创建Worker引擎]: 完成"),
    LOAD_JS_START("[Worker]:[加载worker.js]: 开始"),
    LOAD_JS_END("[Worker]:[加载worker.js]: 完成"),
    EXECUTE_JS_START("[Worker]:[执行js函数]: 开始"),
    EXECUTE_JS_END_1("[Worker]:[执行js函数(有callback)]: 完成"),
    EXECUTE_JS_END_2("[Worker]:[执行js函数(无callback)]: 完成"),
    SEND_TO_NATIVE("[Worker]:[发送数据到Native]"),
    SEND_TO_RENDER("[Worker]:[发送数据到Render]"),
    ERROR("[Worker]:[执行失败]"),
    CONSOLE("[Worker]:[console]"),
    WARMUP("[Worker]:[warmup]");

    String des;

    WorkerAnalyseType(String str) {
        this.des = str;
    }

    public String getDes() {
        return this.des;
    }
}
