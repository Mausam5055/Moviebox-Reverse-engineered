package androidx.media3.exoplayer.source;

import androidx.media3.exoplayer.c4;
import androidx.media3.exoplayer.v2;

/* JADX INFO: loaded from: classes2.dex */
public interface q extends f0 {

    public interface a extends f0.a {
        void c(q qVar);
    }

    @Override // androidx.media3.exoplayer.source.f0
    boolean a(v2 v2Var);

    long b(long j11, c4 c4Var);

    void discardBuffer(long j11, boolean z10);

    long e(j2.z[] zVarArr, boolean[] zArr, g2.u[] uVarArr, boolean[] zArr2, long j11);

    void g(a aVar, long j11);

    @Override // androidx.media3.exoplayer.source.f0
    long getBufferedPositionUs();

    @Override // androidx.media3.exoplayer.source.f0
    long getNextLoadPositionUs();

    g2.z getTrackGroups();

    @Override // androidx.media3.exoplayer.source.f0
    boolean isLoading();

    void maybeThrowPrepareError();

    long readDiscontinuity();

    @Override // androidx.media3.exoplayer.source.f0
    void reevaluateBuffer(long j11);

    long seekToUs(long j11);
}
