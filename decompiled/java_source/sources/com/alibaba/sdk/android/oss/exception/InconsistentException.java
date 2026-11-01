package com.alibaba.sdk.android.oss.exception;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class InconsistentException extends IOException {
    private Long clientChecksum;
    private String requestId;
    private Long serverChecksum;

    public InconsistentException(Long l11, Long l12, String str) {
        this.clientChecksum = l11;
        this.serverChecksum = l12;
        this.requestId = str;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return "InconsistentException: inconsistent object\n[RequestId]: " + this.requestId + "\n[ClientChecksum]: " + this.clientChecksum + "\n[ServerChecksum]: " + this.serverChecksum;
    }
}
