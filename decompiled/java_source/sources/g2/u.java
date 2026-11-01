package g2;

import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.s2;

/* JADX INFO: loaded from: classes2.dex */
public interface u {
    int c(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i11);

    boolean isReady();

    void maybeThrowError();

    int skipData(long j11);
}
