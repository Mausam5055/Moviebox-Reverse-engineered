package com.transsion.videodetail.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Keep
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0006HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0006HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\tHÆ\u0003J9\u0010\u001c\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 HÖ\u0003J\t\u0010!\u001a\u00020\u0006HÖ\u0001J\t\u0010\"\u001a\u00020\tHÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000f\"\u0004\b\u0013\u0010\u0011R\u001c\u0010\b\u001a\u0004\u0018\u00010\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006#"}, d2 = {"Lcom/transsion/videodetail/bean/VideoDetailStreamList;", "Ljava/io/Serializable;", "streams", "", "Lcom/transsion/videodetail/bean/VideoDetailStream;", "se", "", "ep", CampaignEx.JSON_KEY_TITLE, "", "<init>", "(Ljava/util/List;IILjava/lang/String;)V", "getStreams", "()Ljava/util/List;", "getSe", "()I", "setSe", "(I)V", "getEp", "setEp", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "component1", "component2", "component3", "component4", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class VideoDetailStreamList implements Serializable {
    private int ep;
    private int se;
    private final List<VideoDetailStream> streams;
    private String title;

    public VideoDetailStreamList(List<VideoDetailStream> streams, int i11, int i12, String str) {
        Intrinsics.h(streams, "streams");
        this.streams = streams;
        this.se = i11;
        this.ep = i12;
        this.title = str;
    }

    public /* synthetic */ VideoDetailStreamList(List list, int i11, int i12, String str, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i13 & 2) != 0 ? 0 : i11, (i13 & 4) != 0 ? 0 : i12, (i13 & 8) != 0 ? null : str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ VideoDetailStreamList copy$default(VideoDetailStreamList videoDetailStreamList, List list, int i11, int i12, String str, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            list = videoDetailStreamList.streams;
        }
        if ((i13 & 2) != 0) {
            i11 = videoDetailStreamList.se;
        }
        if ((i13 & 4) != 0) {
            i12 = videoDetailStreamList.ep;
        }
        if ((i13 & 8) != 0) {
            str = videoDetailStreamList.title;
        }
        return videoDetailStreamList.copy(list, i11, i12, str);
    }

    public final List<VideoDetailStream> component1() {
        return this.streams;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getSe() {
        return this.se;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getEp() {
        return this.ep;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getTitle() {
        return this.title;
    }

    public final VideoDetailStreamList copy(List<VideoDetailStream> streams, int se2, int ep2, String title) {
        Intrinsics.h(streams, "streams");
        return new VideoDetailStreamList(streams, se2, ep2, title);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VideoDetailStreamList)) {
            return false;
        }
        VideoDetailStreamList videoDetailStreamList = (VideoDetailStreamList) other;
        return Intrinsics.c(this.streams, videoDetailStreamList.streams) && this.se == videoDetailStreamList.se && this.ep == videoDetailStreamList.ep && Intrinsics.c(this.title, videoDetailStreamList.title);
    }

    public final int getEp() {
        return this.ep;
    }

    public final int getSe() {
        return this.se;
    }

    public final List<VideoDetailStream> getStreams() {
        return this.streams;
    }

    public final String getTitle() {
        return this.title;
    }

    public int hashCode() {
        int iHashCode = ((((this.streams.hashCode() * 31) + this.se) * 31) + this.ep) * 31;
        String str = this.title;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final void setEp(int i11) {
        this.ep = i11;
    }

    public final void setSe(int i11) {
        this.se = i11;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public String toString() {
        return "VideoDetailStreamList(streams=" + this.streams + ", se=" + this.se + ", ep=" + this.ep + ", title=" + this.title + ")";
    }
}
