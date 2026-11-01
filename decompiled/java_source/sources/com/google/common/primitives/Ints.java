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
public abstract class Ints extends c {

    private static class IntArrayAsList extends AbstractList<Integer> implements RandomAccess, Serializable {
        private static final long serialVersionUID = 0;
        final int[] array;
        final int end;
        final int start;

        IntArrayAsList(int[] iArr) {
            this(iArr, 0, iArr.length);
        }

        IntArrayAsList(int[] iArr, int i11, int i12) {
            this.array = iArr;
            this.start = i11;
            this.end = i12;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return (obj instanceof Integer) && Ints.k(this.array, ((Integer) obj).intValue(), this.start, this.end) != -1;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof IntArrayAsList)) {
                return super.equals(obj);
            }
            IntArrayAsList intArrayAsList = (IntArrayAsList) obj;
            int size = size();
            if (intArrayAsList.size() != size) {
                return false;
            }
            for (int i11 = 0; i11 < size; i11++) {
                if (this.array[this.start + i11] != intArrayAsList.array[intArrayAsList.start + i11]) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.List
        public Integer get(int i11) {
            m.m(i11, size());
            return Integer.valueOf(this.array[this.start + i11]);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int i11 = 1;
            for (int i12 = this.start; i12 < this.end; i12++) {
                i11 = (i11 * 31) + Ints.i(this.array[i12]);
            }
            return i11;
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int iK;
            if (!(obj instanceof Integer) || (iK = Ints.k(this.array, ((Integer) obj).intValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iK - this.start;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int iL;
            if (!(obj instanceof Integer) || (iL = Ints.l(this.array, ((Integer) obj).intValue(), this.start, this.end)) < 0) {
                return -1;
            }
            return iL - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public Integer set(int i11, Integer num) {
            m.m(i11, size());
            int[] iArr = this.array;
            int i12 = this.start;
            int i13 = iArr[i12 + i11];
            iArr[i12 + i11] = ((Integer) m.o(num)).intValue();
            return Integer.valueOf(i13);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.end - this.start;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Integer> subList(int i11, int i12) {
            m.t(i11, i12, size());
            if (i11 == i12) {
                return Collections.emptyList();
            }
            int[] iArr = this.array;
            int i13 = this.start;
            return new IntArrayAsList(iArr, i11 + i13, i13 + i12);
        }

        int[] toIntArray() {
            return Arrays.copyOfRange(this.array, this.start, this.end);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb2 = new StringBuilder(size() * 5);
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

    private enum LexicographicalComparator implements Comparator<int[]> {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(int[] iArr, int[] iArr2) {
            int iMin = Math.min(iArr.length, iArr2.length);
            for (int i11 = 0; i11 < iMin; i11++) {
                int iCompare = Integer.compare(iArr[i11], iArr2[i11]);
                if (iCompare != 0) {
                    return iCompare;
                }
            }
            return iArr.length - iArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Ints.lexicographicalComparator()";
        }
    }

    public static List c(int... iArr) {
        return iArr.length == 0 ? Collections.emptyList() : new IntArrayAsList(iArr);
    }

    public static int d(long j11) {
        int i11 = (int) j11;
        m.h(((long) i11) == j11, "Out of range: %s", j11);
        return i11;
    }

    public static int e(int i11, int i12) {
        return Integer.compare(i11, i12);
    }

    public static int f(int i11, int i12, int i13) {
        m.g(i12 <= i13, "min (%s) must be less than or equal to max (%s)", i12, i13);
        return Math.min(Math.max(i11, i12), i13);
    }

    public static int g(byte[] bArr) {
        m.g(bArr.length >= 4, "array too small: %s < %s", bArr.length, 4);
        return h(bArr[0], bArr[1], bArr[2], bArr[3]);
    }

    public static int h(byte b11, byte b12, byte b13, byte b14) {
        return (b11 << 24) | ((b12 & 255) << 16) | ((b13 & 255) << 8) | (b14 & 255);
    }

    public static int i(int i11) {
        return i11;
    }

    public static int j(int[] iArr, int i11) {
        return k(iArr, i11, 0, iArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int k(int[] iArr, int i11, int i12, int i13) {
        while (i12 < i13) {
            if (iArr[i12] == i11) {
                return i12;
            }
            i12++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int l(int[] iArr, int i11, int i12, int i13) {
        for (int i14 = i13 - 1; i14 >= i12; i14--) {
            if (iArr[i14] == i11) {
                return i14;
            }
        }
        return -1;
    }

    public static int m(int... iArr) {
        m.d(iArr.length > 0);
        int i11 = iArr[0];
        for (int i12 = 1; i12 < iArr.length; i12++) {
            int i13 = iArr[i12];
            if (i13 < i11) {
                i11 = i13;
            }
        }
        return i11;
    }

    public static int n(long j11) {
        if (j11 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j11 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j11;
    }

    public static int[] o(Collection collection) {
        if (collection instanceof IntArrayAsList) {
            return ((IntArrayAsList) collection).toIntArray();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i11 = 0; i11 < length; i11++) {
            iArr[i11] = ((Number) m.o(array[i11])).intValue();
        }
        return iArr;
    }

    public static Integer p(String str) {
        return q(str, 10);
    }

    public static Integer q(String str, int i11) {
        Long lK = Longs.k(str, i11);
        if (lK == null || lK.longValue() != lK.intValue()) {
            return null;
        }
        return Integer.valueOf(lK.intValue());
    }
}
