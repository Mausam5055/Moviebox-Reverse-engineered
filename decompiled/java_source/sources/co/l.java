package co;

import androidx.media3.common.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* JADX INFO: loaded from: classes5.dex */
public final class l implements AudioProcessor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f17624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f17625c = 1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f17626d = 1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f17627e = 1.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AudioProcessor.a f17628f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private AudioProcessor.a f17629g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private AudioProcessor.a f17630h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AudioProcessor.a f17631i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f17632j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private k f17633k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ByteBuffer f17634l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ShortBuffer f17635m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ByteBuffer f17636n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f17637o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f17638p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f17639q;

    public l() {
        AudioProcessor.a aVar = AudioProcessor.a.f9816e;
        this.f17628f = aVar;
        this.f17629g = aVar;
        this.f17630h = aVar;
        this.f17631i = aVar;
        ByteBuffer byteBuffer = AudioProcessor.f9815a;
        this.f17634l = byteBuffer;
        this.f17635m = byteBuffer.asShortBuffer();
        this.f17636n = byteBuffer;
        this.f17624b = -1;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public AudioProcessor.a a(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        if (aVar.f9819c != 2) {
            throw new AudioProcessor.UnhandledAudioFormatException(aVar);
        }
        int i11 = this.f17624b;
        if (i11 == -1) {
            i11 = aVar.f9817a;
        }
        this.f17628f = aVar;
        AudioProcessor.a aVar2 = new AudioProcessor.a(i11, aVar.f9818b, 2);
        this.f17629g = aVar2;
        this.f17632j = true;
        return aVar2;
    }

    public float b(float f11) {
        if (this.f17627e != f11) {
            this.f17627e = f11;
            this.f17632j = true;
            k kVar = this.f17633k;
            if (kVar != null) {
                kVar.w(f11);
            }
        }
        return f11;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void flush() {
        if (isActive()) {
            AudioProcessor.a aVar = this.f17628f;
            this.f17630h = aVar;
            AudioProcessor.a aVar2 = this.f17629g;
            this.f17631i = aVar2;
            if (this.f17632j) {
                this.f17633k = new k(aVar.f9817a, aVar.f9818b, this.f17625c, this.f17626d, this.f17627e, aVar2.f9817a);
            } else {
                k kVar = this.f17633k;
                if (kVar != null) {
                    kVar.i();
                }
            }
        }
        this.f17636n = AudioProcessor.f9815a;
        this.f17637o = 0L;
        this.f17638p = 0L;
        this.f17639q = false;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public ByteBuffer getOutput() {
        ByteBuffer byteBuffer = this.f17636n;
        this.f17636n = AudioProcessor.f9815a;
        return byteBuffer;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public boolean isActive() {
        return this.f17629g.f9817a != -1 && (Math.abs(this.f17625c - 1.0f) >= 0.01f || Math.abs(this.f17626d - 1.0f) >= 0.01f || Math.abs(this.f17627e) >= 0.01f || this.f17629g.f9817a != this.f17628f.f9817a);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public boolean isEnded() {
        k kVar;
        return this.f17639q && ((kVar = this.f17633k) == null || kVar.k() == 0);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueEndOfStream() {
        k kVar = this.f17633k;
        if (kVar != null) {
            kVar.r();
        }
        this.f17639q = true;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        k kVar = (k) androidx.media3.common.util.a.e(this.f17633k);
        if (byteBuffer.hasRemaining()) {
            ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.f17637o += (long) iRemaining;
            kVar.s(shortBufferAsShortBuffer);
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
        int iK = kVar.k();
        if (iK > 0) {
            if (this.f17634l.capacity() < iK) {
                ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(iK).order(ByteOrder.nativeOrder());
                this.f17634l = byteBufferOrder;
                this.f17635m = byteBufferOrder.asShortBuffer();
            } else {
                this.f17634l.clear();
                this.f17635m.clear();
            }
            kVar.j(this.f17635m);
            this.f17638p += (long) iK;
            this.f17634l.limit(iK);
            this.f17636n = this.f17634l;
        }
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void reset() {
        this.f17625c = 1.0f;
        this.f17626d = 1.0f;
        this.f17627e = 1.0f;
        AudioProcessor.a aVar = AudioProcessor.a.f9816e;
        this.f17628f = aVar;
        this.f17629g = aVar;
        this.f17630h = aVar;
        this.f17631i = aVar;
        ByteBuffer byteBuffer = AudioProcessor.f9815a;
        this.f17634l = byteBuffer;
        this.f17635m = byteBuffer.asShortBuffer();
        this.f17636n = byteBuffer;
        this.f17624b = -1;
        this.f17632j = false;
        this.f17633k = null;
        this.f17637o = 0L;
        this.f17638p = 0L;
        this.f17639q = false;
    }
}
