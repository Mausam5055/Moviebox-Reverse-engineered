package com.google.android.exoplayer2.text;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.DecoderException;

/* JADX INFO: loaded from: classes3.dex */
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
