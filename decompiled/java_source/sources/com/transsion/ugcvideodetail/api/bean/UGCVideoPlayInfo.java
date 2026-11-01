package com.transsion.ugcvideodetail.api.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.moviedetailapi.bean.FirstFrame;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\bHÆ\u0003J1\u0010\u001e\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\"HÖ\u0003J\t\u0010#\u001a\u00020\u0016HÖ\u0001J\t\u0010$\u001a\u00020\u0003HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006%"}, d2 = {"Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;", "Ljava/io/Serializable;", "ugcVideoId", "", "resources", "", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;", "firstImage", "Lcom/transsion/moviedetailapi/bean/FirstFrame;", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/FirstFrame;)V", "getUgcVideoId", "()Ljava/lang/String;", "setUgcVideoId", "(Ljava/lang/String;)V", "getResources", "()Ljava/util/List;", "setResources", "(Ljava/util/List;)V", "getFirstImage", "()Lcom/transsion/moviedetailapi/bean/FirstFrame;", "downloadStatus", "", "getDownloadStatus", "()I", "setDownloadStatus", "(I)V", "component1", "component2", "component3", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "UGCVideoDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class UGCVideoPlayInfo implements Serializable {
    private transient int downloadStatus;
    private final FirstFrame firstImage;
    private List<UGCVideoPlayStream> resources;
    private String ugcVideoId;

    public UGCVideoPlayInfo(String str, List<UGCVideoPlayStream> resources, FirstFrame firstFrame) {
        Intrinsics.h(resources, "resources");
        this.ugcVideoId = str;
        this.resources = resources;
        this.firstImage = firstFrame;
    }

    public /* synthetic */ UGCVideoPlayInfo(String str, List list, FirstFrame firstFrame, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? null : str, list, firstFrame);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ UGCVideoPlayInfo copy$default(UGCVideoPlayInfo uGCVideoPlayInfo, String str, List list, FirstFrame firstFrame, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = uGCVideoPlayInfo.ugcVideoId;
        }
        if ((i11 & 2) != 0) {
            list = uGCVideoPlayInfo.resources;
        }
        if ((i11 & 4) != 0) {
            firstFrame = uGCVideoPlayInfo.firstImage;
        }
        return uGCVideoPlayInfo.copy(str, list, firstFrame);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getUgcVideoId() {
        return this.ugcVideoId;
    }

    public final List<UGCVideoPlayStream> component2() {
        return this.resources;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final FirstFrame getFirstImage() {
        return this.firstImage;
    }

    public final UGCVideoPlayInfo copy(String ugcVideoId, List<UGCVideoPlayStream> resources, FirstFrame firstImage) {
        Intrinsics.h(resources, "resources");
        return new UGCVideoPlayInfo(ugcVideoId, resources, firstImage);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof UGCVideoPlayInfo)) {
            return false;
        }
        UGCVideoPlayInfo uGCVideoPlayInfo = (UGCVideoPlayInfo) other;
        return Intrinsics.c(this.ugcVideoId, uGCVideoPlayInfo.ugcVideoId) && Intrinsics.c(this.resources, uGCVideoPlayInfo.resources) && Intrinsics.c(this.firstImage, uGCVideoPlayInfo.firstImage);
    }

    public final int getDownloadStatus() {
        return this.downloadStatus;
    }

    public final FirstFrame getFirstImage() {
        return this.firstImage;
    }

    public final List<UGCVideoPlayStream> getResources() {
        return this.resources;
    }

    public final String getUgcVideoId() {
        return this.ugcVideoId;
    }

    public int hashCode() {
        String str = this.ugcVideoId;
        int iHashCode = (((str == null ? 0 : str.hashCode()) * 31) + this.resources.hashCode()) * 31;
        FirstFrame firstFrame = this.firstImage;
        return iHashCode + (firstFrame != null ? firstFrame.hashCode() : 0);
    }

    public final void setDownloadStatus(int i11) {
        this.downloadStatus = i11;
    }

    public final void setResources(List<UGCVideoPlayStream> list) {
        Intrinsics.h(list, "<set-?>");
        this.resources = list;
    }

    public final void setUgcVideoId(String str) {
        this.ugcVideoId = str;
    }

    public String toString() {
        return "UGCVideoPlayInfo(ugcVideoId=" + this.ugcVideoId + ", resources=" + this.resources + ", firstImage=" + this.firstImage + ")";
    }
}
