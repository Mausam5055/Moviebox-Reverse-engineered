package androidx.media3.common.audio;

import androidx.media3.common.util.a1;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements AudioProcessor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f9857b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f9858c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f9859d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f9860e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AudioProcessor.a f9861f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AudioProcessor.a f9862g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AudioProcessor.a f9863h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AudioProcessor.a f9864i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f9865j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private c f9866k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ByteBuffer f9867l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ShortBuffer f9868m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ByteBuffer f9869n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f9870o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f9871p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f9872q;

    public d() {
        this(false);
    }

    d(boolean z10) {
        this.f9859d = 1.0f;
        this.f9860e = 1.0f;
        AudioProcessor.a aVar = AudioProcessor.a.f9816e;
        this.f9861f = aVar;
        this.f9862g = aVar;
        this.f9863h = aVar;
        this.f9864i = aVar;
        ByteBuffer byteBuffer = AudioProcessor.f9815a;
        this.f9867l = byteBuffer;
        this.f9868m = byteBuffer.asShortBuffer();
        this.f9869n = byteBuffer;
        this.f9858c = -1;
        this.f9857b = z10;
    }

    private boolean b() {
        return Math.abs(this.f9859d - 1.0f) < 1.0E-4f && Math.abs(this.f9860e - 1.0f) < 1.0E-4f && this.f9862g.f9817a == this.f9861f.f9817a;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public AudioProcessor.a a(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f9819c != 2) {
            throw new AudioProcessor.UnhandledAudioFormatException(aVar);
        }
        int i11 = this.f9858c;
        if (i11 == -1) {
            i11 = aVar.f9817a;
        }
        this.f9861f = aVar;
        AudioProcessor.a aVar2 = new AudioProcessor.a(i11, aVar.f9818b, 2);
        this.f9862g = aVar2;
        this.f9865j = true;
        return aVar2;
    }

    public long c(long j11) {
        if (this.f9871p < 1024) {
            return (long) (((double) this.f9859d) * j11);
        }
        long jL = this.f9870o - ((long) ((c) androidx.media3.common.util.a.e(this.f9866k)).l());
        int i11 = this.f9864i.f9817a;
        int i12 = this.f9863h.f9817a;
        return i11 == i12 ? a1.e1(j11, jL, this.f9871p) : a1.e1(j11, jL * ((long) i11), this.f9871p * ((long) i12));
    }

    public void d(float f11) {
        androidx.media3.common.util.a.a(f11 > 0.0f);
        if (this.f9860e != f11) {
            this.f9860e = f11;
            this.f9865j = true;
        }
    }

    public void e(float f11) {
        androidx.media3.common.util.a.a(f11 > 0.0f);
        if (this.f9859d != f11) {
            this.f9859d = f11;
            this.f9865j = true;
        }
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void flush() {
        if (isActive()) {
            AudioProcessor.a aVar = this.f9861f;
            this.f9863h = aVar;
            AudioProcessor.a aVar2 = this.f9862g;
            this.f9864i = aVar2;
            if (this.f9865j) {
                this.f9866k = new c(aVar.f9817a, aVar.f9818b, this.f9859d, this.f9860e, aVar2.f9817a);
            } else {
                c cVar = this.f9866k;
                if (cVar != null) {
                    cVar.i();
                }
            }
        }
        this.f9869n = AudioProcessor.f9815a;
        this.f9870o = 0L;
        this.f9871p = 0L;
        this.f9872q = false;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public ByteBuffer getOutput() {
        int iK;
        c cVar = this.f9866k;
        if (cVar != null && (iK = cVar.k()) > 0) {
            if (this.f9867l.capacity() < iK) {
                ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(iK).order(ByteOrder.nativeOrder());
                this.f9867l = byteBufferOrder;
                this.f9868m = byteBufferOrder.asShortBuffer();
            } else {
                this.f9867l.clear();
                this.f9868m.clear();
            }
            cVar.j(this.f9868m);
            this.f9871p += (long) iK;
            this.f9867l.limit(iK);
            this.f9869n = this.f9867l;
        }
        ByteBuffer byteBuffer = this.f9869n;
        this.f9869n = AudioProcessor.f9815a;
        return byteBuffer;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public boolean isActive() {
        return this.f9862g.f9817a != -1 && (this.f9857b || !b());
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public boolean isEnded() {
        c cVar;
        return this.f9872q && ((cVar = this.f9866k) == null || cVar.k() == 0);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueEndOfStream() {
        c cVar = this.f9866k;
        if (cVar != null) {
            cVar.s();
        }
        this.f9872q = true;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            c cVar = (c) androidx.media3.common.util.a.e(this.f9866k);
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.f9870o += (long) iRemaining;
            cVar.t(shortBufferAsShortBuffer);
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void reset() {
        this.f9859d = 1.0f;
        this.f9860e = 1.0f;
        AudioProcessor.a aVar = AudioProcessor.a.f9816e;
        this.f9861f = aVar;
        this.f9862g = aVar;
        this.f9863h = aVar;
        this.f9864i = aVar;
        ByteBuffer byteBuffer = AudioProcessor.f9815a;
        this.f9867l = byteBuffer;
        this.f9868m = byteBuffer.asShortBuffer();
        this.f9869n = byteBuffer;
        this.f9858c = -1;
        this.f9865j = false;
        this.f9866k = null;
        this.f9870o = 0L;
        this.f9871p = 0L;
        this.f9872q = false;
    }
}
