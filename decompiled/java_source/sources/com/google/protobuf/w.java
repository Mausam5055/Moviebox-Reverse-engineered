package com.google.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
final class w extends c implements y.g, RandomAccess, c1 {
    private static final w EMPTY_LIST = new w(new int[0], 0, false);
    private int[] array;
    private int size;

    w() {
        this(new int[10], 0, true);
    }

    private w(int[] iArr, int i11, boolean z10) {
        super(z10);
        this.array = iArr;
        this.size = i11;
    }

    private void addInt(int i11, int i12) {
        int i13;
        ensureIsMutable();
        if (i11 < 0 || i11 > (i13 = this.size)) {
            throw new IndexOutOfBoundsException(makeOutOfBoundsExceptionMessage(i11));
        }
        int[] iArr = this.array;
        if (i13 < iArr.length) {
            System.arraycopy(iArr, i11, iArr, i11 + 1, i13 - i11);
        } else {
            int[] iArr2 = new int[((i13 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i11);
            System.arraycopy(this.array, i11, iArr2, i11 + 1, this.size - i11);
            this.array = iArr2;
        }
        this.array[i11] = i12;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    public static w emptyList() {
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
    public void add(int i11, Integer num) {
        addInt(i11, num.intValue());
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Integer num) {
        addInt(num.intValue());
        return true;
    }

    @Override // com.google.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Integer> collection) {
        ensureIsMutable();
        y.checkNotNull(collection);
        if (!(collection instanceof w)) {
            return super.addAll(collection);
        }
        w wVar = (w) collection;
        int i11 = wVar.size;
        if (i11 == 0) {
            return false;
        }
        int i12 = this.size;
        if (Integer.MAX_VALUE - i12 < i11) {
            throw new OutOfMemoryError();
        }
        int i13 = i12 + i11;
        int[] iArr = this.array;
        if (i13 > iArr.length) {
            this.array = Arrays.copyOf(iArr, i13);
        }
        System.arraycopy(wVar.array, 0, this.array, this.size, wVar.size);
        this.size = i13;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.protobuf.y.g
    public void addInt(int i11) {
        ensureIsMutable();
        int i12 = this.size;
        int[] iArr = this.array;
        if (i12 == iArr.length) {
            int[] iArr2 = new int[((i12 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i12);
            this.array = iArr2;
        }
        int[] iArr3 = this.array;
        int i13 = this.size;
        this.size = i13 + 1;
        iArr3[i13] = i11;
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
        if (!(obj instanceof w)) {
            return super.equals(obj);
        }
        w wVar = (w) obj;
        if (this.size != wVar.size) {
            return false;
        }
        int[] iArr = wVar.array;
        for (int i11 = 0; i11 < this.size; i11++) {
            if (this.array[i11] != iArr[i11]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public Integer get(int i11) {
        return Integer.valueOf(getInt(i11));
    }

    @Override // com.google.protobuf.y.g
    public int getInt(int i11) {
        ensureIndexInRange(i11);
        return this.array[i11];
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i11 = 1;
        for (int i12 = 0; i12 < this.size; i12++) {
            i11 = (i11 * 31) + this.array[i12];
        }
        return i11;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            if (this.array[i11] == iIntValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.protobuf.c, com.google.protobuf.y.j
    public y.g mutableCopyWithCapacity(int i11) {
        if (i11 >= this.size) {
            return new w(Arrays.copyOf(this.array, i11), this.size, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.List
    public Integer remove(int i11) {
        ensureIsMutable();
        ensureIndexInRange(i11);
        int[] iArr = this.array;
        int i12 = iArr[i11];
        int i13 = this.size;
        if (i11 < i13 - 1) {
            System.arraycopy(iArr, i11 + 1, iArr, i11, (i13 - i11) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i12);
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i11, int i12) {
        ensureIsMutable();
        if (i12 < i11) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.array;
        System.arraycopy(iArr, i12, iArr, i11, this.size - i12);
        this.size -= i12 - i11;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.List
    public Integer set(int i11, Integer num) {
        return Integer.valueOf(setInt(i11, num.intValue()));
    }

    @Override // com.google.protobuf.y.g
    public int setInt(int i11, int i12) {
        ensureIsMutable();
        ensureIndexInRange(i11);
        int[] iArr = this.array;
        int i13 = iArr[i11];
        iArr[i11] = i12;
        return i13;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }
}
