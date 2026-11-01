package ba;

import com.google.android.exoplayer2.decoder.SimpleDecoder;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public abstract class h extends SimpleDecoder implements j {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final String f16296n;

    class a extends n {
        a() {
        }

        @Override // com.google.android.exoplayer2.decoder.f
        public void l() {
            h.this.n(this);
        }
    }

    protected h(String str) {
        super(new m[2], new n[2]);
        this.f16296n = str;
        q(1024);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.decoder.SimpleDecoder
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final m c() {
        return new m();
    }

    @Override // ba.j
    public void setPositionUs(long j11) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.decoder.SimpleDecoder
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public final n d() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.decoder.SimpleDecoder
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public final SubtitleDecoderException e(Throwable th2) {
        return new SubtitleDecoderException("Unexpected decode error", th2);
    }

    protected abstract i v(byte[] bArr, int i11, boolean z10);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.decoder.SimpleDecoder
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public final SubtitleDecoderException f(m mVar, n nVar, boolean z10) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.e(mVar.f24843c);
            nVar.m(mVar.f24845e, v(byteBuffer.array(), byteBuffer.limit(), z10), mVar.f16310i);
            nVar.d(Integer.MIN_VALUE);
            return null;
        } catch (SubtitleDecoderException e11) {
            return e11;
        }
    }
}
