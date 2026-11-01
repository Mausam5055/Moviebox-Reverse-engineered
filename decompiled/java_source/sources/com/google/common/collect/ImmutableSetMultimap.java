package com.google.common.collect;

import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collector;
import java.util.stream.Stream;

/* JADX INFO: loaded from: classes4.dex */
public class ImmutableSetMultimap<K, V> extends ImmutableMultimap<K, V> implements x3 {
    private static final long serialVersionUID = 0;
    private final transient ImmutableSet<V> emptySet;
    private transient ImmutableSet<Map.Entry<K, V>> entries;
    private transient ImmutableSetMultimap<V, K> inverse;

    private static final class EntrySet<K, V> extends ImmutableSet<Map.Entry<K, V>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final transient ImmutableSetMultimap f30461a;

        EntrySet(ImmutableSetMultimap<K, V> immutableSetMultimap) {
            this.f30461a = immutableSetMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.f30461a.containsEntry(entry.getKey(), entry.getValue());
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean isPartialView() {
            return false;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        public r4 iterator() {
            return this.f30461a.entryIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f30461a.size();
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    public static final class a extends ImmutableMultimap.c {
        public a() {
        }

        a(int i11) {
            super(i11);
        }

        @Override // com.google.common.collect.ImmutableMultimap.c
        int d(int i11, Iterable iterable) {
            return iterable instanceof Set ? Math.max(i11, ((Set) iterable).size()) : i11;
        }

        @Override // com.google.common.collect.ImmutableMultimap.c
        ImmutableCollection.b e(int i11) {
            Comparator comparator = this.f30439c;
            return comparator == null ? ImmutableSet.builderWithExpectedSize(i11) : new ImmutableSortedSet.a(comparator, i11);
        }

        public ImmutableSetMultimap j() {
            Map map = this.f30437a;
            if (map == null) {
                return ImmutableSetMultimap.of();
            }
            Collection collectionEntrySet = map.entrySet();
            Comparator comparator = this.f30438b;
            if (comparator != null) {
                collectionEntrySet = Ordering.from(comparator).onKeys().immutableSortedCopy(collectionEntrySet);
            }
            return ImmutableSetMultimap.fromMapBuilderEntries(collectionEntrySet, this.f30439c);
        }

        a k(ImmutableMultimap.c cVar) {
            super.b(cVar);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.c
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public a f(Object obj, Object obj2) {
            super.f(obj, obj2);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.c
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public a g(Map.Entry entry) {
            super.g(entry);
            return this;
        }

        public a n(Iterable iterable) {
            super.h(iterable);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.c
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public a i(Object obj, Iterable iterable) {
            super.i(obj, iterable);
            return this;
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final w3.b f30462a = w3.a(ImmutableSetMultimap.class, "emptySet");
    }

    ImmutableSetMultimap(ImmutableMap<K, ImmutableSet<V>> immutableMap, int i11, Comparator<? super V> comparator) {
        super(immutableMap, i11);
        this.emptySet = emptySet(comparator);
    }

    public static <K, V> a builder() {
        return new a();
    }

    public static <K, V> a builderWithExpectedKeys(int i11) {
        e2.b(i11, "expectedKeys");
        return new a(i11);
    }

    public static <K, V> ImmutableSetMultimap<K, V> copyOf(j3 j3Var) {
        return copyOf(j3Var, null);
    }

    private static <K, V> ImmutableSetMultimap<K, V> copyOf(j3 j3Var, Comparator<? super V> comparator) {
        com.google.common.base.m.o(j3Var);
        if (j3Var.isEmpty() && comparator == null) {
            return of();
        }
        if (j3Var instanceof ImmutableSetMultimap) {
            ImmutableSetMultimap<K, V> immutableSetMultimap = (ImmutableSetMultimap) j3Var;
            if (!immutableSetMultimap.isPartialView()) {
                return immutableSetMultimap;
            }
        }
        return fromMapEntries(j3Var.asMap().entrySet(), comparator);
    }

    public static <K, V> ImmutableSetMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return new a().n(iterable).j();
    }

    private static <V> ImmutableSet<V> emptySet(Comparator<? super V> comparator) {
        return comparator == null ? ImmutableSet.of() : ImmutableSortedSet.emptySet(comparator);
    }

    public static <T, K, V> Collector<T, ?, ImmutableSetMultimap<K, V>> flatteningToImmutableSetMultimap(Function<? super T, ? extends K> function, Function<? super T, ? extends Stream<? extends V>> function2) {
        return d2.t(function, function2);
    }

    static <K, V> ImmutableSetMultimap<K, V> fromMapBuilderEntries(Collection<? extends Map.Entry<K, ImmutableCollection.b>> collection, Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return of();
        }
        ImmutableMap.b bVar = new ImmutableMap.b(collection.size());
        int size = 0;
        for (Map.Entry<K, ImmutableCollection.b> entry : collection) {
            K key = entry.getKey();
            ImmutableSet immutableSetValueSet = valueSet(comparator, ((ImmutableSet.a) entry.getValue()).e());
            if (!immutableSetValueSet.isEmpty()) {
                bVar.h(key, immutableSetValueSet);
                size += immutableSetValueSet.size();
            }
        }
        return new ImmutableSetMultimap<>(bVar.d(), size, comparator);
    }

    static <K, V> ImmutableSetMultimap<K, V> fromMapEntries(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return of();
        }
        ImmutableMap.b bVar = new ImmutableMap.b(collection.size());
        int size = 0;
        for (Map.Entry<? extends K, ? extends Collection<? extends V>> entry : collection) {
            K key = entry.getKey();
            ImmutableSet immutableSetValueSet = valueSet(comparator, entry.getValue());
            if (!immutableSetValueSet.isEmpty()) {
                bVar.h(key, immutableSetValueSet);
                size += immutableSetValueSet.size();
            }
        }
        return new ImmutableSetMultimap<>(bVar.d(), size, comparator);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ImmutableSetMultimap<V, K> invert() {
        a aVarBuilder = builder();
        r4 it = entries().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            aVarBuilder.f(entry.getValue(), entry.getKey());
        }
        ImmutableSetMultimap<V, K> immutableSetMultimapJ = aVarBuilder.j();
        immutableSetMultimapJ.inverse = this;
        return immutableSetMultimapJ;
    }

    public static <K, V> ImmutableSetMultimap<K, V> of() {
        return EmptyImmutableSetMultimap.INSTANCE;
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k11, V v11) {
        a aVarBuilder = builder();
        aVarBuilder.f(k11, v11);
        return aVarBuilder.j();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k11, V v11, K k12, V v12) {
        a aVarBuilder = builder();
        aVarBuilder.f(k11, v11);
        aVarBuilder.f(k12, v12);
        return aVarBuilder.j();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13) {
        a aVarBuilder = builder();
        aVarBuilder.f(k11, v11);
        aVarBuilder.f(k12, v12);
        aVarBuilder.f(k13, v13);
        return aVarBuilder.j();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14) {
        a aVarBuilder = builder();
        aVarBuilder.f(k11, v11);
        aVarBuilder.f(k12, v12);
        aVarBuilder.f(k13, v13);
        aVarBuilder.f(k14, v14);
        return aVarBuilder.j();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15) {
        a aVarBuilder = builder();
        aVarBuilder.f(k11, v11);
        aVarBuilder.f(k12, v12);
        aVarBuilder.f(k13, v13);
        aVarBuilder.f(k14, v14);
        aVarBuilder.f(k15, v15);
        return aVarBuilder.j();
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        int i11 = objectInputStream.readInt();
        if (i11 < 0) {
            throw new InvalidObjectException("Invalid key count " + i11);
        }
        ImmutableMap.b bVarBuilder = ImmutableMap.builder();
        int i12 = 0;
        for (int i13 = 0; i13 < i11; i13++) {
            Object object = objectInputStream.readObject();
            Objects.requireNonNull(object);
            int i14 = objectInputStream.readInt();
            if (i14 <= 0) {
                throw new InvalidObjectException("Invalid value count " + i14);
            }
            ImmutableSet.a aVarValuesBuilder = valuesBuilder(comparator);
            for (int i15 = 0; i15 < i14; i15++) {
                Object object2 = objectInputStream.readObject();
                Objects.requireNonNull(object2);
                aVarValuesBuilder.a(object2);
            }
            ImmutableSet immutableSetE = aVarValuesBuilder.e();
            if (immutableSetE.size() != i14) {
                throw new InvalidObjectException("Duplicate key-value pairs exist for key " + object);
            }
            bVarBuilder.h(object, immutableSetE);
            i12 += i14;
        }
        try {
            ImmutableMultimap.d.f30441a.b(this, bVarBuilder.d());
            ImmutableMultimap.d.f30442b.a(this, i12);
            b.f30462a.b(this, emptySet(comparator));
        } catch (IllegalArgumentException e11) {
            throw ((InvalidObjectException) new InvalidObjectException(e11.getMessage()).initCause(e11));
        }
    }

    public static <T, K, V> Collector<T, ?, ImmutableSetMultimap<K, V>> toImmutableSetMultimap(Function<? super T, ? extends K> function, Function<? super T, ? extends V> function2) {
        return d2.W(function, function2);
    }

    private static <V> ImmutableSet<V> valueSet(Comparator<? super V> comparator, Collection<? extends V> collection) {
        return comparator == null ? ImmutableSet.copyOf((Collection) collection) : ImmutableSortedSet.copyOf((Comparator) comparator, (Collection) collection);
    }

    private static <V> ImmutableSet.a valuesBuilder(Comparator<? super V> comparator) {
        return comparator == null ? new ImmutableSet.a() : new ImmutableSortedSet.a(comparator);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(valueComparator());
        w3.j(this, objectOutputStream);
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.c, com.google.common.collect.j3
    public ImmutableSet<Map.Entry<K, V>> entries() {
        ImmutableSet<Map.Entry<K, V>> immutableSet = this.entries;
        if (immutableSet != null) {
            return immutableSet;
        }
        EntrySet entrySet = new EntrySet(this);
        this.entries = entrySet;
        return entrySet;
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.j3
    public ImmutableSet<V> get(K k11) {
        return (ImmutableSet) com.google.common.base.h.a((ImmutableSet) this.map.get(k11), this.emptySet);
    }

    @Override // com.google.common.collect.ImmutableMultimap
    public ImmutableSetMultimap<V, K> inverse() {
        ImmutableSetMultimap<V, K> immutableSetMultimap = this.inverse;
        if (immutableSetMultimap != null) {
            return immutableSetMultimap;
        }
        ImmutableSetMultimap<V, K> immutableSetMultimapInvert = invert();
        this.inverse = immutableSetMultimapInvert;
        return immutableSetMultimapInvert;
    }

    @Override // com.google.common.collect.ImmutableMultimap, com.google.common.collect.j3
    @Deprecated
    public final ImmutableSet<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableMultimap
    @Deprecated
    /* JADX INFO: renamed from: replaceValues */
    public final ImmutableSet<V> mo282replaceValues(K k11, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    Comparator<? super V> valueComparator() {
        ImmutableSet<V> immutableSet = this.emptySet;
        if (immutableSet instanceof ImmutableSortedSet) {
            return ((ImmutableSortedSet) immutableSet).comparator();
        }
        return null;
    }
}
