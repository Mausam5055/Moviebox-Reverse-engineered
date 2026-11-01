package com.transsion.base.infras_config.model;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0011\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0006HÆ\u0003J'\u0010\u000f\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0006HÖ\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0016"}, d2 = {"Lcom/transsion/base/infras_config/model/ConfigInitMobileInfraReq;", "", "sourceVersions", "", "Lcom/transsion/base/infras_config/model/ConfigLocalState;", "version", "", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "getSourceVersions", "()Ljava/util/List;", "getVersion", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "base_infras_config_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ConfigInitMobileInfraReq {

    @SerializedName("sourceVersions")
    private final List<ConfigLocalState> sourceVersions;

    @SerializedName("version")
    private final String version;

    /* JADX WARN: Multi-variable type inference failed */
    public ConfigInitMobileInfraReq() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public ConfigInitMobileInfraReq(List<ConfigLocalState> list, String str) {
        this.sourceVersions = list;
        this.version = str;
    }

    public /* synthetic */ ConfigInitMobileInfraReq(List list, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : list, (i11 & 2) != 0 ? null : str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ConfigInitMobileInfraReq copy$default(ConfigInitMobileInfraReq configInitMobileInfraReq, List list, String str, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = configInitMobileInfraReq.sourceVersions;
        }
        if ((i11 & 2) != 0) {
            str = configInitMobileInfraReq.version;
        }
        return configInitMobileInfraReq.copy(list, str);
    }

    public final List<ConfigLocalState> component1() {
        return this.sourceVersions;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getVersion() {
        return this.version;
    }

    public final ConfigInitMobileInfraReq copy(List<ConfigLocalState> sourceVersions, String version) {
        return new ConfigInitMobileInfraReq(sourceVersions, version);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ConfigInitMobileInfraReq)) {
            return false;
        }
        ConfigInitMobileInfraReq configInitMobileInfraReq = (ConfigInitMobileInfraReq) other;
        return Intrinsics.c(this.sourceVersions, configInitMobileInfraReq.sourceVersions) && Intrinsics.c(this.version, configInitMobileInfraReq.version);
    }

    public final List<ConfigLocalState> getSourceVersions() {
        return this.sourceVersions;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        List<ConfigLocalState> list = this.sourceVersions;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        String str = this.version;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "ConfigInitMobileInfraReq(sourceVersions=" + this.sourceVersions + ", version=" + this.version + ')';
    }
}
