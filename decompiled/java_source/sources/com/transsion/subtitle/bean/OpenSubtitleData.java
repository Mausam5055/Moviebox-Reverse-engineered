package com.transsion.subtitle.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.moviedetailapi.bean.SubtitleItem;
import com.transsion.subtitle.helper.d;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\f¨\u0006\u001a"}, d2 = {"Lcom/transsion/subtitle/bean/OpenSubtitleData;", "", "attributes", "Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;", "id", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "<init>", "(Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;Ljava/lang/String;Ljava/lang/String;)V", "getAttributes", "()Lcom/transsion/subtitle/bean/OpenSubtitleDataAttributes;", "getId", "()Ljava/lang/String;", "getType", "toSubtitleBean", "Lcom/transsion/moviedetailapi/bean/SubtitleItem;", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "hashCode", "", "toString", "VideoSubtitle_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class OpenSubtitleData {
    private final OpenSubtitleDataAttributes attributes;
    private final String id;
    private final String type;

    public OpenSubtitleData(OpenSubtitleDataAttributes attributes, String id2, String type) {
        Intrinsics.h(attributes, "attributes");
        Intrinsics.h(id2, "id");
        Intrinsics.h(type, "type");
        this.attributes = attributes;
        this.id = id2;
        this.type = type;
    }

    public static /* synthetic */ OpenSubtitleData copy$default(OpenSubtitleData openSubtitleData, OpenSubtitleDataAttributes openSubtitleDataAttributes, String str, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            openSubtitleDataAttributes = openSubtitleData.attributes;
        }
        if ((i11 & 2) != 0) {
            str = openSubtitleData.id;
        }
        if ((i11 & 4) != 0) {
            str2 = openSubtitleData.type;
        }
        return openSubtitleData.copy(openSubtitleDataAttributes, str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final OpenSubtitleDataAttributes getAttributes() {
        return this.attributes;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getType() {
        return this.type;
    }

    public final OpenSubtitleData copy(OpenSubtitleDataAttributes attributes, String id2, String type) {
        Intrinsics.h(attributes, "attributes");
        Intrinsics.h(id2, "id");
        Intrinsics.h(type, "type");
        return new OpenSubtitleData(attributes, id2, type);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof OpenSubtitleData)) {
            return false;
        }
        OpenSubtitleData openSubtitleData = (OpenSubtitleData) other;
        return Intrinsics.c(this.attributes, openSubtitleData.attributes) && Intrinsics.c(this.id, openSubtitleData.id) && Intrinsics.c(this.type, openSubtitleData.type);
    }

    public final OpenSubtitleDataAttributes getAttributes() {
        return this.attributes;
    }

    public final String getId() {
        return this.id;
    }

    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        return (((this.attributes.hashCode() * 31) + this.id.hashCode()) * 31) + this.type.hashCode();
    }

    public String toString() {
        return "OpenSubtitleData(attributes=" + this.attributes + ", id=" + this.id + ", type=" + this.type + ")";
    }

    public final SubtitleItem toSubtitleBean() {
        OpenSubtitleDataFile openSubtitleDataFile;
        List<OpenSubtitleDataFile> files = this.attributes.getFiles();
        if (files == null || (openSubtitleDataFile = (OpenSubtitleDataFile) CollectionsKt.k0(files)) == null) {
            return null;
        }
        String str = this.id;
        String language = this.attributes.getLanguage();
        String strD = d.f54898a.d(this.attributes.getLanguage());
        String fileName = openSubtitleDataFile.getFileName();
        OpenSubtitleFeatureDetails featureDetails = this.attributes.getFeatureDetails();
        Integer numValueOf = featureDetails != null ? Integer.valueOf(featureDetails.getSe()) : null;
        OpenSubtitleFeatureDetails featureDetails2 = this.attributes.getFeatureDetails();
        SubtitleItem subtitleItem = new SubtitleItem(str, language, strD, fileName, null, 0L, 0L, numValueOf, featureDetails2 != null ? Integer.valueOf(featureDetails2.getEp()) : null, Integer.valueOf(this.attributes.getDownloadCount()), 5);
        subtitleItem.setFileId(openSubtitleDataFile.getFileId());
        subtitleItem.setOpenSubNewApi(true);
        return subtitleItem;
    }
}
