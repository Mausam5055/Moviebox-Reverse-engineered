package com.mbridge.msdk.playercommon.exoplayer2.audio;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes5.dex */
final class ResamplingAudioProcessor implements AudioProcessor {
    private ByteBuffer buffer;
    private boolean inputEnded;
    private ByteBuffer outputBuffer;
    private int sampleRateHz = -1;
    private int channelCount = -1;
    private int encoding = 0;

    public ResamplingAudioProcessor() {
        ByteBuffer byteBuffer = AudioProcessor.EMPTY_BUFFER;
        this.buffer = byteBuffer;
        this.outputBuffer = byteBuffer;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.audio.AudioProcessor
    public boolean configure(int i11, int i12, int i13) throws AudioProcessor.UnhandledFormatException {
        if (i13 != 3 && i13 != 2 && i13 != Integer.MIN_VALUE && i13 != 1073741824) {
            throw new AudioProcessor.UnhandledFormatException(i11, i12, i13);
        }
        if (this.sampleRateHz == i11 && this.channelCount == i12 && this.encoding == i13) {
            return false;
        }
        this.sampleRateHz = i11;
        this.channelCount = i12;
        this.encoding = i13;
        return true;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.audio.AudioProcessor
    public void flush() {
        this.outputBuffer = AudioProcessor.EMPTY_BUFFER;
        this.inputEnded = false;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.audio.AudioProcessor
    public ByteBuffer getOutput() {
        ByteBuffer byteBuffer = this.outputBuffer;
        this.outputBuffer = AudioProcessor.EMPTY_BUFFER;
        return byteBuffer;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.audio.AudioProcessor
    public int getOutputChannelCount() {
        return this.channelCount;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.audio.AudioProcessor
    public int getOutputEncoding() {
        return 2;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.audio.AudioProcessor
    public int getOutputSampleRateHz() {
        return this.sampleRateHz;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.audio.AudioProcessor
    public boolean isActive() {
        int i11 = this.encoding;
        return (i11 == 0 || i11 == 2) ? false : true;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.audio.AudioProcessor
    public boolean isEnded() {
        return this.inputEnded && this.outputBuffer == AudioProcessor.EMPTY_BUFFER;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.audio.AudioProcessor
    public void queueEndOfStream() {
        this.inputEnded = true;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002d  */
    /* JADX WARN: Code duplicated, block: B:14:0x003c  */
    /* JADX WARN: Code duplicated, block: B:17:0x0045 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:18:0x0047 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x0049 A[ADDED_TO_REGION, LOOP:0: B:19:0x0049->B:20:0x004b, LOOP_START, PHI: r0
  0x0049: PHI (r0v6 int) = (r0v0 int), (r0v7 int) binds: [B:18:0x0047, B:20:0x004b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:20:0x004b A[LOOP:0: B:19:0x0049->B:20:0x004b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:21:0x0064  */
    /* JADX WARN: Code duplicated, block: B:23:0x006a A[ADDED_TO_REGION, LOOP:1: B:23:0x006a->B:24:0x006c, LOOP_START, PHI: r0
  0x006a: PHI (r0v4 int) = (r0v0 int), (r0v5 int) binds: [B:17:0x0045, B:24:0x006c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:24:0x006c A[LOOP:1: B:23:0x006a->B:24:0x006c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:25:0x0083 A[ADDED_TO_REGION, LOOP:2: B:25:0x0083->B:26:0x0085, LOOP_START, PHI: r0
  0x0083: PHI (r0v1 int) = (r0v0 int), (r0v2 int) binds: [B:16:0x0043, B:26:0x0085] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:26:0x0085 A[LOOP:2: B:25:0x0083->B:26:0x0085, LOOP_END] */
    @Override // com.mbridge.msdk.playercommon.exoplayer2.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int i11;
        int i12;
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i13 = iLimit - iPosition;
        int i14 = this.encoding;
        if (i14 != Integer.MIN_VALUE) {
            if (i14 != 3) {
                if (i14 != 1073741824) {
                    throw new IllegalStateException();
                }
                i11 = i13 / 2;
            }
            if (this.buffer.capacity() < i11) {
                this.buffer = ByteBuffer.allocateDirect(i11).order(ByteOrder.nativeOrder());
            } else {
                this.buffer.clear();
            }
            i12 = this.encoding;
            if (i12 != Integer.MIN_VALUE) {
                while (iPosition < iLimit) {
                    this.buffer.put(byteBuffer.get(iPosition + 1));
                    this.buffer.put(byteBuffer.get(iPosition + 2));
                    iPosition += 3;
                }
            } else if (i12 != 3) {
                while (iPosition < iLimit) {
                    this.buffer.put((byte) 0);
                    this.buffer.put((byte) ((byteBuffer.get(iPosition) & 255) - 128));
                    iPosition++;
                }
            } else {
                if (i12 == 1073741824) {
                    throw new IllegalStateException();
                }
                while (iPosition < iLimit) {
                    this.buffer.put(byteBuffer.get(iPosition + 2));
                    this.buffer.put(byteBuffer.get(iPosition + 3));
                    iPosition += 4;
                }
            }
            byteBuffer.position(byteBuffer.limit());
            this.buffer.flip();
            this.outputBuffer = this.buffer;
        }
        i13 /= 3;
        i11 = i13 * 2;
        if (this.buffer.capacity() < i11) {
            this.buffer = ByteBuffer.allocateDirect(i11).order(ByteOrder.nativeOrder());
        } else {
            this.buffer.clear();
        }
        i12 = this.encoding;
        if (i12 != Integer.MIN_VALUE) {
            while (iPosition < iLimit) {
                this.buffer.put(byteBuffer.get(iPosition + 1));
                this.buffer.put(byteBuffer.get(iPosition + 2));
                iPosition += 3;
            }
        } else if (i12 != 3) {
            while (iPosition < iLimit) {
                this.buffer.put((byte) 0);
                this.buffer.put((byte) ((byteBuffer.get(iPosition) & 255) - 128));
                iPosition++;
            }
        } else {
            if (i12 == 1073741824) {
                throw new IllegalStateException();
            }
            while (iPosition < iLimit) {
                this.buffer.put(byteBuffer.get(iPosition + 2));
                this.buffer.put(byteBuffer.get(iPosition + 3));
                iPosition += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        this.buffer.flip();
        this.outputBuffer = this.buffer;
    }

    @Override // com.mbridge.msdk.playercommon.exoplayer2.audio.AudioProcessor
    public void reset() {
        flush();
        this.sampleRateHz = -1;
        this.channelCount = -1;
        this.encoding = 0;
        this.buffer = AudioProcessor.EMPTY_BUFFER;
    }
}
