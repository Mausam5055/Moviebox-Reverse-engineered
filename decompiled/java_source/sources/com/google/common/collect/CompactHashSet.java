package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
class CompactHashSet<E> extends AbstractSet<E> implements Serializable {
    static final double HASH_FLOODING_FPP = 0.001d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private transient Object f30348a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private transient int[] f30349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private transient int f30350c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private transient int f30351d;
    transient Object[] elements;

    class a implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f30352a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f30353b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f30354c = -1;

        a() {
            this.f30352a = CompactHashSet.this.f30350c;
            this.f30353b = CompactHashSet.this.firstEntryIndex();
        }

        private void a() {
            if (CompactHashSet.this.f30350c != this.f30352a) {
                throw new ConcurrentModificationException();
            }
        }

        void b() {
            this.f30352a += 32;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30353b >= 0;
        }

        @Override // java.util.Iterator
        public Object next() {
            a();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            int i11 = this.f30353b;
            this.f30354c = i11;
            Object objB = CompactHashSet.this.b(i11);
            this.f30353b = CompactHashSet.this.getSuccessor(this.f30353b);
            return objB;
        }

        @Override // java.util.Iterator
        public void remove() {
            a();
            e2.e(this.f30354c >= 0);
            b();
            CompactHashSet compactHashSet = CompactHashSet.this;
            compactHashSet.remove(compactHashSet.b(this.f30354c));
            this.f30353b = CompactHashSet.this.adjustAfterRemove(this.f30353b, this.f30354c);
            this.f30354c = -1;
        }
    }

    CompactHashSet() {
        init(3);
    }

    CompactHashSet(int i11) {
        init(i11);
    }

    private Set a(int i11) {
        return new LinkedHashSet(i11, 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object b(int i11) {
        return f()[i11];
    }

    private int c(int i11) {
        return g()[i11];
    }

    public static <E> CompactHashSet<E> create() {
        return new CompactHashSet<>();
    }

    public static <E> CompactHashSet<E> create(Collection<? extends E> collection) {
        CompactHashSet<E> compactHashSetCreateWithExpectedSize = createWithExpectedSize(collection.size());
        compactHashSetCreateWithExpectedSize.addAll(collection);
        return compactHashSetCreateWithExpectedSize;
    }

    @SafeVarargs
    public static <E> CompactHashSet<E> create(E... eArr) {
        CompactHashSet<E> compactHashSetCreateWithExpectedSize = createWithExpectedSize(eArr.length);
        Collections.addAll(compactHashSetCreateWithExpectedSize, eArr);
        return compactHashSetCreateWithExpectedSize;
    }

    public static <E> CompactHashSet<E> createWithExpectedSize(int i11) {
        return new CompactHashSet<>(i11);
    }

    private int e() {
        return (1 << (this.f30350c & 31)) - 1;
    }

    private Object[] f() {
        Object[] objArr = this.elements;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    private int[] g() {
        int[] iArr = this.f30349b;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    private Object h() {
        Object obj = this.f30348a;
        Objects.requireNonNull(obj);
        return obj;
    }

    private void j(int i11) {
        int iMin;
        int length = g().length;
        if (i11 <= length || (iMin = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) == length) {
            return;
        }
        resizeEntries(iMin);
    }

    private int l(int i11, int i12, int i13, int i14) {
        Object objA = g2.a(i12);
        int i15 = i12 - 1;
        if (i14 != 0) {
            g2.i(objA, i13 & i15, i14 + 1);
        }
        Object objH = h();
        int[] iArrG = g();
        for (int i16 = 0; i16 <= i11; i16++) {
            int iH = g2.h(objH, i16);
            while (iH != 0) {
                int i17 = iH - 1;
                int i18 = iArrG[i17];
                int iB = g2.b(i18, i11) | i16;
                int i19 = iB & i15;
                int iH2 = g2.h(objA, i19);
                g2.i(objA, i19, iH);
                iArrG[i17] = g2.d(iB, iH2, i15);
                iH = g2.c(i18, i11);
            }
        }
        this.f30348a = objA;
        o(i15);
        return i15;
    }

    private void m(int i11, Object obj) {
        f()[i11] = obj;
    }

    private void n(int i11, int i12) {
        g()[i11] = i12;
    }

    private void o(int i11) {
        this.f30350c = g2.d(this.f30350c, 32 - Integer.numberOfLeadingZeros(i11), 31);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i11 = objectInputStream.readInt();
        if (i11 < 0) {
            throw new InvalidObjectException("Invalid size: " + i11);
        }
        init(i11);
        for (int i12 = 0; i12 < i11; i12++) {
            add(objectInputStream.readObject());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            objectOutputStream.writeObject(it.next());
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e11) {
        if (needsAllocArrays()) {
            allocArrays();
        }
        Set<E> setDelegateOrNull = delegateOrNull();
        if (setDelegateOrNull != null) {
            return setDelegateOrNull.add(e11);
        }
        int[] iArrG = g();
        Object[] objArrF = f();
        int i11 = this.f30351d;
        int i12 = i11 + 1;
        int iD = v2.d(e11);
        int iE = e();
        int i13 = iD & iE;
        int iH = g2.h(h(), i13);
        if (iH != 0) {
            int iB = g2.b(iD, iE);
            int i14 = 0;
            while (true) {
                int i15 = iH - 1;
                int i16 = iArrG[i15];
                if (g2.b(i16, iE) == iB && com.google.common.base.j.a(e11, objArrF[i15])) {
                    return false;
                }
                int iC = g2.c(i16, iE);
                i14++;
                if (iC != 0) {
                    iH = iC;
                } else {
                    if (i14 >= 9) {
                        return convertToHashFloodingResistantImplementation().add(e11);
                    }
                    if (i12 > iE) {
                        iE = l(iE, g2.e(iE), iD, i11);
                    } else {
                        iArrG[i15] = g2.d(i16, i12, iE);
                    }
                }
            }
        } else if (i12 > iE) {
            iE = l(iE, g2.e(iE), iD, i11);
        } else {
            g2.i(h(), i13, i12);
        }
        j(i12);
        insertEntry(i11, e11, iD, iE);
        this.f30351d = i12;
        incrementModCount();
        return true;
    }

    int adjustAfterRemove(int i11, int i12) {
        return i11 - 1;
    }

    int allocArrays() {
        com.google.common.base.m.v(needsAllocArrays(), "Arrays already allocated");
        int i11 = this.f30350c;
        int iJ = g2.j(i11);
        this.f30348a = g2.a(iJ);
        o(iJ - 1);
        this.f30349b = new int[i11];
        this.elements = new Object[i11];
        return i11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        incrementModCount();
        Set<E> setDelegateOrNull = delegateOrNull();
        if (setDelegateOrNull != null) {
            this.f30350c = Ints.f(size(), 3, 1073741823);
            setDelegateOrNull.clear();
            this.f30348a = null;
            this.f30351d = 0;
            return;
        }
        Arrays.fill(f(), 0, this.f30351d, (Object) null);
        g2.g(h());
        Arrays.fill(g(), 0, this.f30351d, 0);
        this.f30351d = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        if (needsAllocArrays()) {
            return false;
        }
        Set<E> setDelegateOrNull = delegateOrNull();
        if (setDelegateOrNull != null) {
            return setDelegateOrNull.contains(obj);
        }
        int iD = v2.d(obj);
        int iE = e();
        int iH = g2.h(h(), iD & iE);
        if (iH == 0) {
            return false;
        }
        int iB = g2.b(iD, iE);
        do {
            int i11 = iH - 1;
            int iC = c(i11);
            if (g2.b(iC, iE) == iB && com.google.common.base.j.a(obj, b(i11))) {
                return true;
            }
            iH = g2.c(iC, iE);
        } while (iH != 0);
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    Set<E> convertToHashFloodingResistantImplementation() {
        androidx.compose.runtime.snapshots.o oVar = (Set<E>) a(e() + 1);
        int iFirstEntryIndex = firstEntryIndex();
        while (iFirstEntryIndex >= 0) {
            oVar.add(b(iFirstEntryIndex));
            iFirstEntryIndex = getSuccessor(iFirstEntryIndex);
        }
        this.f30348a = oVar;
        this.f30349b = null;
        this.elements = null;
        incrementModCount();
        return oVar;
    }

    Set<E> delegateOrNull() {
        Object obj = this.f30348a;
        if (obj instanceof Set) {
            return (Set) obj;
        }
        return null;
    }

    int firstEntryIndex() {
        return isEmpty() ? -1 : 0;
    }

    int getSuccessor(int i11) {
        int i12 = i11 + 1;
        if (i12 < this.f30351d) {
            return i12;
        }
        return -1;
    }

    void incrementModCount() {
        this.f30350c += 32;
    }

    void init(int i11) {
        com.google.common.base.m.e(i11 >= 0, "Expected size must be >= 0");
        this.f30350c = Ints.f(i11, 1, 1073741823);
    }

    void insertEntry(int i11, E e11, int i12, int i13) {
        n(i11, g2.d(i12, 0, i13));
        m(i11, e11);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return size() == 0;
    }

    boolean isUsingHashFloodingResistance() {
        return delegateOrNull() != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        Set<E> setDelegateOrNull = delegateOrNull();
        return setDelegateOrNull != null ? setDelegateOrNull.iterator() : new a();
    }

    void moveLastEntry(int i11, int i12) {
        Object objH = h();
        int[] iArrG = g();
        Object[] objArrF = f();
        int size = size();
        int i13 = size - 1;
        if (i11 >= i13) {
            objArrF[i11] = null;
            iArrG[i11] = 0;
            return;
        }
        Object obj = objArrF[i13];
        objArrF[i11] = obj;
        objArrF[i13] = null;
        iArrG[i11] = iArrG[i13];
        iArrG[i13] = 0;
        int iD = v2.d(obj) & i12;
        int iH = g2.h(objH, iD);
        if (iH == size) {
            g2.i(objH, iD, i11 + 1);
            return;
        }
        while (true) {
            int i14 = iH - 1;
            int i15 = iArrG[i14];
            int iC = g2.c(i15, i12);
            if (iC == size) {
                iArrG[i14] = g2.d(i15, i11 + 1, i12);
                return;
            }
            iH = iC;
        }
    }

    boolean needsAllocArrays() {
        return this.f30348a == null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        if (needsAllocArrays()) {
            return false;
        }
        Set<E> setDelegateOrNull = delegateOrNull();
        if (setDelegateOrNull != null) {
            return setDelegateOrNull.remove(obj);
        }
        int iE = e();
        int iF = g2.f(obj, null, iE, h(), g(), f(), null);
        if (iF == -1) {
            return false;
        }
        moveLastEntry(iF, iE);
        this.f30351d--;
        incrementModCount();
        return true;
    }

    void resizeEntries(int i11) {
        this.f30349b = Arrays.copyOf(g(), i11);
        this.elements = Arrays.copyOf(f(), i11);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        Set<E> setDelegateOrNull = delegateOrNull();
        return setDelegateOrNull != null ? setDelegateOrNull.size() : this.f30351d;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public Object[] toArray() {
        if (needsAllocArrays()) {
            return new Object[0];
        }
        Set<E> setDelegateOrNull = delegateOrNull();
        return setDelegateOrNull != null ? setDelegateOrNull.toArray() : Arrays.copyOf(f(), this.f30351d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (!needsAllocArrays()) {
            Set<E> setDelegateOrNull = delegateOrNull();
            return setDelegateOrNull != null ? (T[]) setDelegateOrNull.toArray(tArr) : (T[]) n3.h(f(), 0, this.f30351d, tArr);
        }
        if (tArr.length > 0) {
            tArr[0] = null;
        }
        return tArr;
    }

    public void trimToSize() {
        if (needsAllocArrays()) {
            return;
        }
        Set<E> setDelegateOrNull = delegateOrNull();
        if (setDelegateOrNull != null) {
            Set setA = a(size());
            setA.addAll(setDelegateOrNull);
            this.f30348a = setA;
            return;
        }
        int i11 = this.f30351d;
        if (i11 < g().length) {
            resizeEntries(i11);
        }
        int iJ = g2.j(i11);
        int iE = e();
        if (iJ < iE) {
            l(iE, iJ, 0, 0);
        }
    }
}
