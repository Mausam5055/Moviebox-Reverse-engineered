package com.cloud.h5update.bean;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u0013JJ\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020\u0005HÖ\u0001J\t\u0010 \u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\fR\u0015\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013¨\u0006!"}, d2 = {"Lcom/cloud/h5update/bean/PreloadResource;", "", "encryptedStaticZip", "", "id", "", "staticZipUrl", "url", "version", "", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V", "getEncryptedStaticZip", "()Ljava/lang/String;", "getId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getStaticZipUrl", "getUrl", "getVersion", "()Ljava/lang/Long;", "Ljava/lang/Long;", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/cloud/h5update/bean/PreloadResource;", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "apph5update_release"}, k = 1, mv = {1, 6, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class PreloadResource {
    private final String encryptedStaticZip;
    private final Integer id;
    private final String staticZipUrl;
    private final String url;
    private final Long version;

    public PreloadResource() {
        this(null, null, null, null, null, 31, null);
    }

    public PreloadResource(String str, Integer num, String str2, String str3, Long l11) {
        this.encryptedStaticZip = str;
        this.id = num;
        this.staticZipUrl = str2;
        this.url = str3;
        this.version = l11;
    }

    public /* synthetic */ PreloadResource(String str, Integer num, String str2, String str3, Long l11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, (i11 & 2) != 0 ? null : num, (i11 & 4) != 0 ? null : str2, (i11 & 8) != 0 ? null : str3, (i11 & 16) != 0 ? null : l11);
    }

    public static /* synthetic */ PreloadResource copy$default(PreloadResource preloadResource, String str, Integer num, String str2, String str3, Long l11, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = preloadResource.encryptedStaticZip;
        }
        if ((i11 & 2) != 0) {
            num = preloadResource.id;
        }
        Integer num2 = num;
        if ((i11 & 4) != 0) {
            str2 = preloadResource.staticZipUrl;
        }
        String str4 = str2;
        if ((i11 & 8) != 0) {
            str3 = preloadResource.url;
        }
        String str5 = str3;
        if ((i11 & 16) != 0) {
            l11 = preloadResource.version;
        }
        return preloadResource.copy(str, num2, str4, str5, l11);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getEncryptedStaticZip() {
        return this.encryptedStaticZip;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Integer getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getStaticZipUrl() {
        return this.staticZipUrl;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Long getVersion() {
        return this.version;
    }

    public final PreloadResource copy(String encryptedStaticZip, Integer id2, String staticZipUrl, String url, Long version) {
        return new PreloadResource(encryptedStaticZip, id2, staticZipUrl, url, version);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PreloadResource)) {
            return false;
        }
        PreloadResource preloadResource = (PreloadResource) other;
        return Intrinsics.c(this.encryptedStaticZip, preloadResource.encryptedStaticZip) && Intrinsics.c(this.id, preloadResource.id) && Intrinsics.c(this.staticZipUrl, preloadResource.staticZipUrl) && Intrinsics.c(this.url, preloadResource.url) && Intrinsics.c(this.version, preloadResource.version);
    }

    public final String getEncryptedStaticZip() {
        return this.encryptedStaticZip;
    }

    public final Integer getId() {
        return this.id;
    }

    public final String getStaticZipUrl() {
        return this.staticZipUrl;
    }

    public final String getUrl() {
        return this.url;
    }

    public final Long getVersion() {
        return this.version;
    }

    public int hashCode() {
        String str = this.encryptedStaticZip;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Integer num = this.id;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.staticZipUrl;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.url;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Long l11 = this.version;
        return iHashCode4 + (l11 != null ? l11.hashCode() : 0);
    }

    public String toString() {
        return "PreloadResource(encryptedStaticZip=" + this.encryptedStaticZip + ", id=" + this.id + ", staticZipUrl=" + this.staticZipUrl + ", url=" + this.url + ", version=" + this.version + ')';
    }
}
