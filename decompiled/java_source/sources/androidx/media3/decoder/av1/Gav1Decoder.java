package androidx.media3.decoder.av1;

import android.view.Surface;
import androidx.media3.common.util.a1;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.SimpleDecoder;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import androidx.media3.decoder.h;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class Gav1Decoder extends SimpleDecoder {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final long f10940o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private volatile int f10941p;

    public Gav1Decoder(int i11, int i12, int i13, int i14) throws Gav1DecoderException {
        super(new DecoderInputBuffer[i11], new VideoDecoderOutputBuffer[i12]);
        if (!b.a()) {
            throw new Gav1DecoderException("Failed to load decoder native library.");
        }
        if (i14 == 0 && (i14 = gav1GetThreads()) <= 0) {
            i14 = Runtime.getRuntime().availableProcessors();
        }
        long jGav1Init = gav1Init(i14);
        this.f10940o = jGav1Init;
        if (jGav1Init != 0 && gav1CheckError(jGav1Init) != 0) {
            s(i13);
            return;
        }
        throw new Gav1DecoderException("Failed to initialize decoder. Error: " + gav1GetErrorMessage(jGav1Init));
    }

    private native int gav1CheckError(long j11);

    private native void gav1Close(long j11);

    private native int gav1Decode(long j11, ByteBuffer byteBuffer, int i11);

    private native String gav1GetErrorMessage(long j11);

    private native int gav1GetFrame(long j11, VideoDecoderOutputBuffer videoDecoderOutputBuffer, boolean z10);

    private native int gav1GetThreads();

    private native long gav1Init(int i11);

    private native void gav1ReleaseFrame(long j11, VideoDecoderOutputBuffer videoDecoderOutputBuffer);

    private native int gav1RenderFrame(long j11, Surface surface, VideoDecoderOutputBuffer videoDecoderOutputBuffer);

    @Override // androidx.media3.decoder.SimpleDecoder
    protected DecoderInputBuffer e() {
        return new DecoderInputBuffer(2);
    }

    @Override // androidx.media3.decoder.g
    public String getName() {
        return "libgav1";
    }

    @Override // androidx.media3.decoder.SimpleDecoder, androidx.media3.decoder.g
    public void release() {
        super.release();
        gav1Close(this.f10940o);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.decoder.SimpleDecoder
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public VideoDecoderOutputBuffer f() {
        return new VideoDecoderOutputBuffer(new h.a() { // from class: androidx.media3.decoder.av1.a
            @Override // androidx.media3.decoder.h.a
            public final void a(h hVar) {
                this.f10942a.w((VideoDecoderOutputBuffer) hVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.decoder.SimpleDecoder
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public Gav1DecoderException g(Throwable th2) {
        return new Gav1DecoderException("Unexpected decode error", th2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.decoder.SimpleDecoder
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public Gav1DecoderException h(DecoderInputBuffer decoderInputBuffer, VideoDecoderOutputBuffer videoDecoderOutputBuffer, boolean z10) {
        ByteBuffer byteBuffer = (ByteBuffer) a1.i(decoderInputBuffer.f10918c);
        if (gav1Decode(this.f10940o, byteBuffer, byteBuffer.limit()) == 0) {
            return new Gav1DecoderException("gav1Decode error: " + gav1GetErrorMessage(this.f10940o));
        }
        boolean zL = l(decoderInputBuffer.f10920e);
        boolean z11 = !zL;
        if (zL) {
            videoDecoderOutputBuffer.init(decoderInputBuffer.f10920e, this.f10941p, null);
        }
        int iGav1GetFrame = gav1GetFrame(this.f10940o, videoDecoderOutputBuffer, z11);
        if (iGav1GetFrame == 0) {
            return new Gav1DecoderException("gav1GetFrame error: " + gav1GetErrorMessage(this.f10940o));
        }
        if (iGav1GetFrame == 2) {
            videoDecoderOutputBuffer.shouldBeSkipped = true;
        }
        if (zL) {
            videoDecoderOutputBuffer.format = decoderInputBuffer.f10916a;
        }
        return null;
    }

    protected void w(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        if (videoDecoderOutputBuffer.mode == 1 && !videoDecoderOutputBuffer.shouldBeSkipped) {
            gav1ReleaseFrame(this.f10940o, videoDecoderOutputBuffer);
        }
        super.p(videoDecoderOutputBuffer);
    }

    public void x(VideoDecoderOutputBuffer videoDecoderOutputBuffer, Surface surface) throws Gav1DecoderException {
        if (videoDecoderOutputBuffer.mode != 1) {
            throw new Gav1DecoderException("Invalid output mode.");
        }
        if (gav1RenderFrame(this.f10940o, surface, videoDecoderOutputBuffer) != 0) {
            return;
        }
        throw new Gav1DecoderException("Buffer render error: " + gav1GetErrorMessage(this.f10940o));
    }

    public void y(int i11) {
        this.f10941p = i11;
    }
}
