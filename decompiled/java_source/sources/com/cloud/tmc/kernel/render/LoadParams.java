package com.cloud.tmc.kernel.render;

/* JADX INFO: loaded from: classes3.dex */
public class LoadParams {
    public String appId;
    public String beforeScript;
    public boolean forceLoad;
    public boolean isReload;
    public String pagePath;
    public String url;

    public LoadParams() {
    }

    public LoadParams(LoadParams loadParams) {
        this.url = loadParams.url;
        this.isReload = loadParams.isReload;
        this.forceLoad = loadParams.forceLoad;
        this.pagePath = loadParams.pagePath;
        this.appId = loadParams.appId;
    }

    public String toString() {
        return "LoadParams{url='" + this.url + "'}";
    }
}
