package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.DecoderException;
import com.google.android.exoplayer2.util.p0;

/* JADX INFO: loaded from: classes3.dex */
public class MediaCodecDecoderException extends DecoderException {

    @Nullable
    public final m codecInfo;

    @Nullable
    public final String diagnosticInfo;

    public MediaCodecDecoderException(Throwable th2, @Nullable m mVar) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Decoder failed: ");
        sb2.append(mVar == null ? null : mVar.f25398a);
        super(sb2.toString(), th2);
        this.codecInfo = mVar;
        this.diagnosticInfo = p0.f27626a >= 21 ? getDiagnosticInfoV21(th2) : null;
    }

    @Nullable
    private static String getDiagnosticInfoV21(Throwable th2) {
        if (th2 instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) th2).getDiagnosticInfo();
        }
        return null;
    }
}
