package com.cloud.h5update.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BS\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\rJ\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007HÆ\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0015J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\fHÆ\u0003¢\u0006\u0002\u0010\u0018J\\\u0010 \u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fHÆ\u0001¢\u0006\u0002\u0010!J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010%\u001a\u00020\nHÖ\u0001J\t\u0010&\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0015\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u0016\u001a\u0004\b\u0014\u0010\u0015R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\n\n\u0002\u0010\u0019\u001a\u0004\b\u0017\u0010\u0018¨\u0006'"}, d2 = {"Lcom/cloud/h5update/bean/UpdateEntity;", "", "extraConfig", "", "ignoreCachedFiles", "packageName", "preloadResource", "", "Lcom/cloud/h5update/bean/PreloadResource;", "updateMode", "", "version", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Long;)V", "getExtraConfig", "()Ljava/lang/String;", "getIgnoreCachedFiles", "getPackageName", "getPreloadResource", "()Ljava/util/List;", "getUpdateMode", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getVersion", "()Ljava/lang/Long;", "Ljava/lang/Long;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Long;)Lcom/cloud/h5update/bean/UpdateEntity;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "apph5update_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UpdateEntity {
    private final String extraConfig;
    private final String ignoreCachedFiles;
    private final String packageName;
    private final List<PreloadResource> preloadResource;
    private final Integer updateMode;
    private final Long version;

    public UpdateEntity() {
        this(null, null, null, null, null, null, 63, null);
    }

    public UpdateEntity(String str, String str2, String str3, List<PreloadResource> list, Integer num, Long l11) {
        this.extraConfig = str;
        this.ignoreCachedFiles = str2;
        this.packageName = str3;
        this.preloadResource = list;
        this.updateMode = num;
        this.version = l11;
    }

    public /* synthetic */ UpdateEntity(String str, String str2, String str3, List list, Integer num, Long l11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : str2, (i11 & 4) != 0 ? null : str3, (i11 & 8) != 0 ? null : list, (i11 & 16) != 0 ? null : num, (i11 & 32) != 0 ? null : l11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UpdateEntity copy$default(UpdateEntity updateEntity, String str, String str2, String str3, List list, Integer num, Long l11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = updateEntity.extraConfig;
        }
        if ((i11 & 2) != 0) {
            str2 = updateEntity.ignoreCachedFiles;
        }
        String str4 = str2;
        if ((i11 & 4) != 0) {
            str3 = updateEntity.packageName;
        }
        String str5 = str3;
        if ((i11 & 8) != 0) {
            list = updateEntity.preloadResource;
        }
        List list2 = list;
        if ((i11 & 16) != 0) {
            num = updateEntity.updateMode;
        }
        Integer num2 = num;
        if ((i11 & 32) != 0) {
            l11 = updateEntity.version;
        }
        return updateEntity.copy(str, str4, str5, list2, num2, l11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getExtraConfig() {
        return this.extraConfig;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getIgnoreCachedFiles() {
        return this.ignoreCachedFiles;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getPackageName() {
        return this.packageName;
    }

    public final List<PreloadResource> component4() {
        return this.preloadResource;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Integer getUpdateMode() {
        return this.updateMode;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Long getVersion() {
        return this.version;
    }

    public final UpdateEntity copy(String extraConfig, String ignoreCachedFiles, String packageName, List<PreloadResource> preloadResource, Integer updateMode, Long version) {
        return new UpdateEntity(extraConfig, ignoreCachedFiles, packageName, preloadResource, updateMode, version);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UpdateEntity)) {
            return false;
        }
        UpdateEntity updateEntity = (UpdateEntity) other;
        return Intrinsics.c(this.extraConfig, updateEntity.extraConfig) && Intrinsics.c(this.ignoreCachedFiles, updateEntity.ignoreCachedFiles) && Intrinsics.c(this.packageName, updateEntity.packageName) && Intrinsics.c(this.preloadResource, updateEntity.preloadResource) && Intrinsics.c(this.updateMode, updateEntity.updateMode) && Intrinsics.c(this.version, updateEntity.version);
    }

    public final String getExtraConfig() {
        return this.extraConfig;
    }

    public final String getIgnoreCachedFiles() {
        return this.ignoreCachedFiles;
    }

    public final String getPackageName() {
        return this.packageName;
    }

    public final List<PreloadResource> getPreloadResource() {
        return this.preloadResource;
    }

    public final Integer getUpdateMode() {
        return this.updateMode;
    }

    public final Long getVersion() {
        return this.version;
    }

    public int hashCode() {
        String str = this.extraConfig;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.ignoreCachedFiles;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.packageName;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        List<PreloadResource> list = this.preloadResource;
        int iHashCode4 = (iHashCode3 + (list == null ? 0 : list.hashCode())) * 31;
        Integer num = this.updateMode;
        int iHashCode5 = (iHashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        Long l11 = this.version;
        return iHashCode5 + (l11 != null ? l11.hashCode() : 0);
    }

    public String toString() {
        return "UpdateEntity(extraConfig=" + this.extraConfig + ", ignoreCachedFiles=" + this.ignoreCachedFiles + ", packageName=" + this.packageName + ", preloadResource=" + this.preloadResource + ", updateMode=" + this.updateMode + ", version=" + this.version + ')';
    }
}
