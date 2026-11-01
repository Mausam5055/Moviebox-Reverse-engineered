package com.google.android.exoplayer2.audio;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes3.dex */
public abstract class v implements AudioProcessor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected AudioProcessor.a f24776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected AudioProcessor.a f24777c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AudioProcessor.a f24778d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AudioProcessor.a f24779e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ByteBuffer f24780f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ByteBuffer f24781g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f24782h;

    public v() {
        ByteBuffer byteBuffer = AudioProcessor.f24529a;
        this.f24780f = byteBuffer;
        this.f24781g = byteBuffer;
        AudioProcessor.a aVar = AudioProcessor.a.f24530e;
        this.f24778d = aVar;
        this.f24779e = aVar;
        this.f24776b = aVar;
        this.f24777c = aVar;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final AudioProcessor.a a(AudioProcessor.a aVar) {
        this.f24778d = aVar;
        this.f24779e = c(aVar);
        return isActive() ? this.f24779e : AudioProcessor.a.f24530e;
    }

    protected final boolean b() {
        return this.f24781g.hasRemaining();
    }

    protected AudioProcessor.a c(AudioProcessor.a aVar) {
        return AudioProcessor.a.f24530e;
    }

    protected void d() {
    }

    protected void e() {
    }

    protected void f() {
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void flush() {
        this.f24781g = AudioProcessor.f24529a;
        this.f24782h = false;
        this.f24776b = this.f24778d;
        this.f24777c = this.f24779e;
        d();
    }

    protected final ByteBuffer g(int i11) {
        if (this.f24780f.capacity() < i11) {
            this.f24780f = ByteBuffer.allocateDirect(i11).order(ByteOrder.nativeOrder());
        } else {
            this.f24780f.clear();
        }
        ByteBuffer byteBuffer = this.f24780f;
        this.f24781g = byteBuffer;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public ByteBuffer getOutput() {
        ByteBuffer byteBuffer = this.f24781g;
        this.f24781g = AudioProcessor.f24529a;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isActive() {
        return this.f24779e != AudioProcessor.a.f24530e;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isEnded() {
        return this.f24782h && this.f24781g == AudioProcessor.f24529a;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void queueEndOfStream() {
        this.f24782h = true;
        e();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void reset() {
        flush();
        this.f24780f = AudioProcessor.f24529a;
        AudioProcessor.a aVar = AudioProcessor.a.f24530e;
        this.f24778d = aVar;
        this.f24779e = aVar;
        this.f24776b = aVar;
        this.f24777c = aVar;
        f();
    }
}
