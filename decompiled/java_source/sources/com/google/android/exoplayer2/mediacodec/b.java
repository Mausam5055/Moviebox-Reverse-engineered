package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Surface;
import com.google.android.exoplayer2.util.m0;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
final class b implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MediaCodec f25339a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f25340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f25341c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f25342d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f25343e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f25344f;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.mediacodec.b$b, reason: collision with other inner class name */
    public static final class C0367b implements l.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final com.google.common.base.q f25345a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.google.common.base.q f25346b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f25347c;

        public C0367b(final int i11, boolean z10) {
            this(new com.google.common.base.q() { // from class: com.google.android.exoplayer2.mediacodec.c
                @Override // com.google.common.base.q
                public final Object get() {
                    return b.C0367b.e(i11);
                }
            }, new com.google.common.base.q() { // from class: com.google.android.exoplayer2.mediacodec.d
                @Override // com.google.common.base.q
                public final Object get() {
                    return b.C0367b.f(i11);
                }
            }, z10);
        }

        C0367b(com.google.common.base.q qVar, com.google.common.base.q qVar2, boolean z10) {
            this.f25345a = qVar;
            this.f25346b = qVar2;
            this.f25347c = z10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread e(int i11) {
            return new HandlerThread(b.r(i11));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ HandlerThread f(int i11) {
            return new HandlerThread(b.s(i11));
        }

        @Override // com.google.android.exoplayer2.mediacodec.l.b
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public b a(l.a aVar) throws Exception {
            MediaCodec mediaCodecCreateByCodecName;
            String str = aVar.f25392a.f25398a;
            b bVar = null;
            try {
                m0.a("createCodec:" + str);
                mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
                try {
                    b bVar2 = new b(mediaCodecCreateByCodecName, (HandlerThread) this.f25345a.get(), (HandlerThread) this.f25346b.get(), this.f25347c);
                    try {
                        m0.c();
                        bVar2.u(aVar.f25393b, aVar.f25395d, aVar.f25396e, aVar.f25397f);
                        return bVar2;
                    } catch (Exception e11) {
                        e = e11;
                        bVar = bVar2;
                        if (bVar != null) {
                            bVar.release();
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
    }

    private b(MediaCodec mediaCodec, HandlerThread handlerThread, HandlerThread handlerThread2, boolean z10) {
        this.f25339a = mediaCodec;
        this.f25340b = new g(handlerThread);
        this.f25341c = new e(mediaCodec, handlerThread2);
        this.f25342d = z10;
        this.f25344f = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String r(int i11) {
        return t(i11, "ExoPlayer:MediaCodecAsyncAdapter:");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String s(int i11) {
        return t(i11, "ExoPlayer:MediaCodecQueueingThread:");
    }

    private static String t(int i11, String str) {
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
    public void u(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i11) {
        this.f25340b.h(this.f25339a);
        m0.a("configureCodec");
        this.f25339a.configure(mediaFormat, surface, mediaCrypto, i11);
        m0.c();
        this.f25341c.q();
        m0.a("startCodec");
        this.f25339a.start();
        m0.c();
        this.f25344f = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v(l.c cVar, MediaCodec mediaCodec, long j11, long j12) {
        cVar.a(this, j11, j12);
    }

    private void w() {
        if (this.f25342d) {
            try {
                this.f25341c.r();
            } catch (InterruptedException e11) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e11);
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void a(int i11, int i12, int i13, long j11, int i14) {
        this.f25341c.m(i11, i12, i13, j11, i14);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void b(Bundle bundle) {
        w();
        this.f25339a.setParameters(bundle);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public MediaFormat c() {
        return this.f25340b.g();
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public ByteBuffer d(int i11) {
        return this.f25339a.getInputBuffer(i11);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void e(Surface surface) {
        w();
        this.f25339a.setOutputSurface(surface);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void f(int i11, int i12, com.google.android.exoplayer2.decoder.c cVar, long j11, int i13) {
        this.f25341c.n(i11, i12, cVar, j11, i13);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void flush() {
        this.f25341c.i();
        this.f25339a.flush();
        this.f25340b.e();
        this.f25339a.start();
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public boolean g() {
        return false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void h(int i11, long j11) {
        this.f25339a.releaseOutputBuffer(i11, j11);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public int i() {
        return this.f25340b.c();
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public int j(MediaCodec.BufferInfo bufferInfo) {
        return this.f25340b.d(bufferInfo);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void k(int i11, boolean z10) {
        this.f25339a.releaseOutputBuffer(i11, z10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public ByteBuffer l(int i11) {
        return this.f25339a.getOutputBuffer(i11);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void m(final l.c cVar, Handler handler) {
        w();
        this.f25339a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: com.google.android.exoplayer2.mediacodec.a
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j11, long j12) {
                this.f25337a.v(cVar, mediaCodec, j11, j12);
            }
        }, handler);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void release() {
        try {
            if (this.f25344f == 1) {
                this.f25341c.p();
                this.f25340b.o();
            }
            this.f25344f = 2;
        } finally {
            if (!this.f25343e) {
                this.f25339a.release();
                this.f25343e = true;
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void setVideoScalingMode(int i11) {
        w();
        this.f25339a.setVideoScalingMode(i11);
    }
}
