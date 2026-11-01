package com.google.android.exoplayer2.decoder;

import java.util.ArrayDeque;
import org.mvel2.ast.ASTNode;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SimpleDecoder implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Thread f24849a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f24850b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayDeque f24851c = new ArrayDeque();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ArrayDeque f24852d = new ArrayDeque();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final DecoderInputBuffer[] f24853e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final f[] f24854f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f24855g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f24856h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private DecoderInputBuffer f24857i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private DecoderException f24858j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f24859k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f24860l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f24861m;

    protected SimpleDecoder(DecoderInputBuffer[] decoderInputBufferArr, f[] fVarArr) {
        this.f24853e = decoderInputBufferArr;
        this.f24855g = decoderInputBufferArr.length;
        for (int i11 = 0; i11 < this.f24855g; i11++) {
            this.f24853e[i11] = c();
        }
        this.f24854f = fVarArr;
        this.f24856h = fVarArr.length;
        for (int i12 = 0; i12 < this.f24856h; i12++) {
            this.f24854f[i12] = d();
        }
        Thread thread = new Thread("ExoPlayer:SimpleDecoder") { // from class: com.google.android.exoplayer2.decoder.SimpleDecoder.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                SimpleDecoder.this.p();
            }
        };
        this.f24849a = thread;
        thread.start();
    }

    private boolean b() {
        return !this.f24851c.isEmpty() && this.f24856h > 0;
    }

    private boolean g() {
        DecoderException decoderExceptionE;
        synchronized (this.f24850b) {
            while (!this.f24860l && !b()) {
                try {
                    this.f24850b.wait();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (this.f24860l) {
                return false;
            }
            DecoderInputBuffer decoderInputBuffer = (DecoderInputBuffer) this.f24851c.removeFirst();
            f[] fVarArr = this.f24854f;
            int i11 = this.f24856h - 1;
            this.f24856h = i11;
            f fVar = fVarArr[i11];
            boolean z10 = this.f24859k;
            this.f24859k = false;
            if (decoderInputBuffer.h()) {
                fVar.a(4);
            } else {
                if (decoderInputBuffer.g()) {
                    fVar.a(Integer.MIN_VALUE);
                }
                if (decoderInputBuffer.i()) {
                    fVar.a(ASTNode.NOJIT);
                }
                try {
                    decoderExceptionE = f(decoderInputBuffer, fVar, z10);
                } catch (OutOfMemoryError e11) {
                    decoderExceptionE = e(e11);
                } catch (RuntimeException e12) {
                    decoderExceptionE = e(e12);
                }
                if (decoderExceptionE != null) {
                    synchronized (this.f24850b) {
                        this.f24858j = decoderExceptionE;
                    }
                    return false;
                }
            }
            synchronized (this.f24850b) {
                try {
                    if (this.f24859k) {
                        fVar.l();
                    } else if (fVar.g()) {
                        this.f24861m++;
                        fVar.l();
                    } else {
                        fVar.f24888c = this.f24861m;
                        this.f24861m = 0;
                        this.f24852d.addLast(fVar);
                    }
                    m(decoderInputBuffer);
                } catch (Throwable th3) {
                    throw th3;
                }
            }
            return true;
        }
    }

    private void j() {
        if (b()) {
            this.f24850b.notify();
        }
    }

    private void k() throws DecoderException {
        DecoderException decoderException = this.f24858j;
        if (decoderException != null) {
            throw decoderException;
        }
    }

    private void m(DecoderInputBuffer decoderInputBuffer) {
        decoderInputBuffer.b();
        DecoderInputBuffer[] decoderInputBufferArr = this.f24853e;
        int i11 = this.f24855g;
        this.f24855g = i11 + 1;
        decoderInputBufferArr[i11] = decoderInputBuffer;
    }

    private void o(f fVar) {
        fVar.b();
        f[] fVarArr = this.f24854f;
        int i11 = this.f24856h;
        this.f24856h = i11 + 1;
        fVarArr[i11] = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        do {
            try {
            } catch (InterruptedException e11) {
                throw new IllegalStateException(e11);
            }
        } while (g());
    }

    protected abstract DecoderInputBuffer c();

    protected abstract f d();

    protected abstract DecoderException e(Throwable th2);

    protected abstract DecoderException f(DecoderInputBuffer decoderInputBuffer, f fVar, boolean z10);

    @Override // com.google.android.exoplayer2.decoder.d
    public final void flush() {
        synchronized (this.f24850b) {
            try {
                this.f24859k = true;
                this.f24861m = 0;
                DecoderInputBuffer decoderInputBuffer = this.f24857i;
                if (decoderInputBuffer != null) {
                    m(decoderInputBuffer);
                    this.f24857i = null;
                }
                while (!this.f24851c.isEmpty()) {
                    m((DecoderInputBuffer) this.f24851c.removeFirst());
                }
                while (!this.f24852d.isEmpty()) {
                    ((f) this.f24852d.removeFirst()).l();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.exoplayer2.decoder.d
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public final DecoderInputBuffer dequeueInputBuffer() {
        DecoderInputBuffer decoderInputBuffer;
        synchronized (this.f24850b) {
            k();
            com.google.android.exoplayer2.util.a.g(this.f24857i == null);
            int i11 = this.f24855g;
            if (i11 == 0) {
                decoderInputBuffer = null;
            } else {
                DecoderInputBuffer[] decoderInputBufferArr = this.f24853e;
                int i12 = i11 - 1;
                this.f24855g = i12;
                decoderInputBuffer = decoderInputBufferArr[i12];
            }
            this.f24857i = decoderInputBuffer;
        }
        return decoderInputBuffer;
    }

    @Override // com.google.android.exoplayer2.decoder.d
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public final f dequeueOutputBuffer() {
        synchronized (this.f24850b) {
            try {
                k();
                if (this.f24852d.isEmpty()) {
                    return null;
                }
                return (f) this.f24852d.removeFirst();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.exoplayer2.decoder.d
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public final void queueInputBuffer(DecoderInputBuffer decoderInputBuffer) {
        synchronized (this.f24850b) {
            k();
            com.google.android.exoplayer2.util.a.a(decoderInputBuffer == this.f24857i);
            this.f24851c.addLast(decoderInputBuffer);
            j();
            this.f24857i = null;
        }
    }

    protected void n(f fVar) {
        synchronized (this.f24850b) {
            o(fVar);
            j();
        }
    }

    protected final void q(int i11) {
        com.google.android.exoplayer2.util.a.g(this.f24855g == this.f24853e.length);
        for (DecoderInputBuffer decoderInputBuffer : this.f24853e) {
            decoderInputBuffer.m(i11);
        }
    }

    @Override // com.google.android.exoplayer2.decoder.d
    public void release() {
        synchronized (this.f24850b) {
            this.f24860l = true;
            this.f24850b.notify();
        }
        try {
            this.f24849a.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }
}
