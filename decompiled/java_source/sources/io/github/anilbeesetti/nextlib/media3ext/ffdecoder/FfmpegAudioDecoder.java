package io.github.anilbeesetti.nextlib.media3ext.ffdecoder;

import android.annotation.SuppressLint;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import androidx.media3.common.r;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.SimpleDecoder;
import androidx.media3.decoder.SimpleDecoderOutputBuffer;
import androidx.media3.decoder.h;
import java.nio.ByteBuffer;
import java.util.List;
import okhttp3.internal.http2.Settings;

/* JADX INFO: loaded from: classes7.dex */
@SuppressLint({"UnsafeOptInUsageError"})
final class FfmpegAudioDecoder extends SimpleDecoder {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f65275o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final byte[] f65276p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f65277q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f65278r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f65279s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f65280t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private volatile int f65281u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private volatile int f65282v;

    public FfmpegAudioDecoder(r rVar, int i11, int i12, int i13, boolean z10) throws FfmpegDecoderException {
        super(new DecoderInputBuffer[i11], new SimpleDecoderOutputBuffer[i12]);
        if (!FfmpegLibrary.d()) {
            throw new FfmpegDecoderException("Failed to load decoder native libraries.");
        }
        androidx.media3.common.util.a.e(rVar.f10161o);
        String str = (String) androidx.media3.common.util.a.e(FfmpegLibrary.a(rVar.f10161o));
        this.f65275o = str;
        byte[] bArrA = A(rVar.f10161o, rVar.f10164r);
        this.f65276p = bArrA;
        this.f65277q = z10 ? 4 : 2;
        this.f65278r = z10 ? 131070 : Settings.DEFAULT_INITIAL_WINDOW_SIZE;
        long jFfmpegInitialize = ffmpegInitialize(str, bArrA, z10, rVar.F, rVar.E);
        this.f65279s = jFfmpegInitialize;
        if (jFfmpegInitialize == 0) {
            throw new FfmpegDecoderException("Initialization failed.");
        }
        s(i13);
    }

    private static byte[] A(String str, List list) {
        if (list.isEmpty()) {
            return null;
        }
        str.hashCode();
        switch (str) {
            case "audio/vorbis":
                return C(list);
            case "audio/mp4a-latm":
            case "audio/opus":
                return (byte[]) list.get(0);
            case "audio/alac":
                return x(list);
            default:
                return null;
        }
    }

    private static byte[] C(List list) {
        byte[] bArr = (byte[]) list.get(0);
        byte[] bArr2 = (byte[]) list.get(1);
        byte[] bArr3 = new byte[bArr.length + bArr2.length + 6];
        bArr3[0] = (byte) (bArr.length >> 8);
        bArr3[1] = (byte) (bArr.length & 255);
        System.arraycopy(bArr, 0, bArr3, 2, bArr.length);
        bArr3[bArr.length + 2] = 0;
        bArr3[bArr.length + 3] = 0;
        bArr3[bArr.length + 4] = (byte) (bArr2.length >> 8);
        bArr3[bArr.length + 5] = (byte) (bArr2.length & 255);
        System.arraycopy(bArr2, 0, bArr3, bArr.length + 6, bArr2.length);
        return bArr3;
    }

    private native int ffmpegDecode(long j11, ByteBuffer byteBuffer, int i11, SimpleDecoderOutputBuffer simpleDecoderOutputBuffer, ByteBuffer byteBuffer2, int i12);

    private native int ffmpegGetChannelCount(long j11);

    private native int ffmpegGetSampleRate(long j11);

    private native long ffmpegInitialize(String str, @Nullable byte[] bArr, boolean z10, int i11, int i12);

    private native void ffmpegRelease(long j11);

    private native long ffmpegReset(long j11, @Nullable byte[] bArr);

    @Keep
    private ByteBuffer growOutputBuffer(SimpleDecoderOutputBuffer simpleDecoderOutputBuffer, int i11) {
        this.f65278r = i11;
        return simpleDecoderOutputBuffer.a(i11);
    }

    private static byte[] x(List list) {
        byte[] bArr = (byte[]) list.get(0);
        int length = bArr.length + 12;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
        byteBufferAllocate.putInt(length);
        byteBufferAllocate.putInt(1634492771);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.put(bArr, 0, bArr.length);
        return byteBufferAllocate.array();
    }

    public int B() {
        return this.f65282v;
    }

    @Override // androidx.media3.decoder.SimpleDecoder
    protected DecoderInputBuffer e() {
        return new DecoderInputBuffer(2, FfmpegLibrary.b());
    }

    @Override // androidx.media3.decoder.g
    public String getName() {
        return "ffmpeg" + FfmpegLibrary.c() + "-" + this.f65275o;
    }

    @Override // androidx.media3.decoder.SimpleDecoder, androidx.media3.decoder.g
    public void release() {
        super.release();
        ffmpegRelease(this.f65279s);
        this.f65279s = 0L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.decoder.SimpleDecoder
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public SimpleDecoderOutputBuffer f() {
        return new SimpleDecoderOutputBuffer(new h.a() { // from class: io.github.anilbeesetti.nextlib.media3ext.ffdecoder.a
            @Override // androidx.media3.decoder.h.a
            public final void a(h hVar) {
                this.f65291a.p((SimpleDecoderOutputBuffer) hVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.decoder.SimpleDecoder
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public FfmpegDecoderException g(Throwable th2) {
        return new FfmpegDecoderException("Unexpected decode error", th2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.decoder.SimpleDecoder
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public FfmpegDecoderException h(DecoderInputBuffer decoderInputBuffer, SimpleDecoderOutputBuffer simpleDecoderOutputBuffer, boolean z10) {
        if (z10) {
            long jFfmpegReset = ffmpegReset(this.f65279s, this.f65276p);
            this.f65279s = jFfmpegReset;
            if (jFfmpegReset == 0) {
                return new FfmpegDecoderException("Error resetting (see logcat).");
            }
        }
        ByteBuffer byteBuffer = (ByteBuffer) a1.i(decoderInputBuffer.f10918c);
        int iFfmpegDecode = ffmpegDecode(this.f65279s, byteBuffer, byteBuffer.limit(), simpleDecoderOutputBuffer, simpleDecoderOutputBuffer.b(decoderInputBuffer.f10920e, this.f65278r), this.f65278r);
        if (iFfmpegDecode == -2) {
            return new FfmpegDecoderException("Error decoding (see logcat).");
        }
        if (iFfmpegDecode == -1) {
            simpleDecoderOutputBuffer.shouldBeSkipped = true;
            return null;
        }
        if (iFfmpegDecode == 0) {
            simpleDecoderOutputBuffer.shouldBeSkipped = true;
            return null;
        }
        if (!this.f65280t) {
            this.f65281u = ffmpegGetChannelCount(this.f65279s);
            this.f65282v = ffmpegGetSampleRate(this.f65279s);
            if (this.f65282v == 0 && "alac".equals(this.f65275o)) {
                androidx.media3.common.util.a.e(this.f65276p);
                j0 j0Var = new j0(this.f65276p);
                j0Var.W(this.f65276p.length - 4);
                this.f65282v = j0Var.L();
            }
            this.f65280t = true;
        }
        ByteBuffer byteBuffer2 = (ByteBuffer) androidx.media3.common.util.a.e(simpleDecoderOutputBuffer.f10939b);
        byteBuffer2.position(0);
        byteBuffer2.limit(iFfmpegDecode);
        return null;
    }

    public int y() {
        return this.f65281u;
    }

    public int z() {
        return this.f65277q;
    }
}
