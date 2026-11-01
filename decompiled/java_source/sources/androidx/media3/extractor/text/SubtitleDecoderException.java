package androidx.media3.extractor.text;

import androidx.annotation.Nullable;
import androidx.media3.decoder.DecoderException;

/* JADX INFO: loaded from: classes2.dex */
public class SubtitleDecoderException extends DecoderException {
    public SubtitleDecoderException(String str) {
        super(str);
    }

    public SubtitleDecoderException(String str, @Nullable Throwable th2) {
        super(str, th2);
    }

    public SubtitleDecoderException(@Nullable Throwable th2) {
        super(th2);
    }
}
