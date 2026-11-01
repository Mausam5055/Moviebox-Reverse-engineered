package com.transsion.base.infras_config.model;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u001f\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, d2 = {"Lcom/transsion/base/infras_config/model/ConfigLocalState;", "", "sourceType", "Lcom/transsion/base/infras_config/model/InfrasSourceType;", "curVersion", "", "<init>", "(Lcom/transsion/base/infras_config/model/InfrasSourceType;Ljava/lang/String;)V", "getSourceType", "()Lcom/transsion/base/infras_config/model/InfrasSourceType;", "getCurVersion", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "base_infras_config_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ConfigLocalState {

    @SerializedName("curVersion")
    private final String curVersion;

    @SerializedName("sourceType")
    private final InfrasSourceType sourceType;

    public ConfigLocalState(InfrasSourceType sourceType, String str) {
        Intrinsics.h(sourceType, "sourceType");
        this.sourceType = sourceType;
        this.curVersion = str;
    }

    public /* synthetic */ ConfigLocalState(InfrasSourceType infrasSourceType, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(infrasSourceType, (i11 & 2) != 0 ? null : str);
    }

    public static /* synthetic */ ConfigLocalState copy$default(ConfigLocalState configLocalState, InfrasSourceType infrasSourceType, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            infrasSourceType = configLocalState.sourceType;
        }
        if ((i11 & 2) != 0) {
            str = configLocalState.curVersion;
        }
        return configLocalState.copy(infrasSourceType, str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final InfrasSourceType getSourceType() {
        return this.sourceType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getCurVersion() {
        return this.curVersion;
    }

    public final ConfigLocalState copy(InfrasSourceType sourceType, String curVersion) {
        Intrinsics.h(sourceType, "sourceType");
        return new ConfigLocalState(sourceType, curVersion);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConfigLocalState)) {
            return false;
        }
        ConfigLocalState configLocalState = (ConfigLocalState) other;
        return this.sourceType == configLocalState.sourceType && Intrinsics.c(this.curVersion, configLocalState.curVersion);
    }

    public final String getCurVersion() {
        return this.curVersion;
    }

    public final InfrasSourceType getSourceType() {
        return this.sourceType;
    }

    public int hashCode() {
        int iHashCode = this.sourceType.hashCode() * 31;
        String str = this.curVersion;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "ConfigLocalState(sourceType=" + this.sourceType + ", curVersion=" + this.curVersion + ')';
    }
}
