package com.transsnet.downloader.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
@Keep
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b2\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001Be\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u0013\u0010\u0014J\t\u00108\u001a\u00020\u0003HÆ\u0003J\u0010\u00109\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u001aJ\u000b\u0010:\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\nHÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\fHÆ\u0003J\u0010\u0010>\u001a\u0004\u0018\u00010\u000eHÆ\u0003¢\u0006\u0002\u0010,J\u000b\u0010?\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0012HÆ\u0003Jx\u0010A\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÆ\u0001¢\u0006\u0002\u0010BJ\u0013\u0010C\u001a\u00020\u000e2\b\u0010D\u001a\u0004\u0018\u00010EHÖ\u0003J\t\u0010F\u001a\u00020\u0003HÖ\u0001J\t\u0010G\u001a\u00020\u0007HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001d\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001c\u0010\b\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001f\"\u0004\b#\u0010!R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u001e\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u0010\n\u0002\u0010/\u001a\u0004\b\r\u0010,\"\u0004\b-\u0010.R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u00105\"\u0004\b6\u00107¨\u0006H"}, d2 = {"Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;", "Ljava/io/Serializable;", NativeComponentConstants.KEY_COMPONENT_TYPE, "", "updateTimeStamp", "", "originalFormatTime", "", "formatTime", MimeTypes.BASE_TYPE_AUDIO, "Lcom/transsion/baselib/db/audio/AudioBean;", "video", "Lcom/transsion/baselib/db/download/DownloadBean;", "isLocalFileDelete", "", "streamVideo", "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;", "ugcVideo", "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;", "<init>", "(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/audio/AudioBean;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/Boolean;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;)V", "getType", "()I", "setType", "(I)V", "getUpdateTimeStamp", "()Ljava/lang/Long;", "setUpdateTimeStamp", "(Ljava/lang/Long;)V", "Ljava/lang/Long;", "getOriginalFormatTime", "()Ljava/lang/String;", "setOriginalFormatTime", "(Ljava/lang/String;)V", "getFormatTime", "setFormatTime", "getAudio", "()Lcom/transsion/baselib/db/audio/AudioBean;", "setAudio", "(Lcom/transsion/baselib/db/audio/AudioBean;)V", "getVideo", "()Lcom/transsion/baselib/db/download/DownloadBean;", "setVideo", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "()Ljava/lang/Boolean;", "setLocalFileDelete", "(Ljava/lang/Boolean;)V", "Ljava/lang/Boolean;", "getStreamVideo", "()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;", "setStreamVideo", "(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;)V", "getUgcVideo", "()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;", "setUgcVideo", "(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/audio/AudioBean;Lcom/transsion/baselib/db/download/DownloadBean;Ljava/lang/Boolean;Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;)Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;", "equals", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "toString", "Downloader_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class HistoricalPlayRecordBean implements Serializable {
    private AudioBean audio;
    private String formatTime;
    private Boolean isLocalFileDelete;
    private String originalFormatTime;
    private VideoDetailPlayBean streamVideo;
    private int type;
    private UGCVideoDetailPlayBean ugcVideo;
    private Long updateTimeStamp;
    private DownloadBean video;

    public HistoricalPlayRecordBean(int i11, Long l11, String str, String str2, AudioBean audioBean, DownloadBean downloadBean, Boolean bool, VideoDetailPlayBean videoDetailPlayBean, UGCVideoDetailPlayBean uGCVideoDetailPlayBean) {
        this.type = i11;
        this.updateTimeStamp = l11;
        this.originalFormatTime = str;
        this.formatTime = str2;
        this.audio = audioBean;
        this.video = downloadBean;
        this.isLocalFileDelete = bool;
        this.streamVideo = videoDetailPlayBean;
        this.ugcVideo = uGCVideoDetailPlayBean;
    }

    public /* synthetic */ HistoricalPlayRecordBean(int i11, Long l11, String str, String str2, AudioBean audioBean, DownloadBean downloadBean, Boolean bool, VideoDetailPlayBean videoDetailPlayBean, UGCVideoDetailPlayBean uGCVideoDetailPlayBean, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i11, l11, str, str2, audioBean, downloadBean, (i12 & 64) != 0 ? Boolean.FALSE : bool, (i12 & 128) != 0 ? null : videoDetailPlayBean, (i12 & 256) != 0 ? null : uGCVideoDetailPlayBean);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Long getUpdateTimeStamp() {
        return this.updateTimeStamp;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getOriginalFormatTime() {
        return this.originalFormatTime;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getFormatTime() {
        return this.formatTime;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final AudioBean getAudio() {
        return this.audio;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final DownloadBean getVideo() {
        return this.video;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Boolean getIsLocalFileDelete() {
        return this.isLocalFileDelete;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final VideoDetailPlayBean getStreamVideo() {
        return this.streamVideo;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final UGCVideoDetailPlayBean getUgcVideo() {
        return this.ugcVideo;
    }

    public final HistoricalPlayRecordBean copy(int type, Long updateTimeStamp, String originalFormatTime, String formatTime, AudioBean audio, DownloadBean video, Boolean isLocalFileDelete, VideoDetailPlayBean streamVideo, UGCVideoDetailPlayBean ugcVideo) {
        return new HistoricalPlayRecordBean(type, updateTimeStamp, originalFormatTime, formatTime, audio, video, isLocalFileDelete, streamVideo, ugcVideo);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof HistoricalPlayRecordBean)) {
            return false;
        }
        HistoricalPlayRecordBean historicalPlayRecordBean = (HistoricalPlayRecordBean) other;
        return this.type == historicalPlayRecordBean.type && Intrinsics.c(this.updateTimeStamp, historicalPlayRecordBean.updateTimeStamp) && Intrinsics.c(this.originalFormatTime, historicalPlayRecordBean.originalFormatTime) && Intrinsics.c(this.formatTime, historicalPlayRecordBean.formatTime) && Intrinsics.c(this.audio, historicalPlayRecordBean.audio) && Intrinsics.c(this.video, historicalPlayRecordBean.video) && Intrinsics.c(this.isLocalFileDelete, historicalPlayRecordBean.isLocalFileDelete) && Intrinsics.c(this.streamVideo, historicalPlayRecordBean.streamVideo) && Intrinsics.c(this.ugcVideo, historicalPlayRecordBean.ugcVideo);
    }

    public final AudioBean getAudio() {
        return this.audio;
    }

    public final String getFormatTime() {
        return this.formatTime;
    }

    public final String getOriginalFormatTime() {
        return this.originalFormatTime;
    }

    public final VideoDetailPlayBean getStreamVideo() {
        return this.streamVideo;
    }

    public final int getType() {
        return this.type;
    }

    public final UGCVideoDetailPlayBean getUgcVideo() {
        return this.ugcVideo;
    }

    public final Long getUpdateTimeStamp() {
        return this.updateTimeStamp;
    }

    public final DownloadBean getVideo() {
        return this.video;
    }

    public int hashCode() {
        int i11 = this.type * 31;
        Long l11 = this.updateTimeStamp;
        int iHashCode = (i11 + (l11 == null ? 0 : l11.hashCode())) * 31;
        String str = this.originalFormatTime;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.formatTime;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        AudioBean audioBean = this.audio;
        int iHashCode4 = (iHashCode3 + (audioBean == null ? 0 : audioBean.hashCode())) * 31;
        DownloadBean downloadBean = this.video;
        int iHashCode5 = (iHashCode4 + (downloadBean == null ? 0 : downloadBean.hashCode())) * 31;
        Boolean bool = this.isLocalFileDelete;
        int iHashCode6 = (iHashCode5 + (bool == null ? 0 : bool.hashCode())) * 31;
        VideoDetailPlayBean videoDetailPlayBean = this.streamVideo;
        int iHashCode7 = (iHashCode6 + (videoDetailPlayBean == null ? 0 : videoDetailPlayBean.hashCode())) * 31;
        UGCVideoDetailPlayBean uGCVideoDetailPlayBean = this.ugcVideo;
        return iHashCode7 + (uGCVideoDetailPlayBean != null ? uGCVideoDetailPlayBean.hashCode() : 0);
    }

    public final Boolean isLocalFileDelete() {
        return this.isLocalFileDelete;
    }

    public final void setAudio(AudioBean audioBean) {
        this.audio = audioBean;
    }

    public final void setFormatTime(String str) {
        this.formatTime = str;
    }

    public final void setLocalFileDelete(Boolean bool) {
        this.isLocalFileDelete = bool;
    }

    public final void setOriginalFormatTime(String str) {
        this.originalFormatTime = str;
    }

    public final void setStreamVideo(VideoDetailPlayBean videoDetailPlayBean) {
        this.streamVideo = videoDetailPlayBean;
    }

    public final void setType(int i11) {
        this.type = i11;
    }

    public final void setUgcVideo(UGCVideoDetailPlayBean uGCVideoDetailPlayBean) {
        this.ugcVideo = uGCVideoDetailPlayBean;
    }

    public final void setUpdateTimeStamp(Long l11) {
        this.updateTimeStamp = l11;
    }

    public final void setVideo(DownloadBean downloadBean) {
        this.video = downloadBean;
    }

    public String toString() {
        return "HistoricalPlayRecordBean(type=" + this.type + ", updateTimeStamp=" + this.updateTimeStamp + ", originalFormatTime=" + this.originalFormatTime + ", formatTime=" + this.formatTime + ", audio=" + this.audio + ", video=" + this.video + ", isLocalFileDelete=" + this.isLocalFileDelete + ", streamVideo=" + this.streamVideo + ", ugcVideo=" + this.ugcVideo + ")";
    }
}
