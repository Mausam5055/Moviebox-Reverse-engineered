package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.compose.animation.core.j0;
import com.google.android.exoplayer2.util.p0;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
class e {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final ArrayDeque f25350g = new ArrayDeque();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Object f25351h = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MediaCodec f25352a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HandlerThread f25353b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f25354c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicReference f25355d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h f25356e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f25357f;

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            e.this.f(message);
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f25359a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f25360b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f25361c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final MediaCodec.CryptoInfo f25362d = new MediaCodec.CryptoInfo();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f25363e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f25364f;

        b() {
        }

        public void a(int i11, int i12, int i13, long j11, int i14) {
            this.f25359a = i11;
            this.f25360b = i12;
            this.f25361c = i13;
            this.f25363e = j11;
            this.f25364f = i14;
        }
    }

    public e(MediaCodec mediaCodec, HandlerThread handlerThread) {
        this(mediaCodec, handlerThread, new com.google.android.exoplayer2.util.h());
    }

    e(MediaCodec mediaCodec, HandlerThread handlerThread, com.google.android.exoplayer2.util.h hVar) {
        this.f25352a = mediaCodec;
        this.f25353b = handlerThread;
        this.f25356e = hVar;
        this.f25355d = new AtomicReference();
    }

    private void b() {
        this.f25356e.d();
        ((Handler) com.google.android.exoplayer2.util.a.e(this.f25354c)).obtainMessage(2).sendToTarget();
        this.f25356e.a();
    }

    private static void c(com.google.android.exoplayer2.decoder.c cVar, MediaCodec.CryptoInfo cryptoInfo) {
        cryptoInfo.numSubSamples = cVar.f24868f;
        cryptoInfo.numBytesOfClearData = e(cVar.f24866d, cryptoInfo.numBytesOfClearData);
        cryptoInfo.numBytesOfEncryptedData = e(cVar.f24867e, cryptoInfo.numBytesOfEncryptedData);
        cryptoInfo.key = (byte[]) com.google.android.exoplayer2.util.a.e(d(cVar.f24864b, cryptoInfo.key));
        cryptoInfo.iv = (byte[]) com.google.android.exoplayer2.util.a.e(d(cVar.f24863a, cryptoInfo.iv));
        cryptoInfo.mode = cVar.f24865c;
        if (p0.f27626a >= 24) {
            androidx.media3.exoplayer.mediacodec.f.a();
            cryptoInfo.setPattern(androidx.media3.decoder.d.a(cVar.f24869g, cVar.f24870h));
        }
    }

    private static byte[] d(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return bArr2;
        }
        if (bArr2 == null || bArr2.length < bArr.length) {
            return Arrays.copyOf(bArr, bArr.length);
        }
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    private static int[] e(int[] iArr, int[] iArr2) {
        if (iArr == null) {
            return iArr2;
        }
        if (iArr2 == null || iArr2.length < iArr.length) {
            return Arrays.copyOf(iArr, iArr.length);
        }
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Message message) {
        b bVar;
        int i11 = message.what;
        if (i11 == 0) {
            bVar = (b) message.obj;
            g(bVar.f25359a, bVar.f25360b, bVar.f25361c, bVar.f25363e, bVar.f25364f);
        } else if (i11 != 1) {
            bVar = null;
            if (i11 != 2) {
                j0.a(this.f25355d, null, new IllegalStateException(String.valueOf(message.what)));
            } else {
                this.f25356e.f();
            }
        } else {
            bVar = (b) message.obj;
            h(bVar.f25359a, bVar.f25360b, bVar.f25362d, bVar.f25363e, bVar.f25364f);
        }
        if (bVar != null) {
            o(bVar);
        }
    }

    private void g(int i11, int i12, int i13, long j11, int i14) {
        try {
            this.f25352a.queueInputBuffer(i11, i12, i13, j11, i14);
        } catch (RuntimeException e11) {
            j0.a(this.f25355d, null, e11);
        }
    }

    private void h(int i11, int i12, MediaCodec.CryptoInfo cryptoInfo, long j11, int i13) {
        try {
            synchronized (f25351h) {
                this.f25352a.queueSecureInputBuffer(i11, i12, cryptoInfo, j11, i13);
            }
        } catch (RuntimeException e11) {
            j0.a(this.f25355d, null, e11);
        }
    }

    private void j() {
        ((Handler) com.google.android.exoplayer2.util.a.e(this.f25354c)).removeCallbacksAndMessages(null);
        b();
    }

    private static b k() {
        ArrayDeque arrayDeque = f25350g;
        synchronized (arrayDeque) {
            try {
                if (arrayDeque.isEmpty()) {
                    return new b();
                }
                return (b) arrayDeque.removeFirst();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void l() {
        RuntimeException runtimeException = (RuntimeException) this.f25355d.getAndSet(null);
        if (runtimeException != null) {
            throw runtimeException;
        }
    }

    private static void o(b bVar) {
        ArrayDeque arrayDeque = f25350g;
        synchronized (arrayDeque) {
            arrayDeque.add(bVar);
        }
    }

    public void i() {
        if (this.f25357f) {
            try {
                j();
            } catch (InterruptedException e11) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e11);
            }
        }
    }

    public void m(int i11, int i12, int i13, long j11, int i14) {
        l();
        b bVarK = k();
        bVarK.a(i11, i12, i13, j11, i14);
        ((Handler) p0.j(this.f25354c)).obtainMessage(0, bVarK).sendToTarget();
    }

    public void n(int i11, int i12, com.google.android.exoplayer2.decoder.c cVar, long j11, int i13) {
        l();
        b bVarK = k();
        bVarK.a(i11, i12, 0, j11, i13);
        c(cVar, bVarK.f25362d);
        ((Handler) p0.j(this.f25354c)).obtainMessage(1, bVarK).sendToTarget();
    }

    public void p() {
        if (this.f25357f) {
            i();
            this.f25353b.quit();
        }
        this.f25357f = false;
    }

    public void q() {
        if (this.f25357f) {
            return;
        }
        this.f25353b.start();
        this.f25354c = new a(this.f25353b.getLooper());
        this.f25357f = true;
    }

    public void r() {
        b();
    }
}
