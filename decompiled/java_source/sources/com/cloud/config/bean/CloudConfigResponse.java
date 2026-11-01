package com.cloud.config.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J!\u0010\r\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/cloud/config/bean/CloudConfigResponse;", "", "cloudconfigKey", "", "conditionInfo", "Lcom/cloud/config/bean/ConditionInfo;", "(Ljava/lang/String;Lcom/cloud/config/bean/ConditionInfo;)V", "getCloudconfigKey", "()Ljava/lang/String;", "getConditionInfo", "()Lcom/cloud/config/bean/ConditionInfo;", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "config_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class CloudConfigResponse {
    private final String cloudconfigKey;
    private final ConditionInfo conditionInfo;

    public CloudConfigResponse(String str, ConditionInfo conditionInfo) {
        this.cloudconfigKey = str;
        this.conditionInfo = conditionInfo;
    }

    public static /* synthetic */ CloudConfigResponse copy$default(CloudConfigResponse cloudConfigResponse, String str, ConditionInfo conditionInfo, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = cloudConfigResponse.cloudconfigKey;
        }
        if ((i11 & 2) != 0) {
            conditionInfo = cloudConfigResponse.conditionInfo;
        }
        return cloudConfigResponse.copy(str, conditionInfo);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getCloudconfigKey() {
        return this.cloudconfigKey;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final ConditionInfo getConditionInfo() {
        return this.conditionInfo;
    }

    public final CloudConfigResponse copy(String cloudconfigKey, ConditionInfo conditionInfo) {
        return new CloudConfigResponse(cloudconfigKey, conditionInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CloudConfigResponse)) {
            return false;
        }
        CloudConfigResponse cloudConfigResponse = (CloudConfigResponse) other;
        return Intrinsics.c(this.cloudconfigKey, cloudConfigResponse.cloudconfigKey) && Intrinsics.c(this.conditionInfo, cloudConfigResponse.conditionInfo);
    }

    public final String getCloudconfigKey() {
        return this.cloudconfigKey;
    }

    public final ConditionInfo getConditionInfo() {
        return this.conditionInfo;
    }

    public int hashCode() {
        String str = this.cloudconfigKey;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        ConditionInfo conditionInfo = this.conditionInfo;
        return iHashCode + (conditionInfo != null ? conditionInfo.hashCode() : 0);
    }

    public String toString() {
        return "CloudConfigResponse(cloudconfigKey=" + ((Object) this.cloudconfigKey) + ", conditionInfo=" + this.conditionInfo + ')';
    }
}
