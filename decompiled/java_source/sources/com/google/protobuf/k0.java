package com.google.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
final class k0 extends c implements y.i, RandomAccess, c1 {
    private static final k0 EMPTY_LIST = new k0(new long[0], 0, false);
    private long[] array;
    private int size;

    k0() {
        this(new long[10], 0, true);
    }

    private k0(long[] jArr, int i11, boolean z10) {
        super(z10);
        this.array = jArr;
        this.size = i11;
    }

    private void addLong(int i11, long j11) {
        int i12;
        ensureIsMutable();
        if (i11 < 0 || i11 > (i12 = this.size)) {
            throw new IndexOutOfBoundsException(makeOutOfBoundsExceptionMessage(i11));
        }
        long[] jArr = this.array;
        if (i12 < jArr.length) {
            System.arraycopy(jArr, i11, jArr, i11 + 1, i12 - i11);
        } else {
            long[] jArr2 = new long[((i12 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i11);
            System.arraycopy(this.array, i11, jArr2, i11 + 1, this.size - i11);
            this.array = jArr2;
        }
        this.array[i11] = j11;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    public static k0 emptyList() {
        return EMPTY_LIST;
    }

    private void ensureIndexInRange(int i11) {
        if (i11 < 0 || i11 >= this.size) {
            throw new IndexOutOfBoundsException(makeOutOfBoundsExceptionMessage(i11));
        }
    }

    private String makeOutOfBoundsExceptionMessage(int i11) {
        return "Index:" + i11 + ", Size:" + this.size;
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.List
    public void add(int i11, Long l11) {
        addLong(i11, l11.longValue());
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Long l11) {
        addLong(l11.longValue());
        return true;
    }

    @Override // com.google.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Long> collection) {
        ensureIsMutable();
        y.checkNotNull(collection);
        if (!(collection instanceof k0)) {
            return super.addAll(collection);
        }
        k0 k0Var = (k0) collection;
        int i11 = k0Var.size;
        if (i11 == 0) {
            return false;
        }
        int i12 = this.size;
        if (Integer.MAX_VALUE - i12 < i11) {
            throw new OutOfMemoryError();
        }
        int i13 = i12 + i11;
        long[] jArr = this.array;
        if (i13 > jArr.length) {
            this.array = Arrays.copyOf(jArr, i13);
        }
        System.arraycopy(k0Var.array, 0, this.array, this.size, k0Var.size);
        this.size = i13;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.protobuf.y.i
    public void addLong(long j11) {
        ensureIsMutable();
        int i11 = this.size;
        long[] jArr = this.array;
        if (i11 == jArr.length) {
            long[] jArr2 = new long[((i11 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i11);
            this.array = jArr2;
        }
        long[] jArr3 = this.array;
        int i12 = this.size;
        this.size = i12 + 1;
        jArr3[i12] = j11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k0)) {
            return super.equals(obj);
        }
        k0 k0Var = (k0) obj;
        if (this.size != k0Var.size) {
            return false;
        }
        long[] jArr = k0Var.array;
        for (int i11 = 0; i11 < this.size; i11++) {
            if (this.array[i11] != jArr[i11]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public Long get(int i11) {
        return Long.valueOf(getLong(i11));
    }

    @Override // com.google.protobuf.y.i
    public long getLong(int i11) {
        ensureIndexInRange(i11);
        return this.array[i11];
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int iHashLong = 1;
        for (int i11 = 0; i11 < this.size; i11++) {
            iHashLong = (iHashLong * 31) + y.hashLong(this.array[i11]);
        }
        return iHashLong;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            if (this.array[i11] == jLongValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.protobuf.c, com.google.protobuf.y.j
    public y.i mutableCopyWithCapacity(int i11) {
        if (i11 >= this.size) {
            return new k0(Arrays.copyOf(this.array, i11), this.size, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.List
    public Long remove(int i11) {
        ensureIsMutable();
        ensureIndexInRange(i11);
        long[] jArr = this.array;
        long j11 = jArr[i11];
        int i12 = this.size;
        if (i11 < i12 - 1) {
            System.arraycopy(jArr, i11 + 1, jArr, i11, (i12 - i11) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j11);
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i11, int i12) {
        ensureIsMutable();
        if (i12 < i11) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.array;
        System.arraycopy(jArr, i12, jArr, i11, this.size - i12);
        this.size -= i12 - i11;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.List
    public Long set(int i11, Long l11) {
        return Long.valueOf(setLong(i11, l11.longValue()));
    }

    @Override // com.google.protobuf.y.i
    public long setLong(int i11, long j11) {
        ensureIsMutable();
        ensureIndexInRange(i11);
        long[] jArr = this.array;
        long j12 = jArr[i11];
        jArr[i11] = j11;
        return j12;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }
}
