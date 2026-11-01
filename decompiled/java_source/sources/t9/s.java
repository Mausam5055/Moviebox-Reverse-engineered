package t9;

import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.p1;

/* JADX INFO: loaded from: classes3.dex */
public interface s {
    int c(p1 p1Var, DecoderInputBuffer decoderInputBuffer, int i11);

    boolean isReady();

    void maybeThrowError();

    int skipData(long j11);
}
