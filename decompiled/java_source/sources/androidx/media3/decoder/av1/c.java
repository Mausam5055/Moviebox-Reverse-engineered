package androidx.media3.decoder.av1;

import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.q0;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import androidx.media3.exoplayer.k;
import androidx.media3.exoplayer.video.i0;

/* JADX INFO: loaded from: classes2.dex */
public class c extends androidx.media3.exoplayer.video.b {

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private static final int f10944b0 = ((a1.k(1280, 64) * a1.k(720, 64)) * 6144) / 2;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final /* synthetic */ int f10945c0 = 0;
    private final int X;
    private final int Y;
    private final int Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private Gav1Decoder f10946a0;

    public c(long j11, @Nullable Handler handler, @Nullable i0 i0Var, int i11) {
        this(j11, handler, i0Var, i11, 0, 4, 4);
    }

    public c(long j11, Handler handler, i0 i0Var, int i11, int i12, int i13, int i14) {
        super(j11, handler, i0Var, i11);
        this.Z = i12;
        this.X = i13;
        this.Y = i14;
    }

    private static int C0(int i11) {
        return D0(i11, 0, 0);
    }

    private static int D0(int i11, int i12, int i13) {
        return i11 | (i12 << 4) | (i13 << 8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.video.b
    /* JADX INFO: renamed from: E0, reason: merged with bridge method [inline-methods] */
    public final Gav1Decoder R(r rVar, androidx.media3.decoder.b bVar) {
        q0.a("createGav1Decoder");
        int i11 = rVar.f10162p;
        if (i11 == -1) {
            i11 = f10944b0;
        }
        Gav1Decoder gav1Decoder = new Gav1Decoder(this.X, this.Y, i11, this.Z);
        this.f10946a0 = gav1Decoder;
        q0.b();
        return gav1Decoder;
    }

    @Override // androidx.media3.exoplayer.video.b
    protected k Q(String str, r rVar, r rVar2) {
        return new k(str, rVar, rVar2, 3, 0);
    }

    @Override // androidx.media3.exoplayer.y3
    public final int a(r rVar) {
        if ("video/av01".equalsIgnoreCase(rVar.f10161o) && b.a()) {
            return rVar.N != 0 ? C0(2) : D0(4, 16, 0);
        }
        return C0(0);
    }

    @Override // androidx.media3.exoplayer.w3, androidx.media3.exoplayer.y3
    public String getName() {
        return "Libgav1VideoRenderer";
    }

    @Override // androidx.media3.exoplayer.video.b
    protected void q0(VideoDecoderOutputBuffer videoDecoderOutputBuffer, Surface surface) throws Gav1DecoderException {
        Gav1Decoder gav1Decoder = this.f10946a0;
        if (gav1Decoder == null) {
            throw new Gav1DecoderException("Failed to render output buffer to surface: decoder is not initialized.");
        }
        gav1Decoder.x(videoDecoderOutputBuffer, surface);
        videoDecoderOutputBuffer.release();
    }

    @Override // androidx.media3.exoplayer.video.b
    protected void s0(int i11) {
        Gav1Decoder gav1Decoder = this.f10946a0;
        if (gav1Decoder != null) {
            gav1Decoder.y(i11);
        }
    }
}
