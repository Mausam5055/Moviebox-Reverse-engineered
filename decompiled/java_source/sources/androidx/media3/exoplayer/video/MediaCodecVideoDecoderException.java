package androidx.media3.exoplayer.video;

import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.media3.exoplayer.mediacodec.MediaCodecDecoderException;

/* JADX INFO: loaded from: classes2.dex */
public class MediaCodecVideoDecoderException extends MediaCodecDecoderException {
    public final boolean isSurfaceValid;
    public final int surfaceIdentityHashCode;

    public MediaCodecVideoDecoderException(Throwable th2, @Nullable androidx.media3.exoplayer.mediacodec.w wVar, @Nullable Surface surface) {
        super(th2, wVar);
        this.surfaceIdentityHashCode = System.identityHashCode(surface);
        this.isSurfaceValid = surface == null || surface.isValid();
    }
}
