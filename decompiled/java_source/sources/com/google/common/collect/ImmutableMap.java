package com.google.common.collect;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.SortedMap;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.stream.Collector;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ImmutableMap<K, V> implements Map<K, V>, Serializable {
    static final Map.Entry<?, ?>[] EMPTY_ENTRY_ARRAY = new Map.Entry[0];
    private static final long serialVersionUID = 912559;
    private transient ImmutableSet<Map.Entry<K, V>> entrySet;
    private transient ImmutableSet<K> keySet;
    private transient ImmutableSetMultimap<K, V> multimapView;
    private transient ImmutableCollection<V> values;

    static abstract class IteratorBasedImmutableMap<K, V> extends ImmutableMap<K, V> {
        IteratorBasedImmutableMap() {
        }

        @Override // com.google.common.collect.ImmutableMap
        ImmutableSet<Map.Entry<K, V>> createEntrySet() {
            return new ImmutableMapEntrySet<K, V>() { // from class: com.google.common.collect.ImmutableMap.IteratorBasedImmutableMap.1EntrySetImpl
                @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
                public r4 iterator() {
                    return IteratorBasedImmutableMap.this.entryIterator();
                }

                @Override // com.google.common.collect.ImmutableMapEntrySet
                ImmutableMap<K, V> map() {
                    return IteratorBasedImmutableMap.this;
                }

                @Override // com.google.common.collect.ImmutableMapEntrySet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
                Object writeReplace() {
                    return super.writeReplace();
                }
            };
        }

        @Override // com.google.common.collect.ImmutableMap
        ImmutableSet<K> createKeySet() {
            return new ImmutableMapKeySet(this);
        }

        @Override // com.google.common.collect.ImmutableMap
        ImmutableCollection<V> createValues() {
            return new ImmutableMapValues(this);
        }

        abstract r4 entryIterator();

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public /* bridge */ /* synthetic */ Set entrySet() {
            return super.entrySet();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public /* bridge */ /* synthetic */ Set keySet() {
            return super.keySet();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public /* bridge */ /* synthetic */ Collection values() {
            return super.values();
        }

        @Override // com.google.common.collect.ImmutableMap
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    private final class MapViewOfValuesAsSingletonSets extends IteratorBasedImmutableMap<K, ImmutableSet<V>> {

        class a extends r4 {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Iterator f30413a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ MapViewOfValuesAsSingletonSets f30414b;

            /* JADX INFO: renamed from: com.google.common.collect.ImmutableMap$MapViewOfValuesAsSingletonSets$a$a, reason: collision with other inner class name */
            class C0405a extends com.google.common.collect.b {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ Map.Entry f30415a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ a f30416b;

                C0405a(a aVar, Map.Entry entry) {
                    this.f30415a = entry;
                    this.f30416b = aVar;
                }

                @Override // com.google.common.collect.b, java.util.Map.Entry
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public ImmutableSet getValue() {
                    return ImmutableSet.of(this.f30415a.getValue());
                }

                @Override // com.google.common.collect.b, java.util.Map.Entry
                public Object getKey() {
                    return this.f30415a.getKey();
                }
            }

            a(MapViewOfValuesAsSingletonSets mapViewOfValuesAsSingletonSets, Iterator it) {
                this.f30413a = it;
                this.f30414b = mapViewOfValuesAsSingletonSets;
            }

            @Override // java.util.Iterator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map.Entry next() {
                return new C0405a(this, (Map.Entry) this.f30413a.next());
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f30413a.hasNext();
            }
        }

        private MapViewOfValuesAsSingletonSets() {
        }

        /* synthetic */ MapViewOfValuesAsSingletonSets(ImmutableMap immutableMap, a aVar) {
            this();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public boolean containsKey(Object obj) {
            return ImmutableMap.this.containsKey(obj);
        }

        @Override // com.google.common.collect.ImmutableMap.IteratorBasedImmutableMap, com.google.common.collect.ImmutableMap
        ImmutableSet<K> createKeySet() {
            return ImmutableMap.this.keySet();
        }

        @Override // com.google.common.collect.ImmutableMap.IteratorBasedImmutableMap
        r4 entryIterator() {
            return new a(this, ImmutableMap.this.entrySet().iterator());
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public ImmutableSet<V> get(Object obj) {
            Object obj2 = ImmutableMap.this.get(obj);
            if (obj2 == null) {
                return null;
            }
            return ImmutableSet.of(obj2);
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public int hashCode() {
            return ImmutableMap.this.hashCode();
        }

        @Override // com.google.common.collect.ImmutableMap
        boolean isHashCodeFast() {
            return ImmutableMap.this.isHashCodeFast();
        }

        @Override // com.google.common.collect.ImmutableMap
        boolean isPartialView() {
            return ImmutableMap.this.isPartialView();
        }

        @Override // java.util.Map
        public int size() {
            return ImmutableMap.this.size();
        }

        @Override // com.google.common.collect.ImmutableMap.IteratorBasedImmutableMap, com.google.common.collect.ImmutableMap
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    static class SerializedForm<K, V> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Object keys;
        private final Object values;

        SerializedForm(ImmutableMap<K, V> immutableMap) {
            Object[] objArr = new Object[immutableMap.size()];
            Object[] objArr2 = new Object[immutableMap.size()];
            r4 it = immutableMap.entrySet().iterator();
            int i11 = 0;
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                objArr[i11] = entry.getKey();
                objArr2[i11] = entry.getValue();
                i11++;
            }
            this.keys = objArr;
            this.values = objArr2;
        }

        final Object legacyReadResolve() {
            Object[] objArr = (Object[]) this.keys;
            Object[] objArr2 = (Object[]) this.values;
            b bVarMakeBuilder = makeBuilder(objArr.length);
            for (int i11 = 0; i11 < objArr.length; i11++) {
                bVarMakeBuilder.h(objArr[i11], objArr2[i11]);
            }
            return bVarMakeBuilder.d();
        }

        b makeBuilder(int i11) {
            return new b(i11);
        }

        final Object readResolve() {
            Object obj = this.keys;
            if (!(obj instanceof ImmutableSet)) {
                return legacyReadResolve();
            }
            ImmutableSet immutableSet = (ImmutableSet) obj;
            ImmutableCollection immutableCollection = (ImmutableCollection) this.values;
            b bVarMakeBuilder = makeBuilder(immutableSet.size());
            r4 it = immutableSet.iterator();
            r4 it2 = immutableCollection.iterator();
            while (it.hasNext()) {
                bVarMakeBuilder.h(it.next(), it2.next());
            }
            return bVarMakeBuilder.d();
        }
    }

    class a extends r4 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ r4 f30417a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ImmutableMap f30418b;

        a(ImmutableMap immutableMap, r4 r4Var) {
            this.f30417a = r4Var;
            this.f30418b = immutableMap;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30417a.hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            return ((Map.Entry) this.f30417a.next()).getKey();
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Comparator f30419a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object[] f30420b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f30421c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f30422d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        a f30423e;

        static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final Object f30424a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final Object f30425b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final Object f30426c;

            a(Object obj, Object obj2, Object obj3) {
                this.f30424a = obj;
                this.f30425b = obj2;
                this.f30426c = obj3;
            }

            IllegalArgumentException a() {
                return new IllegalArgumentException("Multiple entries with same key: " + this.f30424a + UrlUtils.EQUAL_MARK + this.f30425b + " and " + this.f30424a + UrlUtils.EQUAL_MARK + this.f30426c);
            }
        }

        public b() {
            this(4);
        }

        b(int i11) {
            this.f30420b = new Object[i11 * 2];
            this.f30421c = 0;
            this.f30422d = false;
        }

        private ImmutableMap b(boolean z10) {
            Object[] objArrG;
            a aVar;
            a aVar2;
            if (z10 && (aVar2 = this.f30423e) != null) {
                throw aVar2.a();
            }
            int length = this.f30421c;
            if (this.f30419a == null) {
                objArrG = this.f30420b;
            } else {
                if (this.f30422d) {
                    this.f30420b = Arrays.copyOf(this.f30420b, length * 2);
                }
                objArrG = this.f30420b;
                if (!z10) {
                    objArrG = g(objArrG, this.f30421c);
                    if (objArrG.length < this.f30420b.length) {
                        length = objArrG.length >>> 1;
                    }
                }
                l(objArrG, length, this.f30419a);
            }
            this.f30422d = true;
            RegularImmutableMap regularImmutableMapCreate = RegularImmutableMap.create(length, objArrG, this);
            if (!z10 || (aVar = this.f30423e) == null) {
                return regularImmutableMapCreate;
            }
            throw aVar.a();
        }

        private void f(int i11) {
            int i12 = i11 * 2;
            Object[] objArr = this.f30420b;
            if (i12 > objArr.length) {
                this.f30420b = Arrays.copyOf(objArr, ImmutableCollection.b.f(objArr.length, i12));
                this.f30422d = false;
            }
        }

        private Object[] g(Object[] objArr, int i11) {
            HashSet hashSet = new HashSet();
            BitSet bitSet = new BitSet();
            for (int i12 = i11 - 1; i12 >= 0; i12--) {
                Object obj = objArr[i12 * 2];
                Objects.requireNonNull(obj);
                if (!hashSet.add(obj)) {
                    bitSet.set(i12);
                }
            }
            if (bitSet.isEmpty()) {
                return objArr;
            }
            Object[] objArr2 = new Object[(i11 - bitSet.cardinality()) * 2];
            int i13 = 0;
            int i14 = 0;
            while (i13 < i11 * 2) {
                if (bitSet.get(i13 >>> 1)) {
                    i13 += 2;
                } else {
                    int i15 = i14 + 1;
                    int i16 = i13 + 1;
                    Object obj2 = objArr[i13];
                    Objects.requireNonNull(obj2);
                    objArr2[i14] = obj2;
                    i14 += 2;
                    i13 += 2;
                    Object obj3 = objArr[i16];
                    Objects.requireNonNull(obj3);
                    objArr2[i15] = obj3;
                }
            }
            return objArr2;
        }

        static void l(Object[] objArr, int i11, Comparator comparator) {
            Map.Entry[] entryArr = new Map.Entry[i11];
            for (int i12 = 0; i12 < i11; i12++) {
                int i13 = i12 * 2;
                Object obj = objArr[i13];
                Objects.requireNonNull(obj);
                Object obj2 = objArr[i13 + 1];
                Objects.requireNonNull(obj2);
                entryArr[i12] = new AbstractMap.SimpleImmutableEntry(obj, obj2);
            }
            Arrays.sort(entryArr, 0, i11, Ordering.from(comparator).onResultOf(Maps.C()));
            for (int i14 = 0; i14 < i11; i14++) {
                int i15 = i14 * 2;
                objArr[i15] = entryArr[i14].getKey();
                objArr[i15 + 1] = entryArr[i14].getValue();
            }
        }

        public ImmutableMap a() {
            return d();
        }

        public ImmutableMap c() {
            return b(false);
        }

        public ImmutableMap d() {
            return b(true);
        }

        b e(b bVar) {
            com.google.common.base.m.o(bVar);
            f(this.f30421c + bVar.f30421c);
            System.arraycopy(bVar.f30420b, 0, this.f30420b, this.f30421c * 2, bVar.f30421c * 2);
            this.f30421c += bVar.f30421c;
            return this;
        }

        public b h(Object obj, Object obj2) {
            f(this.f30421c + 1);
            e2.a(obj, obj2);
            Object[] objArr = this.f30420b;
            int i11 = this.f30421c;
            objArr[i11 * 2] = obj;
            objArr[(i11 * 2) + 1] = obj2;
            this.f30421c = i11 + 1;
            return this;
        }

        public b i(Map.Entry entry) {
            return h(entry.getKey(), entry.getValue());
        }

        public b j(Iterable iterable) {
            if (iterable instanceof Collection) {
                f(this.f30421c + ((Collection) iterable).size());
            }
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                i((Map.Entry) it.next());
            }
            return this;
        }

        public b k(Map map) {
            return j(map.entrySet());
        }
    }

    ImmutableMap() {
    }

    public static <K, V> b builder() {
        return new b();
    }

    public static <K, V> b builderWithExpectedSize(int i11) {
        e2.b(i11, "expectedSize");
        return new b(i11);
    }

    static void checkNoConflict(boolean z10, String str, Object obj, Object obj2) {
        if (!z10) {
            throw conflictException(str, obj, obj2);
        }
    }

    static IllegalArgumentException conflictException(String str, Object obj, Object obj2) {
        return new IllegalArgumentException("Multiple entries with same " + str + ": " + obj + " and " + obj2);
    }

    public static <K, V> ImmutableMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        b bVar = new b(iterable instanceof Collection ? ((Collection) iterable).size() : 4);
        bVar.j(iterable);
        return bVar.a();
    }

    public static <K, V> ImmutableMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        if ((map instanceof ImmutableMap) && !(map instanceof SortedMap)) {
            ImmutableMap<K, V> immutableMap = (ImmutableMap) map;
            if (!immutableMap.isPartialView()) {
                return immutableMap;
            }
        }
        return copyOf(map.entrySet());
    }

    static <K, V> Map.Entry<K, V> entryOf(K k11, V v11) {
        e2.a(k11, v11);
        return new AbstractMap.SimpleImmutableEntry(k11, v11);
    }

    public static <K, V> ImmutableMap<K, V> of() {
        return (ImmutableMap<K, V>) RegularImmutableMap.EMPTY;
    }

    public static <K, V> ImmutableMap<K, V> of(K k11, V v11) {
        e2.a(k11, v11);
        return RegularImmutableMap.create(1, new Object[]{k11, v11});
    }

    public static <K, V> ImmutableMap<K, V> of(K k11, V v11, K k12, V v12) {
        e2.a(k11, v11);
        e2.a(k12, v12);
        return RegularImmutableMap.create(2, new Object[]{k11, v11, k12, v12});
    }

    public static <K, V> ImmutableMap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13) {
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        return RegularImmutableMap.create(3, new Object[]{k11, v11, k12, v12, k13, v13});
    }

    public static <K, V> ImmutableMap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14) {
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        return RegularImmutableMap.create(4, new Object[]{k11, v11, k12, v12, k13, v13, k14, v14});
    }

    public static <K, V> ImmutableMap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15) {
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        e2.a(k15, v15);
        return RegularImmutableMap.create(5, new Object[]{k11, v11, k12, v12, k13, v13, k14, v14, k15, v15});
    }

    public static <K, V> ImmutableMap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16) {
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        e2.a(k15, v15);
        e2.a(k16, v16);
        return RegularImmutableMap.create(6, new Object[]{k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16});
    }

    public static <K, V> ImmutableMap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17) {
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        e2.a(k15, v15);
        e2.a(k16, v16);
        e2.a(k17, v17);
        return RegularImmutableMap.create(7, new Object[]{k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16, k17, v17});
    }

    public static <K, V> ImmutableMap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17, K k18, V v18) {
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        e2.a(k15, v15);
        e2.a(k16, v16);
        e2.a(k17, v17);
        e2.a(k18, v18);
        return RegularImmutableMap.create(8, new Object[]{k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16, k17, v17, k18, v18});
    }

    public static <K, V> ImmutableMap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17, K k18, V v18, K k19, V v19) {
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        e2.a(k15, v15);
        e2.a(k16, v16);
        e2.a(k17, v17);
        e2.a(k18, v18);
        e2.a(k19, v19);
        return RegularImmutableMap.create(9, new Object[]{k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16, k17, v17, k18, v18, k19, v19});
    }

    public static <K, V> ImmutableMap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15, K k16, V v16, K k17, V v17, K k18, V v18, K k19, V v19, K k20, V v20) {
        e2.a(k11, v11);
        e2.a(k12, v12);
        e2.a(k13, v13);
        e2.a(k14, v14);
        e2.a(k15, v15);
        e2.a(k16, v16);
        e2.a(k17, v17);
        e2.a(k18, v18);
        e2.a(k19, v19);
        e2.a(k20, v20);
        return RegularImmutableMap.create(10, new Object[]{k11, v11, k12, v12, k13, v13, k14, v14, k15, v15, k16, v16, k17, v17, k18, v18, k19, v19, k20, v20});
    }

    @SafeVarargs
    public static <K, V> ImmutableMap<K, V> ofEntries(Map.Entry<? extends K, ? extends V>... entryArr) {
        return copyOf(Arrays.asList(entryArr));
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <T, K, V> Collector<T, ?, ImmutableMap<K, V>> toImmutableMap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        return d2.Q(function, function2);
    }

    public static <T, K, V> Collector<T, ?, ImmutableMap<K, V>> toImmutableMap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2, BinaryOperator<V> binaryOperator) {
        return d2.R(function, function2, binaryOperator);
    }

    public ImmutableSetMultimap<K, V> asMultimap() {
        if (isEmpty()) {
            return ImmutableSetMultimap.of();
        }
        ImmutableSetMultimap<K, V> immutableSetMultimap = this.multimapView;
        if (immutableSetMultimap != null) {
            return immutableSetMultimap;
        }
        ImmutableSetMultimap<K, V> immutableSetMultimap2 = new ImmutableSetMultimap<>(new MapViewOfValuesAsSingletonSets(this, null), size(), null);
        this.multimapView = immutableSetMultimap2;
        return immutableSetMultimap2;
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    abstract ImmutableSet<Map.Entry<K, V>> createEntrySet();

    abstract ImmutableSet<K> createKeySet();

    abstract ImmutableCollection<V> createValues();

    @Override // java.util.Map
    public ImmutableSet<Map.Entry<K, V>> entrySet() {
        ImmutableSet<Map.Entry<K, V>> immutableSet = this.entrySet;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableSet<Map.Entry<K, V>> immutableSetCreateEntrySet = createEntrySet();
        this.entrySet = immutableSetCreateEntrySet;
        return immutableSetCreateEntrySet;
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return Maps.h(this, obj);
    }

    @Override // java.util.Map
    public abstract V get(Object obj);

    @Override // java.util.Map
    public final V getOrDefault(Object obj, V v11) {
        V v12 = get(obj);
        return v12 != null ? v12 : v11;
    }

    @Override // java.util.Map
    public int hashCode() {
        return Sets.d(entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    boolean isHashCodeFast() {
        return false;
    }

    abstract boolean isPartialView();

    r4 keyIterator() {
        return new a(this, entrySet().iterator());
    }

    @Override // java.util.Map
    public ImmutableSet<K> keySet() {
        ImmutableSet<K> immutableSet = this.keySet;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableSet<K> immutableSetCreateKeySet = createKeySet();
        this.keySet = immutableSetCreateKeySet;
        return immutableSetCreateKeySet;
    }

    @Override // java.util.Map
    @Deprecated
    public final V put(K k11, V v11) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return Maps.x(this);
    }

    @Override // java.util.Map
    public ImmutableCollection<V> values() {
        ImmutableCollection<V> immutableCollection = this.values;
        if (immutableCollection != null) {
            return immutableCollection;
        }
        ImmutableCollection<V> immutableCollectionCreateValues = createValues();
        this.values = immutableCollectionCreateValues;
        return immutableCollectionCreateValues;
    }

    Object writeReplace() {
        return new SerializedForm(this);
    }
}
