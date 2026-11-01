package com.google.common.hash;

import com.google.common.base.m;
import com.google.common.primitives.Ints;
import com.google.common.primitives.Longs;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLongArray;

/* JADX INFO: loaded from: classes4.dex */
enum BloomFilterStrategies implements BloomFilter.Strategy {
    MURMUR128_MITZ_32 { // from class: com.google.common.hash.BloomFilterStrategies.1
        @Override // com.google.common.hash.BloomFilterStrategies, com.google.common.hash.BloomFilter.Strategy
        public <T> boolean mightContain(T t11, Funnel<? super T> funnel, int i11, a aVar) {
            long jB = aVar.b();
            long jAsLong = f.a().hashObject(t11, funnel).asLong();
            int i12 = (int) jAsLong;
            int i13 = (int) (jAsLong >>> 32);
            for (int i14 = 1; i14 <= i11; i14++) {
                int i15 = (i14 * i13) + i12;
                if (i15 < 0) {
                    i15 = ~i15;
                }
                if (!aVar.d(((long) i15) % jB)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.hash.BloomFilterStrategies, com.google.common.hash.BloomFilter.Strategy
        public <T> boolean put(T t11, Funnel<? super T> funnel, int i11, a aVar) {
            long jB = aVar.b();
            long jAsLong = f.a().hashObject(t11, funnel).asLong();
            int i12 = (int) jAsLong;
            int i13 = (int) (jAsLong >>> 32);
            boolean zG = false;
            for (int i14 = 1; i14 <= i11; i14++) {
                int i15 = (i14 * i13) + i12;
                if (i15 < 0) {
                    i15 = ~i15;
                }
                zG |= aVar.g(((long) i15) % jB);
            }
            return zG;
        }
    },
    MURMUR128_MITZ_64 { // from class: com.google.common.hash.BloomFilterStrategies.2
        private long lowerEight(byte[] bArr) {
            return Longs.d(bArr[7], bArr[6], bArr[5], bArr[4], bArr[3], bArr[2], bArr[1], bArr[0]);
        }

        private long upperEight(byte[] bArr) {
            return Longs.d(bArr[15], bArr[14], bArr[13], bArr[12], bArr[11], bArr[10], bArr[9], bArr[8]);
        }

        @Override // com.google.common.hash.BloomFilterStrategies, com.google.common.hash.BloomFilter.Strategy
        public <T> boolean mightContain(T t11, Funnel<? super T> funnel, int i11, a aVar) {
            long jB = aVar.b();
            byte[] bytesInternal = f.a().hashObject(t11, funnel).getBytesInternal();
            long jLowerEight = lowerEight(bytesInternal);
            long jUpperEight = upperEight(bytesInternal);
            for (int i12 = 0; i12 < i11; i12++) {
                if (!aVar.d((Long.MAX_VALUE & jLowerEight) % jB)) {
                    return false;
                }
                jLowerEight += jUpperEight;
            }
            return true;
        }

        @Override // com.google.common.hash.BloomFilterStrategies, com.google.common.hash.BloomFilter.Strategy
        public <T> boolean put(T t11, Funnel<? super T> funnel, int i11, a aVar) {
            long jB = aVar.b();
            byte[] bytesInternal = f.a().hashObject(t11, funnel).getBytesInternal();
            long jLowerEight = lowerEight(bytesInternal);
            long jUpperEight = upperEight(bytesInternal);
            boolean zG = false;
            for (int i12 = 0; i12 < i11; i12++) {
                zG |= aVar.g((Long.MAX_VALUE & jLowerEight) % jB);
                jLowerEight += jUpperEight;
            }
            return zG;
        }
    };

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final AtomicLongArray f30864a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final h f30865b;

        a(long j11) {
            m.e(j11 > 0, "data length is zero!");
            this.f30864a = new AtomicLongArray(Ints.d(com.google.common.math.f.c(j11, 64L, RoundingMode.CEILING)));
            this.f30865b = LongAddables.a();
        }

        a(long[] jArr) {
            m.e(jArr.length > 0, "data length is zero!");
            this.f30864a = new AtomicLongArray(jArr);
            this.f30865b = LongAddables.a();
            long jBitCount = 0;
            for (long j11 : jArr) {
                jBitCount += (long) Long.bitCount(j11);
            }
            this.f30865b.add(jBitCount);
        }

        public static long[] h(AtomicLongArray atomicLongArray) {
            int length = atomicLongArray.length();
            long[] jArr = new long[length];
            for (int i11 = 0; i11 < length; i11++) {
                jArr[i11] = atomicLongArray.get(i11);
            }
            return jArr;
        }

        long a() {
            return this.f30865b.sum();
        }

        long b() {
            return ((long) this.f30864a.length()) * 64;
        }

        a c() {
            return new a(h(this.f30864a));
        }

        boolean d(long j11) {
            return ((1 << ((int) j11)) & this.f30864a.get((int) (j11 >>> 6))) != 0;
        }

        void e(a aVar) {
            m.g(this.f30864a.length() == aVar.f30864a.length(), "BitArrays must be of equal length (%s != %s)", this.f30864a.length(), aVar.f30864a.length());
            for (int i11 = 0; i11 < this.f30864a.length(); i11++) {
                f(i11, aVar.f30864a.get(i11));
            }
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                return Arrays.equals(h(this.f30864a), h(((a) obj).f30864a));
            }
            return false;
        }

        void f(int i11, long j11) {
            long j12;
            long j13;
            do {
                j12 = this.f30864a.get(i11);
                j13 = j12 | j11;
                if (j12 == j13) {
                    return;
                }
            } while (!this.f30864a.compareAndSet(i11, j12, j13));
            this.f30865b.add(Long.bitCount(j13) - Long.bitCount(j12));
        }

        boolean g(long j11) {
            long j12;
            long j13;
            if (d(j11)) {
                return false;
            }
            int i11 = (int) (j11 >>> 6);
            long j14 = 1 << ((int) j11);
            do {
                j12 = this.f30864a.get(i11);
                j13 = j12 | j14;
                if (j12 == j13) {
                    return false;
                }
            } while (!this.f30864a.compareAndSet(i11, j12, j13));
            this.f30865b.increment();
            return true;
        }

        public int hashCode() {
            return Arrays.hashCode(h(this.f30864a));
        }
    }

    @Override // com.google.common.hash.BloomFilter.Strategy
    public abstract /* synthetic */ boolean mightContain(Object obj, Funnel funnel, int i11, a aVar);

    @Override // com.google.common.hash.BloomFilter.Strategy
    public abstract /* synthetic */ boolean put(Object obj, Funnel funnel, int i11, a aVar);
}
