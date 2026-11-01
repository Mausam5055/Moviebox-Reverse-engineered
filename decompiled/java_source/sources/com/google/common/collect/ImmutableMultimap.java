package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ImmutableMultimap<K, V> extends j implements Serializable {
    private static final long serialVersionUID = 0;
    final transient ImmutableMap<K, ? extends ImmutableCollection<V>> map;
    final transient int size;

    private static class EntryCollection<K, V> extends ImmutableCollection<Map.Entry<K, V>> {
        private static final long serialVersionUID = 0;
        final ImmutableMultimap<K, V> multimap;

        EntryCollection(ImmutableMultimap<K, V> immutableMultimap) {
            this.multimap = immutableMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.multimap.containsEntry(entry.getKey(), entry.getValue());
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean isPartialView() {
            return this.multimap.isPartialView();
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        public r4 iterator() {
            return this.multimap.entryIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.multimap.size();
        }

        @Override // com.google.common.collect.ImmutableCollection
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    class Keys extends ImmutableMultiset<K> {
        Keys() {
        }

        private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
            throw new InvalidObjectException("Use KeysSerializedForm");
        }

        @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return ImmutableMultimap.this.containsKey(obj);
        }

        @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.l3
        public int count(Object obj) {
            ImmutableCollection<V> immutableCollection = ImmutableMultimap.this.map.get(obj);
            if (immutableCollection == null) {
                return 0;
            }
            return immutableCollection.size();
        }

        @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.l3
        public ImmutableSet<K> elementSet() {
            return ImmutableMultimap.this.keySet();
        }

        @Override // com.google.common.collect.ImmutableMultiset
        l3.a getEntry(int i11) {
            Map.Entry<K, ? extends ImmutableCollection<V>> entry = ImmutableMultimap.this.map.entrySet().asList().get(i11);
            return Multisets.g(entry.getKey(), entry.getValue().size());
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.l3
        public int size() {
            return ImmutableMultimap.this.size();
        }

        @Override // com.google.common.collect.ImmutableMultiset, com.google.common.collect.ImmutableCollection
        Object writeReplace() {
            return new KeysSerializedForm(ImmutableMultimap.this);
        }
    }

    private static final class KeysSerializedForm implements Serializable {
        final ImmutableMultimap<?, ?> multimap;

        KeysSerializedForm(ImmutableMultimap<?, ?> immutableMultimap) {
            this.multimap = immutableMultimap;
        }

        Object readResolve() {
            return this.multimap.keys();
        }
    }

    private static final class Values<K, V> extends ImmutableCollection<V> {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final transient ImmutableMultimap f30429a;

        Values(ImmutableMultimap<K, V> immutableMultimap) {
            this.f30429a = immutableMultimap;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f30429a.containsValue(obj);
        }

        @Override // com.google.common.collect.ImmutableCollection
        int copyIntoArray(Object[] objArr, int i11) {
            r4 it = this.f30429a.map.values().iterator();
            while (it.hasNext()) {
                i11 = ((ImmutableCollection) it.next()).copyIntoArray(objArr, i11);
            }
            return i11;
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean isPartialView() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        public r4 iterator() {
            return this.f30429a.valueIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f30429a.size();
        }

        @Override // com.google.common.collect.ImmutableCollection
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    class a extends r4 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Iterator f30430a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f30431b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Iterator f30432c = Iterators.h();

        a() {
            this.f30430a = ImmutableMultimap.this.map.entrySet().iterator();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry next() {
            if (!this.f30432c.hasNext()) {
                Map.Entry entry = (Map.Entry) this.f30430a.next();
                this.f30431b = entry.getKey();
                this.f30432c = ((ImmutableCollection) entry.getValue()).iterator();
            }
            Object obj = this.f30431b;
            Objects.requireNonNull(obj);
            return Maps.i(obj, this.f30432c.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30432c.hasNext() || this.f30430a.hasNext();
        }
    }

    class b extends r4 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Iterator f30434a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Iterator f30435b = Iterators.h();

        b() {
            this.f30434a = ImmutableMultimap.this.map.values().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30435b.hasNext() || this.f30434a.hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            if (!this.f30435b.hasNext()) {
                this.f30435b = ((ImmutableCollection) this.f30434a.next()).iterator();
            }
            return this.f30435b.next();
        }
    }

    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Map f30437a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Comparator f30438b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Comparator f30439c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f30440d = 4;

        public c() {
        }

        c(int i11) {
            if (i11 > 0) {
                this.f30437a = r3.i(i11);
            }
        }

        public ImmutableMultimap a() {
            Map map = this.f30437a;
            if (map == null) {
                return ImmutableListMultimap.of();
            }
            Collection collectionEntrySet = map.entrySet();
            Comparator comparator = this.f30438b;
            if (comparator != null) {
                collectionEntrySet = Ordering.from(comparator).onKeys().immutableSortedCopy(collectionEntrySet);
            }
            return ImmutableListMultimap.fromMapBuilderEntries(collectionEntrySet, this.f30439c);
        }

        c b(c cVar) {
            Map map = cVar.f30437a;
            if (map != null) {
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    i(entry.getKey(), ((ImmutableCollection.b) entry.getValue()).e());
                }
            }
            return this;
        }

        Map c() {
            Map map = this.f30437a;
            if (map != null) {
                return map;
            }
            Map mapH = r3.h();
            this.f30437a = mapH;
            return mapH;
        }

        int d(int i11, Iterable iterable) {
            return iterable instanceof Collection ? Math.max(i11, ((Collection) iterable).size()) : i11;
        }

        ImmutableCollection.b e(int i11) {
            return ImmutableList.builderWithExpectedSize(i11);
        }

        public c f(Object obj, Object obj2) {
            e2.a(obj, obj2);
            ImmutableCollection.b bVarE = (ImmutableCollection.b) c().get(obj);
            if (bVarE == null) {
                bVarE = e(this.f30440d);
                c().put(obj, bVarE);
            }
            bVarE.a(obj2);
            return this;
        }

        public c g(Map.Entry entry) {
            return f(entry.getKey(), entry.getValue());
        }

        public c h(Iterable iterable) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                g((Map.Entry) it.next());
            }
            return this;
        }

        public c i(Object obj, Iterable iterable) {
            if (obj == null) {
                throw new NullPointerException("null key in entry: null=" + g3.r(iterable));
            }
            Iterator it = iterable.iterator();
            if (!it.hasNext()) {
                return this;
            }
            ImmutableCollection.b bVarE = (ImmutableCollection.b) c().get(obj);
            if (bVarE == null) {
                bVarE = e(d(this.f30440d, iterable));
                c().put(obj, bVarE);
            }
            while (it.hasNext()) {
                Object next = it.next();
                e2.a(obj, next);
                bVarE.a(next);
            }
            return this;
        }
    }

    static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final w3.b f30441a = w3.a(ImmutableMultimap.class, "map");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final w3.b f30442b = w3.a(ImmutableMultimap.class, "size");
    }

    ImmutableMultimap(ImmutableMap<K, ? extends ImmutableCollection<V>> immutableMap, int i11) {
        this.map = immutableMap;
        this.size = i11;
    }

    public static <K, V> c builder() {
        return new c();
    }

    public static <K, V> c builderWithExpectedKeys(int i11) {
        e2.b(i11, "expectedKeys");
        return new c(i11);
    }

    public static <K, V> ImmutableMultimap<K, V> copyOf(j3 j3Var) {
        if (j3Var instanceof ImmutableMultimap) {
            ImmutableMultimap<K, V> immutableMultimap = (ImmutableMultimap) j3Var;
            if (!immutableMultimap.isPartialView()) {
                return immutableMultimap;
            }
        }
        return ImmutableListMultimap.copyOf(j3Var);
    }

    public static <K, V> ImmutableMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return ImmutableListMultimap.copyOf((Iterable) iterable);
    }

    public static <K, V> ImmutableMultimap<K, V> of() {
        return ImmutableListMultimap.of();
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k11, V v11) {
        return ImmutableListMultimap.of((Object) k11, (Object) v11);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k11, V v11, K k12, V v12) {
        return ImmutableListMultimap.of((Object) k11, (Object) v11, (Object) k12, (Object) v12);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13) {
        return ImmutableListMultimap.of((Object) k11, (Object) v11, (Object) k12, (Object) v12, (Object) k13, (Object) v13);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14) {
        return ImmutableListMultimap.of((Object) k11, (Object) v11, (Object) k12, (Object) v12, (Object) k13, (Object) v13, (Object) k14, (Object) v14);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k11, V v11, K k12, V v12, K k13, V v13, K k14, V v14, K k15, V v15) {
        return ImmutableListMultimap.of((Object) k11, (Object) v11, (Object) k12, (Object) v12, (Object) k13, (Object) v13, (Object) k14, (Object) v14, (Object) k15, (Object) v15);
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    public ImmutableMap<K, Collection<V>> asMap() {
        return this.map;
    }

    @Override // com.google.common.collect.j3
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    public /* bridge */ /* synthetic */ boolean containsEntry(Object obj, Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.j3
    public boolean containsKey(Object obj) {
        return this.map.containsKey(obj);
    }

    @Override // com.google.common.collect.c
    public boolean containsValue(Object obj) {
        return obj != null && super.containsValue(obj);
    }

    @Override // com.google.common.collect.c
    Map<K, Collection<V>> createAsMap() {
        throw new AssertionError("should never be called");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.c
    public ImmutableCollection<Map.Entry<K, V>> createEntries() {
        return new EntryCollection(this);
    }

    @Override // com.google.common.collect.c
    Set<K> createKeySet() {
        throw new AssertionError("unreachable");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.c
    public ImmutableMultiset<K> createKeys() {
        return new Keys();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.c
    public ImmutableCollection<V> createValues() {
        return new Values(this);
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    public ImmutableCollection<Map.Entry<K, V>> entries() {
        return (ImmutableCollection) super.entries();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.c
    public r4 entryIterator() {
        return new a();
    }

    @Override // com.google.common.collect.c
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.j3
    public abstract ImmutableCollection<V> get(K k11);

    @Override // com.google.common.collect.c
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    public abstract ImmutableMultimap<V, K> inverse();

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    boolean isPartialView() {
        return this.map.isPartialView();
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    public ImmutableSet<K> keySet() {
        return this.map.keySet();
    }

    @Override // com.google.common.collect.c
    public ImmutableMultiset<K> keys() {
        return (ImmutableMultiset) super.keys();
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    @Deprecated
    public final boolean put(K k11, V v11) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    @Deprecated
    public final boolean putAll(j3 j3Var) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.c
    @Deprecated
    public final boolean putAll(K k11, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    @Deprecated
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.j3
    @Deprecated
    public ImmutableCollection<V> removeAll(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // 
    @Deprecated
    /* JADX INFO: renamed from: replaceValues */
    public ImmutableCollection<V> mo282replaceValues(K k11, Iterable<? extends V> iterable) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.j3
    public int size() {
        return this.size;
    }

    @Override // com.google.common.collect.c
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.c
    public r4 valueIterator() {
        return new b();
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    public ImmutableCollection<V> values() {
        return (ImmutableCollection) super.values();
    }
}
