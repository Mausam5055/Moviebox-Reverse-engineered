package com.google.common.primitives;

import com.google.common.base.m;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public final class ImmutableIntArray implements Serializable {
    private static final ImmutableIntArray EMPTY = new ImmutableIntArray(new int[0]);
    private final int[] array;
    private final int end;
    private final transient int start;

    static class AsList extends AbstractList<Integer> implements RandomAccess, Serializable {
        private final ImmutableIntArray parent;

        private AsList(ImmutableIntArray immutableIntArray) {
            this.parent = immutableIntArray;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return indexOf(obj) >= 0;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            if (obj instanceof AsList) {
                return this.parent.equals(((AsList) obj).parent);
            }
            if (!(obj instanceof List)) {
                return false;
            }
            List list = (List) obj;
            if (size() != list.size()) {
                return false;
            }
            int i11 = this.parent.start;
            for (Object obj2 : list) {
                if (obj2 instanceof Integer) {
                    int i12 = i11 + 1;
                    if (this.parent.array[i11] == ((Integer) obj2).intValue()) {
                        i11 = i12;
                    }
                }
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractList, java.util.List
        public Integer get(int i11) {
            return Integer.valueOf(this.parent.get(i11));
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            return this.parent.hashCode();
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            if (obj instanceof Integer) {
                return this.parent.indexOf(((Integer) obj).intValue());
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            if (obj instanceof Integer) {
                return this.parent.lastIndexOf(((Integer) obj).intValue());
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.parent.length();
        }

        @Override // java.util.AbstractList, java.util.List
        public List<Integer> subList(int i11, int i12) {
            return this.parent.subArray(i11, i12).asList();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return this.parent.toString();
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int[] f30918a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f30919b = 0;

        b(int i11) {
            this.f30918a = new int[i11];
        }

        private void e(int i11) {
            int i12 = this.f30919b + i11;
            int[] iArr = this.f30918a;
            if (i12 > iArr.length) {
                this.f30918a = Arrays.copyOf(iArr, f(iArr.length, i12));
            }
        }

        private static int f(int i11, int i12) {
            if (i12 < 0) {
                throw new AssertionError("cannot store more than MAX_VALUE elements");
            }
            int iHighestOneBit = i11 + (i11 >> 1) + 1;
            if (iHighestOneBit < i12) {
                iHighestOneBit = Integer.highestOneBit(i12 - 1) << 1;
            }
            if (iHighestOneBit < 0) {
                return Integer.MAX_VALUE;
            }
            return iHighestOneBit;
        }

        public b a(int i11) {
            e(1);
            int[] iArr = this.f30918a;
            int i12 = this.f30919b;
            iArr[i12] = i11;
            this.f30919b = i12 + 1;
            return this;
        }

        public b b(Iterable iterable) {
            if (iterable instanceof Collection) {
                return c((Collection) iterable);
            }
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                a(((Integer) it.next()).intValue());
            }
            return this;
        }

        public b c(Collection collection) {
            e(collection.size());
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                int[] iArr = this.f30918a;
                int i11 = this.f30919b;
                this.f30919b = i11 + 1;
                iArr[i11] = num.intValue();
            }
            return this;
        }

        public ImmutableIntArray d() {
            if (this.f30919b == 0) {
                return ImmutableIntArray.EMPTY;
            }
            return new ImmutableIntArray(this.f30918a, 0, this.f30919b);
        }
    }

    private ImmutableIntArray(int[] iArr) {
        this(iArr, 0, iArr.length);
    }

    private ImmutableIntArray(int[] iArr, int i11, int i12) {
        this.array = iArr;
        this.start = i11;
        this.end = i12;
    }

    public static b builder() {
        return new b(10);
    }

    public static b builder(int i11) {
        m.f(i11 >= 0, "Invalid initialCapacity: %s", i11);
        return new b(i11);
    }

    public static ImmutableIntArray copyOf(Iterable<Integer> iterable) {
        return iterable instanceof Collection ? copyOf((Collection<Integer>) iterable) : builder().b(iterable).d();
    }

    public static ImmutableIntArray copyOf(Collection<Integer> collection) {
        return collection.isEmpty() ? EMPTY : new ImmutableIntArray(Ints.o(collection));
    }

    public static ImmutableIntArray copyOf(int[] iArr) {
        return iArr.length == 0 ? EMPTY : new ImmutableIntArray(Arrays.copyOf(iArr, iArr.length));
    }

    private boolean isPartialView() {
        return this.start > 0 || this.end < this.array.length;
    }

    public static ImmutableIntArray of() {
        return EMPTY;
    }

    public static ImmutableIntArray of(int i11) {
        return new ImmutableIntArray(new int[]{i11});
    }

    public static ImmutableIntArray of(int i11, int i12) {
        return new ImmutableIntArray(new int[]{i11, i12});
    }

    public static ImmutableIntArray of(int i11, int i12, int i13) {
        return new ImmutableIntArray(new int[]{i11, i12, i13});
    }

    public static ImmutableIntArray of(int i11, int i12, int i13, int i14) {
        return new ImmutableIntArray(new int[]{i11, i12, i13, i14});
    }

    public static ImmutableIntArray of(int i11, int i12, int i13, int i14, int i15) {
        return new ImmutableIntArray(new int[]{i11, i12, i13, i14, i15});
    }

    public static ImmutableIntArray of(int i11, int i12, int i13, int i14, int i15, int i16) {
        return new ImmutableIntArray(new int[]{i11, i12, i13, i14, i15, i16});
    }

    public static ImmutableIntArray of(int i11, int... iArr) {
        m.e(iArr.length <= 2147483646, "the total number of elements must fit in an int");
        int[] iArr2 = new int[iArr.length + 1];
        iArr2[0] = i11;
        System.arraycopy(iArr, 0, iArr2, 1, iArr.length);
        return new ImmutableIntArray(iArr2);
    }

    public List<Integer> asList() {
        return new AsList();
    }

    public boolean contains(int i11) {
        return indexOf(i11) >= 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ImmutableIntArray)) {
            return false;
        }
        ImmutableIntArray immutableIntArray = (ImmutableIntArray) obj;
        if (length() != immutableIntArray.length()) {
            return false;
        }
        for (int i11 = 0; i11 < length(); i11++) {
            if (get(i11) != immutableIntArray.get(i11)) {
                return false;
            }
        }
        return true;
    }

    public int get(int i11) {
        m.m(i11, length());
        return this.array[this.start + i11];
    }

    public int hashCode() {
        int i11 = 1;
        for (int i12 = this.start; i12 < this.end; i12++) {
            i11 = (i11 * 31) + Ints.i(this.array[i12]);
        }
        return i11;
    }

    public int indexOf(int i11) {
        for (int i12 = this.start; i12 < this.end; i12++) {
            if (this.array[i12] == i11) {
                return i12 - this.start;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.end == this.start;
    }

    public int lastIndexOf(int i11) {
        int i12;
        int i13 = this.end;
        do {
            i13--;
            i12 = this.start;
            if (i13 < i12) {
                return -1;
            }
        } while (this.array[i13] != i11);
        return i13 - i12;
    }

    public int length() {
        return this.end - this.start;
    }

    Object readResolve() {
        return isEmpty() ? EMPTY : this;
    }

    public ImmutableIntArray subArray(int i11, int i12) {
        m.t(i11, i12, length());
        if (i11 == i12) {
            return EMPTY;
        }
        int[] iArr = this.array;
        int i13 = this.start;
        return new ImmutableIntArray(iArr, i11 + i13, i13 + i12);
    }

    public int[] toArray() {
        return Arrays.copyOfRange(this.array, this.start, this.end);
    }

    public String toString() {
        if (isEmpty()) {
            return "[]";
        }
        StringBuilder sb2 = new StringBuilder(length() * 5);
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

    public ImmutableIntArray trimmed() {
        return isPartialView() ? new ImmutableIntArray(toArray()) : this;
    }

    Object writeReplace() {
        return trimmed();
    }
}
