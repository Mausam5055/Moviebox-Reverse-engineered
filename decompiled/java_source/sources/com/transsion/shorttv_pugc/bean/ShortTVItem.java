package com.transsion.shorttv_pugc.bean;

import androidx.annotation.Keep;
import ao.e;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.tools.zip.UnixStat;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b8\b\u0087\b\u0018\u00002\u00020\u0001B\u008b\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0005¢\u0006\u0004\b\u0013\u0010\u0014B\u0019\b\u0016\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0013\u0010\u0019J\u001a\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0096\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010\"\u001a\u0004\u0018\u00010!¢\u0006\u0004\b\"\u0010#J\u0012\u0010$\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b$\u0010%J\u0012\u0010&\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b&\u0010%J\u0010\u0010'\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b'\u0010 J\u0010\u0010(\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b(\u0010 J\u0012\u0010)\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b)\u0010%J\u0012\u0010*\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b*\u0010+J\u0012\u0010,\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0004\b,\u0010-J\u0010\u0010.\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b.\u0010 J\u0010\u0010/\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b/\u0010 J\u0012\u00100\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b0\u0010%J\u0010\u00101\u001a\u00020\u0010HÆ\u0003¢\u0006\u0004\b1\u00102J\u0010\u00103\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b3\u0010 J\u0094\u0001\u00104\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\b\u0002\u0010\r\u001a\u00020\u00052\b\b\u0002\u0010\u000e\u001a\u00020\u00052\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b4\u00105J\u0010\u00106\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b6\u0010%R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0003\u00107\u001a\u0004\b8\u0010%\"\u0004\b9\u0010:R$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0004\u00107\u001a\u0004\b;\u0010%\"\u0004\b<\u0010:R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010=\u001a\u0004\b>\u0010 \"\u0004\b?\u0010@R\"\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010=\u001a\u0004\bA\u0010 \"\u0004\bB\u0010@R$\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\b\u00107\u001a\u0004\bC\u0010%\"\u0004\bD\u0010:R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\n\u0010E\u001a\u0004\bF\u0010+\"\u0004\bG\u0010HR$\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010I\u001a\u0004\bJ\u0010-\"\u0004\bK\u0010LR\"\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010=\u001a\u0004\bM\u0010 \"\u0004\bN\u0010@R\"\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010=\u001a\u0004\bO\u0010 \"\u0004\bP\u0010@R$\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u00107\u001a\u0004\bQ\u0010%\"\u0004\bR\u0010:R\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010S\u001a\u0004\bT\u00102\"\u0004\bU\u0010VR\"\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010=\u001a\u0004\bW\u0010 \"\u0004\bX\u0010@¨\u0006Y"}, d2 = {"Lcom/transsion/shorttv_pugc/bean/ShortTVItem;", "Ljava/io/Serializable;", "", "id", "subjectId", "", "se", "ep", "videoId", "Lcom/transsion/shorttv_pugc/bean/Media;", "video", "Lcom/transsion/shorttv_pugc/bean/Link;", "link", "lockStatus", "coin", TrackingKey.DESCRIPTION, "", "playProgress", "downloadStatus", "<init>", "(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/transsion/shorttv_pugc/bean/Media;Lcom/transsion/shorttv_pugc/bean/Link;IILjava/lang/String;JI)V", "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;", "ugcVideo", "Lcom/transsion/shorttv_pugc/ShorttvModel$StreamInfo;", "streamInfo", "(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Lcom/transsion/shorttv_pugc/ShorttvModel$StreamInfo;)V", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "Lao/e;", "toMediaSource", "()Lao/e;", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "component6", "()Lcom/transsion/shorttv_pugc/bean/Media;", "component7", "()Lcom/transsion/shorttv_pugc/bean/Link;", "component8", "component9", "component10", "component11", "()J", "component12", "copy", "(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/transsion/shorttv_pugc/bean/Media;Lcom/transsion/shorttv_pugc/bean/Link;IILjava/lang/String;JI)Lcom/transsion/shorttv_pugc/bean/ShortTVItem;", "toString", "Ljava/lang/String;", "getId", "setId", "(Ljava/lang/String;)V", "getSubjectId", "setSubjectId", "I", "getSe", "setSe", "(I)V", "getEp", "setEp", "getVideoId", "setVideoId", "Lcom/transsion/shorttv_pugc/bean/Media;", "getVideo", "setVideo", "(Lcom/transsion/shorttv_pugc/bean/Media;)V", "Lcom/transsion/shorttv_pugc/bean/Link;", "getLink", "setLink", "(Lcom/transsion/shorttv_pugc/bean/Link;)V", "getLockStatus", "setLockStatus", "getCoin", "setCoin", "getDescription", "setDescription", "J", "getPlayProgress", "setPlayProgress", "(J)V", "getDownloadStatus", "setDownloadStatus", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class ShortTVItem implements Serializable {
    private int coin;
    private String description;
    private transient int downloadStatus;

    @SerializedName("ep")
    private int ep;

    @SerializedName("miniId")
    private String id;
    private Link link;
    private int lockStatus;
    private transient long playProgress;

    @SerializedName("se")
    private int se;

    @SerializedName("subjectId")
    private String subjectId;

    @SerializedName("video")
    private Media video;

    @SerializedName("videoId")
    private String videoId;

    public ShortTVItem() {
        this(null, null, 0, 0, null, null, null, 0, 0, null, 0L, 0, UnixStat.PERM_MASK, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTVItem(ShorttvModel.UGCVideo ugcVideo, ShorttvModel.StreamInfo streamInfo) {
        Integer position;
        String collectionId;
        this(null, null, 0, 0, null, null, null, 0, 0, null, 0L, 0, UnixStat.PERM_MASK, null);
        Intrinsics.h(ugcVideo, "ugcVideo");
        Intrinsics.h(streamInfo, "streamInfo");
        String id2 = streamInfo.getId();
        this.id = id2 == null ? streamInfo.getUrl() : id2;
        this.subjectId = ugcVideo.getUgcVideoId();
        ShorttvModel.UGCVideoCollection belongToCollection = ugcVideo.getBelongToCollection();
        this.se = (belongToCollection == null || (collectionId = belongToCollection.getCollectionId()) == null) ? 0 : collectionId.hashCode();
        ShorttvModel.UGCVideoCollection belongToCollection2 = ugcVideo.getBelongToCollection();
        this.ep = (belongToCollection2 == null || (position = belongToCollection2.getPosition()) == null) ? 0 : position.intValue();
        this.videoId = streamInfo.getId();
        this.description = ugcVideo.getDescription();
        Cover cover = ugcVideo.getCover();
        String format = streamInfo.getFormat();
        Long duration = streamInfo.getDuration();
        this.video = new Media(null, cover, null, null, format, null, new Video(null, null, duration != null ? Integer.valueOf((int) duration.longValue()) : null, null, null, null, streamInfo.getUrl(), null, null), null);
        this.lockStatus = 1;
        this.coin = 0;
        this.playProgress = 0L;
        this.downloadStatus = 0;
    }

    public ShortTVItem(String str, String str2, int i11, int i12, String str3, Media media, Link link, int i13, int i14, String str4, long j11, int i15) {
        this.id = str;
        this.subjectId = str2;
        this.se = i11;
        this.ep = i12;
        this.videoId = str3;
        this.video = media;
        this.link = link;
        this.lockStatus = i13;
        this.coin = i14;
        this.description = str4;
        this.playProgress = j11;
        this.downloadStatus = i15;
    }

    public /* synthetic */ ShortTVItem(String str, String str2, int i11, int i12, String str3, Media media, Link link, int i13, int i14, String str4, long j11, int i15, int i16, DefaultConstructorMarker defaultConstructorMarker) {
        this((i16 & 1) != 0 ? null : str, (i16 & 2) != 0 ? null : str2, (i16 & 4) != 0 ? 0 : i11, (i16 & 8) != 0 ? 0 : i12, (i16 & 16) != 0 ? null : str3, (i16 & 32) != 0 ? null : media, (i16 & 64) != 0 ? null : link, (i16 & 128) != 0 ? 0 : i13, (i16 & 256) != 0 ? 0 : i14, (i16 & 512) == 0 ? str4 : null, (i16 & 1024) != 0 ? 0L : j11, (i16 & 2048) == 0 ? i15 : 0);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final long getPlayProgress() {
        return this.playProgress;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final int getDownloadStatus() {
        return this.downloadStatus;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getSubjectId() {
        return this.subjectId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getSe() {
        return this.se;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final int getEp() {
        return this.ep;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getVideoId() {
        return this.videoId;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Media getVideo() {
        return this.video;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Link getLink() {
        return this.link;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final int getLockStatus() {
        return this.lockStatus;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final int getCoin() {
        return this.coin;
    }

    public final ShortTVItem copy(String id2, String subjectId, int se2, int ep2, String videoId, Media video, Link link, int lockStatus, int coin, String description, long playProgress, int downloadStatus) {
        return new ShortTVItem(id2, subjectId, se2, ep2, videoId, video, link, lockStatus, coin, description, playProgress, downloadStatus);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!Intrinsics.c(ShortTVItem.class, other != null ? other.getClass() : null)) {
            return false;
        }
        Intrinsics.f(other, "null cannot be cast to non-null type com.transsion.shorttv_pugc.bean.ShortTVItem");
        ShortTVItem shortTVItem = (ShortTVItem) other;
        return Intrinsics.c(this.subjectId, shortTVItem.subjectId) && this.se == shortTVItem.se && this.ep == shortTVItem.ep;
    }

    public final int getCoin() {
        return this.coin;
    }

    public final String getDescription() {
        return this.description;
    }

    public final int getDownloadStatus() {
        return this.downloadStatus;
    }

    public final int getEp() {
        return this.ep;
    }

    public final String getId() {
        return this.id;
    }

    public final Link getLink() {
        return this.link;
    }

    public final int getLockStatus() {
        return this.lockStatus;
    }

    public final long getPlayProgress() {
        return this.playProgress;
    }

    public final int getSe() {
        return this.se;
    }

    public final String getSubjectId() {
        return this.subjectId;
    }

    public final Media getVideo() {
        return this.video;
    }

    public final String getVideoId() {
        return this.videoId;
    }

    public int hashCode() {
        String str = this.subjectId;
        return ((((str != null ? str.hashCode() : 0) * 31) + this.se) * 31) + this.ep;
    }

    public final void setCoin(int i11) {
        this.coin = i11;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setDownloadStatus(int i11) {
        this.downloadStatus = i11;
    }

    public final void setEp(int i11) {
        this.ep = i11;
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final void setLink(Link link) {
        this.link = link;
    }

    public final void setLockStatus(int i11) {
        this.lockStatus = i11;
    }

    public final void setPlayProgress(long j11) {
        this.playProgress = j11;
    }

    public final void setSe(int i11) {
        this.se = i11;
    }

    public final void setSubjectId(String str) {
        this.subjectId = str;
    }

    public final void setVideo(Media media) {
        this.video = media;
    }

    public final void setVideoId(String str) {
        this.videoId = str;
    }

    public final e toMediaSource() {
        Video videoAddress;
        Media media = this.video;
        String url = (media == null || (videoAddress = media.getVideoAddress()) == null) ? null : videoAddress.getUrl();
        if (url == null || url.length() == 0) {
            return null;
        }
        return new e(url, url, this.ep, null, null, 24, null);
    }

    public String toString() {
        return "ShortTVItem(id=" + this.id + ", subjectId=" + this.subjectId + ", se=" + this.se + ", ep=" + this.ep + ", videoId=" + this.videoId + ", video=" + this.video + ", link=" + this.link + ", lockStatus=" + this.lockStatus + ", coin=" + this.coin + ", description=" + this.description + ", playProgress=" + this.playProgress + ", downloadStatus=" + this.downloadStatus + ")";
    }
}
