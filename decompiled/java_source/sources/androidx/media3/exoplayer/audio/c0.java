package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class c0 extends androidx.media3.common.audio.b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int[] f11136i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int[] f11137j;

    c0() {
    }

    @Override // androidx.media3.common.audio.b
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int[] iArr = this.f11136i;
        if (iArr == null) {
            return AudioProcessor.a.f9816e;
        }
        int i11 = aVar.f9819c;
        if (i11 != 2 && i11 != 4) {
            throw new AudioProcessor.UnhandledAudioFormatException(aVar);
        }
        boolean z10 = aVar.f9818b != iArr.length;
        int i12 = 0;
        while (i12 < iArr.length) {
            int i13 = iArr[i12];
            if (i13 >= aVar.f9818b) {
                throw new AudioProcessor.UnhandledAudioFormatException("Channel map (" + Arrays.toString(iArr) + ") trying to access non-existent input channel.", aVar);
            }
            z10 |= i13 != i12;
            i12++;
        }
        return z10 ? new AudioProcessor.a(aVar.f9817a, iArr.length, aVar.f9819c) : AudioProcessor.a.f9816e;
    }

    @Override // androidx.media3.common.audio.b
    protected void d() {
        this.f11137j = this.f11136i;
    }

    @Override // androidx.media3.common.audio.b
    protected void f() {
        this.f11137j = null;
        this.f11136i = null;
    }

    public void h(int[] iArr) {
        this.f11136i = iArr;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) androidx.media3.common.util.a.e(this.f11137j);
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBufferG = g(((iLimit - iPosition) / this.f9827b.f9820d) * this.f9828c.f9820d);
        while (iPosition < iLimit) {
            for (int i11 : iArr) {
                int iQ = (androidx.media3.common.util.a1.Q(this.f9827b.f9819c) * i11) + iPosition;
                int i12 = this.f9827b.f9819c;
                if (i12 == 2) {
                    byteBufferG.putShort(byteBuffer.getShort(iQ));
                } else {
                    if (i12 != 4) {
                        throw new IllegalStateException("Unexpected encoding: " + this.f9827b.f9819c);
                    }
                    byteBufferG.putFloat(byteBuffer.getFloat(iQ));
                }
            }
            iPosition += this.f9827b.f9820d;
        }
        byteBuffer.position(iLimit);
        byteBufferG.flip();
    }
}
