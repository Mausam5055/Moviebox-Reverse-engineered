package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import androidx.media3.common.util.a1;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
class g implements v {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final ArrayDeque f12195g = new ArrayDeque();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Object f12196h = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MediaCodec f12197a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HandlerThread f12198b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f12199c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicReference f12200d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.media3.common.util.l f12201e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f12202f;

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            g.this.j(message);
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f12204a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f12205b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f12206c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final MediaCodec.CryptoInfo f12207d = new MediaCodec.CryptoInfo();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f12208e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f12209f;

        b() {
        }

        public void a(int i11, int i12, int i13, long j11, int i14) {
            this.f12204a = i11;
            this.f12205b = i12;
            this.f12206c = i13;
            this.f12208e = j11;
            this.f12209f = i14;
        }
    }

    public g(MediaCodec mediaCodec, HandlerThread handlerThread) {
        this(mediaCodec, handlerThread, new androidx.media3.common.util.l());
    }

    g(MediaCodec mediaCodec, HandlerThread handlerThread, androidx.media3.common.util.l lVar) {
        this.f12197a = mediaCodec;
        this.f12198b = handlerThread;
        this.f12201e = lVar;
        this.f12200d = new AtomicReference();
    }

    private void e() {
        this.f12201e.d();
        ((Handler) androidx.media3.common.util.a.e(this.f12199c)).obtainMessage(3).sendToTarget();
        this.f12201e.a();
    }

    private static void g(androidx.media3.decoder.c cVar, MediaCodec.CryptoInfo cryptoInfo) {
        cryptoInfo.numSubSamples = cVar.f10952f;
        cryptoInfo.numBytesOfClearData = i(cVar.f10950d, cryptoInfo.numBytesOfClearData);
        cryptoInfo.numBytesOfEncryptedData = i(cVar.f10951e, cryptoInfo.numBytesOfEncryptedData);
        cryptoInfo.key = (byte[]) androidx.media3.common.util.a.e(h(cVar.f10948b, cryptoInfo.key));
        cryptoInfo.iv = (byte[]) androidx.media3.common.util.a.e(h(cVar.f10947a, cryptoInfo.iv));
        cryptoInfo.mode = cVar.f10949c;
        if (a1.f10350a >= 24) {
            f.a();
            cryptoInfo.setPattern(androidx.media3.decoder.d.a(cVar.f10953g, cVar.f10954h));
        }
    }

    private static byte[] h(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return bArr2;
        }
        if (bArr2 == null || bArr2.length < bArr.length) {
            return Arrays.copyOf(bArr, bArr.length);
        }
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    private static int[] i(int[] iArr, int[] iArr2) {
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
    public void j(Message message) {
        b bVar;
        int i11 = message.what;
        if (i11 == 1) {
            bVar = (b) message.obj;
            k(bVar.f12204a, bVar.f12205b, bVar.f12206c, bVar.f12208e, bVar.f12209f);
        } else if (i11 != 2) {
            bVar = null;
            if (i11 == 3) {
                this.f12201e.f();
            } else if (i11 != 4) {
                androidx.compose.animation.core.j0.a(this.f12200d, null, new IllegalStateException(String.valueOf(message.what)));
            } else {
                m((Bundle) message.obj);
            }
        } else {
            bVar = (b) message.obj;
            l(bVar.f12204a, bVar.f12205b, bVar.f12207d, bVar.f12208e, bVar.f12209f);
        }
        if (bVar != null) {
            p(bVar);
        }
    }

    private void k(int i11, int i12, int i13, long j11, int i14) {
        try {
            this.f12197a.queueInputBuffer(i11, i12, i13, j11, i14);
        } catch (RuntimeException e11) {
            androidx.compose.animation.core.j0.a(this.f12200d, null, e11);
        }
    }

    private void l(int i11, int i12, MediaCodec.CryptoInfo cryptoInfo, long j11, int i13) {
        try {
            synchronized (f12196h) {
                this.f12197a.queueSecureInputBuffer(i11, i12, cryptoInfo, j11, i13);
            }
        } catch (RuntimeException e11) {
            androidx.compose.animation.core.j0.a(this.f12200d, null, e11);
        }
    }

    private void m(Bundle bundle) {
        try {
            this.f12197a.setParameters(bundle);
        } catch (RuntimeException e11) {
            androidx.compose.animation.core.j0.a(this.f12200d, null, e11);
        }
    }

    private void n() {
        ((Handler) androidx.media3.common.util.a.e(this.f12199c)).removeCallbacksAndMessages(null);
        e();
    }

    private static b o() {
        ArrayDeque arrayDeque = f12195g;
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

    private static void p(b bVar) {
        ArrayDeque arrayDeque = f12195g;
        synchronized (arrayDeque) {
            arrayDeque.add(bVar);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.v
    public void a(int i11, int i12, int i13, long j11, int i14) {
        c();
        b bVarO = o();
        bVarO.a(i11, i12, i13, j11, i14);
        ((Handler) a1.i(this.f12199c)).obtainMessage(1, bVarO).sendToTarget();
    }

    @Override // androidx.media3.exoplayer.mediacodec.v
    public void b(Bundle bundle) {
        c();
        ((Handler) a1.i(this.f12199c)).obtainMessage(4, bundle).sendToTarget();
    }

    @Override // androidx.media3.exoplayer.mediacodec.v
    public void c() {
        RuntimeException runtimeException = (RuntimeException) this.f12200d.getAndSet(null);
        if (runtimeException != null) {
            throw runtimeException;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.v
    public void f(int i11, int i12, androidx.media3.decoder.c cVar, long j11, int i13) {
        c();
        b bVarO = o();
        bVarO.a(i11, i12, 0, j11, i13);
        g(cVar, bVarO.f12207d);
        ((Handler) a1.i(this.f12199c)).obtainMessage(2, bVarO).sendToTarget();
    }

    @Override // androidx.media3.exoplayer.mediacodec.v
    public void flush() {
        if (this.f12202f) {
            try {
                n();
            } catch (InterruptedException e11) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e11);
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.v
    public void shutdown() {
        if (this.f12202f) {
            flush();
            this.f12198b.quit();
        }
        this.f12202f = false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.v
    public void start() {
        if (this.f12202f) {
            return;
        }
        this.f12198b.start();
        this.f12199c = new a(this.f12198b.getLooper());
        this.f12202f = true;
    }
}
