package com.cloud.hisavana.sdk.common.bean;

import android.text.TextUtils;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public class WebPageBean {
    private int errorCode;
    private String errorType;
    private long initEndTime;
    private long jumpTime;
    private long loadStartTime;
    private long pageClickTime;
    private long spendEndTime;
    private String targetUrl;
    private String url;
    private int redirectType = 0;
    private String webId = UUID.randomUUID().toString().replace("-", "");

    public int getErrorCode() {
        return this.errorCode;
    }

    public String getErrorType() {
        return this.errorType;
    }

    public long getInitTime() {
        return this.initEndTime - this.pageClickTime;
    }

    public long getLoadTime() {
        return this.loadStartTime - this.pageClickTime;
    }

    public int getRedirectType() {
        return this.redirectType;
    }

    public long getSpendTime() {
        return this.spendEndTime - this.loadStartTime;
    }

    public String getTargetUrl() {
        return TextUtils.isEmpty(this.targetUrl) ? "" : this.targetUrl;
    }

    public String getUrl() {
        return TextUtils.isEmpty(this.url) ? "" : this.url;
    }

    public long getWaitTime() {
        return this.jumpTime - this.pageClickTime;
    }

    public String getWebId() {
        return this.webId;
    }

    public void setErrorCode(int i11) {
        this.errorCode = i11;
    }

    public void setErrorType(String str) {
        this.errorType = str;
    }

    public void setInitEndTime(long j11) {
        this.initEndTime = j11;
    }

    public void setJumpTime(long j11) {
        this.jumpTime = j11;
    }

    public void setLoadStartTime(long j11) {
        this.loadStartTime = j11;
    }

    public void setPageClickTime(long j11) {
        this.pageClickTime = j11;
    }

    public void setRedirectType(int i11) {
        this.redirectType = i11;
    }

    public void setSpendEndTime(long j11) {
        this.spendEndTime = j11;
    }

    public void setTargetUrl(String str) {
        this.targetUrl = str;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
