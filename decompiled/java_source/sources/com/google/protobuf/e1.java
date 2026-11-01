package com.google.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
final class e1 extends c implements RandomAccess {
    private static final e1 EMPTY_LIST = new e1(new Object[0], 0, false);
    private Object[] array;
    private int size;

    e1() {
        this(new Object[10], 0, true);
    }

    private e1(Object[] objArr, int i11, boolean z10) {
        super(z10);
        this.array = objArr;
        this.size = i11;
    }

    private static <E> E[] createArray(int i11) {
        return (E[]) new Object[i11];
    }

    public static <E> e1 emptyList() {
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
    public void add(int i11, Object obj) {
        int i12;
        ensureIsMutable();
        if (i11 < 0 || i11 > (i12 = this.size)) {
            throw new IndexOutOfBoundsException(makeOutOfBoundsExceptionMessage(i11));
        }
        Object[] objArr = this.array;
        if (i12 < objArr.length) {
            System.arraycopy(objArr, i11, objArr, i11 + 1, i12 - i11);
        } else {
            Object[] objArrCreateArray = createArray(((i12 * 3) / 2) + 1);
            System.arraycopy(this.array, 0, objArrCreateArray, 0, i11);
            System.arraycopy(this.array, i11, objArrCreateArray, i11 + 1, this.size - i11);
            this.array = objArrCreateArray;
        }
        this.array[i11] = obj;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        ensureIsMutable();
        int i11 = this.size;
        Object[] objArr = this.array;
        if (i11 == objArr.length) {
            this.array = Arrays.copyOf(objArr, ((i11 * 3) / 2) + 1);
        }
        Object[] objArr2 = this.array;
        int i12 = this.size;
        this.size = i12 + 1;
        objArr2[i12] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i11) {
        ensureIndexInRange(i11);
        return this.array[i11];
    }

    @Override // com.google.protobuf.c, com.google.protobuf.y.j
    public e1 mutableCopyWithCapacity(int i11) {
        if (i11 >= this.size) {
            return new e1(Arrays.copyOf(this.array, i11), this.size, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.List
    public Object remove(int i11) {
        ensureIsMutable();
        ensureIndexInRange(i11);
        Object[] objArr = this.array;
        Object obj = objArr[i11];
        int i12 = this.size;
        if (i11 < i12 - 1) {
            System.arraycopy(objArr, i11 + 1, objArr, i11, (i12 - i11) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.List
    public Object set(int i11, Object obj) {
        ensureIsMutable();
        ensureIndexInRange(i11);
        Object[] objArr = this.array;
        Object obj2 = objArr[i11];
        objArr[i11] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }
}
