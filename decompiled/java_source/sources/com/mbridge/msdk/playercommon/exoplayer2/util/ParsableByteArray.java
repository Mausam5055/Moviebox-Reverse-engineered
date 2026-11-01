package com.mbridge.msdk.playercommon.exoplayer2.util;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import okio.Utf8;

/* JADX INFO: loaded from: classes5.dex */
public final class ParsableByteArray {
    public byte[] data;
    private int limit;
    private int position;

    public ParsableByteArray() {
    }

    public ParsableByteArray(int i11) {
        this.data = new byte[i11];
        this.limit = i11;
    }

    public ParsableByteArray(byte[] bArr) {
        this.data = bArr;
        this.limit = bArr.length;
    }

    public ParsableByteArray(byte[] bArr, int i11) {
        this.data = bArr;
        this.limit = i11;
    }

    public int bytesLeft() {
        return this.limit - this.position;
    }

    public int capacity() {
        byte[] bArr = this.data;
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    public int getPosition() {
        return this.position;
    }

    public int limit() {
        return this.limit;
    }

    public char peekChar() {
        byte[] bArr = this.data;
        int i11 = this.position;
        return (char) ((bArr[i11 + 1] & 255) | ((bArr[i11] & 255) << 8));
    }

    public int peekUnsignedByte() {
        return this.data[this.position] & 255;
    }

    public void readBytes(ParsableBitArray parsableBitArray, int i11) {
        readBytes(parsableBitArray.data, 0, i11);
        parsableBitArray.setPosition(0);
    }

    public void readBytes(ByteBuffer byteBuffer, int i11) {
        byteBuffer.put(this.data, this.position, i11);
        this.position += i11;
    }

    public void readBytes(byte[] bArr, int i11, int i12) {
        System.arraycopy(this.data, this.position, bArr, i11, i12);
        this.position += i12;
    }

    public double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    public float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    public int readInt() {
        byte[] bArr = this.data;
        int i11 = this.position;
        int i12 = ((bArr[i11 + 1] & 255) << 16) | ((bArr[i11] & 255) << 24);
        int i13 = i11 + 3;
        int i14 = i12 | ((bArr[i11 + 2] & 255) << 8);
        this.position = i11 + 4;
        return (bArr[i13] & 255) | i14;
    }

    public int readInt24() {
        byte[] bArr = this.data;
        int i11 = this.position;
        int i12 = i11 + 2;
        int i13 = ((bArr[i11 + 1] & 255) << 8) | (((bArr[i11] & 255) << 24) >> 8);
        this.position = i11 + 3;
        return (bArr[i12] & 255) | i13;
    }

    public String readLine() {
        if (bytesLeft() == 0) {
            return null;
        }
        int i11 = this.position;
        while (i11 < this.limit && !Util.isLinebreak(this.data[i11])) {
            i11++;
        }
        int i12 = this.position;
        if (i11 - i12 >= 3) {
            byte[] bArr = this.data;
            if (bArr[i12] == -17 && bArr[i12 + 1] == -69 && bArr[i12 + 2] == -65) {
                this.position = i12 + 3;
            }
        }
        byte[] bArr2 = this.data;
        int i13 = this.position;
        String strFromUtf8Bytes = Util.fromUtf8Bytes(bArr2, i13, i11 - i13);
        this.position = i11;
        int i14 = this.limit;
        if (i11 == i14) {
            return strFromUtf8Bytes;
        }
        byte[] bArr3 = this.data;
        if (bArr3[i11] == 13) {
            int i15 = i11 + 1;
            this.position = i15;
            if (i15 == i14) {
                return strFromUtf8Bytes;
            }
        }
        int i16 = this.position;
        if (bArr3[i16] == 10) {
            this.position = i16 + 1;
        }
        return strFromUtf8Bytes;
    }

    public int readLittleEndianInt() {
        byte[] bArr = this.data;
        int i11 = this.position;
        int i12 = ((bArr[i11 + 1] & 255) << 8) | (bArr[i11] & 255);
        int i13 = i11 + 3;
        int i14 = i12 | ((bArr[i11 + 2] & 255) << 16);
        this.position = i11 + 4;
        return ((bArr[i13] & 255) << 24) | i14;
    }

    public int readLittleEndianInt24() {
        byte[] bArr = this.data;
        int i11 = this.position;
        int i12 = i11 + 2;
        int i13 = ((bArr[i11 + 1] & 255) << 8) | (bArr[i11] & 255);
        this.position = i11 + 3;
        return ((bArr[i12] & 255) << 16) | i13;
    }

    public long readLittleEndianLong() {
        byte[] bArr = this.data;
        int i11 = this.position;
        int i12 = i11 + 7;
        long j11 = (((long) bArr[i11]) & 255) | ((((long) bArr[i11 + 1]) & 255) << 8) | ((((long) bArr[i11 + 2]) & 255) << 16) | ((((long) bArr[i11 + 3]) & 255) << 24) | ((((long) bArr[i11 + 4]) & 255) << 32) | ((((long) bArr[i11 + 5]) & 255) << 40) | ((((long) bArr[i11 + 6]) & 255) << 48);
        this.position = i11 + 8;
        return ((((long) bArr[i12]) & 255) << 56) | j11;
    }

    public short readLittleEndianShort() {
        byte[] bArr = this.data;
        int i11 = this.position;
        int i12 = i11 + 1;
        int i13 = bArr[i11] & 255;
        this.position = i11 + 2;
        return (short) (((bArr[i12] & 255) << 8) | i13);
    }

    public long readLittleEndianUnsignedInt() {
        byte[] bArr = this.data;
        int i11 = this.position;
        int i12 = i11 + 3;
        long j11 = (((long) bArr[i11]) & 255) | ((((long) bArr[i11 + 1]) & 255) << 8) | ((((long) bArr[i11 + 2]) & 255) << 16);
        this.position = i11 + 4;
        return ((((long) bArr[i12]) & 255) << 24) | j11;
    }

    public int readLittleEndianUnsignedInt24() {
        byte[] bArr = this.data;
        int i11 = this.position;
        int i12 = i11 + 2;
        int i13 = ((bArr[i11 + 1] & 255) << 8) | (bArr[i11] & 255);
        this.position = i11 + 3;
        return ((bArr[i12] & 255) << 16) | i13;
    }

    public int readLittleEndianUnsignedIntToInt() {
        int littleEndianInt = readLittleEndianInt();
        if (littleEndianInt >= 0) {
            return littleEndianInt;
        }
        throw new IllegalStateException("Top bit not zero: " + littleEndianInt);
    }

    public int readLittleEndianUnsignedShort() {
        byte[] bArr = this.data;
        int i11 = this.position;
        int i12 = i11 + 1;
        int i13 = bArr[i11] & 255;
        this.position = i11 + 2;
        return ((bArr[i12] & 255) << 8) | i13;
    }

    public long readLong() {
        byte[] bArr = this.data;
        int i11 = this.position;
        int i12 = i11 + 7;
        long j11 = ((((long) bArr[i11]) & 255) << 56) | ((((long) bArr[i11 + 1]) & 255) << 48) | ((((long) bArr[i11 + 2]) & 255) << 40) | ((((long) bArr[i11 + 3]) & 255) << 32) | ((((long) bArr[i11 + 4]) & 255) << 24) | ((((long) bArr[i11 + 5]) & 255) << 16) | ((((long) bArr[i11 + 6]) & 255) << 8);
        this.position = i11 + 8;
        return (((long) bArr[i12]) & 255) | j11;
    }

    public String readNullTerminatedString() {
        if (bytesLeft() == 0) {
            return null;
        }
        int i11 = this.position;
        while (i11 < this.limit && this.data[i11] != 0) {
            i11++;
        }
        byte[] bArr = this.data;
        int i12 = this.position;
        String strFromUtf8Bytes = Util.fromUtf8Bytes(bArr, i12, i11 - i12);
        this.position = i11;
        if (i11 < this.limit) {
            this.position = i11 + 1;
        }
        return strFromUtf8Bytes;
    }

    public String readNullTerminatedString(int i11) {
        if (i11 == 0) {
            return "";
        }
        int i12 = this.position;
        int i13 = (i12 + i11) - 1;
        String strFromUtf8Bytes = Util.fromUtf8Bytes(this.data, i12, (i13 >= this.limit || this.data[i13] != 0) ? i11 : i11 - 1);
        this.position += i11;
        return strFromUtf8Bytes;
    }

    public short readShort() {
        byte[] bArr = this.data;
        int i11 = this.position;
        int i12 = i11 + 1;
        int i13 = (bArr[i11] & 255) << 8;
        this.position = i11 + 2;
        return (short) ((bArr[i12] & 255) | i13);
    }

    public String readString(int i11) {
        return readString(i11, Charset.forName("UTF-8"));
    }

    public String readString(int i11, Charset charset) {
        String str = new String(this.data, this.position, i11, charset);
        this.position += i11;
        return str;
    }

    public int readSynchSafeInt() {
        return (readUnsignedByte() << 21) | (readUnsignedByte() << 14) | (readUnsignedByte() << 7) | readUnsignedByte();
    }

    public int readUnsignedByte() {
        byte[] bArr = this.data;
        int i11 = this.position;
        this.position = i11 + 1;
        return bArr[i11] & 255;
    }

    public int readUnsignedFixedPoint1616() {
        byte[] bArr = this.data;
        int i11 = this.position;
        int i12 = (bArr[i11 + 1] & 255) | ((bArr[i11] & 255) << 8);
        this.position = i11 + 4;
        return i12;
    }

    public long readUnsignedInt() {
        byte[] bArr = this.data;
        int i11 = this.position;
        int i12 = i11 + 3;
        long j11 = ((((long) bArr[i11]) & 255) << 24) | ((((long) bArr[i11 + 1]) & 255) << 16) | ((((long) bArr[i11 + 2]) & 255) << 8);
        this.position = i11 + 4;
        return (((long) bArr[i12]) & 255) | j11;
    }

    public int readUnsignedInt24() {
        byte[] bArr = this.data;
        int i11 = this.position;
        int i12 = i11 + 2;
        int i13 = ((bArr[i11 + 1] & 255) << 8) | ((bArr[i11] & 255) << 16);
        this.position = i11 + 3;
        return (bArr[i12] & 255) | i13;
    }

    public int readUnsignedIntToInt() {
        int i11 = readInt();
        if (i11 >= 0) {
            return i11;
        }
        throw new IllegalStateException("Top bit not zero: " + i11);
    }

    public long readUnsignedLongToLong() {
        long j11 = readLong();
        if (j11 >= 0) {
            return j11;
        }
        throw new IllegalStateException("Top bit not zero: " + j11);
    }

    public int readUnsignedShort() {
        byte[] bArr = this.data;
        int i11 = this.position;
        int i12 = i11 + 1;
        int i13 = (bArr[i11] & 255) << 8;
        this.position = i11 + 2;
        return (bArr[i12] & 255) | i13;
    }

    public long readUtf8EncodedLong() {
        int i11;
        int i12;
        long j11 = this.data[this.position];
        int i13 = 7;
        while (true) {
            if (i13 >= 0) {
                int i14 = 1 << i13;
                if ((((long) i14) & j11) == 0) {
                    if (i13 < 6) {
                        j11 &= (long) (i14 - 1);
                        i12 = 7 - i13;
                        break;
                    }
                    if (i13 == 7) {
                        i12 = 1;
                        break;
                    }
                } else {
                    i13--;
                }
            }
            i12 = 0;
            break;
        }
        if (i12 == 0) {
            throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + j11);
        }
        for (i11 = 1; i11 < i12; i11++) {
            byte b11 = this.data[this.position + i11];
            if ((b11 & 192) != 128) {
                throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j11);
            }
            j11 = (j11 << 6) | ((long) (b11 & Utf8.REPLACEMENT_BYTE));
        }
        this.position += i12;
        return j11;
    }

    public void reset() {
        this.position = 0;
        this.limit = 0;
    }

    public void reset(int i11) {
        reset(capacity() < i11 ? new byte[i11] : this.data, i11);
    }

    public void reset(byte[] bArr, int i11) {
        this.data = bArr;
        this.limit = i11;
        this.position = 0;
    }

    public void setLimit(int i11) {
        Assertions.checkArgument(i11 >= 0 && i11 <= this.data.length);
        this.limit = i11;
    }

    public void setPosition(int i11) {
        Assertions.checkArgument(i11 >= 0 && i11 <= this.limit);
        this.position = i11;
    }

    public void skipBytes(int i11) {
        setPosition(this.position + i11);
    }
}
