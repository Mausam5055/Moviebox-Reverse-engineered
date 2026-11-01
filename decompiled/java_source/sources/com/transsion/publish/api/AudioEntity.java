package com.transsion.publish.api;

import android.graphics.Bitmap;
import android.net.Uri;
import com.transsion.player.mediasession.MediaItem;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import in.a;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0015\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\r\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R$\u0010\u0013\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u000e\u001a\u0004\b\u0014\u0010\u0010\"\u0004\b\u0015\u0010\u0012R$\u0010\u0016\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u000e\u001a\u0004\b\u0017\u0010\u0010\"\u0004\b\u0018\u0010\u0012R\"\u0010\u001a\u001a\u00020\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR$\u0010!\u001a\u0004\u0018\u00010 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\"\u0010(\u001a\u00020'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\"\u0010.\u001a\u00020'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010)\u001a\u0004\b/\u0010+\"\u0004\b0\u0010-R$\u00102\u001a\u0004\u0018\u0001018\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\"\u00108\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u0010\u0007\u001a\u0004\b8\u0010\t\"\u0004\b9\u0010\u000bR$\u0010:\u001a\u0004\u0018\u00010\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010\u000e\u001a\u0004\b;\u0010\u0010\"\u0004\b<\u0010\u0012R$\u0010=\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\"\u0010C\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010\u0007\u001a\u0004\bD\u0010\t\"\u0004\bE\u0010\u000b¨\u0006F"}, d2 = {"Lcom/transsion/publish/api/AudioEntity;", "Lin/a;", "Ljava/io/Serializable;", "<init>", "()V", "", "enableSelect", "Z", "getEnableSelect", "()Z", "setEnableSelect", "(Z)V", "", "imageTitle", "Ljava/lang/String;", "getImageTitle", "()Ljava/lang/String;", "setImageTitle", "(Ljava/lang/String;)V", "localPath", "getLocalPath", "setLocalPath", "thumbPath", "getThumbPath", "setThumbPath", "", "size", "J", "getSize", "()J", "setSize", "(J)V", "Landroid/graphics/Bitmap;", "videoBitmap", "Landroid/graphics/Bitmap;", "getVideoBitmap", "()Landroid/graphics/Bitmap;", "setVideoBitmap", "(Landroid/graphics/Bitmap;)V", "", "height", "I", "getHeight", "()I", "setHeight", "(I)V", "width", "getWidth", "setWidth", "Landroid/net/Uri;", "uri", "Landroid/net/Uri;", "getUri", "()Landroid/net/Uri;", "setUri", "(Landroid/net/Uri;)V", "isAdd", "setAdd", "artist", "getArtist", "setArtist", "duration", "Ljava/lang/Long;", "getDuration", "()Ljava/lang/Long;", "setDuration", "(Ljava/lang/Long;)V", MediaItem.MUSIC_FLOAT_STATE_PLAY, "getPlay", "setPlay", "PublishApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class AudioEntity extends a implements Serializable {
    private String artist;
    private Long duration;
    private boolean enableSelect;
    private int height;
    private String imageTitle;
    private boolean isAdd;
    private String localPath;
    private boolean play;
    private long size;
    private String thumbPath;
    private Uri uri;
    private Bitmap videoBitmap;
    private int width;

    public final String getArtist() {
        return this.artist;
    }

    public final Long getDuration() {
        return this.duration;
    }

    public final boolean getEnableSelect() {
        return this.enableSelect;
    }

    public final int getHeight() {
        return this.height;
    }

    public final String getImageTitle() {
        return this.imageTitle;
    }

    public final String getLocalPath() {
        return this.localPath;
    }

    public final boolean getPlay() {
        return this.play;
    }

    public final long getSize() {
        return this.size;
    }

    public final String getThumbPath() {
        return this.thumbPath;
    }

    public final Uri getUri() {
        return this.uri;
    }

    public final Bitmap getVideoBitmap() {
        return this.videoBitmap;
    }

    public final int getWidth() {
        return this.width;
    }

    /* JADX INFO: renamed from: isAdd, reason: from getter */
    public final boolean getIsAdd() {
        return this.isAdd;
    }

    public final void setAdd(boolean z10) {
        this.isAdd = z10;
    }

    public final void setArtist(String str) {
        this.artist = str;
    }

    public final void setDuration(Long l11) {
        this.duration = l11;
    }

    public final void setEnableSelect(boolean z10) {
        this.enableSelect = z10;
    }

    public final void setHeight(int i11) {
        this.height = i11;
    }

    public final void setImageTitle(String str) {
        this.imageTitle = str;
    }

    public final void setLocalPath(String str) {
        this.localPath = str;
    }

    public final void setPlay(boolean z10) {
        this.play = z10;
    }

    public final void setSize(long j11) {
        this.size = j11;
    }

    public final void setThumbPath(String str) {
        this.thumbPath = str;
    }

    public final void setUri(Uri uri) {
        this.uri = uri;
    }

    public final void setVideoBitmap(Bitmap bitmap) {
        this.videoBitmap = bitmap;
    }

    public final void setWidth(int i11) {
        this.width = i11;
    }
}
