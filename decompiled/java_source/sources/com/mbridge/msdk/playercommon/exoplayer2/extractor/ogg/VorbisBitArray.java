package com.mbridge.msdk.playercommon.exoplayer2.extractor.ogg;

import com.mbridge.msdk.playercommon.exoplayer2.util.Assertions;

/* JADX INFO: loaded from: classes5.dex */
final class VorbisBitArray {
    private int bitOffset;
    private final int byteLimit;
    private int byteOffset;
    private final byte[] data;

    public VorbisBitArray(byte[] bArr) {
        this.data = bArr;
        this.byteLimit = bArr.length;
    }

    private void assertValidOffset() {
        int i11;
        int i12 = this.byteOffset;
        Assertions.checkState(i12 >= 0 && (i12 < (i11 = this.byteLimit) || (i12 == i11 && this.bitOffset == 0)));
    }

    public int bitsLeft() {
        return ((this.byteLimit - this.byteOffset) * 8) - this.bitOffset;
    }

    public int getPosition() {
        return (this.byteOffset * 8) + this.bitOffset;
    }

    public boolean readBit() {
        boolean z10 = (((this.data[this.byteOffset] & 255) >> this.bitOffset) & 1) == 1;
        skipBits(1);
        return z10;
    }

    public int readBits(int i11) {
        int i12 = this.byteOffset;
        int iMin = Math.min(i11, 8 - this.bitOffset);
        int i13 = i12 + 1;
        int i14 = ((this.data[i12] & 255) >> this.bitOffset) & (255 >> (8 - iMin));
        while (iMin < i11) {
            i14 |= (this.data[i13] & 255) << iMin;
            iMin += 8;
            i13++;
        }
        int i15 = i14 & ((-1) >>> (32 - i11));
        skipBits(i11);
        return i15;
    }

    public void reset() {
        this.byteOffset = 0;
        this.bitOffset = 0;
    }

    public void setPosition(int i11) {
        int i12 = i11 / 8;
        this.byteOffset = i12;
        this.bitOffset = i11 - (i12 * 8);
        assertValidOffset();
    }

    public void skipBits(int i11) {
        int i12 = i11 / 8;
        int i13 = this.byteOffset + i12;
        this.byteOffset = i13;
        int i14 = this.bitOffset + (i11 - (i12 * 8));
        this.bitOffset = i14;
        if (i14 > 7) {
            this.byteOffset = i13 + 1;
            this.bitOffset = i14 - 8;
        }
        assertValidOffset();
    }
}
