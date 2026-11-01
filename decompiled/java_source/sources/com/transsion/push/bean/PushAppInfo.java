package com.transsion.push.bean;

/* JADX INFO: loaded from: classes6.dex */
public class PushAppInfo {
    public String appId;
    public String appKey;
    public String appVersion;
    public long appVersionCode;
    public int noticeEnable;
    public String pkg;
    public String sdkVersion;
    public int sdkVersionCode;
    public String token;
    public long updateTime;
    public String vaid;

    public String toString() {
        return "PushAppInfo{pkg='" + this.pkg + "', appId='" + this.appId + "', appKey='" + this.appKey + "', vaid='" + this.vaid + "', token='" + this.token + "', sdkVersion='" + this.sdkVersion + "', sdkVersionCode=" + this.sdkVersionCode + ", appVersion='" + this.appVersion + "', appVersionCode=" + this.appVersionCode + ", updateTime=" + this.updateTime + ", noticeEnable=" + this.noticeEnable + '}';
    }
}
