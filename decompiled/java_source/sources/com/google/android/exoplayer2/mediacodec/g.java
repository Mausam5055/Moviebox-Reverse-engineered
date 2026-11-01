package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import com.google.android.exoplayer2.util.p0;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes3.dex */
final class g extends MediaCodec.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HandlerThread f25367b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f25368c;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private MediaFormat f25373h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private MediaFormat f25374i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private MediaCodec.CodecException f25375j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f25376k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f25377l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private IllegalStateException f25378m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f25366a = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final k f25369d = new k();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final k f25370e = new k();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ArrayDeque f25371f = new ArrayDeque();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ArrayDeque f25372g = new ArrayDeque();

    g(HandlerThread handlerThread) {
        this.f25367b = handlerThread;
    }

    private void b(MediaFormat mediaFormat) {
        this.f25370e.a(-2);
        this.f25372g.add(mediaFormat);
    }

    private void f() {
        if (!this.f25372g.isEmpty()) {
            this.f25374i = (MediaFormat) this.f25372g.getLast();
        }
        this.f25369d.b();
        this.f25370e.b();
        this.f25371f.clear();
        this.f25372g.clear();
        this.f25375j = null;
    }

    private boolean i() {
        return this.f25376k > 0 || this.f25377l;
    }

    private void j() {
        k();
        l();
    }

    private void k() {
        IllegalStateException illegalStateException = this.f25378m;
        if (illegalStateException == null) {
            return;
        }
        this.f25378m = null;
        throw illegalStateException;
    }

    private void l() {
        MediaCodec.CodecException codecException = this.f25375j;
        if (codecException == null) {
            return;
        }
        this.f25375j = null;
        throw codecException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        synchronized (this.f25366a) {
            try {
                if (this.f25377l) {
                    return;
                }
                long j11 = this.f25376k - 1;
                this.f25376k = j11;
                if (j11 > 0) {
                    return;
                }
                if (j11 < 0) {
                    n(new IllegalStateException());
                } else {
                    f();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void n(IllegalStateException illegalStateException) {
        synchronized (this.f25366a) {
            this.f25378m = illegalStateException;
        }
    }

    public int c() {
        synchronized (this.f25366a) {
            try {
                int iE = -1;
                if (i()) {
                    return -1;
                }
                j();
                if (!this.f25369d.d()) {
                    iE = this.f25369d.e();
                }
                return iE;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int d(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f25366a) {
            try {
                if (i()) {
                    return -1;
                }
                j();
                if (this.f25370e.d()) {
                    return -1;
                }
                int iE = this.f25370e.e();
                if (iE >= 0) {
                    com.google.android.exoplayer2.util.a.i(this.f25373h);
                    MediaCodec.BufferInfo bufferInfo2 = (MediaCodec.BufferInfo) this.f25371f.remove();
                    bufferInfo.set(bufferInfo2.offset, bufferInfo2.size, bufferInfo2.presentationTimeUs, bufferInfo2.flags);
                } else if (iE == -2) {
                    this.f25373h = (MediaFormat) this.f25372g.remove();
                }
                return iE;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void e() {
        synchronized (this.f25366a) {
            this.f25376k++;
            ((Handler) p0.j(this.f25368c)).post(new Runnable() { // from class: com.google.android.exoplayer2.mediacodec.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f25365a.m();
                }
            });
        }
    }

    public MediaFormat g() {
        MediaFormat mediaFormat;
        synchronized (this.f25366a) {
            try {
                mediaFormat = this.f25373h;
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
        com.google.android.exoplayer2.util.a.g(this.f25368c == null);
        this.f25367b.start();
        Handler handler = new Handler(this.f25367b.getLooper());
        mediaCodec.setCallback(this, handler);
        this.f25368c = handler;
    }

    public void o() {
        synchronized (this.f25366a) {
            this.f25377l = true;
            this.f25367b.quit();
            f();
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.f25366a) {
            this.f25375j = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onInputBufferAvailable(MediaCodec mediaCodec, int i11) {
        synchronized (this.f25366a) {
            this.f25369d.a(i11);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputBufferAvailable(MediaCodec mediaCodec, int i11, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f25366a) {
            try {
                MediaFormat mediaFormat = this.f25374i;
                if (mediaFormat != null) {
                    b(mediaFormat);
                    this.f25374i = null;
                }
                this.f25370e.a(i11);
                this.f25371f.add(bufferInfo);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.f25366a) {
            b(mediaFormat);
            this.f25374i = null;
        }
    }
}
