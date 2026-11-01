package com.google.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
final class f extends c implements y.a, RandomAccess, c1 {
    private static final f EMPTY_LIST = new f(new boolean[0], 0, false);
    private boolean[] array;
    private int size;

    f() {
        this(new boolean[10], 0, true);
    }

    private f(boolean[] zArr, int i11, boolean z10) {
        super(z10);
        this.array = zArr;
        this.size = i11;
    }

    private void addBoolean(int i11, boolean z10) {
        int i12;
        ensureIsMutable();
        if (i11 < 0 || i11 > (i12 = this.size)) {
            throw new IndexOutOfBoundsException(makeOutOfBoundsExceptionMessage(i11));
        }
        boolean[] zArr = this.array;
        if (i12 < zArr.length) {
            System.arraycopy(zArr, i11, zArr, i11 + 1, i12 - i11);
        } else {
            boolean[] zArr2 = new boolean[((i12 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i11);
            System.arraycopy(this.array, i11, zArr2, i11 + 1, this.size - i11);
            this.array = zArr2;
        }
        this.array[i11] = z10;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    public static f emptyList() {
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
    public void add(int i11, Boolean bool) {
        addBoolean(i11, bool.booleanValue());
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Boolean bool) {
        addBoolean(bool.booleanValue());
        return true;
    }

    @Override // com.google.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Boolean> collection) {
        ensureIsMutable();
        y.checkNotNull(collection);
        if (!(collection instanceof f)) {
            return super.addAll(collection);
        }
        f fVar = (f) collection;
        int i11 = fVar.size;
        if (i11 == 0) {
            return false;
        }
        int i12 = this.size;
        if (Integer.MAX_VALUE - i12 < i11) {
            throw new OutOfMemoryError();
        }
        int i13 = i12 + i11;
        boolean[] zArr = this.array;
        if (i13 > zArr.length) {
            this.array = Arrays.copyOf(zArr, i13);
        }
        System.arraycopy(fVar.array, 0, this.array, this.size, fVar.size);
        this.size = i13;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.protobuf.y.a
    public void addBoolean(boolean z10) {
        ensureIsMutable();
        int i11 = this.size;
        boolean[] zArr = this.array;
        if (i11 == zArr.length) {
            boolean[] zArr2 = new boolean[((i11 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i11);
            this.array = zArr2;
        }
        boolean[] zArr3 = this.array;
        int i12 = this.size;
        this.size = i12 + 1;
        zArr3[i12] = z10;
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
        if (!(obj instanceof f)) {
            return super.equals(obj);
        }
        f fVar = (f) obj;
        if (this.size != fVar.size) {
            return false;
        }
        boolean[] zArr = fVar.array;
        for (int i11 = 0; i11 < this.size; i11++) {
            if (this.array[i11] != zArr[i11]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public Boolean get(int i11) {
        return Boolean.valueOf(getBoolean(i11));
    }

    @Override // com.google.protobuf.y.a
    public boolean getBoolean(int i11) {
        ensureIndexInRange(i11);
        return this.array[i11];
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int iHashBoolean = 1;
        for (int i11 = 0; i11 < this.size; i11++) {
            iHashBoolean = (iHashBoolean * 31) + y.hashBoolean(this.array[i11]);
        }
        return iHashBoolean;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            if (this.array[i11] == zBooleanValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.protobuf.c, com.google.protobuf.y.j
    public y.a mutableCopyWithCapacity(int i11) {
        if (i11 >= this.size) {
            return new f(Arrays.copyOf(this.array, i11), this.size, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.List
    public Boolean remove(int i11) {
        ensureIsMutable();
        ensureIndexInRange(i11);
        boolean[] zArr = this.array;
        boolean z10 = zArr[i11];
        int i12 = this.size;
        if (i11 < i12 - 1) {
            System.arraycopy(zArr, i11 + 1, zArr, i11, (i12 - i11) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i11, int i12) {
        ensureIsMutable();
        if (i12 < i11) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        boolean[] zArr = this.array;
        System.arraycopy(zArr, i12, zArr, i11, this.size - i12);
        this.size -= i12 - i11;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.List
    public Boolean set(int i11, Boolean bool) {
        return Boolean.valueOf(setBoolean(i11, bool.booleanValue()));
    }

    @Override // com.google.protobuf.y.a
    public boolean setBoolean(int i11, boolean z10) {
        ensureIsMutable();
        ensureIndexInRange(i11);
        boolean[] zArr = this.array;
        boolean z11 = zArr[i11];
        zArr[i11] = z10;
        return z11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }
}
