package com.google.common.hash;

import com.google.common.base.m;
import com.google.common.primitives.Ints;
import com.google.common.primitives.UnsignedInts;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class HashCode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f30866a = "0123456789abcdef".toCharArray();

    private static final class BytesHashCode extends HashCode implements Serializable {
        private static final long serialVersionUID = 0;
        final byte[] bytes;

        BytesHashCode(byte[] bArr) {
            this.bytes = (byte[]) m.o(bArr);
        }

        @Override // com.google.common.hash.HashCode
        public byte[] asBytes() {
            return (byte[]) this.bytes.clone();
        }

        @Override // com.google.common.hash.HashCode
        public int asInt() {
            byte[] bArr = this.bytes;
            m.w(bArr.length >= 4, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", bArr.length);
            byte[] bArr2 = this.bytes;
            return ((bArr2[3] & 255) << 24) | (bArr2[0] & 255) | ((bArr2[1] & 255) << 8) | ((bArr2[2] & 255) << 16);
        }

        @Override // com.google.common.hash.HashCode
        public long asLong() {
            byte[] bArr = this.bytes;
            m.w(bArr.length >= 8, "HashCode#asLong() requires >= 8 bytes (it only has %s bytes).", bArr.length);
            return padToLong();
        }

        @Override // com.google.common.hash.HashCode
        public int bits() {
            return this.bytes.length * 8;
        }

        @Override // com.google.common.hash.HashCode
        boolean equalsSameBits(HashCode hashCode) {
            if (this.bytes.length != hashCode.getBytesInternal().length) {
                return false;
            }
            boolean z10 = true;
            int i11 = 0;
            while (true) {
                byte[] bArr = this.bytes;
                if (i11 >= bArr.length) {
                    return z10;
                }
                z10 &= bArr[i11] == hashCode.getBytesInternal()[i11];
                i11++;
            }
        }

        @Override // com.google.common.hash.HashCode
        byte[] getBytesInternal() {
            return this.bytes;
        }

        public long padToLong() {
            long j11 = this.bytes[0] & 255;
            for (int i11 = 1; i11 < Math.min(this.bytes.length, 8); i11++) {
                j11 |= (((long) this.bytes[i11]) & 255) << (i11 * 8);
            }
            return j11;
        }

        @Override // com.google.common.hash.HashCode
        void writeBytesToImpl(byte[] bArr, int i11, int i12) {
            System.arraycopy(this.bytes, 0, bArr, i11, i12);
        }
    }

    private static final class IntHashCode extends HashCode implements Serializable {
        private static final long serialVersionUID = 0;
        final int hash;

        IntHashCode(int i11) {
            this.hash = i11;
        }

        @Override // com.google.common.hash.HashCode
        public byte[] asBytes() {
            int i11 = this.hash;
            return new byte[]{(byte) i11, (byte) (i11 >> 8), (byte) (i11 >> 16), (byte) (i11 >> 24)};
        }

        @Override // com.google.common.hash.HashCode
        public int asInt() {
            return this.hash;
        }

        @Override // com.google.common.hash.HashCode
        public long asLong() {
            throw new IllegalStateException("this HashCode only has 32 bits; cannot create a long");
        }

        @Override // com.google.common.hash.HashCode
        public int bits() {
            return 32;
        }

        @Override // com.google.common.hash.HashCode
        boolean equalsSameBits(HashCode hashCode) {
            return this.hash == hashCode.asInt();
        }

        public long padToLong() {
            return UnsignedInts.f(this.hash);
        }

        @Override // com.google.common.hash.HashCode
        void writeBytesToImpl(byte[] bArr, int i11, int i12) {
            for (int i13 = 0; i13 < i12; i13++) {
                bArr[i11 + i13] = (byte) (this.hash >> (i13 * 8));
            }
        }
    }

    private static final class LongHashCode extends HashCode implements Serializable {
        private static final long serialVersionUID = 0;
        final long hash;

        LongHashCode(long j11) {
            this.hash = j11;
        }

        @Override // com.google.common.hash.HashCode
        public byte[] asBytes() {
            long j11 = this.hash;
            return new byte[]{(byte) j11, (byte) (j11 >> 8), (byte) (j11 >> 16), (byte) (j11 >> 24), (byte) (j11 >> 32), (byte) (j11 >> 40), (byte) (j11 >> 48), (byte) (j11 >> 56)};
        }

        @Override // com.google.common.hash.HashCode
        public int asInt() {
            return (int) this.hash;
        }

        @Override // com.google.common.hash.HashCode
        public long asLong() {
            return this.hash;
        }

        @Override // com.google.common.hash.HashCode
        public int bits() {
            return 64;
        }

        @Override // com.google.common.hash.HashCode
        boolean equalsSameBits(HashCode hashCode) {
            return this.hash == hashCode.asLong();
        }

        public long padToLong() {
            return this.hash;
        }

        @Override // com.google.common.hash.HashCode
        void writeBytesToImpl(byte[] bArr, int i11, int i12) {
            for (int i13 = 0; i13 < i12; i13++) {
                bArr[i11 + i13] = (byte) (this.hash >> (i13 * 8));
            }
        }
    }

    HashCode() {
    }

    private static int a(char c11) {
        if (c11 >= '0' && c11 <= '9') {
            return c11 - '0';
        }
        if (c11 >= 'a' && c11 <= 'f') {
            return c11 - 'W';
        }
        throw new IllegalArgumentException("Illegal hexadecimal character: " + c11);
    }

    public static HashCode fromBytes(byte[] bArr) {
        m.e(bArr.length >= 1, "A HashCode must contain at least 1 byte.");
        return fromBytesNoCopy((byte[]) bArr.clone());
    }

    static HashCode fromBytesNoCopy(byte[] bArr) {
        return new BytesHashCode(bArr);
    }

    public static HashCode fromInt(int i11) {
        return new IntHashCode(i11);
    }

    public static HashCode fromLong(long j11) {
        return new LongHashCode(j11);
    }

    public static HashCode fromString(String str) {
        m.j(str.length() >= 2, "input string (%s) must have at least 2 characters", str);
        m.j(str.length() % 2 == 0, "input string (%s) must have an even number of characters", str);
        byte[] bArr = new byte[str.length() / 2];
        for (int i11 = 0; i11 < str.length(); i11 += 2) {
            bArr[i11 / 2] = (byte) ((a(str.charAt(i11)) << 4) + a(str.charAt(i11 + 1)));
        }
        return fromBytesNoCopy(bArr);
    }

    public abstract byte[] asBytes();

    public abstract int asInt();

    public abstract long asLong();

    public abstract int bits();

    public final boolean equals(Object obj) {
        if (!(obj instanceof HashCode)) {
            return false;
        }
        HashCode hashCode = (HashCode) obj;
        return bits() == hashCode.bits() && equalsSameBits(hashCode);
    }

    abstract boolean equalsSameBits(HashCode hashCode);

    byte[] getBytesInternal() {
        return asBytes();
    }

    public final int hashCode() {
        if (bits() >= 32) {
            return asInt();
        }
        byte[] bytesInternal = getBytesInternal();
        int i11 = bytesInternal[0] & 255;
        for (int i12 = 1; i12 < bytesInternal.length; i12++) {
            i11 |= (bytesInternal[i12] & 255) << (i12 * 8);
        }
        return i11;
    }

    public final String toString() {
        byte[] bytesInternal = getBytesInternal();
        StringBuilder sb2 = new StringBuilder(bytesInternal.length * 2);
        for (byte b11 : bytesInternal) {
            char[] cArr = f30866a;
            sb2.append(cArr[(b11 >> 4) & 15]);
            sb2.append(cArr[b11 & 15]);
        }
        return sb2.toString();
    }

    public int writeBytesTo(byte[] bArr, int i11, int i12) {
        int iM = Ints.m(i12, bits() / 8);
        m.t(i11, i11 + iM, bArr.length);
        writeBytesToImpl(bArr, i11, iM);
        return iM;
    }

    abstract void writeBytesToImpl(byte[] bArr, int i11, int i12);
}
