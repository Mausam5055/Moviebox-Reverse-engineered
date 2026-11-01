package androidx.media3.exoplayer.image;

import androidx.annotation.Nullable;
import androidx.media3.decoder.DecoderException;

/* JADX INFO: loaded from: classes2.dex */
public final class ImageDecoderException extends DecoderException {
    public ImageDecoderException(String str) {
        super(str);
    }

    public ImageDecoderException(String str, @Nullable Throwable th2) {
        super(str, th2);
    }

    public ImageDecoderException(@Nullable Throwable th2) {
        super(th2);
    }
}
