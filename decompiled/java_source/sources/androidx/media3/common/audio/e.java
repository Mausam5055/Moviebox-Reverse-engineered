package androidx.media3.common.audio;

import androidx.media3.common.util.a1;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public final class e extends b {
    @Override // androidx.media3.common.audio.b
    public AudioProcessor.a c(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int i11 = aVar.f9819c;
        if (i11 == 3 || i11 == 2 || i11 == 268435456 || i11 == 21 || i11 == 1342177280 || i11 == 22 || i11 == 1610612736 || i11 == 4) {
            return i11 != 2 ? new AudioProcessor.a(aVar.f9817a, aVar.f9818b, 2) : AudioProcessor.a.f9816e;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0034  */
    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i11 = iLimit - iPosition;
        int i12 = this.f9827b.f9819c;
        if (i12 == 3) {
            i11 *= 2;
        } else if (i12 == 4) {
            i11 /= 2;
        } else {
            if (i12 != 21) {
                if (i12 == 22) {
                    i11 /= 2;
                } else if (i12 != 268435456) {
                    if (i12 != 1342177280) {
                        if (i12 != 1610612736) {
                            throw new IllegalStateException();
                        }
                        i11 /= 2;
                    }
                }
            }
            i11 /= 3;
            i11 *= 2;
        }
        ByteBuffer byteBufferG = g(i11);
        int i13 = this.f9827b.f9819c;
        if (i13 == 3) {
            while (iPosition < iLimit) {
                byteBufferG.put((byte) 0);
                byteBufferG.put((byte) ((byteBuffer.get(iPosition) & 255) - 128));
                iPosition++;
            }
        } else if (i13 == 4) {
            while (iPosition < iLimit) {
                short sO = (short) (a1.o(byteBuffer.getFloat(iPosition), -1.0f, 1.0f) * 32767.0f);
                byteBufferG.put((byte) (sO & 255));
                byteBufferG.put((byte) ((sO >> 8) & 255));
                iPosition += 4;
            }
        } else if (i13 == 21) {
            while (iPosition < iLimit) {
                byteBufferG.put(byteBuffer.get(iPosition + 1));
                byteBufferG.put(byteBuffer.get(iPosition + 2));
                iPosition += 3;
            }
        } else if (i13 == 22) {
            while (iPosition < iLimit) {
                byteBufferG.put(byteBuffer.get(iPosition + 2));
                byteBufferG.put(byteBuffer.get(iPosition + 3));
                iPosition += 4;
            }
        } else if (i13 == 268435456) {
            while (iPosition < iLimit) {
                byteBufferG.put(byteBuffer.get(iPosition + 1));
                byteBufferG.put(byteBuffer.get(iPosition));
                iPosition += 2;
            }
        } else if (i13 == 1342177280) {
            while (iPosition < iLimit) {
                byteBufferG.put(byteBuffer.get(iPosition + 1));
                byteBufferG.put(byteBuffer.get(iPosition));
                iPosition += 3;
            }
        } else {
            if (i13 != 1610612736) {
                throw new IllegalStateException();
            }
            while (iPosition < iLimit) {
                byteBufferG.put(byteBuffer.get(iPosition + 1));
                byteBufferG.put(byteBuffer.get(iPosition));
                iPosition += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBufferG.flip();
    }
}
