package androidx.media3.exoplayer;

/* JADX INFO: loaded from: classes2.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f12031a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f12032b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12033c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12034d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12035e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12036f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f12037g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12038h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f12039i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f12040j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f12041k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f12042l;

    private void b(long j11, int i11) {
        this.f12041k += j11;
        this.f12042l += i11;
    }

    public void a(long j11) {
        b(j11, 1);
    }

    public synchronized void c() {
    }

    public String toString() {
        return androidx.media3.common.util.a1.G("DecoderCounters {\n decoderInits=%s,\n decoderReleases=%s\n queuedInputBuffers=%s\n skippedInputBuffers=%s\n renderedOutputBuffers=%s\n skippedOutputBuffers=%s\n droppedBuffers=%s\n droppedInputBuffers=%s\n maxConsecutiveDroppedBuffers=%s\n droppedToKeyframeEvents=%s\n totalVideoFrameProcessingOffsetUs=%s\n videoFrameProcessingOffsetCount=%s\n}", Integer.valueOf(this.f12031a), Integer.valueOf(this.f12032b), Integer.valueOf(this.f12033c), Integer.valueOf(this.f12034d), Integer.valueOf(this.f12035e), Integer.valueOf(this.f12036f), Integer.valueOf(this.f12037g), Integer.valueOf(this.f12038h), Integer.valueOf(this.f12039i), Integer.valueOf(this.f12040j), Long.valueOf(this.f12041k), Integer.valueOf(this.f12042l));
    }
}
