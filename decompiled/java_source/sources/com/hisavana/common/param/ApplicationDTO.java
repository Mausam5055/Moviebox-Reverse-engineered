package com.hisavana.common.param;

/* JADX INFO: loaded from: classes.dex */
public class ApplicationDTO {
    private String activeTime;
    private String channel;
    private boolean firstStart;
    private String installTime;
    private String packageName;
    private String sdkVersion;
    private String userAgent;
    private String version;

    public String getActiveTime() {
        return this.activeTime;
    }

    public String getChannel() {
        return this.channel;
    }

    public String getInstallTime() {
        return this.installTime;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getSdkVersion() {
        return this.sdkVersion;
    }

    public String getUserAgent() {
        return this.userAgent;
    }

    public String getVersion() {
        return this.version;
    }

    public boolean isFirstStart() {
        return this.firstStart;
    }

    public void setActiveTime(String str) {
        this.activeTime = str;
    }

    public void setChannel(String str) {
        this.channel = str;
    }

    public void setFirstStart(boolean z10) {
        this.firstStart = z10;
    }

    public void setInstallTime(String str) {
        this.installTime = str;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }

    public void setSdkVersion(String str) {
        this.sdkVersion = str;
    }

    public void setUserAgent(String str) {
        this.userAgent = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}
