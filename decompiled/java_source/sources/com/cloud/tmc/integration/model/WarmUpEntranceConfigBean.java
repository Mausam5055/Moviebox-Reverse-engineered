package com.cloud.tmc.integration.model;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0016\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0013J2\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u00032\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\u0005HÖ\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0011\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\""}, d2 = {"Lcom/cloud/tmc/integration/model/WarmUpEntranceConfigBean;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "enableWarmUp", "", "configToken", "", "grayScale", "", "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Float;)V", "getConfigToken", "()Ljava/lang/String;", "setConfigToken", "(Ljava/lang/String;)V", "getEnableWarmUp", "()Ljava/lang/Boolean;", "setEnableWarmUp", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getGrayScale", "()Ljava/lang/Float;", "setGrayScale", "(Ljava/lang/Float;)V", "Ljava/lang/Float;", "component1", "component2", "component3", "copy", "(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Float;)Lcom/cloud/tmc/integration/model/WarmUpEntranceConfigBean;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class WarmUpEntranceConfigBean extends BaseBean {
    private String configToken;
    private Boolean enableWarmUp;
    private Float grayScale;

    public WarmUpEntranceConfigBean(Boolean bool, String str, Float f11) {
        this.enableWarmUp = bool;
        this.configToken = str;
        this.grayScale = f11;
    }

    public static /* synthetic */ WarmUpEntranceConfigBean copy$default(WarmUpEntranceConfigBean warmUpEntranceConfigBean, Boolean bool, String str, Float f11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            bool = warmUpEntranceConfigBean.enableWarmUp;
        }
        if ((i11 & 2) != 0) {
            str = warmUpEntranceConfigBean.configToken;
        }
        if ((i11 & 4) != 0) {
            f11 = warmUpEntranceConfigBean.grayScale;
        }
        return warmUpEntranceConfigBean.copy(bool, str, f11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Boolean getEnableWarmUp() {
        return this.enableWarmUp;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getConfigToken() {
        return this.configToken;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Float getGrayScale() {
        return this.grayScale;
    }

    public final WarmUpEntranceConfigBean copy(Boolean enableWarmUp, String configToken, Float grayScale) {
        return new WarmUpEntranceConfigBean(enableWarmUp, configToken, grayScale);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof WarmUpEntranceConfigBean)) {
            return false;
        }
        WarmUpEntranceConfigBean warmUpEntranceConfigBean = (WarmUpEntranceConfigBean) other;
        return Intrinsics.c(this.enableWarmUp, warmUpEntranceConfigBean.enableWarmUp) && Intrinsics.c(this.configToken, warmUpEntranceConfigBean.configToken) && Intrinsics.c(this.grayScale, warmUpEntranceConfigBean.grayScale);
    }

    public final String getConfigToken() {
        return this.configToken;
    }

    public final Boolean getEnableWarmUp() {
        return this.enableWarmUp;
    }

    public final Float getGrayScale() {
        return this.grayScale;
    }

    public int hashCode() {
        Boolean bool = this.enableWarmUp;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        String str = this.configToken;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Float f11 = this.grayScale;
        return iHashCode2 + (f11 != null ? f11.hashCode() : 0);
    }

    public final void setConfigToken(String str) {
        this.configToken = str;
    }

    public final void setEnableWarmUp(Boolean bool) {
        this.enableWarmUp = bool;
    }

    public final void setGrayScale(Float f11) {
        this.grayScale = f11;
    }

    public String toString() {
        return "WarmUpEntranceConfigBean(enableWarmUp=" + this.enableWarmUp + ", configToken=" + this.configToken + ", grayScale=" + this.grayScale + ")";
    }
}
