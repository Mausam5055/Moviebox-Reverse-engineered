package com.cloud.hisavana.sdk.data.bean.inapp;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class PsAppInfo {
    private List<ApkInfo> apkList;
    private String appInfo;
    private String modelBlack;
    private String modelWhite;
    private String packageName;

    public List<ApkInfo> getApkList() {
        return this.apkList;
    }

    public String getAppInfo() {
        return this.appInfo;
    }

    public String getModelBlack() {
        return this.modelBlack;
    }

    public String getModelWhite() {
        return this.modelWhite;
    }

    public String getPackageName() {
        return this.packageName;
    }
}
