package com.bykv.vk.openvk.preload.geckox.model;

import android.webkit.WebResourceResponse;

/* JADX INFO: loaded from: classes2.dex */
public class WebResourceResponseModel {
    public static final int ERROR_DEFAULT = -1;
    public static final int ERROR_INTERCEPT = 1;
    public static final int ERROR_NOT_FIND_BY_RESOURCE = 2;
    int errorType;
    WebResourceResponse webResourceResponse;

    public WebResourceResponseModel(int i11, WebResourceResponse webResourceResponse) {
        this.errorType = i11;
        this.webResourceResponse = webResourceResponse;
    }

    public int getMsg() {
        return this.errorType;
    }

    public WebResourceResponse getWebResourceResponse() {
        return this.webResourceResponse;
    }

    public void setMsg(int i11) {
        this.errorType = i11;
    }

    public void setWebResourceResponse(WebResourceResponse webResourceResponse) {
        this.webResourceResponse = webResourceResponse;
    }
}
