package com.cloud.hisavana.sdk.data.bean.request;

/* JADX INFO: loaded from: classes.dex */
public class ApplicationDTO {
    private String installTime;
    private String packageName;
    private String psApiVersion;
    private String psChannel;
    private long psVersion;
    private String sdkVersion;
    private int sdkVersionCode;
    private String userAgent;
    private String version;
    private String versionInt;

    public String getInstallTime() {
        return this.installTime;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getPsApiVersion() {
        return this.psApiVersion;
    }

    public String getPsChannel() {
        return this.psChannel;
    }

    public long getPsVersion() {
        return this.psVersion;
    }

    public String getSdkVersion() {
        return this.sdkVersion;
    }

    public int getSdkVersionCode() {
        return this.sdkVersionCode;
    }

    public String getUserAgent() {
        return this.userAgent;
    }

    public String getVersion() {
        return this.version;
    }

    public String getVersionInt() {
        return this.versionInt;
    }

    public void setInstallTime(String str) {
        this.installTime = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setPsApiVersion(String str) {
        this.psApiVersion = str;
    }

    public void setPsChannel(String str) {
        this.psChannel = str;
    }

    public void setPsVersion(long j11) {
        this.psVersion = j11;
    }

    public void setSdkVersion(String str) {
        this.sdkVersion = str;
    }

    public void setSdkVersionCode(int i11) {
        this.sdkVersionCode = i11;
    }

    public void setUserAgent(String str) {
        this.userAgent = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public void setVersionInt(String str) {
        this.versionInt = str;
    }
}
