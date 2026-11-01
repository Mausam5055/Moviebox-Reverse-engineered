package io.github.anilbeesetti.nextlib.media3ext.ffdecoder;

import android.os.Handler;
import android.view.Surface;
import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.q0;
import androidx.media3.common.y;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import androidx.media3.decoder.g;
import androidx.media3.exoplayer.video.i0;
import androidx.media3.exoplayer.x3;

/* JADX INFO: loaded from: classes7.dex */
public final class d extends androidx.media3.exoplayer.video.b {

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private static final int f65293b0 = ((a1.k(1280, 64) * a1.k(720, 64)) * 6144) / 2;
    private final int X;
    private final int Y;
    private final int Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private FfmpegVideoDecoder f65294a0;

    public d(long j11, Handler handler, i0 i0Var, int i11) {
        this(j11, handler, i0Var, i11, Runtime.getRuntime().availableProcessors(), 4, 4);
    }

    public d(long j11, Handler handler, i0 i0Var, int i11, int i12, int i13, int i14) {
        super(j11, handler, i0Var, i11);
        this.Z = i12;
        this.X = i13;
        this.Y = i14;
    }

    @Override // androidx.media3.exoplayer.video.b
    protected g R(r rVar, androidx.media3.decoder.b bVar) {
        q0.a("createFfmpegVideoDecoder");
        int i11 = rVar.f10162p;
        if (i11 == -1) {
            i11 = f65293b0;
        }
        FfmpegVideoDecoder ffmpegVideoDecoder = new FfmpegVideoDecoder(this.X, this.Y, i11, this.Z, rVar);
        this.f65294a0 = ffmpegVideoDecoder;
        q0.b();
        return ffmpegVideoDecoder;
    }

    @Override // androidx.media3.exoplayer.y3
    public final int a(r rVar) {
        String str = (String) androidx.media3.common.util.a.e(rVar.f10161o);
        if (!FfmpegLibrary.d() || !y.t(str)) {
            return 0;
        }
        if (FfmpegLibrary.e(rVar.f10161o)) {
            return rVar.f10165s != null ? x3.a(2) : x3.b(4, 16, 0);
        }
        return x3.a(1);
    }

    @Override // androidx.media3.exoplayer.w3, androidx.media3.exoplayer.y3
    public String getName() {
        return "FfmpegVideoRenderer";
    }

    @Override // androidx.media3.exoplayer.video.b
    protected void q0(VideoDecoderOutputBuffer videoDecoderOutputBuffer, Surface surface) throws FfmpegDecoderException {
        FfmpegVideoDecoder ffmpegVideoDecoder = this.f65294a0;
        if (ffmpegVideoDecoder == null) {
            throw new FfmpegDecoderException("Failed to render output buffer to surface: decoder is not initialized.");
        }
        ffmpegVideoDecoder.z(videoDecoderOutputBuffer, surface);
        videoDecoderOutputBuffer.release();
    }

    @Override // androidx.media3.exoplayer.video.b
    protected void s0(int i11) {
        FfmpegVideoDecoder ffmpegVideoDecoder = this.f65294a0;
        if (ffmpegVideoDecoder != null) {
            ffmpegVideoDecoder.A(i11);
        }
    }
}
