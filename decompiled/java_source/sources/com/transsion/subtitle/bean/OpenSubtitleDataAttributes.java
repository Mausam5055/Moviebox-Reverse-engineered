package com.transsion.subtitle.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\u0011\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\nHÆ\u0003J\t\u0010\u001e\u001a\u00020\fHÆ\u0003JO\u0010\u001f\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\fHÆ\u0001J\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010#\u001a\u00020\fHÖ\u0001J\t\u0010$\u001a\u00020\u0006HÖ\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0016\u0010\b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0018\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006%"}, d2 = {"Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;", "", "files", "", "Lcom/transsion/subtitle/bean/OpenSubtitleDataFile;", "subtitleId", "", TmcConstants.KEY_LANGUAGE, "uploadDate", "featureDetails", "Lcom/transsion/subtitle/bean/OpenSubtitleFeatureDetails;", "downloadCount", "", "<init>", "(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/subtitle/bean/OpenSubtitleFeatureDetails;I)V", "getFiles", "()Ljava/util/List;", "getSubtitleId", "()Ljava/lang/String;", "getLanguage", "getUploadDate", "getFeatureDetails", "()Lcom/transsion/subtitle/bean/OpenSubtitleFeatureDetails;", "getDownloadCount", "()I", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "toString", "VideoSubtitle_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class OpenSubtitleDataAttributes {

    @SerializedName("download_count")
    private final int downloadCount;

    @SerializedName("feature_details")
    private final OpenSubtitleFeatureDetails featureDetails;
    private final List<OpenSubtitleDataFile> files;
    private final String language;

    @SerializedName("subtitle_id")
    private final String subtitleId;

    @SerializedName("upload_date")
    private final String uploadDate;

    public OpenSubtitleDataAttributes(List<OpenSubtitleDataFile> list, String subtitleId, String language, String uploadDate, OpenSubtitleFeatureDetails openSubtitleFeatureDetails, int i11) {
        Intrinsics.h(subtitleId, "subtitleId");
        Intrinsics.h(language, "language");
        Intrinsics.h(uploadDate, "uploadDate");
        this.files = list;
        this.subtitleId = subtitleId;
        this.language = language;
        this.uploadDate = uploadDate;
        this.featureDetails = openSubtitleFeatureDetails;
        this.downloadCount = i11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ OpenSubtitleDataAttributes copy$default(OpenSubtitleDataAttributes openSubtitleDataAttributes, List list, String str, String str2, String str3, OpenSubtitleFeatureDetails openSubtitleFeatureDetails, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            list = openSubtitleDataAttributes.files;
        }
        if ((i12 & 2) != 0) {
            str = openSubtitleDataAttributes.subtitleId;
        }
        String str4 = str;
        if ((i12 & 4) != 0) {
            str2 = openSubtitleDataAttributes.language;
        }
        String str5 = str2;
        if ((i12 & 8) != 0) {
            str3 = openSubtitleDataAttributes.uploadDate;
        }
        String str6 = str3;
        if ((i12 & 16) != 0) {
            openSubtitleFeatureDetails = openSubtitleDataAttributes.featureDetails;
        }
        OpenSubtitleFeatureDetails openSubtitleFeatureDetails2 = openSubtitleFeatureDetails;
        if ((i12 & 32) != 0) {
            i11 = openSubtitleDataAttributes.downloadCount;
        }
        return openSubtitleDataAttributes.copy(list, str4, str5, str6, openSubtitleFeatureDetails2, i11);
    }

    public final List<OpenSubtitleDataFile> component1() {
        return this.files;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSubtitleId() {
        return this.subtitleId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getLanguage() {
        return this.language;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getUploadDate() {
        return this.uploadDate;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final OpenSubtitleFeatureDetails getFeatureDetails() {
        return this.featureDetails;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final int getDownloadCount() {
        return this.downloadCount;
    }

    public final OpenSubtitleDataAttributes copy(List<OpenSubtitleDataFile> files, String subtitleId, String language, String uploadDate, OpenSubtitleFeatureDetails featureDetails, int downloadCount) {
        Intrinsics.h(subtitleId, "subtitleId");
        Intrinsics.h(language, "language");
        Intrinsics.h(uploadDate, "uploadDate");
        return new OpenSubtitleDataAttributes(files, subtitleId, language, uploadDate, featureDetails, downloadCount);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OpenSubtitleDataAttributes)) {
            return false;
        }
        OpenSubtitleDataAttributes openSubtitleDataAttributes = (OpenSubtitleDataAttributes) other;
        return Intrinsics.c(this.files, openSubtitleDataAttributes.files) && Intrinsics.c(this.subtitleId, openSubtitleDataAttributes.subtitleId) && Intrinsics.c(this.language, openSubtitleDataAttributes.language) && Intrinsics.c(this.uploadDate, openSubtitleDataAttributes.uploadDate) && Intrinsics.c(this.featureDetails, openSubtitleDataAttributes.featureDetails) && this.downloadCount == openSubtitleDataAttributes.downloadCount;
    }

    public final int getDownloadCount() {
        return this.downloadCount;
    }

    public final OpenSubtitleFeatureDetails getFeatureDetails() {
        return this.featureDetails;
    }

    public final List<OpenSubtitleDataFile> getFiles() {
        return this.files;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final String getSubtitleId() {
        return this.subtitleId;
    }

    public final String getUploadDate() {
        return this.uploadDate;
    }

    public int hashCode() {
        List<OpenSubtitleDataFile> list = this.files;
        int iHashCode = (((((((list == null ? 0 : list.hashCode()) * 31) + this.subtitleId.hashCode()) * 31) + this.language.hashCode()) * 31) + this.uploadDate.hashCode()) * 31;
        OpenSubtitleFeatureDetails openSubtitleFeatureDetails = this.featureDetails;
        return ((iHashCode + (openSubtitleFeatureDetails != null ? openSubtitleFeatureDetails.hashCode() : 0)) * 31) + this.downloadCount;
    }

    public String toString() {
        return "OpenSubtitleDataAttributes(files=" + this.files + ", subtitleId=" + this.subtitleId + ", language=" + this.language + ", uploadDate=" + this.uploadDate + ", featureDetails=" + this.featureDetails + ", downloadCount=" + this.downloadCount + ")";
    }
}
