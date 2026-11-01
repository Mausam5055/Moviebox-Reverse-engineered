package com.transsion.push.bean;

import fm.a;

/* JADX INFO: loaded from: classes6.dex */
public class TrackerConfig {

    @a(name = "report_time")
    public long reportTime;

    @a(name = "report_type")
    public int reportType;

    @a(name = "version")
    public int version;

    public String toString() {
        return "TrackerConfig{reportType=" + this.reportType + ", reportTime=" + this.reportTime + ", version=" + this.version + '}';
    }
}
