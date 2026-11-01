package androidx.media3.common.audio;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b implements AudioProcessor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected AudioProcessor.a f9827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected AudioProcessor.a f9828c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AudioProcessor.a f9829d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AudioProcessor.a f9830e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ByteBuffer f9831f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ByteBuffer f9832g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f9833h;

    public b() {
        ByteBuffer byteBuffer = AudioProcessor.f9815a;
        this.f9831f = byteBuffer;
        this.f9832g = byteBuffer;
        AudioProcessor.a aVar = AudioProcessor.a.f9816e;
        this.f9829d = aVar;
        this.f9830e = aVar;
        this.f9827b = aVar;
        this.f9828c = aVar;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final AudioProcessor.a a(AudioProcessor.a aVar) {
        this.f9829d = aVar;
        this.f9830e = c(aVar);
        return isActive() ? this.f9830e : AudioProcessor.a.f9816e;
    }

    protected final boolean b() {
        return this.f9832g.hasRemaining();
    }

    protected AudioProcessor.a c(AudioProcessor.a aVar) {
        return AudioProcessor.a.f9816e;
    }

    protected void d() {
    }

    protected void e() {
    }

    protected void f() {
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void flush() {
        this.f9832g = AudioProcessor.f9815a;
        this.f9833h = false;
        this.f9827b = this.f9829d;
        this.f9828c = this.f9830e;
        d();
    }

    protected final ByteBuffer g(int i11) {
        if (this.f9831f.capacity() < i11) {
            this.f9831f = ByteBuffer.allocateDirect(i11).order(ByteOrder.nativeOrder());
        } else {
            this.f9831f.clear();
        }
        ByteBuffer byteBuffer = this.f9831f;
        this.f9832g = byteBuffer;
        return byteBuffer;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public ByteBuffer getOutput() {
        ByteBuffer byteBuffer = this.f9832g;
        this.f9832g = AudioProcessor.f9815a;
        return byteBuffer;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public boolean isActive() {
        return this.f9830e != AudioProcessor.a.f9816e;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public boolean isEnded() {
        return this.f9833h && this.f9832g == AudioProcessor.f9815a;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void queueEndOfStream() {
        this.f9833h = true;
        e();
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public final void reset() {
        flush();
        this.f9831f = AudioProcessor.f9815a;
        AudioProcessor.a aVar = AudioProcessor.a.f9816e;
        this.f9829d = aVar;
        this.f9830e = aVar;
        this.f9827b = aVar;
        this.f9828c = aVar;
        f();
    }
}
