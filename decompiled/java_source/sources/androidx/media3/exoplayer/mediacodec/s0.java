package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
class s0 implements v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MediaCodec f12247a;

    public s0(MediaCodec mediaCodec) {
        this.f12247a = mediaCodec;
    }

    @Override // androidx.media3.exoplayer.mediacodec.v
    public void a(int i11, int i12, int i13, long j11, int i14) {
        this.f12247a.queueInputBuffer(i11, i12, i13, j11, i14);
    }

    @Override // androidx.media3.exoplayer.mediacodec.v
    public void b(Bundle bundle) {
        this.f12247a.setParameters(bundle);
    }

    @Override // androidx.media3.exoplayer.mediacodec.v
    public void c() {
    }

    @Override // androidx.media3.exoplayer.mediacodec.v
    public void f(int i11, int i12, androidx.media3.decoder.c cVar, long j11, int i13) {
        this.f12247a.queueSecureInputBuffer(i11, i12, cVar.a(), j11, i13);
    }

    @Override // androidx.media3.exoplayer.mediacodec.v
    public void flush() {
    }

    @Override // androidx.media3.exoplayer.mediacodec.v
    public void shutdown() {
    }

    @Override // androidx.media3.exoplayer.mediacodec.v
    public void start() {
    }
}
