package com.google.common.hash;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes4.dex */
final class Murmur3_128HashFunction extends com.google.common.hash.a implements Serializable {
    private static final long serialVersionUID = 0;
    private final int seed;
    static final d MURMUR3_128 = new Murmur3_128HashFunction(0);
    static final d GOOD_FAST_HASH_128 = new Murmur3_128HashFunction(f.f30880a);

    private static final class a extends c {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f30868d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f30869e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f30870f;

        a(int i11) {
            super(16);
            long j11 = i11;
            this.f30868d = j11;
            this.f30869e = j11;
            this.f30870f = 0;
        }

        private void q(long j11, long j12) {
            long jS = s(j11) ^ this.f30868d;
            this.f30868d = jS;
            long jRotateLeft = Long.rotateLeft(jS, 27);
            long j13 = this.f30869e;
            this.f30868d = ((jRotateLeft + j13) * 5) + 1390208809;
            long jT = t(j12) ^ j13;
            this.f30869e = jT;
            this.f30869e = ((Long.rotateLeft(jT, 31) + this.f30868d) * 5) + 944331445;
        }

        private static long r(long j11) {
            long j12 = (j11 ^ (j11 >>> 33)) * (-49064778989728563L);
            long j13 = (j12 ^ (j12 >>> 33)) * (-4265267296055464877L);
            return j13 ^ (j13 >>> 33);
        }

        private static long s(long j11) {
            return Long.rotateLeft(j11 * (-8663945395140668459L), 31) * 5545529020109919103L;
        }

        private static long t(long j11) {
            return Long.rotateLeft(j11 * 5545529020109919103L, 33) * (-8663945395140668459L);
        }

        @Override // com.google.common.hash.c
        protected HashCode k() {
            long j11 = this.f30868d;
            int i11 = this.f30870f;
            long j12 = j11 ^ ((long) i11);
            long j13 = this.f30869e ^ ((long) i11);
            long j14 = j12 + j13;
            this.f30868d = j14;
            this.f30869e = j13 + j14;
            this.f30868d = r(j14);
            long jR = r(this.f30869e);
            long j15 = this.f30868d + jR;
            this.f30868d = j15;
            this.f30869e = jR + j15;
            return HashCode.fromBytesNoCopy(ByteBuffer.wrap(new byte[16]).order(ByteOrder.LITTLE_ENDIAN).putLong(this.f30868d).putLong(this.f30869e).array());
        }

        @Override // com.google.common.hash.c
        protected void n(ByteBuffer byteBuffer) {
            q(byteBuffer.getLong(), byteBuffer.getLong());
            this.f30870f += 16;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.google.common.hash.c
        protected void o(ByteBuffer byteBuffer) {
            long jC;
            long jC2;
            long jC3;
            long jC4;
            long jC5;
            long jC6;
            long jC7;
            this.f30870f += byteBuffer.remaining();
            long jC8 = 0;
            switch (byteBuffer.remaining()) {
                case 1:
                    jC = 0;
                    jC7 = jC ^ ((long) com.google.common.primitives.e.c(byteBuffer.get(0)));
                    this.f30868d = s(jC7) ^ this.f30868d;
                    this.f30869e ^= t(jC8);
                    return;
                case 2:
                    jC2 = 0;
                    jC = jC2 ^ (((long) com.google.common.primitives.e.c(byteBuffer.get(1))) << 8);
                    jC7 = jC ^ ((long) com.google.common.primitives.e.c(byteBuffer.get(0)));
                    this.f30868d = s(jC7) ^ this.f30868d;
                    this.f30869e ^= t(jC8);
                    return;
                case 3:
                    jC3 = 0;
                    jC2 = (((long) com.google.common.primitives.e.c(byteBuffer.get(2))) << 16) ^ jC3;
                    jC = jC2 ^ (((long) com.google.common.primitives.e.c(byteBuffer.get(1))) << 8);
                    jC7 = jC ^ ((long) com.google.common.primitives.e.c(byteBuffer.get(0)));
                    this.f30868d = s(jC7) ^ this.f30868d;
                    this.f30869e ^= t(jC8);
                    return;
                case 4:
                    jC4 = 0;
                    jC3 = jC4 ^ (((long) com.google.common.primitives.e.c(byteBuffer.get(3))) << 24);
                    jC2 = (((long) com.google.common.primitives.e.c(byteBuffer.get(2))) << 16) ^ jC3;
                    jC = jC2 ^ (((long) com.google.common.primitives.e.c(byteBuffer.get(1))) << 8);
                    jC7 = jC ^ ((long) com.google.common.primitives.e.c(byteBuffer.get(0)));
                    this.f30868d = s(jC7) ^ this.f30868d;
                    this.f30869e ^= t(jC8);
                    return;
                case 5:
                    jC5 = 0;
                    jC4 = jC5 ^ (((long) com.google.common.primitives.e.c(byteBuffer.get(4))) << 32);
                    jC3 = jC4 ^ (((long) com.google.common.primitives.e.c(byteBuffer.get(3))) << 24);
                    jC2 = (((long) com.google.common.primitives.e.c(byteBuffer.get(2))) << 16) ^ jC3;
                    jC = jC2 ^ (((long) com.google.common.primitives.e.c(byteBuffer.get(1))) << 8);
                    jC7 = jC ^ ((long) com.google.common.primitives.e.c(byteBuffer.get(0)));
                    this.f30868d = s(jC7) ^ this.f30868d;
                    this.f30869e ^= t(jC8);
                    return;
                case 6:
                    jC6 = 0;
                    jC5 = (((long) com.google.common.primitives.e.c(byteBuffer.get(5))) << 40) ^ jC6;
                    jC4 = jC5 ^ (((long) com.google.common.primitives.e.c(byteBuffer.get(4))) << 32);
                    jC3 = jC4 ^ (((long) com.google.common.primitives.e.c(byteBuffer.get(3))) << 24);
                    jC2 = (((long) com.google.common.primitives.e.c(byteBuffer.get(2))) << 16) ^ jC3;
                    jC = jC2 ^ (((long) com.google.common.primitives.e.c(byteBuffer.get(1))) << 8);
                    jC7 = jC ^ ((long) com.google.common.primitives.e.c(byteBuffer.get(0)));
                    this.f30868d = s(jC7) ^ this.f30868d;
                    this.f30869e ^= t(jC8);
                    return;
                case 7:
                    jC6 = ((long) com.google.common.primitives.e.c(byteBuffer.get(6))) << 48;
                    jC5 = (((long) com.google.common.primitives.e.c(byteBuffer.get(5))) << 40) ^ jC6;
                    jC4 = jC5 ^ (((long) com.google.common.primitives.e.c(byteBuffer.get(4))) << 32);
                    jC3 = jC4 ^ (((long) com.google.common.primitives.e.c(byteBuffer.get(3))) << 24);
                    jC2 = (((long) com.google.common.primitives.e.c(byteBuffer.get(2))) << 16) ^ jC3;
                    jC = jC2 ^ (((long) com.google.common.primitives.e.c(byteBuffer.get(1))) << 8);
                    jC7 = jC ^ ((long) com.google.common.primitives.e.c(byteBuffer.get(0)));
                    this.f30868d = s(jC7) ^ this.f30868d;
                    this.f30869e ^= t(jC8);
                    return;
                case 8:
                    jC7 = byteBuffer.getLong();
                    this.f30868d = s(jC7) ^ this.f30868d;
                    this.f30869e ^= t(jC8);
                    return;
                case 9:
                    jC8 ^= (long) com.google.common.primitives.e.c(byteBuffer.get(8));
                    jC7 = byteBuffer.getLong();
                    this.f30868d = s(jC7) ^ this.f30868d;
                    this.f30869e ^= t(jC8);
                    return;
                case 10:
                    jC8 ^= ((long) com.google.common.primitives.e.c(byteBuffer.get(9))) << 8;
                    jC8 ^= (long) com.google.common.primitives.e.c(byteBuffer.get(8));
                    jC7 = byteBuffer.getLong();
                    this.f30868d = s(jC7) ^ this.f30868d;
                    this.f30869e ^= t(jC8);
                    return;
                case 11:
                    jC8 ^= ((long) com.google.common.primitives.e.c(byteBuffer.get(10))) << 16;
                    jC8 ^= ((long) com.google.common.primitives.e.c(byteBuffer.get(9))) << 8;
                    jC8 ^= (long) com.google.common.primitives.e.c(byteBuffer.get(8));
                    jC7 = byteBuffer.getLong();
                    this.f30868d = s(jC7) ^ this.f30868d;
                    this.f30869e ^= t(jC8);
                    return;
                case 12:
                    jC8 ^= ((long) com.google.common.primitives.e.c(byteBuffer.get(11))) << 24;
                    jC8 ^= ((long) com.google.common.primitives.e.c(byteBuffer.get(10))) << 16;
                    jC8 ^= ((long) com.google.common.primitives.e.c(byteBuffer.get(9))) << 8;
                    jC8 ^= (long) com.google.common.primitives.e.c(byteBuffer.get(8));
                    jC7 = byteBuffer.getLong();
                    this.f30868d = s(jC7) ^ this.f30868d;
                    this.f30869e ^= t(jC8);
                    return;
                case 13:
                    jC8 ^= ((long) com.google.common.primitives.e.c(byteBuffer.get(12))) << 32;
                    jC8 ^= ((long) com.google.common.primitives.e.c(byteBuffer.get(11))) << 24;
                    jC8 ^= ((long) com.google.common.primitives.e.c(byteBuffer.get(10))) << 16;
                    jC8 ^= ((long) com.google.common.primitives.e.c(byteBuffer.get(9))) << 8;
                    jC8 ^= (long) com.google.common.primitives.e.c(byteBuffer.get(8));
                    jC7 = byteBuffer.getLong();
                    this.f30868d = s(jC7) ^ this.f30868d;
                    this.f30869e ^= t(jC8);
                    return;
                case 14:
                    jC8 ^= ((long) com.google.common.primitives.e.c(byteBuffer.get(13))) << 40;
                    jC8 ^= ((long) com.google.common.primitives.e.c(byteBuffer.get(12))) << 32;
                    jC8 ^= ((long) com.google.common.primitives.e.c(byteBuffer.get(11))) << 24;
                    jC8 ^= ((long) com.google.common.primitives.e.c(byteBuffer.get(10))) << 16;
                    jC8 ^= ((long) com.google.common.primitives.e.c(byteBuffer.get(9))) << 8;
                    jC8 ^= (long) com.google.common.primitives.e.c(byteBuffer.get(8));
                    jC7 = byteBuffer.getLong();
                    this.f30868d = s(jC7) ^ this.f30868d;
                    this.f30869e ^= t(jC8);
                    return;
                case 15:
                    jC8 = ((long) com.google.common.primitives.e.c(byteBuffer.get(14))) << 48;
                    jC8 ^= ((long) com.google.common.primitives.e.c(byteBuffer.get(13))) << 40;
                    jC8 ^= ((long) com.google.common.primitives.e.c(byteBuffer.get(12))) << 32;
                    jC8 ^= ((long) com.google.common.primitives.e.c(byteBuffer.get(11))) << 24;
                    jC8 ^= ((long) com.google.common.primitives.e.c(byteBuffer.get(10))) << 16;
                    jC8 ^= ((long) com.google.common.primitives.e.c(byteBuffer.get(9))) << 8;
                    jC8 ^= (long) com.google.common.primitives.e.c(byteBuffer.get(8));
                    jC7 = byteBuffer.getLong();
                    this.f30868d = s(jC7) ^ this.f30868d;
                    this.f30869e ^= t(jC8);
                    return;
                default:
                    throw new AssertionError("Should never get here.");
            }
        }
    }

    Murmur3_128HashFunction(int i11) {
        this.seed = i11;
    }

    public int bits() {
        return 128;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Murmur3_128HashFunction) && this.seed == ((Murmur3_128HashFunction) obj).seed;
    }

    public int hashCode() {
        return Murmur3_128HashFunction.class.hashCode() ^ this.seed;
    }

    @Override // com.google.common.hash.d
    public e newHasher() {
        return new a(this.seed);
    }

    public String toString() {
        return "Hashing.murmur3_128(" + this.seed + ")";
    }
}
