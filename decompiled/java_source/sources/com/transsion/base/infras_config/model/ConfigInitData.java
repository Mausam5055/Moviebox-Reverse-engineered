package com.transsion.base.infras_config.model;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\bHÆ\u0003J3\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/transsion/base/infras_config/model/ConfigInitData;", "", "version", "", "items", "", "Lcom/transsion/base/infras_config/model/ConfigInitDataItem;", "code", "Lcom/transsion/base/infras_config/model/ConfigInitRspCode;", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/transsion/base/infras_config/model/ConfigInitRspCode;)V", "getVersion", "()Ljava/lang/String;", "getItems", "()Ljava/util/List;", "getCode", "()Lcom/transsion/base/infras_config/model/ConfigInitRspCode;", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "base_infras_config_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ConfigInitData {

    @SerializedName("code")
    private final ConfigInitRspCode code;

    @SerializedName("items")
    private final List<ConfigInitDataItem> items;

    @SerializedName("version")
    private final String version;

    public ConfigInitData() {
        this(null, null, null, 7, null);
    }

    public ConfigInitData(String str, List<ConfigInitDataItem> list, ConfigInitRspCode configInitRspCode) {
        this.version = str;
        this.items = list;
        this.code = configInitRspCode;
    }

    public /* synthetic */ ConfigInitData(String str, List list, ConfigInitRspCode configInitRspCode, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : list, (i11 & 4) != 0 ? null : configInitRspCode);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ConfigInitData copy$default(ConfigInitData configInitData, String str, List list, ConfigInitRspCode configInitRspCode, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = configInitData.version;
        }
        if ((i11 & 2) != 0) {
            list = configInitData.items;
        }
        if ((i11 & 4) != 0) {
            configInitRspCode = configInitData.code;
        }
        return configInitData.copy(str, list, configInitRspCode);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    public final List<ConfigInitDataItem> component2() {
        return this.items;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final ConfigInitRspCode getCode() {
        return this.code;
    }

    public final ConfigInitData copy(String version, List<ConfigInitDataItem> items, ConfigInitRspCode code) {
        return new ConfigInitData(version, items, code);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConfigInitData)) {
            return false;
        }
        ConfigInitData configInitData = (ConfigInitData) other;
        return Intrinsics.c(this.version, configInitData.version) && Intrinsics.c(this.items, configInitData.items) && this.code == configInitData.code;
    }

    public final ConfigInitRspCode getCode() {
        return this.code;
    }

    public final List<ConfigInitDataItem> getItems() {
        return this.items;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        String str = this.version;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        List<ConfigInitDataItem> list = this.items;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        ConfigInitRspCode configInitRspCode = this.code;
        return iHashCode2 + (configInitRspCode != null ? configInitRspCode.hashCode() : 0);
    }

    public String toString() {
        return "ConfigInitData(version=" + this.version + ", items=" + this.items + ", code=" + this.code + ')';
    }
}
