package com.transsion.moviedetailapi.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.gson.annotations.SerializedName;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Keep
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b$\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B_\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0011\u0010*\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0011\u0010-\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0003HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\fHÆ\u0003J\u0011\u0010/\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0003HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u000eHÆ\u0003Jo\u00101\u001a\u00020\u00002\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÆ\u0001J\u0013\u00102\u001a\u0002032\b\u00104\u001a\u0004\u0018\u000105HÖ\u0003J\t\u00106\u001a\u000207HÖ\u0001J\t\u00108\u001a\u00020\fHÖ\u0001R&\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R \u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R \u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR&\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u0013\"\u0004\b\u001f\u0010\u0015R \u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R&\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010\u0013\"\u0004\b%\u0010\u0015R \u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)¨\u00069"}, d2 = {"Lcom/transsion/moviedetailapi/bean/Media;", "Ljava/io/Serializable;", MimeTypes.BASE_TYPE_AUDIO, "", "Lcom/transsion/moviedetailapi/bean/Audio;", "cover", "Lcom/transsion/moviedetailapi/bean/Cover;", "firstFrame", "Lcom/transsion/moviedetailapi/bean/FirstFrame;", "image", "Lcom/transsion/moviedetailapi/bean/Image;", "mediaType", "", "video", "Lcom/transsion/moviedetailapi/bean/Video;", "videoAddress", "<init>", "(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/FirstFrame;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Video;)V", "getAudio", "()Ljava/util/List;", "setAudio", "(Ljava/util/List;)V", "getCover", "()Lcom/transsion/moviedetailapi/bean/Cover;", "setCover", "(Lcom/transsion/moviedetailapi/bean/Cover;)V", "getFirstFrame", "()Lcom/transsion/moviedetailapi/bean/FirstFrame;", "setFirstFrame", "(Lcom/transsion/moviedetailapi/bean/FirstFrame;)V", "getImage", "setImage", "getMediaType", "()Ljava/lang/String;", "setMediaType", "(Ljava/lang/String;)V", "getVideo", "setVideo", "getVideoAddress", "()Lcom/transsion/moviedetailapi/bean/Video;", "setVideoAddress", "(Lcom/transsion/moviedetailapi/bean/Video;)V", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER, "", "hashCode", "", "toString", "MovieDetailApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final /* data */ class Media implements Serializable {

    @SerializedName(MimeTypes.BASE_TYPE_AUDIO)
    private List<Audio> audio;

    @SerializedName("cover")
    private Cover cover;

    @SerializedName("firstFrame")
    private FirstFrame firstFrame;

    @SerializedName("image")
    private List<Image> image;

    @SerializedName("mediaType")
    private String mediaType;

    @SerializedName("video")
    private List<Video> video;

    @SerializedName("videoAddress")
    private Video videoAddress;

    public Media(List<Audio> list, Cover cover, FirstFrame firstFrame, List<Image> list2, String str, List<Video> list3, Video video) {
        this.audio = list;
        this.cover = cover;
        this.firstFrame = firstFrame;
        this.image = list2;
        this.mediaType = str;
        this.video = list3;
        this.videoAddress = video;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Media copy$default(Media media, List list, Cover cover, FirstFrame firstFrame, List list2, String str, List list3, Video video, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            list = media.audio;
        }
        if ((i11 & 2) != 0) {
            cover = media.cover;
        }
        Cover cover2 = cover;
        if ((i11 & 4) != 0) {
            firstFrame = media.firstFrame;
        }
        FirstFrame firstFrame2 = firstFrame;
        if ((i11 & 8) != 0) {
            list2 = media.image;
        }
        List list4 = list2;
        if ((i11 & 16) != 0) {
            str = media.mediaType;
        }
        String str2 = str;
        if ((i11 & 32) != 0) {
            list3 = media.video;
        }
        List list5 = list3;
        if ((i11 & 64) != 0) {
            video = media.videoAddress;
        }
        return media.copy(list, cover2, firstFrame2, list4, str2, list5, video);
    }

    public final List<Audio> component1() {
        return this.audio;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Cover getCover() {
        return this.cover;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final FirstFrame getFirstFrame() {
        return this.firstFrame;
    }

    public final List<Image> component4() {
        return this.image;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getMediaType() {
        return this.mediaType;
    }

    public final List<Video> component6() {
        return this.video;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Video getVideoAddress() {
        return this.videoAddress;
    }

    public final Media copy(List<Audio> audio, Cover cover, FirstFrame firstFrame, List<Image> image, String mediaType, List<Video> video, Video videoAddress) {
        return new Media(audio, cover, firstFrame, image, mediaType, video, videoAddress);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Media)) {
            return false;
        }
        Media media = (Media) other;
        return Intrinsics.c(this.audio, media.audio) && Intrinsics.c(this.cover, media.cover) && Intrinsics.c(this.firstFrame, media.firstFrame) && Intrinsics.c(this.image, media.image) && Intrinsics.c(this.mediaType, media.mediaType) && Intrinsics.c(this.video, media.video) && Intrinsics.c(this.videoAddress, media.videoAddress);
    }

    public final List<Audio> getAudio() {
        return this.audio;
    }

    public final Cover getCover() {
        return this.cover;
    }

    public final FirstFrame getFirstFrame() {
        return this.firstFrame;
    }

    public final List<Image> getImage() {
        return this.image;
    }

    public final String getMediaType() {
        return this.mediaType;
    }

    public final List<Video> getVideo() {
        return this.video;
    }

    public final Video getVideoAddress() {
        return this.videoAddress;
    }

    public int hashCode() {
        List<Audio> list = this.audio;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        Cover cover = this.cover;
        int iHashCode2 = (iHashCode + (cover == null ? 0 : cover.hashCode())) * 31;
        FirstFrame firstFrame = this.firstFrame;
        int iHashCode3 = (iHashCode2 + (firstFrame == null ? 0 : firstFrame.hashCode())) * 31;
        List<Image> list2 = this.image;
        int iHashCode4 = (iHashCode3 + (list2 == null ? 0 : list2.hashCode())) * 31;
        String str = this.mediaType;
        int iHashCode5 = (iHashCode4 + (str == null ? 0 : str.hashCode())) * 31;
        List<Video> list3 = this.video;
        int iHashCode6 = (iHashCode5 + (list3 == null ? 0 : list3.hashCode())) * 31;
        Video video = this.videoAddress;
        return iHashCode6 + (video != null ? video.hashCode() : 0);
    }

    public final void setAudio(List<Audio> list) {
        this.audio = list;
    }

    public final void setCover(Cover cover) {
        this.cover = cover;
    }

    public final void setFirstFrame(FirstFrame firstFrame) {
        this.firstFrame = firstFrame;
    }

    public final void setImage(List<Image> list) {
        this.image = list;
    }

    public final void setMediaType(String str) {
        this.mediaType = str;
    }

    public final void setVideo(List<Video> list) {
        this.video = list;
    }

    public final void setVideoAddress(Video video) {
        this.videoAddress = video;
    }

    public String toString() {
        return "Media(audio=" + this.audio + ", cover=" + this.cover + ", firstFrame=" + this.firstFrame + ", image=" + this.image + ", mediaType=" + this.mediaType + ", video=" + this.video + ", videoAddress=" + this.videoAddress + ")";
    }
}
