package com.cloud.tmc.integration.net;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002B3\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00018\u0000\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\tJ\t\u0010\u0016\u001a\u00020\u0004HÆ\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00018\u0000HÆ\u0003¢\u0006\u0002\u0010\u0013J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0007HÆ\u0003JB\u0010\u001a\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00018\u00002\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fHÖ\u0003J\t\u0010 \u001a\u00020\u0004HÖ\u0001J\b\u0010!\u001a\u00020\u0007H\u0016R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0015\u0010\u0005\u001a\u0004\u0018\u00018\u0000¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000b¨\u0006\""}, d2 = {"Lcom/cloud/tmc/integration/net/BaseResponse;", "T", "Lcom/cloud/tmc/kernel/model/BaseBean;", "code", "", "data", "message", "", "callbackId", "(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V", "getCallbackId", "()Ljava/lang/String;", "setCallbackId", "(Ljava/lang/String;)V", "getCode", "()I", "setCode", "(I)V", "getData", "()Ljava/lang/Object;", "Ljava/lang/Object;", "getMessage", "component1", "component2", "component3", "component4", "copy", "(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/cloud/tmc/integration/net/BaseResponse;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class BaseResponse<T> extends BaseBean {
    private String callbackId;
    private int code;
    private final T data;
    private final String message;

    public BaseResponse() {
        this(0, null, null, null, 15, null);
    }

    public BaseResponse(int i11, T t11, String str, String str2) {
        this.code = i11;
        this.data = t11;
        this.message = str;
        this.callbackId = str2;
    }

    public /* synthetic */ BaseResponse(int i11, Object obj, String str, String str2, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? -1 : i11, (i12 & 2) != 0 ? null : obj, (i12 & 4) != 0 ? "" : str, (i12 & 8) != 0 ? "" : str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BaseResponse copy$default(BaseResponse baseResponse, int i11, Object obj, String str, String str2, int i12, Object obj2) {
        if ((i12 & 1) != 0) {
            i11 = baseResponse.code;
        }
        if ((i12 & 2) != 0) {
            obj = baseResponse.data;
        }
        if ((i12 & 4) != 0) {
            str = baseResponse.message;
        }
        if ((i12 & 8) != 0) {
            str2 = baseResponse.callbackId;
        }
        return baseResponse.copy(i11, obj, str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getCode() {
        return this.code;
    }

    public final T component2() {
        return this.data;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCallbackId() {
        return this.callbackId;
    }

    public final BaseResponse<T> copy(int code, T data, String message, String callbackId) {
        return new BaseResponse<>(code, data, message, callbackId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BaseResponse)) {
            return false;
        }
        BaseResponse baseResponse = (BaseResponse) other;
        return this.code == baseResponse.code && Intrinsics.c(this.data, baseResponse.data) && Intrinsics.c(this.message, baseResponse.message) && Intrinsics.c(this.callbackId, baseResponse.callbackId);
    }

    public final String getCallbackId() {
        return this.callbackId;
    }

    public final int getCode() {
        return this.code;
    }

    public final T getData() {
        return this.data;
    }

    public final String getMessage() {
        return this.message;
    }

    public int hashCode() {
        int i11 = this.code * 31;
        T t11 = this.data;
        int iHashCode = (i11 + (t11 == null ? 0 : t11.hashCode())) * 31;
        String str = this.message;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.callbackId;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final void setCallbackId(String str) {
        this.callbackId = str;
    }

    public final void setCode(int i11) {
        this.code = i11;
    }

    public String toString() {
        return "BaseResponse(code=" + this.code + ", data=" + this.data + ", message=" + this.message + ", callbackId=" + this.callbackId + ")";
    }
}
