package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.media3.common.util.a1;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes2.dex */
final class i extends MediaCodec.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HandlerThread f12214b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f12215c;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private MediaFormat f12220h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private MediaFormat f12221i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private MediaCodec.CodecException f12222j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private MediaCodec.CryptoException f12223k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f12224l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f12225m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private IllegalStateException f12226n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private t.c f12227o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f12213a = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.collection.f f12216d = new androidx.collection.f();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final androidx.collection.f f12217e = new androidx.collection.f();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ArrayDeque f12218f = new ArrayDeque();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ArrayDeque f12219g = new ArrayDeque();

    i(HandlerThread handlerThread) {
        this.f12214b = handlerThread;
    }

    private void b(MediaFormat mediaFormat) {
        this.f12217e.a(-2);
        this.f12219g.add(mediaFormat);
    }

    private void f() {
        if (!this.f12219g.isEmpty()) {
            this.f12221i = (MediaFormat) this.f12219g.getLast();
        }
        this.f12216d.b();
        this.f12217e.b();
        this.f12218f.clear();
        this.f12219g.clear();
    }

    private boolean i() {
        return this.f12224l > 0 || this.f12225m;
    }

    private void j() {
        k();
        m();
        l();
    }

    private void k() {
        IllegalStateException illegalStateException = this.f12226n;
        if (illegalStateException == null) {
            return;
        }
        this.f12226n = null;
        throw illegalStateException;
    }

    private void l() {
        MediaCodec.CryptoException cryptoException = this.f12223k;
        if (cryptoException == null) {
            return;
        }
        this.f12223k = null;
        throw cryptoException;
    }

    private void m() {
        MediaCodec.CodecException codecException = this.f12222j;
        if (codecException == null) {
            return;
        }
        this.f12222j = null;
        throw codecException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        synchronized (this.f12213a) {
            try {
                if (this.f12225m) {
                    return;
                }
                long j11 = this.f12224l - 1;
                this.f12224l = j11;
                if (j11 > 0) {
                    return;
                }
                if (j11 < 0) {
                    o(new IllegalStateException());
                } else {
                    f();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void o(IllegalStateException illegalStateException) {
        synchronized (this.f12213a) {
            this.f12226n = illegalStateException;
        }
    }

    public int c() {
        synchronized (this.f12213a) {
            try {
                j();
                int iE = -1;
                if (i()) {
                    return -1;
                }
                if (!this.f12216d.d()) {
                    iE = this.f12216d.e();
                }
                return iE;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int d(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f12213a) {
            try {
                j();
                if (i()) {
                    return -1;
                }
                if (this.f12217e.d()) {
                    return -1;
                }
                int iE = this.f12217e.e();
                if (iE >= 0) {
                    androidx.media3.common.util.a.i(this.f12220h);
                    MediaCodec.BufferInfo bufferInfo2 = (MediaCodec.BufferInfo) this.f12218f.remove();
                    bufferInfo.set(bufferInfo2.offset, bufferInfo2.size, bufferInfo2.presentationTimeUs, bufferInfo2.flags);
                } else if (iE == -2) {
                    this.f12220h = (MediaFormat) this.f12219g.remove();
                }
                return iE;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void e() {
        synchronized (this.f12213a) {
            this.f12224l++;
            ((Handler) a1.i(this.f12215c)).post(new Runnable() { // from class: androidx.media3.exoplayer.mediacodec.h
                @Override // java.lang.Runnable
                public final void run() {
                    this.f12210a.n();
                }
            });
        }
    }

    public MediaFormat g() {
        MediaFormat mediaFormat;
        synchronized (this.f12213a) {
            try {
                mediaFormat = this.f12220h;
                if (mediaFormat == null) {
                    throw new IllegalStateException();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return mediaFormat;
    }

    public void h(MediaCodec mediaCodec) {
        androidx.media3.common.util.a.g(this.f12215c == null);
        this.f12214b.start();
        Handler handler = new Handler(this.f12214b.getLooper());
        mediaCodec.setCallback(this, handler);
        this.f12215c = handler;
    }

    @Override // android.media.MediaCodec.Callback
    public void onCryptoError(MediaCodec mediaCodec, MediaCodec.CryptoException cryptoException) {
        synchronized (this.f12213a) {
            this.f12223k = cryptoException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.f12213a) {
            this.f12222j = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onInputBufferAvailable(MediaCodec mediaCodec, int i11) {
        synchronized (this.f12213a) {
            try {
                this.f12216d.a(i11);
                t.c cVar = this.f12227o;
                if (cVar != null) {
                    cVar.a();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputBufferAvailable(MediaCodec mediaCodec, int i11, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f12213a) {
            try {
                MediaFormat mediaFormat = this.f12221i;
                if (mediaFormat != null) {
                    b(mediaFormat);
                    this.f12221i = null;
                }
                this.f12217e.a(i11);
                this.f12218f.add(bufferInfo);
                t.c cVar = this.f12227o;
                if (cVar != null) {
                    cVar.b();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.f12213a) {
            b(mediaFormat);
            this.f12221i = null;
        }
    }

    public void p(t.c cVar) {
        synchronized (this.f12213a) {
            this.f12227o = cVar;
        }
    }

    public void q() {
        synchronized (this.f12213a) {
            this.f12225m = true;
            this.f12214b.quit();
            f();
        }
    }
}
