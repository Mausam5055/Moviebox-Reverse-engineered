package com.google.android.exoplayer2.decoder;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public class DecoderException extends Exception {
    public DecoderException(String str) {
        super(str);
    }

    public DecoderException(String str, @Nullable Throwable th2) {
        super(str, th2);
    }

    public DecoderException(@Nullable Throwable th2) {
        super(th2);
    }
}
