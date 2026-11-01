package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.c3;

/* JADX INFO: loaded from: classes3.dex */
public interface n extends b0 {

    public interface a extends b0.a {
        void h(n nVar);
    }

    long a(long j11, c3 c3Var);

    long b(com.google.android.exoplayer2.trackselection.h[] hVarArr, boolean[] zArr, t9.s[] sVarArr, boolean[] zArr2, long j11);

    @Override // com.google.android.exoplayer2.source.b0
    boolean continueLoading(long j11);

    void discardBuffer(long j11, boolean z10);

    void e(a aVar, long j11);

    @Override // com.google.android.exoplayer2.source.b0
    long getBufferedPositionUs();

    @Override // com.google.android.exoplayer2.source.b0
    long getNextLoadPositionUs();

    t9.x getTrackGroups();

    @Override // com.google.android.exoplayer2.source.b0
    boolean isLoading();

    void maybeThrowPrepareError();

    long readDiscontinuity();

    @Override // com.google.android.exoplayer2.source.b0
    void reevaluateBuffer(long j11);

    long seekToUs(long j11);
}
