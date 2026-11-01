package com.bytedance.sdk.openadsdk.api.model;

/* JADX INFO: loaded from: classes2.dex */
public class PAGErrorModel {
    private final int Sj;
    private final String sP;

    public PAGErrorModel(int i11, String str) {
        this.Sj = i11;
        this.sP = str;
    }

    public int getErrorCode() {
        return this.Sj;
    }

    public String getErrorMessage() {
        return this.sP;
    }
}
