package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.p0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes3.dex */
public final class g0 implements AudioProcessor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f24688b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f24689c = 1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f24690d = 1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AudioProcessor.a f24691e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AudioProcessor.a f24692f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AudioProcessor.a f24693g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AudioProcessor.a f24694h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f24695i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private f0 f24696j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ByteBuffer f24697k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ShortBuffer f24698l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ByteBuffer f24699m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f24700n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f24701o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f24702p;

    public g0() {
        AudioProcessor.a aVar = AudioProcessor.a.f24530e;
        this.f24691e = aVar;
        this.f24692f = aVar;
        this.f24693g = aVar;
        this.f24694h = aVar;
        ByteBuffer byteBuffer = AudioProcessor.f24529a;
        this.f24697k = byteBuffer;
        this.f24698l = byteBuffer.asShortBuffer();
        this.f24699m = byteBuffer;
        this.f24688b = -1;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public AudioProcessor.a a(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f24533c != 2) {
            throw new AudioProcessor.UnhandledAudioFormatException(aVar);
        }
        int i11 = this.f24688b;
        if (i11 == -1) {
            i11 = aVar.f24531a;
        }
        this.f24691e = aVar;
        AudioProcessor.a aVar2 = new AudioProcessor.a(i11, aVar.f24532b, 2);
        this.f24692f = aVar2;
        this.f24695i = true;
        return aVar2;
    }

    public long b(long j11) {
        if (this.f24701o < 1024) {
            return (long) (((double) this.f24689c) * j11);
        }
        long jL = this.f24700n - ((long) ((f0) com.google.android.exoplayer2.util.a.e(this.f24696j)).l());
        int i11 = this.f24694h.f24531a;
        int i12 = this.f24693g.f24531a;
        return i11 == i12 ? p0.N0(j11, jL, this.f24701o) : p0.N0(j11, jL * ((long) i11), this.f24701o * ((long) i12));
    }

    public void c(float f11) {
        if (this.f24690d != f11) {
            this.f24690d = f11;
            this.f24695i = true;
        }
    }

    public void d(float f11) {
        if (this.f24689c != f11) {
            this.f24689c = f11;
            this.f24695i = true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void flush() {
        if (isActive()) {
            AudioProcessor.a aVar = this.f24691e;
            this.f24693g = aVar;
            AudioProcessor.a aVar2 = this.f24692f;
            this.f24694h = aVar2;
            if (this.f24695i) {
                this.f24696j = new f0(aVar.f24531a, aVar.f24532b, this.f24689c, this.f24690d, aVar2.f24531a);
            } else {
                f0 f0Var = this.f24696j;
                if (f0Var != null) {
                    f0Var.i();
                }
            }
        }
        this.f24699m = AudioProcessor.f24529a;
        this.f24700n = 0L;
        this.f24701o = 0L;
        this.f24702p = false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public ByteBuffer getOutput() {
        int iK;
        f0 f0Var = this.f24696j;
        if (f0Var != null && (iK = f0Var.k()) > 0) {
            if (this.f24697k.capacity() < iK) {
                ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(iK).order(ByteOrder.nativeOrder());
                this.f24697k = byteBufferOrder;
                this.f24698l = byteBufferOrder.asShortBuffer();
            } else {
                this.f24697k.clear();
                this.f24698l.clear();
            }
            f0Var.j(this.f24698l);
            this.f24701o += (long) iK;
            this.f24697k.limit(iK);
            this.f24699m = this.f24697k;
        }
        ByteBuffer byteBuffer = this.f24699m;
        this.f24699m = AudioProcessor.f24529a;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isActive() {
        return this.f24692f.f24531a != -1 && (Math.abs(this.f24689c - 1.0f) >= 1.0E-4f || Math.abs(this.f24690d - 1.0f) >= 1.0E-4f || this.f24692f.f24531a != this.f24691e.f24531a);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isEnded() {
        f0 f0Var;
        return this.f24702p && ((f0Var = this.f24696j) == null || f0Var.k() == 0);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueEndOfStream() {
        f0 f0Var = this.f24696j;
        if (f0Var != null) {
            f0Var.s();
        }
        this.f24702p = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            f0 f0Var = (f0) com.google.android.exoplayer2.util.a.e(this.f24696j);
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.f24700n += (long) iRemaining;
            f0Var.t(shortBufferAsShortBuffer);
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void reset() {
        this.f24689c = 1.0f;
        this.f24690d = 1.0f;
        AudioProcessor.a aVar = AudioProcessor.a.f24530e;
        this.f24691e = aVar;
        this.f24692f = aVar;
        this.f24693g = aVar;
        this.f24694h = aVar;
        ByteBuffer byteBuffer = AudioProcessor.f24529a;
        this.f24697k = byteBuffer;
        this.f24698l = byteBuffer.asShortBuffer();
        this.f24699m = byteBuffer;
        this.f24688b = -1;
        this.f24695i = false;
        this.f24696j = null;
        this.f24700n = 0L;
        this.f24701o = 0L;
        this.f24702p = false;
    }
}
