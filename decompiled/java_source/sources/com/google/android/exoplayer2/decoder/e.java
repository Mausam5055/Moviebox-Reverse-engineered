package com.google.android.exoplayer2.decoder;

import com.google.android.exoplayer2.util.p0;

/* JADX INFO: loaded from: classes3.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f24875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f24876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f24877c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f24878d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f24879e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f24880f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f24881g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f24882h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f24883i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f24884j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f24885k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f24886l;

    private void b(long j11, int i11) {
        this.f24885k += j11;
        this.f24886l += i11;
    }

    public void a(long j11) {
        b(j11, 1);
    }

    public synchronized void c() {
    }

    public String toString() {
        return p0.C("DecoderCounters {\n decoderInits=%s,\n decoderReleases=%s\n queuedInputBuffers=%s\n skippedInputBuffers=%s\n renderedOutputBuffers=%s\n skippedOutputBuffers=%s\n droppedBuffers=%s\n droppedInputBuffers=%s\n maxConsecutiveDroppedBuffers=%s\n droppedToKeyframeEvents=%s\n totalVideoFrameProcessingOffsetUs=%s\n videoFrameProcessingOffsetCount=%s\n}", Integer.valueOf(this.f24875a), Integer.valueOf(this.f24876b), Integer.valueOf(this.f24877c), Integer.valueOf(this.f24878d), Integer.valueOf(this.f24879e), Integer.valueOf(this.f24880f), Integer.valueOf(this.f24881g), Integer.valueOf(this.f24882h), Integer.valueOf(this.f24883i), Integer.valueOf(this.f24884j), Long.valueOf(this.f24885k), Integer.valueOf(this.f24886l));
    }
}
