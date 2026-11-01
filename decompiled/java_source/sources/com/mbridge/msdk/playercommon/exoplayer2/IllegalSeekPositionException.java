package com.mbridge.msdk.playercommon.exoplayer2;

/* JADX INFO: loaded from: classes5.dex */
public final class IllegalSeekPositionException extends IllegalStateException {
    public final long positionMs;
    public final Timeline timeline;
    public final int windowIndex;

    public IllegalSeekPositionException(Timeline timeline, int i11, long j11) {
        this.timeline = timeline;
        this.windowIndex = i11;
        this.positionMs = j11;
    }
}
