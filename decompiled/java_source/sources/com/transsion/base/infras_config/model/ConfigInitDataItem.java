package com.transsion.base.infras_config.model;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.JsonElement;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\tHÆ\u0003J9\u0010\u0018\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0018\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001f"}, d2 = {"Lcom/transsion/base/infras_config/model/ConfigInitDataItem;", "", "sourceType", "Lcom/transsion/base/infras_config/model/InfrasSourceType;", "version", "", "configs", "Lcom/google/gson/JsonElement;", "code", "Lcom/transsion/base/infras_config/model/ConfigInitRspCode;", "<init>", "(Lcom/transsion/base/infras_config/model/InfrasSourceType;Ljava/lang/String;Lcom/google/gson/JsonElement;Lcom/transsion/base/infras_config/model/ConfigInitRspCode;)V", "getSourceType", "()Lcom/transsion/base/infras_config/model/InfrasSourceType;", "getVersion", "()Ljava/lang/String;", "getConfigs", "()Lcom/google/gson/JsonElement;", "getCode", "()Lcom/transsion/base/infras_config/model/ConfigInitRspCode;", "component1", "component2", "component3", "component4", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "base_infras_config_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ConfigInitDataItem {

    @SerializedName("code")
    private final ConfigInitRspCode code;

    @SerializedName("configs")
    private final JsonElement configs;

    @SerializedName("sourceType")
    private final InfrasSourceType sourceType;

    @SerializedName("version")
    private final String version;

    public ConfigInitDataItem() {
        this(null, null, null, null, 15, null);
    }

    public ConfigInitDataItem(InfrasSourceType infrasSourceType, String str, JsonElement jsonElement, ConfigInitRspCode configInitRspCode) {
        this.sourceType = infrasSourceType;
        this.version = str;
        this.configs = jsonElement;
        this.code = configInitRspCode;
    }

    public /* synthetic */ ConfigInitDataItem(InfrasSourceType infrasSourceType, String str, JsonElement jsonElement, ConfigInitRspCode configInitRspCode, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : infrasSourceType, (i11 & 2) != 0 ? null : str, (i11 & 4) != 0 ? null : jsonElement, (i11 & 8) != 0 ? null : configInitRspCode);
    }

    public static /* synthetic */ ConfigInitDataItem copy$default(ConfigInitDataItem configInitDataItem, InfrasSourceType infrasSourceType, String str, JsonElement jsonElement, ConfigInitRspCode configInitRspCode, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            infrasSourceType = configInitDataItem.sourceType;
        }
        if ((i11 & 2) != 0) {
            str = configInitDataItem.version;
        }
        if ((i11 & 4) != 0) {
            jsonElement = configInitDataItem.configs;
        }
        if ((i11 & 8) != 0) {
            configInitRspCode = configInitDataItem.code;
        }
        return configInitDataItem.copy(infrasSourceType, str, jsonElement, configInitRspCode);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final InfrasSourceType getSourceType() {
        return this.sourceType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final JsonElement getConfigs() {
        return this.configs;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final ConfigInitRspCode getCode() {
        return this.code;
    }

    public final ConfigInitDataItem copy(InfrasSourceType sourceType, String version, JsonElement configs, ConfigInitRspCode code) {
        return new ConfigInitDataItem(sourceType, version, configs, code);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConfigInitDataItem)) {
            return false;
        }
        ConfigInitDataItem configInitDataItem = (ConfigInitDataItem) other;
        return this.sourceType == configInitDataItem.sourceType && Intrinsics.c(this.version, configInitDataItem.version) && Intrinsics.c(this.configs, configInitDataItem.configs) && this.code == configInitDataItem.code;
    }

    public final ConfigInitRspCode getCode() {
        return this.code;
    }

    public final JsonElement getConfigs() {
        return this.configs;
    }

    public final InfrasSourceType getSourceType() {
        return this.sourceType;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        InfrasSourceType infrasSourceType = this.sourceType;
        int iHashCode = (infrasSourceType == null ? 0 : infrasSourceType.hashCode()) * 31;
        String str = this.version;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        JsonElement jsonElement = this.configs;
        int iHashCode3 = (iHashCode2 + (jsonElement == null ? 0 : jsonElement.hashCode())) * 31;
        ConfigInitRspCode configInitRspCode = this.code;
        return iHashCode3 + (configInitRspCode != null ? configInitRspCode.hashCode() : 0);
    }

    public String toString() {
        return "ConfigInitDataItem(sourceType=" + this.sourceType + ", version=" + this.version + ", configs=" + this.configs + ", code=" + this.code + ')';
    }
}
