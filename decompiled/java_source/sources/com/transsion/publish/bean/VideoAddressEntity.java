package com.transsion.publish.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u001d\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001c\u0010\r\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\tR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0007\"\u0004\b\u0015\u0010\tR\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0007\"\u0004\b\u0018\u0010\tR\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0007\"\u0004\b\u001b\u0010\tR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0007\"\u0004\b\u001e\u0010\tR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0007\"\u0004\b!\u0010\t¨\u0006\""}, d2 = {"Lcom/transsion/publish/bean/VideoAddressEntity;", "Ljava/io/Serializable;", "<init>", "()V", "videoId", "", "getVideoId", "()Ljava/lang/String;", "setVideoId", "(Ljava/lang/String;)V", "definition", "getDefinition", "setDefinition", "url", "getUrl", "setUrl", "duration", "getDuration", "setDuration", "width", "getWidth", "setWidth", "height", "getHeight", "setHeight", "size", "getSize", "setSize", LauncherMiniAppConfigHelper.KEY_FPS, "getFps", "setFps", "bitrate", "getBitrate", "setBitrate", "Publish_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class VideoAddressEntity implements Serializable {
    private String bitrate;
    private String definition;
    private String duration;
    private String fps;
    private String height;
    private String size;
    private String url;
    private String videoId;
    private String width;

    public final String getBitrate() {
        return this.bitrate;
    }

    public final String getDefinition() {
        return this.definition;
    }

    public final String getDuration() {
        return this.duration;
    }

    public final String getFps() {
        return this.fps;
    }

    public final String getHeight() {
        return this.height;
    }

    public final String getSize() {
        return this.size;
    }

    public final String getUrl() {
        return this.url;
    }

    public final String getVideoId() {
        return this.videoId;
    }

    public final String getWidth() {
        return this.width;
    }

    public final void setBitrate(String str) {
        this.bitrate = str;
    }

    public final void setDefinition(String str) {
        this.definition = str;
    }

    public final void setDuration(String str) {
        this.duration = str;
    }

    public final void setFps(String str) {
        this.fps = str;
    }

    public final void setHeight(String str) {
        this.height = str;
    }

    public final void setSize(String str) {
        this.size = str;
    }

    public final void setUrl(String str) {
        this.url = str;
    }

    public final void setVideoId(String str) {
        this.videoId = str;
    }

    public final void setWidth(String str) {
        this.width = str;
    }
}
