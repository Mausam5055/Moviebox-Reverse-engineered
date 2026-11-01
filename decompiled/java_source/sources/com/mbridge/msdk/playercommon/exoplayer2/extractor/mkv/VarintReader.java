package com.mbridge.msdk.playercommon.exoplayer2.extractor.mkv;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ExtractorInput;
import java.io.IOException;

/* JADX INFO: loaded from: classes5.dex */
final class VarintReader {
    private static final int STATE_BEGIN_READING = 0;
    private static final int STATE_READ_CONTENTS = 1;
    private static final long[] VARINT_LENGTH_MASKS = {128, 64, 32, 16, 8, 4, 2, 1};
    private int length;
    private final byte[] scratch = new byte[8];
    private int state;

    public static long assembleVarint(byte[] bArr, int i11, boolean z10) {
        long j11 = ((long) bArr[0]) & 255;
        if (z10) {
            j11 &= ~VARINT_LENGTH_MASKS[i11 - 1];
        }
        for (int i12 = 1; i12 < i11; i12++) {
            j11 = (j11 << 8) | (((long) bArr[i12]) & 255);
        }
        return j11;
    }

    public static int parseUnsignedVarintLength(int i11) {
        long j11;
        int i12 = 0;
        do {
            long[] jArr = VARINT_LENGTH_MASKS;
            if (i12 >= jArr.length) {
                return -1;
            }
            j11 = jArr[i12] & ((long) i11);
            i12++;
        } while (j11 == 0);
        return i12;
    }

    public int getLastLength() {
        return this.length;
    }

    public long readUnsignedVarint(ExtractorInput extractorInput, boolean z10, boolean z11, int i11) throws InterruptedException, IOException {
        if (this.state == 0) {
            if (!extractorInput.readFully(this.scratch, 0, 1, z10)) {
                return -1L;
            }
            int unsignedVarintLength = parseUnsignedVarintLength(this.scratch[0] & 255);
            this.length = unsignedVarintLength;
            if (unsignedVarintLength == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.state = 1;
        }
        int i12 = this.length;
        if (i12 > i11) {
            this.state = 0;
            return -2L;
        }
        if (i12 != 1) {
            extractorInput.readFully(this.scratch, 1, i12 - 1);
        }
        this.state = 0;
        return assembleVarint(this.scratch, this.length, z11);
    }

    public void reset() {
        this.state = 0;
        this.length = 0;
    }
}
