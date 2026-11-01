package com.bytedance.adsdk.sP;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class Sj<E> implements Collection<E>, Set<E> {
    private static int Dq;
    private static Object[] HiB;
    private static Object[] Jcg;
    private static int vS;
    Object[] Sj;
    private Zq<E, E> TEQ;
    int sP;
    private int[] uA;
    private static final int[] TKC = new int[0];
    private static final Object[] EjP = new Object[0];

    public Sj() {
        this(0);
    }

    public Sj(int i11) {
        if (i11 == 0) {
            this.uA = TKC;
            this.Sj = EjP;
        } else {
            EjP(i11);
        }
        this.sP = 0;
    }

    private void EjP(int i11) {
        if (i11 == 8) {
            synchronized (Sj.class) {
                Object[] objArr = Jcg;
                if (objArr != null) {
                    this.Sj = objArr;
                    Jcg = (Object[]) objArr[0];
                    this.uA = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    Dq--;
                    return;
                }
            }
        } else if (i11 == 4) {
            synchronized (Sj.class) {
                Object[] objArr2 = HiB;
                if (objArr2 != null) {
                    this.Sj = objArr2;
                    HiB = (Object[]) objArr2[0];
                    this.uA = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    vS--;
                    return;
                }
            }
        }
        this.uA = new int[i11];
        this.Sj = new Object[i11];
    }

    private int Sj() {
        int i11 = this.sP;
        if (i11 == 0) {
            return -1;
        }
        int iSj = sP.Sj(this.uA, i11, 0);
        if (iSj < 0 || this.Sj[iSj] == null) {
            return iSj;
        }
        int i12 = iSj + 1;
        while (i12 < i11 && this.uA[i12] == 0) {
            if (this.Sj[i12] == null) {
                return i12;
            }
            i12++;
        }
        for (int i13 = iSj - 1; i13 >= 0 && this.uA[i13] == 0; i13--) {
            if (this.Sj[i13] == null) {
                return i13;
            }
        }
        return ~i12;
    }

    private int Sj(Object obj, int i11) {
        int i12 = this.sP;
        if (i12 == 0) {
            return -1;
        }
        int iSj = sP.Sj(this.uA, i12, i11);
        if (iSj < 0 || obj.equals(this.Sj[iSj])) {
            return iSj;
        }
        int i13 = iSj + 1;
        while (i13 < i12 && this.uA[i13] == i11) {
            if (obj.equals(this.Sj[i13])) {
                return i13;
            }
            i13++;
        }
        for (int i14 = iSj - 1; i14 >= 0 && this.uA[i14] == i11; i14--) {
            if (obj.equals(this.Sj[i14])) {
                return i14;
            }
        }
        return ~i13;
    }

    private static void Sj(int[] iArr, Object[] objArr, int i11) {
        if (iArr.length == 8) {
            synchronized (Sj.class) {
                try {
                    if (Dq < 10) {
                        objArr[0] = Jcg;
                        objArr[1] = iArr;
                        for (int i12 = i11 - 1; i12 >= 2; i12--) {
                            objArr[i12] = null;
                        }
                        Jcg = objArr;
                        Dq++;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (Sj.class) {
                try {
                    if (vS < 10) {
                        objArr[0] = HiB;
                        objArr[1] = iArr;
                        for (int i13 = i11 - 1; i13 >= 2; i13--) {
                            objArr[i13] = null;
                        }
                        HiB = objArr;
                        vS++;
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }

    private Zq<E, E> sP() {
        if (this.TEQ == null) {
            this.TEQ = new Zq<E, E>() { // from class: com.bytedance.adsdk.sP.Sj.1
                @Override // com.bytedance.adsdk.sP.Zq
                protected int Sj() {
                    return Sj.this.sP;
                }

                @Override // com.bytedance.adsdk.sP.Zq
                protected int Sj(Object obj) {
                    return Sj.this.Sj(obj);
                }

                @Override // com.bytedance.adsdk.sP.Zq
                protected Object Sj(int i11, int i12) {
                    return Sj.this.Sj[i11];
                }

                @Override // com.bytedance.adsdk.sP.Zq
                protected void Sj(int i11) {
                    Sj.this.TKC(i11);
                }

                @Override // com.bytedance.adsdk.sP.Zq
                protected void TKC() {
                    Sj.this.clear();
                }

                @Override // com.bytedance.adsdk.sP.Zq
                protected Map<E, E> sP() {
                    throw new UnsupportedOperationException("not a map");
                }
            };
        }
        return this.TEQ;
    }

    public int Sj(Object obj) {
        return obj == null ? Sj() : Sj(obj, obj.hashCode());
    }

    public void Sj(int i11) {
        int[] iArr = this.uA;
        if (iArr.length < i11) {
            Object[] objArr = this.Sj;
            EjP(i11);
            int i12 = this.sP;
            if (i12 > 0) {
                System.arraycopy(iArr, 0, this.uA, 0, i12);
                System.arraycopy(objArr, 0, this.Sj, 0, this.sP);
            }
            Sj(iArr, objArr, this.sP);
        }
    }

    public E TKC(int i11) {
        Object[] objArr = this.Sj;
        E e11 = (E) objArr[i11];
        int i12 = this.sP;
        if (i12 <= 1) {
            Sj(this.uA, objArr, i12);
            this.uA = TKC;
            this.Sj = EjP;
            this.sP = 0;
        } else {
            int[] iArr = this.uA;
            if (iArr.length <= 8 || i12 >= iArr.length / 3) {
                int i13 = i12 - 1;
                this.sP = i13;
                if (i11 < i13) {
                    int i14 = i11 + 1;
                    System.arraycopy(iArr, i14, iArr, i11, i13 - i11);
                    Object[] objArr2 = this.Sj;
                    System.arraycopy(objArr2, i14, objArr2, i11, this.sP - i11);
                }
                this.Sj[this.sP] = null;
            } else {
                EjP(i12 > 8 ? i12 + (i12 >> 1) : 8);
                this.sP--;
                if (i11 > 0) {
                    System.arraycopy(iArr, 0, this.uA, 0, i11);
                    System.arraycopy(objArr, 0, this.Sj, 0, i11);
                }
                int i15 = this.sP;
                if (i11 < i15) {
                    int i16 = i11 + 1;
                    System.arraycopy(iArr, i16, this.uA, i11, i15 - i11);
                    System.arraycopy(objArr, i16, this.Sj, i11, this.sP - i11);
                }
            }
        }
        return e11;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e11) {
        int i11;
        int iSj;
        if (e11 == null) {
            iSj = Sj();
            i11 = 0;
        } else {
            int iHashCode = e11.hashCode();
            i11 = iHashCode;
            iSj = Sj(e11, iHashCode);
        }
        if (iSj >= 0) {
            return false;
        }
        int i12 = ~iSj;
        int i13 = this.sP;
        int[] iArr = this.uA;
        if (i13 >= iArr.length) {
            int i14 = 8;
            if (i13 >= 8) {
                i14 = (i13 >> 1) + i13;
            } else if (i13 < 4) {
                i14 = 4;
            }
            Object[] objArr = this.Sj;
            EjP(i14);
            int[] iArr2 = this.uA;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.Sj, 0, objArr.length);
            }
            Sj(iArr, objArr, this.sP);
        }
        int i15 = this.sP;
        if (i12 < i15) {
            int[] iArr3 = this.uA;
            int i16 = i12 + 1;
            System.arraycopy(iArr3, i12, iArr3, i16, i15 - i12);
            Object[] objArr2 = this.Sj;
            System.arraycopy(objArr2, i12, objArr2, i16, this.sP - i12);
        }
        this.uA[i12] = i11;
        this.Sj[i12] = e11;
        this.sP++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        Sj(this.sP + collection.size());
        Iterator<? extends E> it = collection.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i11 = this.sP;
        if (i11 != 0) {
            Sj(this.uA, this.Sj, i11);
            this.uA = TKC;
            this.Sj = EjP;
            this.sP = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return Sj(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i11 = 0; i11 < this.sP; i11++) {
                try {
                    if (!set.contains(sP(i11))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.uA;
        int i11 = this.sP;
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            i12 += iArr[i13];
        }
        return i12;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.sP <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return sP().EjP().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int iSj = Sj(obj);
        if (iSj < 0) {
            return false;
        }
        TKC(iSj);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        boolean z10 = false;
        for (int i11 = this.sP - 1; i11 >= 0; i11--) {
            if (!collection.contains(this.Sj[i11])) {
                TKC(i11);
                z10 = true;
            }
        }
        return z10;
    }

    public E sP(int i11) {
        return (E) this.Sj[i11];
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.sP;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i11 = this.sP;
        Object[] objArr = new Object[i11];
        System.arraycopy(this.Sj, 0, objArr, 0, i11);
        return objArr;
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.sP) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.sP));
        }
        System.arraycopy(this.Sj, 0, tArr, 0, this.sP);
        int length = tArr.length;
        int i11 = this.sP;
        if (length > i11) {
            tArr[i11] = null;
        }
        return tArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(this.sP * 14);
        sb2.append('{');
        for (int i11 = 0; i11 < this.sP; i11++) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            E eSP = sP(i11);
            if (eSP != this) {
                sb2.append(eSP);
            } else {
                sb2.append("(this Set)");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }
}
