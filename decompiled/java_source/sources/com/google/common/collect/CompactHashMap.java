package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
class CompactHashMap<K, V> extends AbstractMap<K, V> implements Serializable {
    static final double HASH_FLOODING_FPP = 0.001d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Object f30328g = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private transient Object f30329a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private transient int f30330b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private transient int f30331c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private transient Set f30332d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private transient Set f30333e;
    transient int[] entries;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private transient Collection f30334f;
    transient Object[] keys;
    transient Object[] values;

    class a extends e {
        a() {
            super(CompactHashMap.this, null);
        }

        @Override // com.google.common.collect.CompactHashMap.e
        Object b(int i11) {
            return CompactHashMap.this.e(i11);
        }
    }

    class b extends e {
        b() {
            super(CompactHashMap.this, null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.CompactHashMap.e
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Map.Entry b(int i11) {
            return new g(i11);
        }
    }

    class c extends e {
        c() {
            super(CompactHashMap.this, null);
        }

        @Override // com.google.common.collect.CompactHashMap.e
        Object b(int i11) {
            return CompactHashMap.this.r(i11);
        }
    }

    class d extends AbstractSet {
        d() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            CompactHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return mapDelegateOrNull.entrySet().contains(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int iD = CompactHashMap.this.d(entry.getKey());
            return iD != -1 && com.google.common.base.j.a(CompactHashMap.this.r(iD), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return CompactHashMap.this.entrySetIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return mapDelegateOrNull.entrySet().remove(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (CompactHashMap.this.needsAllocArrays()) {
                return false;
            }
            int iC = CompactHashMap.this.c();
            int iF = g2.f(entry.getKey(), entry.getValue(), iC, CompactHashMap.this.j(), CompactHashMap.this.h(), CompactHashMap.this.i(), CompactHashMap.this.k());
            if (iF == -1) {
                return false;
            }
            CompactHashMap.this.moveLastEntry(iF, iC);
            CompactHashMap.access$1210(CompactHashMap.this);
            CompactHashMap.this.incrementModCount();
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return CompactHashMap.this.size();
        }
    }

    private abstract class e implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f30339a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f30340b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f30341c;

        private e() {
            this.f30339a = CompactHashMap.this.f30330b;
            this.f30340b = CompactHashMap.this.firstEntryIndex();
            this.f30341c = -1;
        }

        /* synthetic */ e(CompactHashMap compactHashMap, a aVar) {
            this();
        }

        private void a() {
            if (CompactHashMap.this.f30330b != this.f30339a) {
                throw new ConcurrentModificationException();
            }
        }

        abstract Object b(int i11);

        void c() {
            this.f30339a += 32;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30340b >= 0;
        }

        @Override // java.util.Iterator
        public Object next() {
            a();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            int i11 = this.f30340b;
            this.f30341c = i11;
            Object objB = b(i11);
            this.f30340b = CompactHashMap.this.getSuccessor(this.f30340b);
            return objB;
        }

        @Override // java.util.Iterator
        public void remove() {
            a();
            e2.e(this.f30341c >= 0);
            c();
            CompactHashMap compactHashMap = CompactHashMap.this;
            compactHashMap.remove(compactHashMap.e(this.f30341c));
            this.f30340b = CompactHashMap.this.adjustAfterRemove(this.f30340b, this.f30341c);
            this.f30341c = -1;
        }
    }

    class f extends AbstractSet {
        f() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            CompactHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return CompactHashMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return CompactHashMap.this.keySetIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return mapDelegateOrNull.keySet().remove(obj);
            }
            return CompactHashMap.this.f(obj) != CompactHashMap.f30328g;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return CompactHashMap.this.size();
        }
    }

    final class g extends com.google.common.collect.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f30344a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f30345b;

        g(int i11) {
            this.f30344a = CompactHashMap.this.e(i11);
            this.f30345b = i11;
        }

        private void a() {
            int i11 = this.f30345b;
            if (i11 == -1 || i11 >= CompactHashMap.this.size() || !com.google.common.base.j.a(this.f30344a, CompactHashMap.this.e(this.f30345b))) {
                this.f30345b = CompactHashMap.this.d(this.f30344a);
            }
        }

        @Override // com.google.common.collect.b, java.util.Map.Entry
        public Object getKey() {
            return this.f30344a;
        }

        @Override // com.google.common.collect.b, java.util.Map.Entry
        public Object getValue() {
            Map<K, V> mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != null) {
                return m3.a(mapDelegateOrNull.get(this.f30344a));
            }
            a();
            int i11 = this.f30345b;
            return i11 == -1 ? m3.b() : CompactHashMap.this.r(i11);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.b, java.util.Map.Entry
        public Object setValue(Object obj) {
            Map mapDelegateOrNull = CompactHashMap.this.delegateOrNull();
            if (mapDelegateOrNull != 0) {
                return m3.a(mapDelegateOrNull.put(this.f30344a, obj));
            }
            a();
            int i11 = this.f30345b;
            if (i11 == -1) {
                CompactHashMap.this.put(this.f30344a, obj);
                return m3.b();
            }
            Object objR = CompactHashMap.this.r(i11);
            CompactHashMap.this.q(this.f30345b, obj);
            return objR;
        }
    }

    class h extends AbstractCollection {
        h() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            CompactHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return CompactHashMap.this.valuesIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return CompactHashMap.this.size();
        }
    }

    CompactHashMap() {
        init(3);
    }

    CompactHashMap(int i11) {
        init(i11);
    }

    private int a(int i11) {
        return h()[i11];
    }

    static /* synthetic */ int access$1210(CompactHashMap compactHashMap) {
        int i11 = compactHashMap.f30331c;
        compactHashMap.f30331c = i11 - 1;
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int c() {
        return (1 << (this.f30330b & 31)) - 1;
    }

    public static <K, V> CompactHashMap<K, V> create() {
        return new CompactHashMap<>();
    }

    public static <K, V> CompactHashMap<K, V> createWithExpectedSize(int i11) {
        return new CompactHashMap<>(i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int d(Object obj) {
        if (needsAllocArrays()) {
            return -1;
        }
        int iD = v2.d(obj);
        int iC = c();
        int iH = g2.h(j(), iD & iC);
        if (iH == 0) {
            return -1;
        }
        int iB = g2.b(iD, iC);
        do {
            int i11 = iH - 1;
            int iA = a(i11);
            if (g2.b(iA, iC) == iB && com.google.common.base.j.a(obj, e(i11))) {
                return i11;
            }
            iH = g2.c(iA, iC);
        } while (iH != 0);
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object e(int i11) {
        return i()[i11];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object f(Object obj) {
        if (needsAllocArrays()) {
            return f30328g;
        }
        int iC = c();
        int iF = g2.f(obj, null, iC, j(), h(), i(), null);
        if (iF == -1) {
            return f30328g;
        }
        Object objR = r(iF);
        moveLastEntry(iF, iC);
        this.f30331c--;
        incrementModCount();
        return objR;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] h() {
        int[] iArr = this.entries;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] i() {
        Object[] objArr = this.keys;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object j() {
        Object obj = this.f30329a;
        Objects.requireNonNull(obj);
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] k() {
        Object[] objArr = this.values;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    private void l(int i11) {
        int iMin;
        int length = h().length;
        if (i11 <= length || (iMin = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) == length) {
            return;
        }
        resizeEntries(iMin);
    }

    private int m(int i11, int i12, int i13, int i14) {
        Object objA = g2.a(i12);
        int i15 = i12 - 1;
        if (i14 != 0) {
            g2.i(objA, i13 & i15, i14 + 1);
        }
        Object objJ = j();
        int[] iArrH = h();
        for (int i16 = 0; i16 <= i11; i16++) {
            int iH = g2.h(objJ, i16);
            while (iH != 0) {
                int i17 = iH - 1;
                int i18 = iArrH[i17];
                int iB = g2.b(i18, i11) | i16;
                int i19 = iB & i15;
                int iH2 = g2.h(objA, i19);
                g2.i(objA, i19, iH);
                iArrH[i17] = g2.d(iB, iH2, i15);
                iH = g2.c(i18, i11);
            }
        }
        this.f30329a = objA;
        o(i15);
        return i15;
    }

    private void n(int i11, int i12) {
        h()[i11] = i12;
    }

    private void o(int i11) {
        this.f30330b = g2.d(this.f30330b, 32 - Integer.numberOfLeadingZeros(i11), 31);
    }

    private void p(int i11, Object obj) {
        i()[i11] = obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(int i11, Object obj) {
        k()[i11] = obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object r(int i11) {
        return k()[i11];
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
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator<Map.Entry<K, V>> itEntrySetIterator = entrySetIterator();
        while (itEntrySetIterator.hasNext()) {
            Map.Entry<K, V> next = itEntrySetIterator.next();
            objectOutputStream.writeObject(next.getKey());
            objectOutputStream.writeObject(next.getValue());
        }
    }

    void accessEntry(int i11) {
    }

    int adjustAfterRemove(int i11, int i12) {
        return i11 - 1;
    }

    int allocArrays() {
        com.google.common.base.m.v(needsAllocArrays(), "Arrays already allocated");
        int i11 = this.f30330b;
        int iJ = g2.j(i11);
        this.f30329a = g2.a(iJ);
        o(iJ - 1);
        this.entries = new int[i11];
        this.keys = new Object[i11];
        this.values = new Object[i11];
        return i11;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        incrementModCount();
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            this.f30330b = Ints.f(size(), 3, 1073741823);
            mapDelegateOrNull.clear();
            this.f30329a = null;
            this.f30331c = 0;
            return;
        }
        Arrays.fill(i(), 0, this.f30331c, (Object) null);
        Arrays.fill(k(), 0, this.f30331c, (Object) null);
        g2.g(j());
        Arrays.fill(h(), 0, this.f30331c, 0);
        this.f30331c = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.containsKey(obj);
        }
        return d(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.containsValue(obj);
        }
        for (int i11 = 0; i11 < this.f30331c; i11++) {
            if (com.google.common.base.j.a(obj, r(i11))) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    Map<K, V> convertToHashFloodingResistantImplementation() {
        Map<K, V> mapCreateHashFloodingResistantDelegate = createHashFloodingResistantDelegate(c() + 1);
        int iFirstEntryIndex = firstEntryIndex();
        while (iFirstEntryIndex >= 0) {
            mapCreateHashFloodingResistantDelegate.put(e(iFirstEntryIndex), r(iFirstEntryIndex));
            iFirstEntryIndex = getSuccessor(iFirstEntryIndex);
        }
        this.f30329a = mapCreateHashFloodingResistantDelegate;
        this.entries = null;
        this.keys = null;
        this.values = null;
        incrementModCount();
        return mapCreateHashFloodingResistantDelegate;
    }

    Set<Map.Entry<K, V>> createEntrySet() {
        return new d();
    }

    Map<K, V> createHashFloodingResistantDelegate(int i11) {
        return new LinkedHashMap(i11, 1.0f);
    }

    Set<K> createKeySet() {
        return new f();
    }

    Collection<V> createValues() {
        return new h();
    }

    Map<K, V> delegateOrNull() {
        Object obj = this.f30329a;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.f30333e;
        if (set != null) {
            return set;
        }
        Set<Map.Entry<K, V>> setCreateEntrySet = createEntrySet();
        this.f30333e = setCreateEntrySet;
        return setCreateEntrySet;
    }

    Iterator<Map.Entry<K, V>> entrySetIterator() {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        return mapDelegateOrNull != null ? mapDelegateOrNull.entrySet().iterator() : new b();
    }

    int firstEntryIndex() {
        return isEmpty() ? -1 : 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.get(obj);
        }
        int iD = d(obj);
        if (iD == -1) {
            return null;
        }
        accessEntry(iD);
        return (V) r(iD);
    }

    int getSuccessor(int i11) {
        int i12 = i11 + 1;
        if (i12 < this.f30331c) {
            return i12;
        }
        return -1;
    }

    void incrementModCount() {
        this.f30330b += 32;
    }

    void init(int i11) {
        com.google.common.base.m.e(i11 >= 0, "Expected size must be >= 0");
        this.f30330b = Ints.f(i11, 1, 1073741823);
    }

    void insertEntry(int i11, K k11, V v11, int i12, int i13) {
        n(i11, g2.d(i12, 0, i13));
        p(i11, k11);
        q(i11, v11);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.f30332d;
        if (set != null) {
            return set;
        }
        Set<K> setCreateKeySet = createKeySet();
        this.f30332d = setCreateKeySet;
        return setCreateKeySet;
    }

    Iterator<K> keySetIterator() {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        return mapDelegateOrNull != null ? mapDelegateOrNull.keySet().iterator() : new a();
    }

    void moveLastEntry(int i11, int i12) {
        Object objJ = j();
        int[] iArrH = h();
        Object[] objArrI = i();
        Object[] objArrK = k();
        int size = size();
        int i13 = size - 1;
        if (i11 >= i13) {
            objArrI[i11] = null;
            objArrK[i11] = null;
            iArrH[i11] = 0;
            return;
        }
        Object obj = objArrI[i13];
        objArrI[i11] = obj;
        objArrK[i11] = objArrK[i13];
        objArrI[i13] = null;
        objArrK[i13] = null;
        iArrH[i11] = iArrH[i13];
        iArrH[i13] = 0;
        int iD = v2.d(obj) & i12;
        int iH = g2.h(objJ, iD);
        if (iH == size) {
            g2.i(objJ, iD, i11 + 1);
            return;
        }
        while (true) {
            int i14 = iH - 1;
            int i15 = iArrH[i14];
            int iC = g2.c(i15, i12);
            if (iC == size) {
                iArrH[i14] = g2.d(i15, i11 + 1, i12);
                return;
            }
            iH = iC;
        }
    }

    boolean needsAllocArrays() {
        return this.f30329a == null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k11, V v11) {
        int iM;
        int i11;
        if (needsAllocArrays()) {
            allocArrays();
        }
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.put(k11, v11);
        }
        int[] iArrH = h();
        Object[] objArrI = i();
        Object[] objArrK = k();
        int i12 = this.f30331c;
        int i13 = i12 + 1;
        int iD = v2.d(k11);
        int iC = c();
        int i14 = iD & iC;
        int iH = g2.h(j(), i14);
        if (iH != 0) {
            int iB = g2.b(iD, iC);
            int i15 = 0;
            while (true) {
                int i16 = iH - 1;
                int i17 = iArrH[i16];
                if (g2.b(i17, iC) == iB && com.google.common.base.j.a(k11, objArrI[i16])) {
                    V v12 = (V) objArrK[i16];
                    objArrK[i16] = v11;
                    accessEntry(i16);
                    return v12;
                }
                int iC2 = g2.c(i17, iC);
                i15++;
                if (iC2 != 0) {
                    iH = iC2;
                } else {
                    if (i15 >= 9) {
                        return convertToHashFloodingResistantImplementation().put(k11, v11);
                    }
                    if (i13 > iC) {
                        iM = m(iC, g2.e(iC), iD, i12);
                        i11 = iM;
                    } else {
                        iArrH[i16] = g2.d(i17, i13, iC);
                        i11 = iC;
                    }
                }
            }
        } else if (i13 > iC) {
            iM = m(iC, g2.e(iC), iD, i12);
            i11 = iM;
        } else {
            g2.i(j(), i14, i13);
            i11 = iC;
        }
        l(i13);
        insertEntry(i12, k11, v11, iD, i11);
        this.f30331c = i13;
        incrementModCount();
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            return mapDelegateOrNull.remove(obj);
        }
        V v11 = (V) f(obj);
        if (v11 == f30328g) {
            return null;
        }
        return v11;
    }

    void resizeEntries(int i11) {
        this.entries = Arrays.copyOf(h(), i11);
        this.keys = Arrays.copyOf(i(), i11);
        this.values = Arrays.copyOf(k(), i11);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        return mapDelegateOrNull != null ? mapDelegateOrNull.size() : this.f30331c;
    }

    public void trimToSize() {
        if (needsAllocArrays()) {
            return;
        }
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        if (mapDelegateOrNull != null) {
            Map<K, V> mapCreateHashFloodingResistantDelegate = createHashFloodingResistantDelegate(size());
            mapCreateHashFloodingResistantDelegate.putAll(mapDelegateOrNull);
            this.f30329a = mapCreateHashFloodingResistantDelegate;
            return;
        }
        int i11 = this.f30331c;
        if (i11 < h().length) {
            resizeEntries(i11);
        }
        int iJ = g2.j(i11);
        int iC = c();
        if (iJ < iC) {
            m(iC, iJ, 0, 0);
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.f30334f;
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionCreateValues = createValues();
        this.f30334f = collectionCreateValues;
        return collectionCreateValues;
    }

    Iterator<V> valuesIterator() {
        Map<K, V> mapDelegateOrNull = delegateOrNull();
        return mapDelegateOrNull != null ? mapDelegateOrNull.values().iterator() : new c();
    }
}
