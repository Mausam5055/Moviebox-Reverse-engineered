package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.p0;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
final class d0 extends v {
    d0() {
    }

    @Override // com.google.android.exoplayer2.audio.v
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int i11 = aVar.f24533c;
        if (i11 == 3 || i11 == 2 || i11 == 268435456 || i11 == 536870912 || i11 == 805306368 || i11 == 4) {
            return i11 != 2 ? new AudioProcessor.a(aVar.f24531a, aVar.f24532b, 2) : AudioProcessor.a.f24530e;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i11 = iLimit - iPosition;
        int i12 = this.f24776b.f24533c;
        if (i12 == 3) {
            i11 *= 2;
        } else if (i12 == 4) {
            i11 /= 2;
        } else if (i12 != 268435456) {
            if (i12 != 536870912) {
                if (i12 != 805306368) {
                    throw new IllegalStateException();
                }
                i11 /= 2;
            } else {
                i11 /= 3;
                i11 *= 2;
            }
        }
        ByteBuffer byteBufferG = g(i11);
        int i13 = this.f24776b.f24533c;
        if (i13 == 3) {
            while (iPosition < iLimit) {
                byteBufferG.put((byte) 0);
                byteBufferG.put((byte) ((byteBuffer.get(iPosition) & 255) - 128));
                iPosition++;
            }
        } else if (i13 == 4) {
            while (iPosition < iLimit) {
                short sP = (short) (p0.p(byteBuffer.getFloat(iPosition), -1.0f, 1.0f) * 32767.0f);
                byteBufferG.put((byte) (sP & 255));
                byteBufferG.put((byte) ((sP >> 8) & 255));
                iPosition += 4;
            }
        } else if (i13 == 268435456) {
            while (iPosition < iLimit) {
                byteBufferG.put(byteBuffer.get(iPosition + 1));
                byteBufferG.put(byteBuffer.get(iPosition));
                iPosition += 2;
            }
        } else if (i13 == 536870912) {
            while (iPosition < iLimit) {
                byteBufferG.put(byteBuffer.get(iPosition + 1));
                byteBufferG.put(byteBuffer.get(iPosition + 2));
                iPosition += 3;
            }
        } else {
            if (i13 != 805306368) {
                throw new IllegalStateException();
            }
            while (iPosition < iLimit) {
                byteBufferG.put(byteBuffer.get(iPosition + 2));
                byteBufferG.put(byteBuffer.get(iPosition + 3));
                iPosition += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBufferG.flip();
    }
}
