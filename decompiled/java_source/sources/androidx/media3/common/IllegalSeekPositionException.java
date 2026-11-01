package androidx.media3.common;

/* JADX INFO: loaded from: classes2.dex */
public final class IllegalSeekPositionException extends IllegalStateException {
    public final long positionMs;
    public final e0 timeline;
    public final int windowIndex;

    public IllegalSeekPositionException(e0 e0Var, int i11, long j11) {
        this.timeline = e0Var;
        this.windowIndex = i11;
        this.positionMs = j11;
    }
}
