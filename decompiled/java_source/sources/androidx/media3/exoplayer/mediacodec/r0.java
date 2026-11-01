package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import androidx.media3.common.util.a1;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class r0 implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MediaCodec f12245a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final p f12246b;

    public static class b implements t.b {
        /* JADX WARN: Code duplicated, block: B:22:0x0045  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.exoplayer.mediacodec.r0$a] */
        /* JADX WARN: Type inference failed for: r0v2 */
        /* JADX WARN: Type inference failed for: r0v3 */
        @Override // androidx.media3.exoplayer.mediacodec.t.b
        public t a(t.a aVar) throws Throwable {
            MediaCodec mediaCodec = 0;
            mediaCodec = 0;
            try {
                MediaCodec mediaCodecB = b(aVar);
                try {
                    androidx.media3.common.util.q0.a("configureCodec");
                    Surface surface = aVar.f12251d;
                    mediaCodecB.configure(aVar.f12249b, surface, aVar.f12252e, (surface == null && aVar.f12248a.f12265k && a1.f10350a >= 35) ? 8 : 0);
                    androidx.media3.common.util.q0.b();
                    androidx.media3.common.util.q0.a("startCodec");
                    mediaCodecB.start();
                    androidx.media3.common.util.q0.b();
                    return new r0(mediaCodecB, aVar.f12253f);
                } catch (IOException e11) {
                    e = e11;
                    mediaCodec = mediaCodecB;
                    if (mediaCodec != 0) {
                        mediaCodec.release();
                    }
                    throw e;
                } catch (RuntimeException e12) {
                    e = e12;
                    mediaCodec = mediaCodecB;
                    if (mediaCodec != 0) {
                        mediaCodec.release();
                    }
                    throw e;
                }
            } catch (IOException e13) {
                e = e13;
            } catch (RuntimeException e14) {
                e = e14;
            }
        }

        protected MediaCodec b(t.a aVar) throws IOException {
            androidx.media3.common.util.a.e(aVar.f12248a);
            String str = aVar.f12248a.f12255a;
            androidx.media3.common.util.q0.a("createCodec:" + str);
            MediaCodec mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
            androidx.media3.common.util.q0.b();
            return mediaCodecCreateByCodecName;
        }
    }

    private r0(MediaCodec mediaCodec, p pVar) {
        this.f12245a = mediaCodec;
        this.f12246b = pVar;
        if (a1.f10350a < 35 || pVar == null) {
            return;
        }
        pVar.b(mediaCodec);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q(t.d dVar, MediaCodec mediaCodec, long j11, long j12) {
        dVar.a(this, j11, j12);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public void a(int i11, int i12, int i13, long j11, int i14) {
        this.f12245a.queueInputBuffer(i11, i12, i13, j11, i14);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public void b(Bundle bundle) {
        this.f12245a.setParameters(bundle);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public MediaFormat c() {
        return this.f12245a.getOutputFormat();
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public ByteBuffer d(int i11) {
        return this.f12245a.getInputBuffer(i11);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public void e(Surface surface) {
        this.f12245a.setOutputSurface(surface);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public void f(int i11, int i12, androidx.media3.decoder.c cVar, long j11, int i13) {
        this.f12245a.queueSecureInputBuffer(i11, i12, cVar.a(), j11, i13);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public void flush() {
        this.f12245a.flush();
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public boolean g() {
        return false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public void h(int i11, long j11) {
        this.f12245a.releaseOutputBuffer(i11, j11);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public int i() {
        return this.f12245a.dequeueInputBuffer(0L);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public int j(MediaCodec.BufferInfo bufferInfo) {
        int iDequeueOutputBuffer;
        do {
            iDequeueOutputBuffer = this.f12245a.dequeueOutputBuffer(bufferInfo, 0L);
        } while (iDequeueOutputBuffer == -3);
        return iDequeueOutputBuffer;
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public void k(int i11, boolean z10) {
        this.f12245a.releaseOutputBuffer(i11, z10);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public ByteBuffer l(int i11) {
        return this.f12245a.getOutputBuffer(i11);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public /* synthetic */ boolean m(t.c cVar) {
        return s.a(this, cVar);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public void n(final t.d dVar, Handler handler) {
        this.f12245a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: androidx.media3.exoplayer.mediacodec.q0
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j11, long j12) {
                this.f12243a.q(dVar, mediaCodec, j11, j12);
            }
        }, handler);
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public void o() {
        this.f12245a.detachOutputSurface();
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public void release() {
        p pVar;
        try {
            int i11 = a1.f10350a;
            if (i11 >= 30 && i11 < 33) {
                this.f12245a.stop();
            }
        } finally {
            if (a1.f10350a >= 35 && (pVar = this.f12246b) != null) {
                pVar.d(this.f12245a);
            }
            this.f12245a.release();
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.t
    public void setVideoScalingMode(int i11) {
        this.f12245a.setVideoScalingMode(i11);
    }
}
