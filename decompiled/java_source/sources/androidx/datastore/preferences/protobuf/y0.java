package androidx.datastore.preferences.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes.dex */
final class y0 extends c implements RandomAccess {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final y0 f8934d = new y0(new Object[0], 0, false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object[] f8935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f8936c;

    private y0(Object[] objArr, int i11, boolean z10) {
        super(z10);
        this.f8935b = objArr;
        this.f8936c = i11;
    }

    private static Object[] b(int i11) {
        return new Object[i11];
    }

    public static y0 c() {
        return f8934d;
    }

    private void e(int i11) {
        if (i11 < 0 || i11 >= this.f8936c) {
            throw new IndexOutOfBoundsException(f(i11));
        }
    }

    private String f(int i11) {
        return "Index:" + i11 + ", Size:" + this.f8936c;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i11, Object obj) {
        int i12;
        a();
        if (i11 < 0 || i11 > (i12 = this.f8936c)) {
            throw new IndexOutOfBoundsException(f(i11));
        }
        Object[] objArr = this.f8935b;
        if (i12 < objArr.length) {
            System.arraycopy(objArr, i11, objArr, i11 + 1, i12 - i11);
        } else {
            Object[] objArrB = b(((i12 * 3) / 2) + 1);
            System.arraycopy(this.f8935b, 0, objArrB, 0, i11);
            System.arraycopy(this.f8935b, i11, objArrB, i11 + 1, this.f8936c - i11);
            this.f8935b = objArrB;
        }
        this.f8935b[i11] = obj;
        this.f8936c++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        a();
        int i11 = this.f8936c;
        Object[] objArr = this.f8935b;
        if (i11 == objArr.length) {
            this.f8935b = Arrays.copyOf(objArr, ((i11 * 3) / 2) + 1);
        }
        Object[] objArr2 = this.f8935b;
        int i12 = this.f8936c;
        this.f8936c = i12 + 1;
        objArr2[i12] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.w.d
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public y0 mutableCopyWithCapacity(int i11) {
        if (i11 >= this.f8936c) {
            return new y0(Arrays.copyOf(this.f8935b, i11), this.f8936c, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i11) {
        e(i11);
        return this.f8935b[i11];
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractList, java.util.List
    public Object remove(int i11) {
        a();
        e(i11);
        Object[] objArr = this.f8935b;
        Object obj = objArr[i11];
        int i12 = this.f8936c;
        if (i11 < i12 - 1) {
            System.arraycopy(objArr, i11 + 1, objArr, i11, (i12 - i11) - 1);
        }
        this.f8936c--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i11, Object obj) {
        a();
        e(i11);
        Object[] objArr = this.f8935b;
        Object obj2 = objArr[i11];
        objArr[i11] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f8936c;
    }
}
