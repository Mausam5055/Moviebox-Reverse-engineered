package androidx.media3.exoplayer.mediacodec;

import androidx.media3.decoder.DecoderInputBuffer;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
final class j extends DecoderInputBuffer {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f12228i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f12229j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f12230k;

    public j() {
        super(2);
        this.f12230k = 32;
    }

    private boolean i(DecoderInputBuffer decoderInputBuffer) {
        ByteBuffer byteBuffer;
        if (!m()) {
            return true;
        }
        if (this.f12229j >= this.f12230k) {
            return false;
        }
        ByteBuffer byteBuffer2 = decoderInputBuffer.f10918c;
        return byteBuffer2 == null || (byteBuffer = this.f10918c) == null || byteBuffer.position() + byteBuffer2.remaining() <= 3072000;
    }

    @Override // androidx.media3.decoder.DecoderInputBuffer, androidx.media3.decoder.a
    public void clear() {
        super.clear();
        this.f12229j = 0;
    }

    public boolean h(DecoderInputBuffer decoderInputBuffer) {
        androidx.media3.common.util.a.a(!decoderInputBuffer.e());
        androidx.media3.common.util.a.a(!decoderInputBuffer.hasSupplementalData());
        androidx.media3.common.util.a.a(!decoderInputBuffer.isEndOfStream());
        if (!i(decoderInputBuffer)) {
            return false;
        }
        int i11 = this.f12229j;
        this.f12229j = i11 + 1;
        if (i11 == 0) {
            this.f10920e = decoderInputBuffer.f10920e;
            if (decoderInputBuffer.isKeyFrame()) {
                setFlags(1);
            }
        }
        ByteBuffer byteBuffer = decoderInputBuffer.f10918c;
        if (byteBuffer != null) {
            b(byteBuffer.remaining());
            this.f10918c.put(byteBuffer);
        }
        this.f12228i = decoderInputBuffer.f10920e;
        return true;
    }

    public long j() {
        return this.f10920e;
    }

    public long k() {
        return this.f12228i;
    }

    public int l() {
        return this.f12229j;
    }

    public boolean m() {
        return this.f12229j > 0;
    }

    public void n(int i11) {
        androidx.media3.common.util.a.a(i11 > 0);
        this.f12230k = i11;
    }
}
