package com.google.android.exoplayer2;

/* JADX INFO: loaded from: classes3.dex */
public interface t1 {
    boolean a(long j11, float f11, boolean z10, long j12);

    void b(x2[] x2VarArr, t9.x xVar, com.google.android.exoplayer2.trackselection.h[] hVarArr);

    boolean c(long j11, long j12, float f11);

    com.google.android.exoplayer2.upstream.b getAllocator();

    long getBackBufferDurationUs();

    void onPrepared();

    void onReleased();

    void onStopped();

    boolean retainBackBufferFromKeyframe();
}
