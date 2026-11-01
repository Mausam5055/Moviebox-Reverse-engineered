package com.google.common.primitives;

import com.google.common.base.m;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Longs {

    private enum LexicographicalComparator implements Comparator<long[]> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(long[] jArr, long[] jArr2) {
            int iMin = Math.min(jArr.length, jArr2.length);
            for (int i11 = 0; i11 < iMin; i11++) {
                int iCompare = Long.compare(jArr[i11], jArr2[i11]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return jArr.length - jArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Longs.lexicographicalComparator()";
        }
    }

    private static class LongArrayAsList extends AbstractList<Long> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        final long[] array;
        final int end;
        final int start;

        LongArrayAsList(long[] jArr) {
            this(jArr, 0, jArr.length);
        }

        LongArrayAsList(long[] jArr, int i11, int i12) {
            this.array = jArr;
            this.start = i11;
            this.end = i12;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Long) && Longs.f(this.array, ((Long) obj).longValue(), this.start, this.end) != -1;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof LongArrayAsList)) {
                return super.equals(obj);
            }
            LongArrayAsList longArrayAsList = (LongArrayAsList) obj;
            int size = size();
            if (longArrayAsList.size() != size) {
                return false;
            }
            for (int i11 = 0; i11 < size; i11++) {
                if (this.array[this.start + i11] != longArrayAsList.array[longArrayAsList.start + i11]) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.List
        public Long get(int i11) {
            m.m(i11, size());
            return Long.valueOf(this.array[this.start + i11]);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int iE = 1;
            for (int i11 = this.start; i11 < this.end; i11++) {
                iE = (iE * 31) + Longs.e(this.array[i11]);
            }
            return iE;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int iF;
            if (!(obj instanceof Long) || (iF = Longs.f(this.array, ((Long) obj).longValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iF - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int iG;
            if (!(obj instanceof Long) || (iG = Longs.g(this.array, ((Long) obj).longValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iG - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public Long set(int i11, Long l11) {
            m.m(i11, size());
            long[] jArr = this.array;
            int i12 = this.start;
            long j11 = jArr[i12 + i11];
            jArr[i12 + i11] = ((Long) m.o(l11)).longValue();
            return Long.valueOf(j11);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.end - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Long> subList(int i11, int i12) {
            m.t(i11, i12, size());
            if (i11 == i12) {
                return Collections.emptyList();
            }
            long[] jArr = this.array;
            int i13 = this.start;
            return new LongArrayAsList(jArr, i11 + i13, i13 + i12);
        }

        long[] toLongArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb2 = new StringBuilder(size() * 10);
            sb2.append('[');
            sb2.append(this.array[this.start]);
            int i11 = this.start;
            while (true) {
                i11++;
                if (i11 >= this.end) {
                    sb2.append(']');
                    return sb2.toString();
                }
                sb2.append(", ");
                sb2.append(this.array[i11]);
            }
        }
    }

    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final byte[] f30922a;

        static {
            byte[] bArr = new byte[128];
            Arrays.fill(bArr, (byte) -1);
            for (int i11 = 0; i11 < 10; i11++) {
                bArr[i11 + 48] = (byte) i11;
            }
            for (int i12 = 0; i12 < 26; i12++) {
                byte b11 = (byte) (i12 + 10);
                bArr[i12 + 65] = b11;
                bArr[i12 + 97] = b11;
            }
            f30922a = bArr;
        }

        static int a(char c11) {
            if (c11 < 128) {
                return f30922a[c11];
            }
            return -1;
        }
    }

    public static int c(long j11, long j12) {
        return Long.compare(j11, j12);
    }

    public static long d(byte b11, byte b12, byte b13, byte b14, byte b15, byte b16, byte b17, byte b18) {
        return ((((long) b12) & 255) << 48) | ((((long) b11) & 255) << 56) | ((((long) b13) & 255) << 40) | ((((long) b14) & 255) << 32) | ((((long) b15) & 255) << 24) | ((((long) b16) & 255) << 16) | ((((long) b17) & 255) << 8) | (((long) b18) & 255);
    }

    public static int e(long j11) {
        return (int) (j11 ^ (j11 >>> 32));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int f(long[] jArr, long j11, int i11, int i12) {
        while (i11 < i12) {
            if (jArr[i11] == j11) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g(long[] jArr, long j11, int i11, int i12) {
        for (int i13 = i12 - 1; i13 >= i11; i13--) {
            if (jArr[i13] == j11) {
                return i13;
            }
        }
        return -1;
    }

    public static long h(long... jArr) {
        m.d(jArr.length > 0);
        long j11 = jArr[0];
        for (int i11 = 1; i11 < jArr.length; i11++) {
            long j12 = jArr[i11];
            if (j12 > j11) {
                j11 = j12;
            }
        }
        return j11;
    }

    public static long i(long... jArr) {
        m.d(jArr.length > 0);
        long j11 = jArr[0];
        for (int i11 = 1; i11 < jArr.length; i11++) {
            long j12 = jArr[i11];
            if (j12 < j11) {
                j11 = j12;
            }
        }
        return j11;
    }

    public static long[] j(Collection collection) {
        if (collection instanceof LongArrayAsList) {
            return ((LongArrayAsList) collection).toLongArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        long[] jArr = new long[length];
        for (int i11 = 0; i11 < length; i11++) {
            jArr[i11] = ((Number) m.o(array[i11])).longValue();
        }
        return jArr;
    }

    public static Long k(String str, int i11) {
        if (((String) m.o(str)).isEmpty()) {
            return null;
        }
        if (i11 < 2 || i11 > 36) {
            throw new IllegalArgumentException("radix must be between MIN_RADIX and MAX_RADIX but was " + i11);
        }
        int i12 = str.charAt(0) == '-' ? 1 : 0;
        if (i12 == str.length()) {
            return null;
        }
        int i13 = i12 + 1;
        int iA = a.a(str.charAt(i12));
        if (iA < 0 || iA >= i11) {
            return null;
        }
        long j11 = -iA;
        long j12 = i11;
        long j13 = Long.MIN_VALUE / j12;
        while (i13 < str.length()) {
            int i14 = i13 + 1;
            int iA2 = a.a(str.charAt(i13));
            if (iA2 < 0 || iA2 >= i11 || j11 < j13) {
                return null;
            }
            long j14 = j11 * j12;
            long j15 = iA2;
            if (j14 < j15 - Long.MIN_VALUE) {
                return null;
            }
            j11 = j14 - j15;
            i13 = i14;
        }
        if (i12 != 0) {
            return Long.valueOf(j11);
        }
        if (j11 == Long.MIN_VALUE) {
            return null;
        }
        return Long.valueOf(-j11);
    }
}
