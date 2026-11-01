package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.p0;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
final class z extends v {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f24800i = Float.floatToIntBits(Float.NaN);

    z() {
    }

    private static void h(int i11, ByteBuffer byteBuffer) {
        int iFloatToIntBits = Float.floatToIntBits((float) (((double) i11) * 4.656612875245797E-10d));
        if (iFloatToIntBits == f24800i) {
            iFloatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(iFloatToIntBits);
    }

    @Override // com.google.android.exoplayer2.audio.v
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int i11 = aVar.f24533c;
        if (p0.t0(i11)) {
            return i11 != 4 ? new AudioProcessor.a(aVar.f24531a, aVar.f24532b, 4) : AudioProcessor.a.f24530e;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferG;
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i11 = iLimit - iPosition;
        int i12 = this.f24776b.f24533c;
        if (i12 == 536870912) {
            byteBufferG = g((i11 / 3) * 4);
            while (iPosition < iLimit) {
                h(((byteBuffer.get(iPosition) & 255) << 8) | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition + 2) & 255) << 24), byteBufferG);
                iPosition += 3;
            }
        } else {
            if (i12 != 805306368) {
                throw new IllegalStateException();
            }
            byteBufferG = g(i11);
            while (iPosition < iLimit) {
                h((byteBuffer.get(iPosition) & 255) | ((byteBuffer.get(iPosition + 1) & 255) << 8) | ((byteBuffer.get(iPosition + 2) & 255) << 16) | ((byteBuffer.get(iPosition + 3) & 255) << 24), byteBufferG);
                iPosition += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBufferG.flip();
    }
}
