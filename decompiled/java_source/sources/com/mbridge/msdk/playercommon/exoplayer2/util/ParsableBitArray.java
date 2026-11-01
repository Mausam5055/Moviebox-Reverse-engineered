package com.mbridge.msdk.playercommon.exoplayer2.util;

import androidx.core.view.MotionEventCompat;

/* JADX INFO: loaded from: classes5.dex */
public final class ParsableBitArray {
    private int bitOffset;
    private int byteLimit;
    private int byteOffset;
    public byte[] data;

    public ParsableBitArray() {
    }

    public ParsableBitArray(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public ParsableBitArray(byte[] bArr, int i11) {
        this.data = bArr;
        this.byteLimit = i11;
    }

    private void assertValidOffset() {
        int i11;
        int i12 = this.byteOffset;
        Assertions.checkState(i12 >= 0 && (i12 < (i11 = this.byteLimit) || (i12 == i11 && this.bitOffset == 0)));
    }

    public int bitsLeft() {
        return ((this.byteLimit - this.byteOffset) * 8) - this.bitOffset;
    }

    public void byteAlign() {
        if (this.bitOffset == 0) {
            return;
        }
        this.bitOffset = 0;
        this.byteOffset++;
        assertValidOffset();
    }

    public int getBytePosition() {
        Assertions.checkState(this.bitOffset == 0);
        return this.byteOffset;
    }

    public int getPosition() {
        return (this.byteOffset * 8) + this.bitOffset;
    }

    public void putInt(int i11, int i12) {
        if (i12 < 32) {
            i11 &= (1 << i12) - 1;
        }
        int iMin = Math.min(8 - this.bitOffset, i12);
        int i13 = this.bitOffset;
        int i14 = (8 - i13) - iMin;
        int i15 = (MotionEventCompat.ACTION_POINTER_INDEX_MASK >> i13) | ((1 << i14) - 1);
        byte[] bArr = this.data;
        int i16 = this.byteOffset;
        byte b11 = (byte) (i15 & bArr[i16]);
        bArr[i16] = b11;
        int i17 = i12 - iMin;
        bArr[i16] = (byte) (b11 | ((i11 >>> i17) << i14));
        int i18 = i16 + 1;
        while (i17 > 8) {
            this.data[i18] = (byte) (i11 >>> (i17 - 8));
            i17 -= 8;
            i18++;
        }
        int i19 = 8 - i17;
        byte[] bArr2 = this.data;
        byte b12 = (byte) (bArr2[i18] & ((1 << i19) - 1));
        bArr2[i18] = b12;
        bArr2[i18] = (byte) (((i11 & ((1 << i17) - 1)) << i19) | b12);
        skipBits(i12);
        assertValidOffset();
    }

    public boolean readBit() {
        boolean z10 = (this.data[this.byteOffset] & (128 >> this.bitOffset)) != 0;
        skipBit();
        return z10;
    }

    public int readBits(int i11) {
        int i12;
        if (i11 == 0) {
            return 0;
        }
        this.bitOffset += i11;
        int i13 = 0;
        while (true) {
            i12 = this.bitOffset;
            if (i12 <= 8) {
                break;
            }
            int i14 = i12 - 8;
            this.bitOffset = i14;
            byte[] bArr = this.data;
            int i15 = this.byteOffset;
            this.byteOffset = i15 + 1;
            i13 |= (bArr[i15] & 255) << i14;
        }
        byte[] bArr2 = this.data;
        int i16 = this.byteOffset;
        int i17 = ((-1) >>> (32 - i11)) & (i13 | ((bArr2[i16] & 255) >> (8 - i12)));
        if (i12 == 8) {
            this.bitOffset = 0;
            this.byteOffset = i16 + 1;
        }
        assertValidOffset();
        return i17;
    }

    public void readBits(byte[] bArr, int i11, int i12) {
        int i13 = (i12 >> 3) + i11;
        while (i11 < i13) {
            byte[] bArr2 = this.data;
            int i14 = this.byteOffset;
            int i15 = i14 + 1;
            this.byteOffset = i15;
            byte b11 = bArr2[i14];
            int i16 = this.bitOffset;
            byte b12 = (byte) (b11 << i16);
            bArr[i11] = b12;
            bArr[i11] = (byte) (((255 & bArr2[i15]) >> (8 - i16)) | b12);
            i11++;
        }
        int i17 = i12 & 7;
        if (i17 == 0) {
            return;
        }
        byte b13 = (byte) (bArr[i13] & (255 >> i17));
        bArr[i13] = b13;
        int i18 = this.bitOffset;
        if (i18 + i17 > 8) {
            byte[] bArr3 = this.data;
            int i19 = this.byteOffset;
            this.byteOffset = i19 + 1;
            bArr[i13] = (byte) (b13 | ((bArr3[i19] & 255) << i18));
            this.bitOffset = i18 - 8;
        }
        int i20 = this.bitOffset + i17;
        this.bitOffset = i20;
        byte[] bArr4 = this.data;
        int i21 = this.byteOffset;
        bArr[i13] = (byte) (((byte) (((255 & bArr4[i21]) >> (8 - i20)) << (8 - i17))) | bArr[i13]);
        if (i20 == 8) {
            this.bitOffset = 0;
            this.byteOffset = i21 + 1;
        }
        assertValidOffset();
    }

    public void readBytes(byte[] bArr, int i11, int i12) {
        Assertions.checkState(this.bitOffset == 0);
        System.arraycopy(this.data, this.byteOffset, bArr, i11, i12);
        this.byteOffset += i12;
        assertValidOffset();
    }

    public void reset(ParsableByteArray parsableByteArray) {
        reset(parsableByteArray.data, parsableByteArray.limit());
        setPosition(parsableByteArray.getPosition() * 8);
    }

    public void reset(byte[] bArr) {
        reset(bArr, bArr.length);
    }

    public void reset(byte[] bArr, int i11) {
        this.data = bArr;
        this.byteOffset = 0;
        this.bitOffset = 0;
        this.byteLimit = i11;
    }

    public void setPosition(int i11) {
        int i12 = i11 / 8;
        this.byteOffset = i12;
        this.bitOffset = i11 - (i12 * 8);
        assertValidOffset();
    }

    public void skipBit() {
        int i11 = this.bitOffset + 1;
        this.bitOffset = i11;
        if (i11 == 8) {
            this.bitOffset = 0;
            this.byteOffset++;
        }
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

    public void skipBytes(int i11) {
        Assertions.checkState(this.bitOffset == 0);
        this.byteOffset += i11;
        assertValidOffset();
    }
}
