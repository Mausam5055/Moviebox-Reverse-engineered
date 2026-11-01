package t9;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.p1;

/* JADX INFO: loaded from: classes4.dex */
public final class g implements s {
    @Override // t9.s
    public int c(p1 p1Var, DecoderInputBuffer decoderInputBuffer, int i11) {
        decoderInputBuffer.k(4);
        return -4;
    }

    @Override // t9.s
    public boolean isReady() {
        return true;
    }

    @Override // t9.s
    public void maybeThrowError() {
    }

    @Override // t9.s
    public int skipData(long j11) {
        return 0;
    }
}
