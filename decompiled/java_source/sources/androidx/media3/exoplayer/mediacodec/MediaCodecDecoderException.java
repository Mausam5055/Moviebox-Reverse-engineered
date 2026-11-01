package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import androidx.annotation.Nullable;
import androidx.media3.common.util.a1;
import androidx.media3.decoder.DecoderException;

/* JADX INFO: loaded from: classes2.dex */
public class MediaCodecDecoderException extends DecoderException {

    @Nullable
    public final w codecInfo;

    @Nullable
    public final String diagnosticInfo;
    public final int errorCode;

    public MediaCodecDecoderException(Throwable th2, @Nullable w wVar) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Decoder failed: ");
        sb2.append(wVar == null ? null : wVar.f12255a);
        super(sb2.toString(), th2);
        this.codecInfo = wVar;
        String diagnosticInfo = th2 instanceof MediaCodec.CodecException ? ((MediaCodec.CodecException) th2).getDiagnosticInfo() : null;
        this.diagnosticInfo = diagnosticInfo;
        this.errorCode = a1.f10350a >= 23 ? getErrorCodeV23(th2) : a1.c0(diagnosticInfo);
    }

    private static int getErrorCodeV23(Throwable th2) {
        if (th2 instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) th2).getErrorCode();
        }
        return 0;
    }
}
