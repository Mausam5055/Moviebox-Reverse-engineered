package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import androidx.media3.common.util.a1;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
final class c implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MediaCodec f12183a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f12184b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v f12185c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final p f12186d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f12187e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f12188f;

    public static final class b implements t.b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.google.common.base.q f12189b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final com.google.common.base.q f12190c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f12191d;

        public b(final int i11) {
            this(new com.google.common.base.q() { // from class: androidx.media3.exoplayer.mediacodec.d
                @Override // com.google.common.base.q
                public final Object get() {
                    return c.b.f(i11);
                }
            }, new com.google.common.base.q() { // from class: androidx.media3.exoplayer.mediacodec.e
                @Override // com.google.common.base.q
                public final Object get() {
                    return c.b.g(i11);
                }
            });
        }

        public b(com.google.common.base.q qVar, com.google.common.base.q qVar2) {
            this.f12189b = qVar;
            this.f12190c = qVar2;
            this.f12191d = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread f(int i11) {
            return new HandlerThread(c.t(i11));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread g(int i11) {
            return new HandlerThread(c.u(i11));
        }

        private static boolean h(androidx.media3.common.r rVar) {
            int i11 = a1.f10350a;
            if (i11 < 34) {
                return false;
            }
            return i11 >= 35 || androidx.media3.common.y.t(rVar.f10161o);
        }

        @Override // androidx.media3.exoplayer.mediacodec.t.b
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public c a(t.a aVar) throws Exception {
            MediaCodec mediaCodecCreateByCodecName;
            v gVar;
            int i11;
            String str = aVar.f12248a.f12255a;
            c cVar = null;
            try {
                androidx.media3.common.util.q0.a("createCodec:" + str);
                mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
                try {
                    if (this.f12191d && h(aVar.f12250c)) {
                        gVar = new s0(mediaCodecCreateByCodecName);
                        i11 = 4;
                    } else {
                        gVar = new g(mediaCodecCreateByCodecName, (HandlerThread) this.f12190c.get());
                        i11 = 0;
                    }
                    v vVar = gVar;
                    int i12 = i11;
                    c cVar2 = new c(mediaCodecCreateByCodecName, (HandlerThread) this.f12189b.get(), vVar, aVar.f12253f);
                    try {
                        androidx.media3.common.util.q0.b();
                        Surface surface = aVar.f12251d;
                        if (surface == null && aVar.f12248a.f12265k && a1.f10350a >= 35) {
                            i12 |= 8;
                        }
                        cVar2.w(aVar.f12249b, surface, aVar.f12252e, i12);
                        return cVar2;
                    } catch (Exception e11) {
                        e = e11;
                        cVar = cVar2;
                        if (cVar != null) {
                            cVar.release();
                        } else if (mediaCodecCreateByCodecName != null) {
                            mediaCodecCreateByCodecName.release();
                        }
                        throw e;
                    }
                } catch (Exception e12) {
                    e = e12;
                }
            } catch (Exception e13) {
                e = e13;
                mediaCodecCreateByCodecName = null;
            }
        }

        public void e(boolean z10) {
            this.f12191d = z10;
        }
    }

    private c(MediaCodec mediaCodec, HandlerThread handlerThread, v vVar, p pVar) {
        this.f12183a = mediaCodec;
        this.f12184b = new i(handlerThread);
        this.f12185c = vVar;
        this.f12186d = pVar;
        this.f12188f = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String t(int i11) {
        return v(i11, "ExoPlayer:MediaCodecAsyncAdapter:");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String u(int i11) {
        return v(i11, "ExoPlayer:MediaCodecQueueingThread:");
    }

    private static String v(int i11, String str) {
        StringBuilder sb2 = new StringBuilder(str);
        if (i11 == 1) {
            sb2.append("Audio");
        } else if (i11 == 2) {
            sb2.append("Video");
        } else {
            sb2.append("Unknown(");
            sb2.append(i11);
            sb2.append(")");
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i11) {
        p pVar;
        this.f12184b.h(this.f12183a);
        androidx.media3.common.util.q0.a("configureCodec");
        this.f12183a.configure(mediaFormat, surface, mediaCrypto, i11);
        androidx.media3.common.util.q0.b();
        this.f12185c.start();
        androidx.media3.common.util.q0.a("startCodec");
        this.f12183a.start();
        androidx.media3.common.util.q0.b();
        if (a1.f10350a >= 35 && (pVar = this.f12186d) != null) {
            pVar.b(this.f12183a);
        }
        this.f12188f = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x(t.d dVar, MediaCodec mediaCodec, long j11, long j12) {
        dVar.a(this, j11, j12);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public void a(int i11, int i12, int i13, long j11, int i14) {
        this.f12185c.a(i11, i12, i13, j11, i14);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public void b(Bundle bundle) {
        this.f12185c.b(bundle);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public MediaFormat c() {
        return this.f12184b.g();
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public ByteBuffer d(int i11) {
        return this.f12183a.getInputBuffer(i11);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public void e(Surface surface) {
        this.f12183a.setOutputSurface(surface);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public void f(int i11, int i12, androidx.media3.decoder.c cVar, long j11, int i13) {
        this.f12185c.f(i11, i12, cVar, j11, i13);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public void flush() {
        this.f12185c.flush();
        this.f12183a.flush();
        this.f12184b.e();
        this.f12183a.start();
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public boolean g() {
        return false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public void h(int i11, long j11) {
        this.f12183a.releaseOutputBuffer(i11, j11);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public int i() {
        this.f12185c.c();
        return this.f12184b.c();
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public int j(MediaCodec.BufferInfo bufferInfo) {
        this.f12185c.c();
        return this.f12184b.d(bufferInfo);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public void k(int i11, boolean z10) {
        this.f12183a.releaseOutputBuffer(i11, z10);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public ByteBuffer l(int i11) {
        return this.f12183a.getOutputBuffer(i11);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public boolean m(t.c cVar) {
        this.f12184b.p(cVar);
        return true;
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public void n(final t.d dVar, Handler handler) {
        this.f12183a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: androidx.media3.exoplayer.mediacodec.b
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j11, long j12) {
                this.f12181a.x(dVar, mediaCodec, j11, j12);
            }
        }, handler);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public void o() {
        this.f12183a.detachOutputSurface();
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public void release() {
        p pVar;
        p pVar2;
        try {
            if (this.f12188f == 1) {
                this.f12185c.shutdown();
                this.f12184b.q();
            }
            this.f12188f = 2;
            if (this.f12187e) {
                return;
            }
            try {
                int i11 = a1.f10350a;
                if (i11 >= 30 && i11 < 33) {
                    this.f12183a.stop();
                }
            } finally {
                if (a1.f10350a >= 35 && (pVar2 = this.f12186d) != null) {
                    pVar2.d(this.f12183a);
                }
                this.f12183a.release();
                this.f12187e = true;
            }
        } catch (Throwable th2) {
            if (!this.f12187e) {
                try {
                    int i12 = a1.f10350a;
                    if (i12 >= 30 && i12 < 33) {
                        this.f12183a.stop();
                    }
                } finally {
                    if (a1.f10350a >= 35 && (pVar = this.f12186d) != null) {
                        pVar.d(this.f12183a);
                    }
                    this.f12183a.release();
                    this.f12187e = true;
                }
            }
            throw th2;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public void setVideoScalingMode(int i11) {
        this.f12183a.setVideoScalingMode(i11);
    }
}
