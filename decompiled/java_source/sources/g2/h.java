package g2;

import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.s2;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements u {
    @Override // g2.u
    public int c(s2 s2Var, DecoderInputBuffer decoderInputBuffer, int i11) {
        decoderInputBuffer.setFlags(4);
        return -4;
    }

    @Override // g2.u
    public boolean isReady() {
        return true;
    }

    @Override // g2.u
    public void maybeThrowError() {
    }

    @Override // g2.u
    public int skipData(long j11) {
        return 0;
    }
}
