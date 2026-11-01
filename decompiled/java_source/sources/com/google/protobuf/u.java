package com.google.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
final class u extends c implements y.f, RandomAccess, c1 {
    private static final u EMPTY_LIST = new u(new float[0], 0, false);
    private float[] array;
    private int size;

    u() {
        this(new float[10], 0, true);
    }

    private u(float[] fArr, int i11, boolean z10) {
        super(z10);
        this.array = fArr;
        this.size = i11;
    }

    private void addFloat(int i11, float f11) {
        int i12;
        ensureIsMutable();
        if (i11 < 0 || i11 > (i12 = this.size)) {
            throw new IndexOutOfBoundsException(makeOutOfBoundsExceptionMessage(i11));
        }
        float[] fArr = this.array;
        if (i12 < fArr.length) {
            System.arraycopy(fArr, i11, fArr, i11 + 1, i12 - i11);
        } else {
            float[] fArr2 = new float[((i12 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i11);
            System.arraycopy(this.array, i11, fArr2, i11 + 1, this.size - i11);
            this.array = fArr2;
        }
        this.array[i11] = f11;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    public static u emptyList() {
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
    public void add(int i11, Float f11) {
        addFloat(i11, f11.floatValue());
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Float f11) {
        addFloat(f11.floatValue());
        return true;
    }

    @Override // com.google.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Float> collection) {
        ensureIsMutable();
        y.checkNotNull(collection);
        if (!(collection instanceof u)) {
            return super.addAll(collection);
        }
        u uVar = (u) collection;
        int i11 = uVar.size;
        if (i11 == 0) {
            return false;
        }
        int i12 = this.size;
        if (Integer.MAX_VALUE - i12 < i11) {
            throw new OutOfMemoryError();
        }
        int i13 = i12 + i11;
        float[] fArr = this.array;
        if (i13 > fArr.length) {
            this.array = Arrays.copyOf(fArr, i13);
        }
        System.arraycopy(uVar.array, 0, this.array, this.size, uVar.size);
        this.size = i13;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.protobuf.y.f
    public void addFloat(float f11) {
        ensureIsMutable();
        int i11 = this.size;
        float[] fArr = this.array;
        if (i11 == fArr.length) {
            float[] fArr2 = new float[((i11 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i11);
            this.array = fArr2;
        }
        float[] fArr3 = this.array;
        int i12 = this.size;
        this.size = i12 + 1;
        fArr3[i12] = f11;
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
        if (!(obj instanceof u)) {
            return super.equals(obj);
        }
        u uVar = (u) obj;
        if (this.size != uVar.size) {
            return false;
        }
        float[] fArr = uVar.array;
        for (int i11 = 0; i11 < this.size; i11++) {
            if (Float.floatToIntBits(this.array[i11]) != Float.floatToIntBits(fArr[i11])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public Float get(int i11) {
        return Float.valueOf(getFloat(i11));
    }

    @Override // com.google.protobuf.y.f
    public float getFloat(int i11) {
        ensureIndexInRange(i11);
        return this.array[i11];
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int iFloatToIntBits = 1;
        for (int i11 = 0; i11 < this.size; i11++) {
            iFloatToIntBits = (iFloatToIntBits * 31) + Float.floatToIntBits(this.array[i11]);
        }
        return iFloatToIntBits;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float fFloatValue = ((Float) obj).floatValue();
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            if (this.array[i11] == fFloatValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.protobuf.c, com.google.protobuf.y.j
    public y.f mutableCopyWithCapacity(int i11) {
        if (i11 >= this.size) {
            return new u(Arrays.copyOf(this.array, i11), this.size, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.List
    public Float remove(int i11) {
        ensureIsMutable();
        ensureIndexInRange(i11);
        float[] fArr = this.array;
        float f11 = fArr[i11];
        int i12 = this.size;
        if (i11 < i12 - 1) {
            System.arraycopy(fArr, i11 + 1, fArr, i11, (i12 - i11) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f11);
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i11, int i12) {
        ensureIsMutable();
        if (i12 < i11) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        float[] fArr = this.array;
        System.arraycopy(fArr, i12, fArr, i11, this.size - i12);
        this.size -= i12 - i11;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.List
    public Float set(int i11, Float f11) {
        return Float.valueOf(setFloat(i11, f11.floatValue()));
    }

    @Override // com.google.protobuf.y.f
    public float setFloat(int i11, float f11) {
        ensureIsMutable();
        ensureIndexInRange(i11);
        float[] fArr = this.array;
        float f12 = fArr[i11];
        fArr[i11] = f11;
        return f12;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }
}
