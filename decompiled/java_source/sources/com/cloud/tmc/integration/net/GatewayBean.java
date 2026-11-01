package com.cloud.tmc.integration.net;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.tracking.TrackingKey;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J)\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\b¨\u0006\u0018"}, d2 = {"Lcom/cloud/tmc/integration/net/GatewayBean;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "errorCode", "", "errorMessage", "callbackId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getCallbackId", "()Ljava/lang/String;", "setCallbackId", "(Ljava/lang/String;)V", "getErrorCode", "getErrorMessage", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class GatewayBean extends BaseBean {

    @SerializedName("callbackId")
    private String callbackId;

    @SerializedName("error_code")
    private final String errorCode;

    @SerializedName(TrackingKey.ERROR_MESSAGE)
    private final String errorMessage;

    public GatewayBean() {
        this(null, null, null, 7, null);
    }

    public GatewayBean(String errorCode, String errorMessage, String str) {
        Intrinsics.h(errorCode, "errorCode");
        Intrinsics.h(errorMessage, "errorMessage");
        this.errorCode = errorCode;
        this.errorMessage = errorMessage;
        this.callbackId = str;
    }

    public /* synthetic */ GatewayBean(String str, String str2, String str3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? "" : str2, (i11 & 4) != 0 ? "" : str3);
    }

    public static /* synthetic */ GatewayBean copy$default(GatewayBean gatewayBean, String str, String str2, String str3, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = gatewayBean.errorCode;
        }
        if ((i11 & 2) != 0) {
            str2 = gatewayBean.errorMessage;
        }
        if ((i11 & 4) != 0) {
            str3 = gatewayBean.callbackId;
        }
        return gatewayBean.copy(str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getErrorCode() {
        return this.errorCode;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getErrorMessage() {
        return this.errorMessage;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCallbackId() {
        return this.callbackId;
    }

    public final GatewayBean copy(String errorCode, String errorMessage, String callbackId) {
        Intrinsics.h(errorCode, "errorCode");
        Intrinsics.h(errorMessage, "errorMessage");
        return new GatewayBean(errorCode, errorMessage, callbackId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GatewayBean)) {
            return false;
        }
        GatewayBean gatewayBean = (GatewayBean) other;
        return Intrinsics.c(this.errorCode, gatewayBean.errorCode) && Intrinsics.c(this.errorMessage, gatewayBean.errorMessage) && Intrinsics.c(this.callbackId, gatewayBean.callbackId);
    }

    public final String getCallbackId() {
        return this.callbackId;
    }

    public final String getErrorCode() {
        return this.errorCode;
    }

    public final String getErrorMessage() {
        return this.errorMessage;
    }

    public int hashCode() {
        int iHashCode = ((this.errorCode.hashCode() * 31) + this.errorMessage.hashCode()) * 31;
        String str = this.callbackId;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final void setCallbackId(String str) {
        this.callbackId = str;
    }

    public String toString() {
        return "GatewayBean(errorCode=" + this.errorCode + ", errorMessage=" + this.errorMessage + ", callbackId=" + this.callbackId + ")";
    }
}
