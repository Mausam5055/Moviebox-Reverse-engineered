package com.cloud.hisavana.sdk.data.bean.response.ccofig;

import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\"\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR \u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/cloud/hisavana/sdk/data/bean/response/ccofig/CommonConfigDTO;", "", "()V", CustomTabConfigDTOKt.ANTIFRAUD_POWER_ENABLE, "", "getAntifraudPowerEnable", "()Ljava/lang/Boolean;", "setAntifraudPowerEnable", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", CustomTabConfigDTOKt.ANTIFRAUD_SUB_FUNCTION_CONTROL, "", "getAntifraudSubfunctionControl", "()Ljava/lang/String;", "setAntifraudSubfunctionControl", "(Ljava/lang/String;)V", CustomTabConfigDTOKt.IS_REQUEST_DEFAULT_AD_ON_NET_CHANGE, "setRequestDefaultAdOnNetChange", "showWebLetterAdPrice", "", "getShowWebLetterAdPrice", "()Ljava/lang/Integer;", "setShowWebLetterAdPrice", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CommonConfigDTO {

    @SerializedName(CustomTabConfigDTOKt.ANTIFRAUD_POWER_ENABLE)
    private Boolean antifraudPowerEnable;

    @SerializedName(CustomTabConfigDTOKt.ANTIFRAUD_SUB_FUNCTION_CONTROL)
    private String antifraudSubfunctionControl;
    private Integer showWebLetterAdPrice = 10;

    @SerializedName(CustomTabConfigDTOKt.IS_REQUEST_DEFAULT_AD_ON_NET_CHANGE)
    private Boolean isRequestDefaultAdOnNetChange = Boolean.FALSE;

    public final Boolean getAntifraudPowerEnable() {
        return this.antifraudPowerEnable;
    }

    public final String getAntifraudSubfunctionControl() {
        return this.antifraudSubfunctionControl;
    }

    public final Integer getShowWebLetterAdPrice() {
        return this.showWebLetterAdPrice;
    }

    /* JADX INFO: renamed from: isRequestDefaultAdOnNetChange, reason: from getter */
    public final Boolean getIsRequestDefaultAdOnNetChange() {
        return this.isRequestDefaultAdOnNetChange;
    }

    public final void setAntifraudPowerEnable(Boolean bool) {
        this.antifraudPowerEnable = bool;
    }

    public final void setAntifraudSubfunctionControl(String str) {
        this.antifraudSubfunctionControl = str;
    }

    public final void setRequestDefaultAdOnNetChange(Boolean bool) {
        this.isRequestDefaultAdOnNetChange = bool;
    }

    public final void setShowWebLetterAdPrice(Integer num) {
        this.showWebLetterAdPrice = num;
    }
}
