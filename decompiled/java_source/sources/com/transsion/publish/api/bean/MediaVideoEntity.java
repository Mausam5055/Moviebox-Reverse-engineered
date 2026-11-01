package com.transsion.publish.api.bean;

import androidx.annotation.Keep;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
@Keep
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0015\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010(\u001a\u00020\u0005H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0016\"\u0004\b\u001b\u0010\u0018R\u001a\u0010\u001c\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0016\"\u0004\b\u001e\u0010\u0018R\u001a\u0010\u001f\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0016\"\u0004\b!\u0010\u0018R\u001c\u0010\"\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0007\"\u0004\b$\u0010\tR\u001a\u0010%\u001a\u00020\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\u0016\"\u0004\b'\u0010\u0018¨\u0006)"}, d2 = {"Lcom/transsion/publish/api/bean/MediaVideoEntity;", "Ljava/io/Serializable;", "<init>", "()V", "url", "", "getUrl", "()Ljava/lang/String;", "setUrl", "(Ljava/lang/String;)V", "size", "", "getSize", "()J", "setSize", "(J)V", "duration", "getDuration", "setDuration", "height", "", "getHeight", "()I", "setHeight", "(I)V", "width", "getWidth", "setWidth", LauncherMiniAppConfigHelper.KEY_FPS, "getFps", "setFps", "bitrate", "getBitrate", "setBitrate", "imagePath", "getImagePath", "setImagePath", "definition", "getDefinition", "setDefinition", "toString", "PublishApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MediaVideoEntity implements Serializable {
    private int bitrate;
    private int definition;
    private long duration;
    private int fps;
    private int height;
    private String imagePath;
    private long size;
    private String url = "";
    private int width;

    public final int getBitrate() {
        return this.bitrate;
    }

    public final int getDefinition() {
        return this.definition;
    }

    public final long getDuration() {
        return this.duration;
    }

    public final int getFps() {
        return this.fps;
    }

    public final int getHeight() {
        return this.height;
    }

    public final String getImagePath() {
        return this.imagePath;
    }

    public final long getSize() {
        return this.size;
    }

    public final String getUrl() {
        return this.url;
    }

    public final int getWidth() {
        return this.width;
    }

    public final void setBitrate(int i11) {
        this.bitrate = i11;
    }

    public final void setDefinition(int i11) {
        this.definition = i11;
    }

    public final void setDuration(long j11) {
        this.duration = j11;
    }

    public final void setFps(int i11) {
        this.fps = i11;
    }

    public final void setHeight(int i11) {
        this.height = i11;
    }

    public final void setImagePath(String str) {
        this.imagePath = str;
    }

    public final void setSize(long j11) {
        this.size = j11;
    }

    public final void setUrl(String str) {
        Intrinsics.h(str, "<set-?>");
        this.url = str;
    }

    public final void setWidth(int i11) {
        this.width = i11;
    }

    public String toString() {
        return "MediaVideoEntity(url='" + this.url + "', size=" + this.size + ", duration=" + this.duration + ", height=" + this.height + ", width=" + this.width + ", fps=" + this.fps + ", bitrate=" + this.bitrate + ", imagePath=" + this.imagePath + ", definition=" + this.definition + ")";
    }
}
