package com.cloud.hisavana.sdk.data.bean.request;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultRequestBody {
    private String appSid;
    private String brand;
    private String country;
    private String gaid;
    private String sdkVersion;
    private long sdkVersionCode;

    public String getAppSid() {
        return this.appSid;
    }

    public String getBrand() {
        return this.brand;
    }

    public String getCountry() {
        return this.country;
    }

    public String getGaid() {
        return this.gaid;
    }

    public String getSdkVersion() {
        return this.sdkVersion;
    }

    public long getSdkVersionCode() {
        return this.sdkVersionCode;
    }

    public void setAppSid(String str) {
        this.appSid = str;
    }

    public void setBrand(String str) {
        this.brand = str;
    }

    public void setCountry(String str) {
        this.country = str;
    }

    public void setGaid(String str) {
        this.gaid = str;
    }

    public void setSdkVersion(String str) {
        this.sdkVersion = str;
    }

    public void setSdkVersionCode(long j11) {
        this.sdkVersionCode = j11;
    }
}
