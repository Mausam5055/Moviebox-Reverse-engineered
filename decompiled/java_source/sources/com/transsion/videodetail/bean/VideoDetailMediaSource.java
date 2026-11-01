package com.transsion.videodetail.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.VipInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Keep
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\f\u0010\rJ\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(H\u0096\u0002J\b\u0010)\u001a\u00020\u0005H\u0016J\t\u0010*\u001a\u00020\u0003HÆ\u0003J\t\u0010+\u001a\u00020\u0005HÆ\u0003J\t\u0010,\u001a\u00020\u0005HÆ\u0003J\u0011\u0010-\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bHÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u000bHÆ\u0003JE\u0010/\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000bHÆ\u0001J\t\u00100\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\"\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u000f\"\u0004\b#\u0010$¨\u00061"}, d2 = {"Lcom/transsion/videodetail/bean/VideoDetailMediaSource;", "Ljava/io/Serializable;", "subjectId", "", "se", "", "ep", "streams", "", "Lcom/transsion/videodetail/bean/VideoDetailStream;", "vipInfo", "Lcom/transsion/baselib/db/download/VipInfo;", "<init>", "(Ljava/lang/String;IILjava/util/List;Lcom/transsion/baselib/db/download/VipInfo;)V", "getSubjectId", "()Ljava/lang/String;", "getSe", "()I", "getEp", "getStreams", "()Ljava/util/List;", "setStreams", "(Ljava/util/List;)V", "getVipInfo", "()Lcom/transsion/baselib/db/download/VipInfo;", "setVipInfo", "(Lcom/transsion/baselib/db/download/VipInfo;)V", "downloadBean", "Lcom/transsion/baselib/db/download/DownloadBean;", "getDownloadBean", "()Lcom/transsion/baselib/db/download/DownloadBean;", "setDownloadBean", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "name", "getName", "setName", "(Ljava/lang/String;)V", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "component1", "component2", "component3", "component4", "component5", "copy", "toString", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class VideoDetailMediaSource implements Serializable {
    private DownloadBean downloadBean;
    private final int ep;
    private String name;
    private final int se;
    private List<VideoDetailStream> streams;
    private final String subjectId;
    private VipInfo vipInfo;

    public VideoDetailMediaSource(String subjectId, int i11, int i12, List<VideoDetailStream> list, VipInfo vipInfo) {
        Intrinsics.h(subjectId, "subjectId");
        this.subjectId = subjectId;
        this.se = i11;
        this.ep = i12;
        this.streams = list;
        this.vipInfo = vipInfo;
    }

    public /* synthetic */ VideoDetailMediaSource(String str, int i11, int i12, List list, VipInfo vipInfo, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i11, i12, (i13 & 8) != 0 ? null : list, (i13 & 16) != 0 ? null : vipInfo);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VideoDetailMediaSource copy$default(VideoDetailMediaSource videoDetailMediaSource, String str, int i11, int i12, List list, VipInfo vipInfo, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            str = videoDetailMediaSource.subjectId;
        }
        if ((i13 & 2) != 0) {
            i11 = videoDetailMediaSource.se;
        }
        int i14 = i11;
        if ((i13 & 4) != 0) {
            i12 = videoDetailMediaSource.ep;
        }
        int i15 = i12;
        if ((i13 & 8) != 0) {
            list = videoDetailMediaSource.streams;
        }
        List list2 = list;
        if ((i13 & 16) != 0) {
            vipInfo = videoDetailMediaSource.vipInfo;
        }
        return videoDetailMediaSource.copy(str, i14, i15, list2, vipInfo);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getSe() {
        return this.se;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getEp() {
        return this.ep;
    }

    public final List<VideoDetailStream> component4() {
        return this.streams;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final VipInfo getVipInfo() {
        return this.vipInfo;
    }

    public final VideoDetailMediaSource copy(String subjectId, int se2, int ep2, List<VideoDetailStream> streams, VipInfo vipInfo) {
        Intrinsics.h(subjectId, "subjectId");
        return new VideoDetailMediaSource(subjectId, se2, ep2, streams, vipInfo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.c(VideoDetailMediaSource.class, other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.f(other, "null cannot be cast to non-null type com.transsion.videodetail.bean.VideoDetailMediaSource");
        VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) other;
        return Intrinsics.c(this.subjectId, videoDetailMediaSource.subjectId) && this.se == videoDetailMediaSource.se && this.ep == videoDetailMediaSource.ep;
    }

    public final DownloadBean getDownloadBean() {
        return this.downloadBean;
    }

    public final int getEp() {
        return this.ep;
    }

    public final String getName() {
        return this.name;
    }

    public final int getSe() {
        return this.se;
    }

    public final List<VideoDetailStream> getStreams() {
        return this.streams;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final VipInfo getVipInfo() {
        return this.vipInfo;
    }

    public int hashCode() {
        return (((this.subjectId.hashCode() * 31) + this.se) * 31) + this.ep;
    }

    public final void setDownloadBean(DownloadBean downloadBean) {
        this.downloadBean = downloadBean;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setStreams(List<VideoDetailStream> list) {
        this.streams = list;
    }

    public final void setVipInfo(VipInfo vipInfo) {
        this.vipInfo = vipInfo;
    }

    public String toString() {
        return "VideoDetailMediaSource(subjectId=" + this.subjectId + ", se=" + this.se + ", ep=" + this.ep + ", streams=" + this.streams + ", vipInfo=" + this.vipInfo + ")";
    }
}
