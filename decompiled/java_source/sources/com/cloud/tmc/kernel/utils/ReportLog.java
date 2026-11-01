package com.cloud.tmc.kernel.utils;

/* JADX INFO: loaded from: classes3.dex */
public class ReportLog {
    private String msg;
    private String tag;

    public ReportLog(String str, String str2) {
        this.tag = str;
        this.msg = str2;
    }

    public String getMsg() {
        return this.msg;
    }

    public String getTag() {
        return this.tag;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setTag(String str) {
        this.tag = str;
    }
}
