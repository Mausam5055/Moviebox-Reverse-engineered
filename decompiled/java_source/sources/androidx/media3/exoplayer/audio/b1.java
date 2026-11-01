package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.decoder.DecoderInputBuffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class b1 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final byte[] f11131d = {79, 103, 103, 83, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, -43, -59, -9, 1, 19, 79, 112, 117, 115, 72, 101, 97, 100, 1, 2, 56, 1, -128, -69, 0, 0, 0, 0, 0};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final byte[] f11132e = {79, 103, 103, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 11, -103, 87, 83, 1, 16, 79, 112, 117, 115, 84, 97, 103, 115, 0, 0, 0, 0, 0, 0, 0, 0};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ByteBuffer f11133a = AudioProcessor.f9815a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f11135c = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f11134b = 2;

    private ByteBuffer b(ByteBuffer byteBuffer, byte[] bArr) {
        int i11;
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i12 = iLimit - iPosition;
        int i13 = (i12 + 255) / 255;
        int length = i13 + 27 + i12;
        if (this.f11134b == 2) {
            int length2 = bArr != null ? bArr.length + 28 : f11131d.length;
            length += f11132e.length + length2;
            i11 = length2;
        } else {
            i11 = 0;
        }
        ByteBuffer byteBufferC = c(length);
        if (this.f11134b == 2) {
            if (bArr != null) {
                e(byteBufferC, bArr);
            } else {
                byteBufferC.put(f11131d);
            }
            byteBufferC.put(f11132e);
        }
        int iJ = this.f11135c + l2.k0.j(byteBuffer);
        this.f11135c = iJ;
        f(byteBufferC, iJ, this.f11134b, i13, false);
        for (int i14 = 0; i14 < i13; i14++) {
            if (i12 >= 255) {
                byteBufferC.put((byte) -1);
                i12 -= 255;
            } else {
                byteBufferC.put((byte) i12);
                i12 = 0;
            }
        }
        while (iPosition < iLimit) {
            byteBufferC.put(byteBuffer.get(iPosition));
            iPosition++;
        }
        byteBuffer.position(byteBuffer.limit());
        byteBufferC.flip();
        if (this.f11134b == 2) {
            byte[] bArrArray = byteBufferC.array();
            int iArrayOffset = byteBufferC.arrayOffset() + i11;
            byte[] bArr2 = f11132e;
            byteBufferC.putInt(i11 + bArr2.length + 22, androidx.media3.common.util.a1.x(bArrArray, iArrayOffset + bArr2.length, byteBufferC.limit() - byteBufferC.position(), 0));
        } else {
            byteBufferC.putInt(22, androidx.media3.common.util.a1.x(byteBufferC.array(), byteBufferC.arrayOffset(), byteBufferC.limit() - byteBufferC.position(), 0));
        }
        this.f11134b++;
        return byteBufferC;
    }

    private ByteBuffer c(int i11) {
        if (this.f11133a.capacity() < i11) {
            this.f11133a = ByteBuffer.allocate(i11).order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.f11133a.clear();
        }
        return this.f11133a;
    }

    private void e(ByteBuffer byteBuffer, byte[] bArr) {
        f(byteBuffer, 0L, 0, 1, true);
        byteBuffer.put(com.google.common.primitives.e.a(bArr.length));
        byteBuffer.put(bArr);
        byteBuffer.putInt(22, androidx.media3.common.util.a1.x(byteBuffer.array(), byteBuffer.arrayOffset(), bArr.length + 28, 0));
        byteBuffer.position(bArr.length + 28);
    }

    private void f(ByteBuffer byteBuffer, long j11, int i11, int i12, boolean z10) {
        byteBuffer.put((byte) 79);
        byteBuffer.put((byte) 103);
        byteBuffer.put((byte) 103);
        byteBuffer.put((byte) 83);
        byteBuffer.put((byte) 0);
        byteBuffer.put(z10 ? (byte) 2 : (byte) 0);
        byteBuffer.putLong(j11);
        byteBuffer.putInt(0);
        byteBuffer.putInt(i11);
        byteBuffer.putInt(0);
        byteBuffer.put(com.google.common.primitives.e.a(i12));
    }

    public void a(DecoderInputBuffer decoderInputBuffer, List list) {
        androidx.media3.common.util.a.e(decoderInputBuffer.f10918c);
        if (decoderInputBuffer.f10918c.limit() - decoderInputBuffer.f10918c.position() == 0) {
            return;
        }
        this.f11133a = b(decoderInputBuffer.f10918c, (this.f11134b == 2 && (list.size() == 1 || list.size() == 3)) ? (byte[]) list.get(0) : null);
        decoderInputBuffer.clear();
        decoderInputBuffer.b(this.f11133a.remaining());
        decoderInputBuffer.f10918c.put(this.f11133a);
        decoderInputBuffer.d();
    }

    public void d() {
        this.f11133a = AudioProcessor.f9815a;
        this.f11135c = 0;
        this.f11134b = 2;
    }
}
