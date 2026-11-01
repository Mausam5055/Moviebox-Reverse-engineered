package com.cloud.tmc.offline.download.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.kernel.model.BaseBean;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0080\b\u0018\u0000 +2\u00020\u00012\u00020\u0002:\u0001+B\u000f\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B3\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\rJ\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\u001e\u001a\u00020\nHÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\fHÆ\u0003J7\u0010 \u001a\u00020\u00002\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\fHÆ\u0001J\b\u0010!\u001a\u00020\nH\u0016J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%HÖ\u0003J\t\u0010&\u001a\u00020\nHÖ\u0001J\t\u0010'\u001a\u00020\u0007HÖ\u0001J\u0018\u0010(\u001a\u00020)2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\nH\u0016R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0017\"\u0004\b\u001b\u0010\u0019¨\u0006,"}, d2 = {"Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;", "Lcom/cloud/tmc/kernel/model/BaseBean;", "Landroid/os/Parcelable;", "parcel", "Landroid/os/Parcel;", "(Landroid/os/Parcel;)V", "url", "", "zipUnCompressPath", NotificationCompat.CATEGORY_STATUS, "", "manifest", "Lcom/cloud/tmc/offline/download/model/OffPkgConfig;", "(Ljava/lang/String;Ljava/lang/String;ILcom/cloud/tmc/offline/download/model/OffPkgConfig;)V", "getManifest", "()Lcom/cloud/tmc/offline/download/model/OffPkgConfig;", "setManifest", "(Lcom/cloud/tmc/offline/download/model/OffPkgConfig;)V", "getStatus", "()I", "setStatus", "(I)V", "getUrl", "()Ljava/lang/String;", "setUrl", "(Ljava/lang/String;)V", "getZipUnCompressPath", "setZipUnCompressPath", "component1", "component2", "component3", "component4", "copy", "describeContents", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "writeToParcel", "", "flags", "CREATOR", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class OfflineZipDownloadInfo extends BaseBean implements Parcelable {

    /* JADX INFO: renamed from: CREATOR, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private OffPkgConfig manifest;
    private int status;
    private String url;
    private String zipUnCompressPath;

    /* JADX INFO: renamed from: com.cloud.tmc.offline.download.model.OfflineZipDownloadInfo$CREATOR, reason: from kotlin metadata */
    @kotlin.Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u001d\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo$CREATOR;", "Landroid/os/Parcelable$Creator;", "Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;", "()V", "createFromParcel", "parcel", "Landroid/os/Parcel;", "newArray", "", "size", "", "(I)[Lcom/cloud/tmc/offline/download/model/OfflineZipDownloadInfo;", "com.cloud.tmc.offline_download"}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class Companion implements Parcelable.Creator<OfflineZipDownloadInfo> {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OfflineZipDownloadInfo createFromParcel(Parcel parcel) {
            Intrinsics.h(parcel, "parcel");
            return new OfflineZipDownloadInfo(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public OfflineZipDownloadInfo[] newArray(int size) {
            return new OfflineZipDownloadInfo[size];
        }
    }

    public OfflineZipDownloadInfo() {
        this(null, null, 0, null, 15, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public OfflineZipDownloadInfo(Parcel parcel) {
        this(parcel.readString(), parcel.readString(), parcel.readInt(), (OffPkgConfig) parcel.readParcelable(OffPkgConfig.class.getClassLoader()));
        Intrinsics.h(parcel, "parcel");
    }

    public OfflineZipDownloadInfo(String str, String str2, int i11, OffPkgConfig offPkgConfig) {
        this.url = str;
        this.zipUnCompressPath = str2;
        this.status = i11;
        this.manifest = offPkgConfig;
    }

    public /* synthetic */ OfflineZipDownloadInfo(String str, String str2, int i11, OffPkgConfig offPkgConfig, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? null : str, (i12 & 2) != 0 ? null : str2, (i12 & 4) != 0 ? 0 : i11, (i12 & 8) != 0 ? null : offPkgConfig);
    }

    public static /* synthetic */ OfflineZipDownloadInfo copy$default(OfflineZipDownloadInfo offlineZipDownloadInfo, String str, String str2, int i11, OffPkgConfig offPkgConfig, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            str = offlineZipDownloadInfo.url;
        }
        if ((i12 & 2) != 0) {
            str2 = offlineZipDownloadInfo.zipUnCompressPath;
        }
        if ((i12 & 4) != 0) {
            i11 = offlineZipDownloadInfo.status;
        }
        if ((i12 & 8) != 0) {
            offPkgConfig = offlineZipDownloadInfo.manifest;
        }
        return offlineZipDownloadInfo.copy(str, str2, i11, offPkgConfig);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getUrl() {
        return this.url;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getZipUnCompressPath() {
        return this.zipUnCompressPath;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final OffPkgConfig getManifest() {
        return this.manifest;
    }

    public final OfflineZipDownloadInfo copy(String url, String zipUnCompressPath, int status, OffPkgConfig manifest) {
        return new OfflineZipDownloadInfo(url, zipUnCompressPath, status, manifest);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OfflineZipDownloadInfo)) {
            return false;
        }
        OfflineZipDownloadInfo offlineZipDownloadInfo = (OfflineZipDownloadInfo) other;
        return Intrinsics.c(this.url, offlineZipDownloadInfo.url) && Intrinsics.c(this.zipUnCompressPath, offlineZipDownloadInfo.zipUnCompressPath) && this.status == offlineZipDownloadInfo.status && Intrinsics.c(this.manifest, offlineZipDownloadInfo.manifest);
    }

    public final OffPkgConfig getManifest() {
        return this.manifest;
    }

    public final int getStatus() {
        return this.status;
    }

    public final String getUrl() {
        return this.url;
    }

    public final String getZipUnCompressPath() {
        return this.zipUnCompressPath;
    }

    public int hashCode() {
        String str = this.url;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.zipUnCompressPath;
        int iHashCode2 = (((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31) + this.status) * 31;
        OffPkgConfig offPkgConfig = this.manifest;
        return iHashCode2 + (offPkgConfig != null ? offPkgConfig.hashCode() : 0);
    }

    public final void setManifest(OffPkgConfig offPkgConfig) {
        this.manifest = offPkgConfig;
    }

    public final void setStatus(int i11) {
        this.status = i11;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final void setZipUnCompressPath(String str) {
        this.zipUnCompressPath = str;
    }

    public String toString() {
        return "OfflineZipDownloadInfo(url=" + this.url + ", zipUnCompressPath=" + this.zipUnCompressPath + ", status=" + this.status + ", manifest=" + this.manifest + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int flags) {
        Intrinsics.h(parcel, "parcel");
        parcel.writeString(this.url);
        parcel.writeString(this.zipUnCompressPath);
        parcel.writeInt(this.status);
        parcel.writeParcelable(this.manifest, flags);
    }
}
