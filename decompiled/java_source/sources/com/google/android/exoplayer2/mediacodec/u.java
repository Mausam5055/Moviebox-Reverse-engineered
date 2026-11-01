package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import com.google.android.exoplayer2.util.m0;
import com.google.android.exoplayer2.util.p0;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public final class u implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MediaCodec f25414a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ByteBuffer[] f25415b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ByteBuffer[] f25416c;

    public static class b implements l.b {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.exoplayer2.mediacodec.u$a] */
        /* JADX WARN: Type inference failed for: r0v2 */
        /* JADX WARN: Type inference failed for: r0v3 */
        @Override // com.google.android.exoplayer2.mediacodec.l.b
        public l a(l.a aVar) throws Throwable {
            MediaCodec mediaCodec = 0;
            mediaCodec = 0;
            try {
                MediaCodec mediaCodecB = b(aVar);
                try {
                    m0.a("configureCodec");
                    mediaCodecB.configure(aVar.f25393b, aVar.f25395d, aVar.f25396e, aVar.f25397f);
                    m0.c();
                    m0.a("startCodec");
                    mediaCodecB.start();
                    m0.c();
                    return new u(mediaCodecB);
                } catch (IOException | RuntimeException e11) {
                    e = e11;
                    mediaCodec = mediaCodecB;
                    if (mediaCodec != 0) {
                        mediaCodec.release();
                    }
                    throw e;
                }
            } catch (IOException e12) {
                e = e12;
            } catch (RuntimeException e13) {
                e = e13;
            }
        }

        protected MediaCodec b(l.a aVar) throws IOException {
            com.google.android.exoplayer2.util.a.e(aVar.f25392a);
            String str = aVar.f25392a.f25398a;
            m0.a("createCodec:" + str);
            MediaCodec mediaCodecCreateByCodecName = MediaCodec.createByCodecName(str);
            m0.c();
            return mediaCodecCreateByCodecName;
        }
    }

    private u(MediaCodec mediaCodec) {
        this.f25414a = mediaCodec;
        if (p0.f27626a < 21) {
            this.f25415b = mediaCodec.getInputBuffers();
            this.f25416c = mediaCodec.getOutputBuffers();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(l.c cVar, MediaCodec mediaCodec, long j11, long j12) {
        cVar.a(this, j11, j12);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void a(int i11, int i12, int i13, long j11, int i14) {
        this.f25414a.queueInputBuffer(i11, i12, i13, j11, i14);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void b(Bundle bundle) {
        this.f25414a.setParameters(bundle);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public MediaFormat c() {
        return this.f25414a.getOutputFormat();
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public ByteBuffer d(int i11) {
        return p0.f27626a >= 21 ? this.f25414a.getInputBuffer(i11) : ((ByteBuffer[]) p0.j(this.f25415b))[i11];
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void e(Surface surface) {
        this.f25414a.setOutputSurface(surface);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void f(int i11, int i12, com.google.android.exoplayer2.decoder.c cVar, long j11, int i13) {
        this.f25414a.queueSecureInputBuffer(i11, i12, cVar.a(), j11, i13);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void flush() {
        this.f25414a.flush();
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public boolean g() {
        return false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void h(int i11, long j11) {
        this.f25414a.releaseOutputBuffer(i11, j11);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public int i() {
        return this.f25414a.dequeueInputBuffer(0L);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public int j(MediaCodec.BufferInfo bufferInfo) {
        int iDequeueOutputBuffer;
        do {
            iDequeueOutputBuffer = this.f25414a.dequeueOutputBuffer(bufferInfo, 0L);
            if (iDequeueOutputBuffer == -3 && p0.f27626a < 21) {
                this.f25416c = this.f25414a.getOutputBuffers();
            }
        } while (iDequeueOutputBuffer == -3);
        return iDequeueOutputBuffer;
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void k(int i11, boolean z10) {
        this.f25414a.releaseOutputBuffer(i11, z10);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public ByteBuffer l(int i11) {
        return p0.f27626a >= 21 ? this.f25414a.getOutputBuffer(i11) : ((ByteBuffer[]) p0.j(this.f25416c))[i11];
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void m(final l.c cVar, Handler handler) {
        this.f25414a.setOnFrameRenderedListener(new MediaCodec.OnFrameRenderedListener() { // from class: com.google.android.exoplayer2.mediacodec.t
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(MediaCodec mediaCodec, long j11, long j12) {
                this.f25412a.o(cVar, mediaCodec, j11, j12);
            }
        }, handler);
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void release() {
        this.f25415b = null;
        this.f25416c = null;
        this.f25414a.release();
    }

    @Override // com.google.android.exoplayer2.mediacodec.l
    public void setVideoScalingMode(int i11) {
        this.f25414a.setVideoScalingMode(i11);
    }
}
