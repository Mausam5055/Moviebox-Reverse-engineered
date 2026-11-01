package androidx.media3.decoder;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes2.dex */
public class SimpleDecoderOutputBuffer extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h.a f10938a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ByteBuffer f10939b;

    public SimpleDecoderOutputBuffer(h.a aVar) {
        this.f10938a = aVar;
    }

    public ByteBuffer a(int i11) {
        ByteBuffer byteBuffer = (ByteBuffer) androidx.media3.common.util.a.e(this.f10939b);
        androidx.media3.common.util.a.a(i11 >= byteBuffer.limit());
        ByteBuffer byteBufferOrder = ByteBuffer.allocateDirect(i11).order(ByteOrder.nativeOrder());
        int iPosition = byteBuffer.position();
        byteBuffer.position(0);
        byteBufferOrder.put(byteBuffer);
        byteBufferOrder.position(iPosition);
        byteBufferOrder.limit(i11);
        this.f10939b = byteBufferOrder;
        return byteBufferOrder;
    }

    public ByteBuffer b(long j11, int i11) {
        this.timeUs = j11;
        ByteBuffer byteBuffer = this.f10939b;
        if (byteBuffer == null || byteBuffer.capacity() < i11) {
            this.f10939b = ByteBuffer.allocateDirect(i11).order(ByteOrder.nativeOrder());
        }
        this.f10939b.position(0);
        this.f10939b.limit(i11);
        return this.f10939b;
    }

    @Override // androidx.media3.decoder.h, androidx.media3.decoder.a
    public void clear() {
        super.clear();
        ByteBuffer byteBuffer = this.f10939b;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    @Override // androidx.media3.decoder.h
    public void release() {
        this.f10938a.a(this);
    }
}
