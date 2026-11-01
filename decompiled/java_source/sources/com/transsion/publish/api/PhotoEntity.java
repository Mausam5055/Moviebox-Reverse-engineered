package com.transsion.publish.api;

import android.graphics.Bitmap;
import android.net.Uri;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u000fR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\"\u001a\u00020#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u001a\u0010(\u001a\u00020#X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010%\"\u0004\b*\u0010'R\u001c\u0010+\u001a\u0004\u0018\u00010,X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001a\u00101\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u0007\"\u0004\b2\u0010\t¨\u00063"}, d2 = {"Lcom/transsion/publish/api/PhotoEntity;", "Ljava/io/Serializable;", "<init>", "()V", "enableSelect", "", "getEnableSelect", "()Z", "setEnableSelect", "(Z)V", "imageTitle", "", "getImageTitle", "()Ljava/lang/String;", "setImageTitle", "(Ljava/lang/String;)V", "localPath", "getLocalPath", "setLocalPath", "thumbPath", "getThumbPath", "setThumbPath", "imageSize", "", "getImageSize", "()J", "setImageSize", "(J)V", "videoBitmap", "Landroid/graphics/Bitmap;", "getVideoBitmap", "()Landroid/graphics/Bitmap;", "setVideoBitmap", "(Landroid/graphics/Bitmap;)V", "height", "", "getHeight", "()I", "setHeight", "(I)V", "width", "getWidth", "setWidth", "uri", "Landroid/net/Uri;", "getUri", "()Landroid/net/Uri;", "setUri", "(Landroid/net/Uri;)V", "isAdd", "setAdd", "PublishApi_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PhotoEntity implements Serializable {
    private boolean enableSelect;
    private int height;
    private long imageSize;
    private String imageTitle;
    private boolean isAdd;
    private String localPath;
    private String thumbPath;
    private Uri uri;
    private Bitmap videoBitmap;
    private int width;

    public final boolean getEnableSelect() {
        return this.enableSelect;
    }

    public final int getHeight() {
        return this.height;
    }

    public final long getImageSize() {
        return this.imageSize;
    }

    public final String getImageTitle() {
        return this.imageTitle;
    }

    public final String getLocalPath() {
        return this.localPath;
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

    public final void setEnableSelect(boolean z10) {
        this.enableSelect = z10;
    }

    public final void setHeight(int i11) {
        this.height = i11;
    }

    public final void setImageSize(long j11) {
        this.imageSize = j11;
    }

    public final void setImageTitle(String str) {
        this.imageTitle = str;
    }

    public final void setLocalPath(String str) {
        this.localPath = str;
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
