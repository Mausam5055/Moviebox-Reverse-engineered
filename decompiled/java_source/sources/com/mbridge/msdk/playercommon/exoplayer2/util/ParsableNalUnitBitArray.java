package com.mbridge.msdk.playercommon.exoplayer2.util;

/* JADX INFO: loaded from: classes5.dex */
public final class ParsableNalUnitBitArray {
    private int bitOffset;
    private int byteLimit;
    private int byteOffset;
    private byte[] data;

    public ParsableNalUnitBitArray(byte[] bArr, int i11, int i12) {
        reset(bArr, i11, i12);
    }

    private void assertValidOffset() {
        int i11;
        int i12 = this.byteOffset;
        Assertions.checkState(i12 >= 0 && (i12 < (i11 = this.byteLimit) || (i12 == i11 && this.bitOffset == 0)));
    }

    private int readExpGolombCodeNum() {
        int i11 = 0;
        while (!readBit()) {
            i11++;
        }
        return ((1 << i11) - 1) + (i11 > 0 ? readBits(i11) : 0);
    }

    private boolean shouldSkipByte(int i11) {
        if (2 <= i11 && i11 < this.byteLimit) {
            byte[] bArr = this.data;
            if (bArr[i11] == 3 && bArr[i11 - 2] == 0 && bArr[i11 - 1] == 0) {
                return true;
            }
        }
        return false;
    }

    public boolean canReadBits(int i11) {
        int i12 = this.byteOffset;
        int i13 = i11 / 8;
        int i14 = i12 + i13;
        int i15 = (this.bitOffset + i11) - (i13 * 8);
        if (i15 > 7) {
            i14++;
            i15 -= 8;
        }
        while (true) {
            int i16 = i12 + 1;
            if (i16 > i14 || i14 >= this.byteLimit) {
                break;
            }
            if (shouldSkipByte(i16)) {
                i14++;
                i12 += 3;
            } else {
                i12 = i16;
            }
        }
        int i17 = this.byteLimit;
        return i14 < i17 || (i14 == i17 && i15 == 0);
    }

    public boolean canReadExpGolombCodedNum() {
        int i11 = this.byteOffset;
        int i12 = this.bitOffset;
        int i13 = 0;
        while (this.byteOffset < this.byteLimit && !readBit()) {
            i13++;
        }
        boolean z10 = this.byteOffset == this.byteLimit;
        this.byteOffset = i11;
        this.bitOffset = i12;
        return !z10 && canReadBits((i13 * 2) + 1);
    }

    public boolean readBit() {
        boolean z10 = (this.data[this.byteOffset] & (128 >> this.bitOffset)) != 0;
        skipBit();
        return z10;
    }

    public int readBits(int i11) {
        int i12;
        this.bitOffset += i11;
        int i13 = 0;
        while (true) {
            i12 = this.bitOffset;
            int i14 = 2;
            if (i12 <= 8) {
                break;
            }
            int i15 = i12 - 8;
            this.bitOffset = i15;
            byte[] bArr = this.data;
            int i16 = this.byteOffset;
            i13 |= (bArr[i16] & 255) << i15;
            if (!shouldSkipByte(i16 + 1)) {
                i14 = 1;
            }
            this.byteOffset = i16 + i14;
        }
        byte[] bArr2 = this.data;
        int i17 = this.byteOffset;
        int i18 = ((-1) >>> (32 - i11)) & (i13 | ((bArr2[i17] & 255) >> (8 - i12)));
        if (i12 == 8) {
            this.bitOffset = 0;
            this.byteOffset = i17 + (shouldSkipByte(i17 + 1) ? 2 : 1);
        }
        assertValidOffset();
        return i18;
    }

    public int readSignedExpGolombCodedInt() {
        int expGolombCodeNum = readExpGolombCodeNum();
        return (expGolombCodeNum % 2 == 0 ? -1 : 1) * ((expGolombCodeNum + 1) / 2);
    }

    public int readUnsignedExpGolombCodedInt() {
        return readExpGolombCodeNum();
    }

    public void reset(byte[] bArr, int i11, int i12) {
        this.data = bArr;
        this.byteOffset = i11;
        this.byteLimit = i12;
        this.bitOffset = 0;
        assertValidOffset();
    }

    public void skipBit() {
        int i11 = this.bitOffset + 1;
        this.bitOffset = i11;
        if (i11 == 8) {
            this.bitOffset = 0;
            int i12 = this.byteOffset;
            this.byteOffset = i12 + (shouldSkipByte(i12 + 1) ? 2 : 1);
        }
        assertValidOffset();
    }

    public void skipBits(int i11) {
        int i12 = this.byteOffset;
        int i13 = i11 / 8;
        int i14 = i12 + i13;
        this.byteOffset = i14;
        int i15 = this.bitOffset + (i11 - (i13 * 8));
        this.bitOffset = i15;
        if (i15 > 7) {
            this.byteOffset = i14 + 1;
            this.bitOffset = i15 - 8;
        }
        while (true) {
            i12++;
            if (i12 > this.byteOffset) {
                assertValidOffset();
                return;
            } else if (shouldSkipByte(i12)) {
                this.byteOffset++;
                i12 += 2;
            }
        }
    }
}
