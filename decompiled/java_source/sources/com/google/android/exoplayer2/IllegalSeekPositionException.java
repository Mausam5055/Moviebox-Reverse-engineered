package com.google.android.exoplayer2;

/* JADX INFO: loaded from: classes3.dex */
public final class IllegalSeekPositionException extends IllegalStateException {
    public final long positionMs;
    public final k3 timeline;
    public final int windowIndex;

    public IllegalSeekPositionException(k3 k3Var, int i11, long j11) {
        this.timeline = k3Var;
        this.windowIndex = i11;
        this.positionMs = j11;
    }
}
