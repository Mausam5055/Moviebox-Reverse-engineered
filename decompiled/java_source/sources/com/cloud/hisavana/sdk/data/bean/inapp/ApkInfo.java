package com.cloud.hisavana.sdk.data.bean.inapp;

/* JADX INFO: loaded from: classes3.dex */
public class ApkInfo {
    private String androidSupportVersion;
    private String brand;
    private String countryCodes;
    private String cpus;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private Integer f22377id;
    private String itemId;
    private String model;
    private String nonModel;
    private String packageName;
    private Integer sysVersionCode;

    public String getAndroidSupportVersion() {
        return this.androidSupportVersion;
    }

    public String getBrand() {
        return this.brand;
    }

    public String getCountryCodes() {
        return this.countryCodes;
    }

    public String getCpus() {
        return this.cpus;
    }

    public Integer getId() {
        Integer num = this.f22377id;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }

    public String getItemId() {
        return this.itemId;
    }

    public String getModel() {
        return this.model;
    }

    public String getNonModel() {
        return this.nonModel;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public Integer getSysVersionCode() {
        Integer num = this.sysVersionCode;
        return Integer.valueOf(num == null ? 0 : num.intValue());
    }
}
