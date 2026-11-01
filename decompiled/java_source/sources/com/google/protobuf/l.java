package com.google.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
final class l extends c implements y.b, RandomAccess, c1 {
    private static final l EMPTY_LIST = new l(new double[0], 0, false);
    private double[] array;
    private int size;

    l() {
        this(new double[10], 0, true);
    }

    private l(double[] dArr, int i11, boolean z10) {
        super(z10);
        this.array = dArr;
        this.size = i11;
    }

    private void addDouble(int i11, double d11) {
        int i12;
        ensureIsMutable();
        if (i11 < 0 || i11 > (i12 = this.size)) {
            throw new IndexOutOfBoundsException(makeOutOfBoundsExceptionMessage(i11));
        }
        double[] dArr = this.array;
        if (i12 < dArr.length) {
            System.arraycopy(dArr, i11, dArr, i11 + 1, i12 - i11);
        } else {
            double[] dArr2 = new double[((i12 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i11);
            System.arraycopy(this.array, i11, dArr2, i11 + 1, this.size - i11);
            this.array = dArr2;
        }
        this.array[i11] = d11;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    public static l emptyList() {
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
    public void add(int i11, Double d11) {
        addDouble(i11, d11.doubleValue());
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Double d11) {
        addDouble(d11.doubleValue());
        return true;
    }

    @Override // com.google.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Double> collection) {
        ensureIsMutable();
        y.checkNotNull(collection);
        if (!(collection instanceof l)) {
            return super.addAll(collection);
        }
        l lVar = (l) collection;
        int i11 = lVar.size;
        if (i11 == 0) {
            return false;
        }
        int i12 = this.size;
        if (Integer.MAX_VALUE - i12 < i11) {
            throw new OutOfMemoryError();
        }
        int i13 = i12 + i11;
        double[] dArr = this.array;
        if (i13 > dArr.length) {
            this.array = Arrays.copyOf(dArr, i13);
        }
        System.arraycopy(lVar.array, 0, this.array, this.size, lVar.size);
        this.size = i13;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.protobuf.y.b
    public void addDouble(double d11) {
        ensureIsMutable();
        int i11 = this.size;
        double[] dArr = this.array;
        if (i11 == dArr.length) {
            double[] dArr2 = new double[((i11 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i11);
            this.array = dArr2;
        }
        double[] dArr3 = this.array;
        int i12 = this.size;
        this.size = i12 + 1;
        dArr3[i12] = d11;
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
        if (!(obj instanceof l)) {
            return super.equals(obj);
        }
        l lVar = (l) obj;
        if (this.size != lVar.size) {
            return false;
        }
        double[] dArr = lVar.array;
        for (int i11 = 0; i11 < this.size; i11++) {
            if (Double.doubleToLongBits(this.array[i11]) != Double.doubleToLongBits(dArr[i11])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public Double get(int i11) {
        return Double.valueOf(getDouble(i11));
    }

    @Override // com.google.protobuf.y.b
    public double getDouble(int i11) {
        ensureIndexInRange(i11);
        return this.array[i11];
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int iHashLong = 1;
        for (int i11 = 0; i11 < this.size; i11++) {
            iHashLong = (iHashLong * 31) + y.hashLong(Double.doubleToLongBits(this.array[i11]));
        }
        return iHashLong;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double dDoubleValue = ((Double) obj).doubleValue();
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            if (this.array[i11] == dDoubleValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.protobuf.c, com.google.protobuf.y.j
    public y.b mutableCopyWithCapacity(int i11) {
        if (i11 >= this.size) {
            return new l(Arrays.copyOf(this.array, i11), this.size, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.List
    public Double remove(int i11) {
        ensureIsMutable();
        ensureIndexInRange(i11);
        double[] dArr = this.array;
        double d11 = dArr[i11];
        int i12 = this.size;
        if (i11 < i12 - 1) {
            System.arraycopy(dArr, i11 + 1, dArr, i11, (i12 - i11) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d11);
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i11, int i12) {
        ensureIsMutable();
        if (i12 < i11) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.array;
        System.arraycopy(dArr, i12, dArr, i11, this.size - i12);
        this.size -= i12 - i11;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.List
    public Double set(int i11, Double d11) {
        return Double.valueOf(setDouble(i11, d11.doubleValue()));
    }

    @Override // com.google.protobuf.y.b
    public double setDouble(int i11, double d11) {
        ensureIsMutable();
        ensureIndexInRange(i11);
        double[] dArr = this.array;
        double d12 = dArr[i11];
        dArr[i11] = d11;
        return d12;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }
}
