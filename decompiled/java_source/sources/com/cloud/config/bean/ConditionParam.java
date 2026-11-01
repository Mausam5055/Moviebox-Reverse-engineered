package com.cloud.config.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007HÆ\u0003J-\u0010\u0012\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/cloud/config/bean/ConditionParam;", "", "cacheFileUrl", "", "conditionParam", "Lcom/cloud/config/bean/ConditionParamX;", "shuntInfo", "Lcom/cloud/config/bean/ShuntInfo;", "(Ljava/lang/String;Lcom/cloud/config/bean/ConditionParamX;Lcom/cloud/config/bean/ShuntInfo;)V", "getCacheFileUrl", "()Ljava/lang/String;", "getConditionParam", "()Lcom/cloud/config/bean/ConditionParamX;", "getShuntInfo", "()Lcom/cloud/config/bean/ShuntInfo;", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "config_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ConditionParam {
    private final String cacheFileUrl;
    private final ConditionParamX conditionParam;
    private final ShuntInfo shuntInfo;

    public ConditionParam(String str, ConditionParamX conditionParamX, ShuntInfo shuntInfo) {
        this.cacheFileUrl = str;
        this.conditionParam = conditionParamX;
        this.shuntInfo = shuntInfo;
    }

    public static /* synthetic */ ConditionParam copy$default(ConditionParam conditionParam, String str, ConditionParamX conditionParamX, ShuntInfo shuntInfo, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = conditionParam.cacheFileUrl;
        }
        if ((i11 & 2) != 0) {
            conditionParamX = conditionParam.conditionParam;
        }
        if ((i11 & 4) != 0) {
            shuntInfo = conditionParam.shuntInfo;
        }
        return conditionParam.copy(str, conditionParamX, shuntInfo);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCacheFileUrl() {
        return this.cacheFileUrl;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final ConditionParamX getConditionParam() {
        return this.conditionParam;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final ShuntInfo getShuntInfo() {
        return this.shuntInfo;
    }

    public final ConditionParam copy(String cacheFileUrl, ConditionParamX conditionParam, ShuntInfo shuntInfo) {
        return new ConditionParam(cacheFileUrl, conditionParam, shuntInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConditionParam)) {
            return false;
        }
        ConditionParam conditionParam = (ConditionParam) other;
        return Intrinsics.c(this.cacheFileUrl, conditionParam.cacheFileUrl) && Intrinsics.c(this.conditionParam, conditionParam.conditionParam) && Intrinsics.c(this.shuntInfo, conditionParam.shuntInfo);
    }

    public final String getCacheFileUrl() {
        return this.cacheFileUrl;
    }

    public final ConditionParamX getConditionParam() {
        return this.conditionParam;
    }

    public final ShuntInfo getShuntInfo() {
        return this.shuntInfo;
    }

    public int hashCode() {
        String str = this.cacheFileUrl;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        ConditionParamX conditionParamX = this.conditionParam;
        int iHashCode2 = (iHashCode + (conditionParamX == null ? 0 : conditionParamX.hashCode())) * 31;
        ShuntInfo shuntInfo = this.shuntInfo;
        return iHashCode2 + (shuntInfo != null ? shuntInfo.hashCode() : 0);
    }

    public String toString() {
        return "ConditionParam(cacheFileUrl=" + ((Object) this.cacheFileUrl) + ", conditionParam=" + this.conditionParam + ", shuntInfo=" + this.shuntInfo + ')';
    }
}
