package com.transsion.upload.bean;

import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/transsion/upload/bean/UploadTstTokenStorageType;", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "(Ljava/lang/String;ILjava/lang/String;)V", "getType", "()Ljava/lang/String;", "TST_TOKEN_STORAGE_OSS", "TST_TOKEN_STORAGE_S3", "Upload_release"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public enum UploadTstTokenStorageType {
    TST_TOKEN_STORAGE_OSS("OSS"),
    TST_TOKEN_STORAGE_S3("S3");

    private final String type;

    UploadTstTokenStorageType(String str) {
        this.type = str;
    }

    public final String getType() {
        return this.type;
    }
}
