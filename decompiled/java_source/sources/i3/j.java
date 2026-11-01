package i3;

import androidx.media3.decoder.SimpleDecoder;
import androidx.media3.extractor.text.SubtitleDecoderException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j extends SimpleDecoder implements l {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final String f64903o;

    class a extends p {
        a() {
        }

        @Override // androidx.media3.decoder.h
        public void release() {
            j.this.p(this);
        }
    }

    protected j(String str) {
        super(new o[2], new p[2]);
        this.f64903o = str;
        s(1024);
    }

    @Override // androidx.media3.decoder.g
    public final String getName() {
        return this.f64903o;
    }

    @Override // i3.l
    public void setPositionUs(long j11) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.decoder.SimpleDecoder
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public final o e() {
        return new o();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.decoder.SimpleDecoder
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public final p f() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.decoder.SimpleDecoder
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public final SubtitleDecoderException g(Throwable th2) {
        return new SubtitleDecoderException("Unexpected decode error", th2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.decoder.SimpleDecoder
    /* JADX INFO: renamed from: x, reason: merged with bridge method [inline-methods] */
    public final SubtitleDecoderException h(o oVar, p pVar, boolean z10) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) androidx.media3.common.util.a.e(oVar.f10918c);
            pVar.a(oVar.f10920e, y(byteBuffer.array(), byteBuffer.limit(), z10), oVar.f64919i);
            pVar.shouldBeSkipped = false;
            return null;
        } catch (SubtitleDecoderException e11) {
            return e11;
        }
    }

    protected abstract k y(byte[] bArr, int i11, boolean z10);
}
