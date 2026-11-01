package com.transsion.publish.api.bean;

import androidx.annotation.Keep;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u001f\u001a\u00020 H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\"\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0014\"\u0004\b\u001a\u0010\u0016R\"\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0014\"\u0004\b\u001e\u0010\u0016R\u001c\u0010!\u001a\u0004\u0018\u00010 X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%¨\u0006&"}, d2 = {"Lcom/transsion/publish/api/bean/RequestPostMediaEntity;", "Ljava/io/Serializable;", "<init>", "()V", "mediaType", "", "getMediaType", "()I", "setMediaType", "(I)V", "cover", "Lcom/transsion/publish/api/bean/MediaCoverEntity;", "getCover", "()Lcom/transsion/publish/api/bean/MediaCoverEntity;", "setCover", "(Lcom/transsion/publish/api/bean/MediaCoverEntity;)V", "video", "", "Lcom/transsion/publish/api/bean/MediaVideoEntity;", "getVideo", "()Ljava/util/List;", "setVideo", "(Ljava/util/List;)V", MimeTypes.BASE_TYPE_AUDIO, "Lcom/transsion/publish/api/bean/MediaAudioEntity;", "getAudio", "setAudio", "image", "Lcom/transsion/publish/api/bean/MediaImageEntity;", "getImage", "setImage", "toString", "", "tempBucket", "getTempBucket", "()Ljava/lang/String;", "setTempBucket", "(Ljava/lang/String;)V", "PublishApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class RequestPostMediaEntity implements Serializable {
    private List<MediaAudioEntity> audio;
    private MediaCoverEntity cover;
    private List<MediaImageEntity> image;
    private int mediaType;
    private String tempBucket;
    private List<MediaVideoEntity> video;

    public final List<MediaAudioEntity> getAudio() {
        return this.audio;
    }

    public final MediaCoverEntity getCover() {
        return this.cover;
    }

    public final List<MediaImageEntity> getImage() {
        return this.image;
    }

    public final int getMediaType() {
        return this.mediaType;
    }

    public final String getTempBucket() {
        return this.tempBucket;
    }

    public final List<MediaVideoEntity> getVideo() {
        return this.video;
    }

    public final void setAudio(List<MediaAudioEntity> list) {
        this.audio = list;
    }

    public final void setCover(MediaCoverEntity mediaCoverEntity) {
        this.cover = mediaCoverEntity;
    }

    public final void setImage(List<MediaImageEntity> list) {
        this.image = list;
    }

    public final void setMediaType(int i11) {
        this.mediaType = i11;
    }

    public final void setTempBucket(String str) {
        this.tempBucket = str;
    }

    public final void setVideo(List<MediaVideoEntity> list) {
        this.video = list;
    }

    public String toString() {
        return "RequestPostMediaEntity(mediaType=" + this.mediaType + ", cover=" + this.cover + ", video=" + this.video + ", audio=" + this.audio + ", image=" + this.image + ")";
    }
}
