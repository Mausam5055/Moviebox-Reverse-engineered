package androidx.media3.decoder;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayDeque;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SimpleDecoder implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Thread f10924a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final DecoderInputBuffer[] f10928e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final h[] f10929f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f10930g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f10931h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private DecoderInputBuffer f10932i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private DecoderException f10933j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f10934k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f10935l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f10936m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f10925b = new Object();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f10937n = C.TIME_UNSET;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayDeque f10926c = new ArrayDeque();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayDeque f10927d = new ArrayDeque();

    protected SimpleDecoder(DecoderInputBuffer[] decoderInputBufferArr, h[] hVarArr) {
        this.f10928e = decoderInputBufferArr;
        this.f10930g = decoderInputBufferArr.length;
        for (int i11 = 0; i11 < this.f10930g; i11++) {
            this.f10928e[i11] = e();
        }
        this.f10929f = hVarArr;
        this.f10931h = hVarArr.length;
        for (int i12 = 0; i12 < this.f10931h; i12++) {
            this.f10929f[i12] = f();
        }
        Thread thread = new Thread("ExoPlayer:SimpleDecoder") { // from class: androidx.media3.decoder.SimpleDecoder.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                SimpleDecoder.this.r();
            }
        };
        this.f10924a = thread;
        thread.start();
    }

    private boolean d() {
        return !this.f10926c.isEmpty() && this.f10931h > 0;
    }

    private boolean i() {
        DecoderException decoderExceptionG;
        synchronized (this.f10925b) {
            while (!this.f10935l && !d()) {
                try {
                    this.f10925b.wait();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (this.f10935l) {
                return false;
            }
            DecoderInputBuffer decoderInputBuffer = (DecoderInputBuffer) this.f10926c.removeFirst();
            h[] hVarArr = this.f10929f;
            int i11 = this.f10931h - 1;
            this.f10931h = i11;
            h hVar = hVarArr[i11];
            boolean z10 = this.f10934k;
            this.f10934k = false;
            if (decoderInputBuffer.isEndOfStream()) {
                hVar.addFlag(4);
            } else {
                hVar.timeUs = decoderInputBuffer.f10920e;
                if (decoderInputBuffer.isFirstSample()) {
                    hVar.addFlag(ASTNode.NOJIT);
                }
                if (!l(decoderInputBuffer.f10920e)) {
                    hVar.shouldBeSkipped = true;
                }
                try {
                    decoderExceptionG = h(decoderInputBuffer, hVar, z10);
                } catch (OutOfMemoryError e11) {
                    decoderExceptionG = g(e11);
                } catch (RuntimeException e12) {
                    decoderExceptionG = g(e12);
                }
                if (decoderExceptionG != null) {
                    synchronized (this.f10925b) {
                        this.f10933j = decoderExceptionG;
                    }
                    return false;
                }
            }
            synchronized (this.f10925b) {
                try {
                    if (this.f10934k) {
                        hVar.release();
                    } else if (hVar.shouldBeSkipped) {
                        this.f10936m++;
                        hVar.release();
                    } else {
                        hVar.skippedOutputBufferCount = this.f10936m;
                        this.f10936m = 0;
                        this.f10927d.addLast(hVar);
                    }
                    o(decoderInputBuffer);
                } catch (Throwable th3) {
                    throw th3;
                }
            }
            return true;
        }
    }

    private void m() {
        if (d()) {
            this.f10925b.notify();
        }
    }

    private void n() throws DecoderException {
        DecoderException decoderException = this.f10933j;
        if (decoderException != null) {
            throw decoderException;
        }
    }

    private void o(DecoderInputBuffer decoderInputBuffer) {
        decoderInputBuffer.clear();
        DecoderInputBuffer[] decoderInputBufferArr = this.f10928e;
        int i11 = this.f10930g;
        this.f10930g = i11 + 1;
        decoderInputBufferArr[i11] = decoderInputBuffer;
    }

    private void q(h hVar) {
        hVar.clear();
        h[] hVarArr = this.f10929f;
        int i11 = this.f10931h;
        this.f10931h = i11 + 1;
        hVarArr[i11] = hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        do {
            try {
            } catch (InterruptedException e11) {
                throw new IllegalStateException(e11);
            }
        } while (i());
    }

    @Override // androidx.media3.decoder.g
    public final void a(long j11) {
        synchronized (this.f10925b) {
            try {
                androidx.media3.common.util.a.g(this.f10930g == this.f10928e.length || this.f10934k);
                this.f10937n = j11;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // androidx.media3.decoder.g
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final void queueInputBuffer(DecoderInputBuffer decoderInputBuffer) {
        synchronized (this.f10925b) {
            n();
            androidx.media3.common.util.a.a(decoderInputBuffer == this.f10932i);
            this.f10926c.addLast(decoderInputBuffer);
            m();
            this.f10932i = null;
        }
    }

    protected abstract DecoderInputBuffer e();

    protected abstract h f();

    @Override // androidx.media3.decoder.g
    public final void flush() {
        synchronized (this.f10925b) {
            try {
                this.f10934k = true;
                this.f10936m = 0;
                DecoderInputBuffer decoderInputBuffer = this.f10932i;
                if (decoderInputBuffer != null) {
                    o(decoderInputBuffer);
                    this.f10932i = null;
                }
                while (!this.f10926c.isEmpty()) {
                    o((DecoderInputBuffer) this.f10926c.removeFirst());
                }
                while (!this.f10927d.isEmpty()) {
                    ((h) this.f10927d.removeFirst()).release();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected abstract DecoderException g(Throwable th2);

    protected abstract DecoderException h(DecoderInputBuffer decoderInputBuffer, h hVar, boolean z10);

    @Override // androidx.media3.decoder.g
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public final DecoderInputBuffer dequeueInputBuffer() {
        DecoderInputBuffer decoderInputBuffer;
        synchronized (this.f10925b) {
            n();
            androidx.media3.common.util.a.g(this.f10932i == null);
            int i11 = this.f10930g;
            if (i11 == 0) {
                decoderInputBuffer = null;
            } else {
                DecoderInputBuffer[] decoderInputBufferArr = this.f10928e;
                int i12 = i11 - 1;
                this.f10930g = i12;
                decoderInputBuffer = decoderInputBufferArr[i12];
            }
            this.f10932i = decoderInputBuffer;
        }
        return decoderInputBuffer;
    }

    @Override // androidx.media3.decoder.g
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public final h dequeueOutputBuffer() {
        synchronized (this.f10925b) {
            try {
                n();
                if (this.f10927d.isEmpty()) {
                    return null;
                }
                return (h) this.f10927d.removeFirst();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    protected final boolean l(long j11) {
        boolean z10;
        synchronized (this.f10925b) {
            long j12 = this.f10937n;
            z10 = j12 == C.TIME_UNSET || j11 >= j12;
        }
        return z10;
    }

    protected void p(h hVar) {
        synchronized (this.f10925b) {
            q(hVar);
            m();
        }
    }

    @Override // androidx.media3.decoder.g
    public void release() {
        synchronized (this.f10925b) {
            this.f10935l = true;
            this.f10925b.notify();
        }
        try {
            this.f10924a.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    protected final void s(int i11) {
        androidx.media3.common.util.a.g(this.f10930g == this.f10928e.length);
        for (DecoderInputBuffer decoderInputBuffer : this.f10928e) {
            decoderInputBuffer.b(i11);
        }
    }
}
