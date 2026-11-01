package com.google.common.collect;

import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes4.dex */
abstract class AbstractMapBasedMultimap<K, V> extends com.google.common.collect.c implements Serializable {
    private static final long serialVersionUID = 2447537837011683357L;
    private transient Map<K, Collection<V>> map;
    private transient int totalSize;

    class a extends d {
        a() {
            super();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.d
        Object a(Object obj, Object obj2) {
            return obj2;
        }
    }

    class b extends d {
        b() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.AbstractMapBasedMultimap.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry a(Object obj, Object obj2) {
            return Maps.i(obj, obj2);
        }
    }

    private class c extends Maps.q {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final transient Map f30272d;

        class a extends Maps.i {
            a() {
            }

            @Override // com.google.common.collect.Maps.i
            Map a() {
                return c.this;
            }

            @Override // com.google.common.collect.Maps.i, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                return f2.c(c.this.f30272d.entrySet(), obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator iterator() {
                return c.this.new b();
            }

            @Override // com.google.common.collect.Maps.i, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                AbstractMapBasedMultimap.this.c(entry.getKey());
                return true;
            }
        }

        class b implements Iterator {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final Iterator f30275a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            Collection f30276b;

            b() {
                this.f30275a = c.this.f30272d.entrySet().iterator();
            }

            @Override // java.util.Iterator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map.Entry next() {
                Map.Entry entry = (Map.Entry) this.f30275a.next();
                this.f30276b = (Collection) entry.getValue();
                return c.this.h(entry);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f30275a.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                com.google.common.base.m.v(this.f30276b != null, "no calls to next() since the last call to remove()");
                this.f30275a.remove();
                AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, this.f30276b.size());
                this.f30276b.clear();
                this.f30276b = null;
            }
        }

        c(Map map) {
            this.f30272d = map;
        }

        @Override // com.google.common.collect.Maps.q
        protected Set a() {
            return new a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            if (this.f30272d == AbstractMapBasedMultimap.this.map) {
                AbstractMapBasedMultimap.this.clear();
            } else {
                Iterators.d(new b());
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return Maps.u(this.f30272d, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Collection get(Object obj) {
            Collection<V> collection = (Collection) Maps.v(this.f30272d, obj);
            if (collection == null) {
                return null;
            }
            return AbstractMapBasedMultimap.this.wrapCollection(obj, collection);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean equals(Object obj) {
            return this == obj || this.f30272d.equals(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public Collection remove(Object obj) {
            Collection<? extends V> collection = (Collection) this.f30272d.remove(obj);
            if (collection == null) {
                return null;
            }
            Collection<V> collectionCreateCollection = AbstractMapBasedMultimap.this.createCollection();
            collectionCreateCollection.addAll(collection);
            AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, collection.size());
            collection.clear();
            return collectionCreateCollection;
        }

        /* JADX WARN: Multi-variable type inference failed */
        Map.Entry h(Map.Entry entry) {
            Object key = entry.getKey();
            return Maps.i(key, AbstractMapBasedMultimap.this.wrapCollection(key, (Collection) entry.getValue()));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int hashCode() {
            return this.f30272d.hashCode();
        }

        @Override // com.google.common.collect.Maps.q, java.util.AbstractMap, java.util.Map
        public Set keySet() {
            return AbstractMapBasedMultimap.this.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f30272d.size();
        }

        @Override // java.util.AbstractMap
        public String toString() {
            return this.f30272d.toString();
        }
    }

    private abstract class d implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Iterator f30278a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f30279b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Collection f30280c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Iterator f30281d = Iterators.j();

        d() {
            this.f30278a = AbstractMapBasedMultimap.this.map.entrySet().iterator();
        }

        abstract Object a(Object obj, Object obj2);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30278a.hasNext() || this.f30281d.hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            if (!this.f30281d.hasNext()) {
                Map.Entry entry = (Map.Entry) this.f30278a.next();
                this.f30279b = entry.getKey();
                Collection collection = (Collection) entry.getValue();
                this.f30280c = collection;
                this.f30281d = collection.iterator();
            }
            return a(m3.a(this.f30279b), this.f30281d.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f30281d.remove();
            Collection collection = this.f30280c;
            Objects.requireNonNull(collection);
            if (collection.isEmpty()) {
                this.f30278a.remove();
            }
            AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
        }
    }

    private class e extends Maps.l {

        class a implements Iterator {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            Map.Entry f30284a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Iterator f30285b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ e f30286c;

            a(e eVar, Iterator it) {
                this.f30285b = it;
                this.f30286c = eVar;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f30285b.hasNext();
            }

            @Override // java.util.Iterator
            public Object next() {
                Map.Entry entry = (Map.Entry) this.f30285b.next();
                this.f30284a = entry;
                return entry.getKey();
            }

            @Override // java.util.Iterator
            public void remove() {
                com.google.common.base.m.v(this.f30284a != null, "no calls to next() since the last call to remove()");
                Collection collection = (Collection) this.f30284a.getValue();
                this.f30285b.remove();
                AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, collection.size());
                collection.clear();
                this.f30284a = null;
            }
        }

        e(Map map) {
            super(map);
        }

        @Override // com.google.common.collect.Maps.l, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Iterators.d(iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection collection) {
            return b().keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return this == obj || b().keySet().equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return b().keySet().hashCode();
        }

        @Override // com.google.common.collect.Maps.l, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new a(this, b().entrySet().iterator());
        }

        @Override // com.google.common.collect.Maps.l, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int size;
            Collection collection = (Collection) b().remove(obj);
            if (collection != null) {
                size = collection.size();
                collection.clear();
                AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, size);
            } else {
                size = 0;
            }
            return size > 0;
        }
    }

    private final class f extends i implements NavigableMap {
        f(NavigableMap navigableMap) {
            super(navigableMap);
        }

        @Override // java.util.NavigableMap
        public Map.Entry ceilingEntry(Object obj) {
            Map.Entry<K, V> entryCeilingEntry = k().ceilingEntry(obj);
            if (entryCeilingEntry == null) {
                return null;
            }
            return h(entryCeilingEntry);
        }

        @Override // java.util.NavigableMap
        public Object ceilingKey(Object obj) {
            return k().ceilingKey(obj);
        }

        @Override // java.util.NavigableMap
        public NavigableSet descendingKeySet() {
            return descendingMap().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap descendingMap() {
            return new f(k().descendingMap());
        }

        @Override // java.util.NavigableMap
        public Map.Entry firstEntry() {
            Map.Entry<K, V> entryFirstEntry = k().firstEntry();
            if (entryFirstEntry == null) {
                return null;
            }
            return h(entryFirstEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry floorEntry(Object obj) {
            Map.Entry<K, V> entryFloorEntry = k().floorEntry(obj);
            if (entryFloorEntry == null) {
                return null;
            }
            return h(entryFloorEntry);
        }

        @Override // java.util.NavigableMap
        public Object floorKey(Object obj) {
            return k().floorKey(obj);
        }

        @Override // java.util.NavigableMap
        public NavigableMap headMap(Object obj, boolean z10) {
            return new f(k().headMap(obj, z10));
        }

        @Override // java.util.NavigableMap
        public Map.Entry higherEntry(Object obj) {
            Map.Entry<K, V> entryHigherEntry = k().higherEntry(obj);
            if (entryHigherEntry == null) {
                return null;
            }
            return h(entryHigherEntry);
        }

        @Override // java.util.NavigableMap
        public Object higherKey(Object obj) {
            return k().higherKey(obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.AbstractMapBasedMultimap.i
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public NavigableSet i() {
            return new g(k());
        }

        @Override // java.util.NavigableMap
        public Map.Entry lastEntry() {
            Map.Entry<K, V> entryLastEntry = k().lastEntry();
            if (entryLastEntry == null) {
                return null;
            }
            return h(entryLastEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry lowerEntry(Object obj) {
            Map.Entry<K, V> entryLowerEntry = k().lowerEntry(obj);
            if (entryLowerEntry == null) {
                return null;
            }
            return h(entryLowerEntry);
        }

        @Override // java.util.NavigableMap
        public Object lowerKey(Object obj) {
            return k().lowerKey(obj);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.i, java.util.SortedMap, java.util.NavigableMap
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public NavigableMap headMap(Object obj) {
            return headMap(obj, false);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.i, com.google.common.collect.AbstractMapBasedMultimap.c, com.google.common.collect.Maps.q, java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public NavigableSet keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public NavigableSet navigableKeySet() {
            return j();
        }

        Map.Entry o(Iterator it) {
            if (!it.hasNext()) {
                return null;
            }
            Map.Entry entry = (Map.Entry) it.next();
            Collection<V> collectionCreateCollection = AbstractMapBasedMultimap.this.createCollection();
            collectionCreateCollection.addAll((Collection) entry.getValue());
            it.remove();
            return Maps.i(entry.getKey(), AbstractMapBasedMultimap.this.unmodifiableCollectionSubclass(collectionCreateCollection));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.AbstractMapBasedMultimap.i
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public NavigableMap k() {
            return (NavigableMap) super.k();
        }

        @Override // java.util.NavigableMap
        public Map.Entry pollFirstEntry() {
            return o(entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public Map.Entry pollLastEntry() {
            return o(descendingMap().entrySet().iterator());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.i, java.util.SortedMap, java.util.NavigableMap
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public NavigableMap subMap(Object obj, Object obj2) {
            return subMap(obj, true, obj2, false);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.i, java.util.SortedMap, java.util.NavigableMap
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public NavigableMap tailMap(Object obj) {
            return tailMap(obj, true);
        }

        @Override // java.util.NavigableMap
        public NavigableMap subMap(Object obj, boolean z10, Object obj2, boolean z11) {
            return new f(k().subMap(obj, z10, obj2, z11));
        }

        @Override // java.util.NavigableMap
        public NavigableMap tailMap(Object obj, boolean z10) {
            return new f(k().tailMap(obj, z10));
        }
    }

    private final class g extends j implements NavigableSet {
        g(NavigableMap navigableMap) {
            super(navigableMap);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.j, java.util.SortedSet, java.util.NavigableSet
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public NavigableSet headSet(Object obj) {
            return headSet(obj, false);
        }

        @Override // java.util.NavigableSet
        public Object ceiling(Object obj) {
            return b().ceilingKey(obj);
        }

        @Override // java.util.NavigableSet
        public Iterator descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet descendingSet() {
            return new g(b().descendingMap());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.AbstractMapBasedMultimap.j
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public NavigableMap b() {
            return (NavigableMap) super.b();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.j, java.util.SortedSet, java.util.NavigableSet
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public NavigableSet subSet(Object obj, Object obj2) {
            return subSet(obj, true, obj2, false);
        }

        @Override // java.util.NavigableSet
        public Object floor(Object obj) {
            return b().floorKey(obj);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.j, java.util.SortedSet, java.util.NavigableSet
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public NavigableSet tailSet(Object obj) {
            return tailSet(obj, true);
        }

        @Override // java.util.NavigableSet
        public NavigableSet headSet(Object obj, boolean z10) {
            return new g(b().headMap(obj, z10));
        }

        @Override // java.util.NavigableSet
        public Object higher(Object obj) {
            return b().higherKey(obj);
        }

        @Override // java.util.NavigableSet
        public Object lower(Object obj) {
            return b().lowerKey(obj);
        }

        @Override // java.util.NavigableSet
        public Object pollFirst() {
            return Iterators.t(iterator());
        }

        @Override // java.util.NavigableSet
        public Object pollLast() {
            return Iterators.t(descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet subSet(Object obj, boolean z10, Object obj2, boolean z11) {
            return new g(b().subMap(obj, z10, obj2, z11));
        }

        @Override // java.util.NavigableSet
        public NavigableSet tailSet(Object obj, boolean z10) {
            return new g(b().tailMap(obj, z10));
        }
    }

    private class h extends l implements RandomAccess {
        h(Object obj, List list, k kVar) {
            super(obj, list, kVar);
        }
    }

    private class i extends c implements SortedMap {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        SortedSet f30290f;

        i(SortedMap sortedMap) {
            super(sortedMap);
        }

        @Override // java.util.SortedMap
        public Comparator comparator() {
            return k().comparator();
        }

        @Override // java.util.SortedMap
        public Object firstKey() {
            return k().firstKey();
        }

        public SortedMap headMap(Object obj) {
            return new i(k().headMap(obj));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.q
        public SortedSet i() {
            return new j(k());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.c, com.google.common.collect.Maps.q, java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: j */
        public SortedSet keySet() {
            SortedSet sortedSet = this.f30290f;
            if (sortedSet != null) {
                return sortedSet;
            }
            SortedSet sortedSetI = i();
            this.f30290f = sortedSetI;
            return sortedSetI;
        }

        SortedMap k() {
            return (SortedMap) this.f30272d;
        }

        @Override // java.util.SortedMap
        public Object lastKey() {
            return k().lastKey();
        }

        public SortedMap subMap(Object obj, Object obj2) {
            return new i(k().subMap(obj, obj2));
        }

        public SortedMap tailMap(Object obj) {
            return new i(k().tailMap(obj));
        }
    }

    private class j extends e implements SortedSet {
        j(SortedMap sortedMap) {
            super(sortedMap);
        }

        SortedMap b() {
            return (SortedMap) super.b();
        }

        @Override // java.util.SortedSet
        public Comparator comparator() {
            return b().comparator();
        }

        @Override // java.util.SortedSet
        public Object first() {
            return b().firstKey();
        }

        public SortedSet headSet(Object obj) {
            return new j(b().headMap(obj));
        }

        @Override // java.util.SortedSet
        public Object last() {
            return b().lastKey();
        }

        public SortedSet subSet(Object obj, Object obj2) {
            return new j(b().subMap(obj, obj2));
        }

        public SortedSet tailSet(Object obj) {
            return new j(b().tailMap(obj));
        }
    }

    class k extends AbstractCollection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f30293a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Collection f30294b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final k f30295c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Collection f30296d;

        class a implements Iterator {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final Iterator f30298a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final Collection f30299b;

            a() {
                Collection collection = k.this.f30294b;
                this.f30299b = collection;
                this.f30298a = AbstractMapBasedMultimap.b(collection);
            }

            a(Iterator it) {
                this.f30299b = k.this.f30294b;
                this.f30298a = it;
            }

            Iterator a() {
                b();
                return this.f30298a;
            }

            void b() {
                k.this.f();
                if (k.this.f30294b != this.f30299b) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                b();
                return this.f30298a.hasNext();
            }

            @Override // java.util.Iterator
            public Object next() {
                b();
                return this.f30298a.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f30298a.remove();
                AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
                k.this.g();
            }
        }

        k(Object obj, Collection collection, k kVar) {
            this.f30293a = obj;
            this.f30294b = collection;
            this.f30295c = kVar;
            this.f30296d = kVar == null ? null : kVar.c();
        }

        /* JADX WARN: Multi-variable type inference failed */
        void a() {
            k kVar = this.f30295c;
            if (kVar != null) {
                kVar.a();
            } else {
                AbstractMapBasedMultimap.this.map.put(this.f30293a, this.f30294b);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(Object obj) {
            f();
            boolean zIsEmpty = this.f30294b.isEmpty();
            boolean zAdd = this.f30294b.add(obj);
            if (zAdd) {
                AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
                if (zIsEmpty) {
                    a();
                }
            }
            return zAdd;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = this.f30294b.addAll(collection);
            if (zAddAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.f30294b.size() - size);
                if (size == 0) {
                    a();
                }
            }
            return zAddAll;
        }

        k b() {
            return this.f30295c;
        }

        Collection c() {
            return this.f30294b;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.f30294b.clear();
            AbstractMapBasedMultimap.access$220(AbstractMapBasedMultimap.this, size);
            g();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            f();
            return this.f30294b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection collection) {
            f();
            return this.f30294b.containsAll(collection);
        }

        Object e() {
            return this.f30293a;
        }

        @Override // java.util.Collection
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            f();
            return this.f30294b.equals(obj);
        }

        void f() {
            Collection collection;
            k kVar = this.f30295c;
            if (kVar != null) {
                kVar.f();
                if (this.f30295c.c() != this.f30296d) {
                    throw new ConcurrentModificationException();
                }
            } else {
                if (!this.f30294b.isEmpty() || (collection = (Collection) AbstractMapBasedMultimap.this.map.get(this.f30293a)) == null) {
                    return;
                }
                this.f30294b = collection;
            }
        }

        void g() {
            k kVar = this.f30295c;
            if (kVar != null) {
                kVar.g();
            } else if (this.f30294b.isEmpty()) {
                AbstractMapBasedMultimap.this.map.remove(this.f30293a);
            }
        }

        @Override // java.util.Collection
        public int hashCode() {
            f();
            return this.f30294b.hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            f();
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            f();
            boolean zRemove = this.f30294b.remove(obj);
            if (zRemove) {
                AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
                g();
            }
            return zRemove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zRemoveAll = this.f30294b.removeAll(collection);
            if (zRemoveAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.f30294b.size() - size);
                g();
            }
            return zRemoveAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection collection) {
            com.google.common.base.m.o(collection);
            int size = size();
            boolean zRetainAll = this.f30294b.retainAll(collection);
            if (zRetainAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.f30294b.size() - size);
                g();
            }
            return zRetainAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            f();
            return this.f30294b.size();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            f();
            return this.f30294b.toString();
        }
    }

    class l extends k implements List {

        private class a extends k.a implements ListIterator {
            a() {
                super();
            }

            public a(int i11) {
                super(l.this.h().listIterator(i11));
            }

            private ListIterator c() {
                return (ListIterator) a();
            }

            @Override // java.util.ListIterator
            public void add(Object obj) {
                boolean zIsEmpty = l.this.isEmpty();
                c().add(obj);
                AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
                if (zIsEmpty) {
                    l.this.a();
                }
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return c().hasPrevious();
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return c().nextIndex();
            }

            @Override // java.util.ListIterator
            public Object previous() {
                return c().previous();
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return c().previousIndex();
            }

            @Override // java.util.ListIterator
            public void set(Object obj) {
                c().set(obj);
            }
        }

        l(Object obj, List list, k kVar) {
            super(obj, list, kVar);
        }

        @Override // java.util.List
        public void add(int i11, Object obj) {
            f();
            boolean zIsEmpty = c().isEmpty();
            h().add(i11, obj);
            AbstractMapBasedMultimap.access$208(AbstractMapBasedMultimap.this);
            if (zIsEmpty) {
                a();
            }
        }

        @Override // java.util.List
        public boolean addAll(int i11, Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = h().addAll(i11, collection);
            if (zAddAll) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, c().size() - size);
                if (size == 0) {
                    a();
                }
            }
            return zAddAll;
        }

        @Override // java.util.List
        public Object get(int i11) {
            f();
            return h().get(i11);
        }

        List h() {
            return (List) c();
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            f();
            return h().indexOf(obj);
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            f();
            return h().lastIndexOf(obj);
        }

        @Override // java.util.List
        public ListIterator listIterator() {
            f();
            return new a();
        }

        @Override // java.util.List
        public ListIterator listIterator(int i11) {
            f();
            return new a(i11);
        }

        @Override // java.util.List
        public Object remove(int i11) {
            f();
            Object objRemove = h().remove(i11);
            AbstractMapBasedMultimap.access$210(AbstractMapBasedMultimap.this);
            g();
            return objRemove;
        }

        @Override // java.util.List
        public Object set(int i11, Object obj) {
            f();
            return h().set(i11, obj);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.List
        public List subList(int i11, int i12) {
            f();
            return AbstractMapBasedMultimap.this.wrapList(e(), h().subList(i11, i12), b() == null ? this : b());
        }
    }

    class m extends o implements NavigableSet {
        m(Object obj, NavigableSet navigableSet, k kVar) {
            super(obj, navigableSet, kVar);
        }

        private NavigableSet l(NavigableSet navigableSet) {
            return new m(this.f30293a, navigableSet, b() == null ? this : b());
        }

        @Override // java.util.NavigableSet
        public Object ceiling(Object obj) {
            return h().ceiling(obj);
        }

        @Override // java.util.NavigableSet
        public Iterator descendingIterator() {
            return new k.a(h().descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet descendingSet() {
            return l(h().descendingSet());
        }

        @Override // java.util.NavigableSet
        public Object floor(Object obj) {
            return h().floor(obj);
        }

        @Override // java.util.NavigableSet
        public NavigableSet headSet(Object obj, boolean z10) {
            return l(h().headSet(obj, z10));
        }

        @Override // java.util.NavigableSet
        public Object higher(Object obj) {
            return h().higher(obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.AbstractMapBasedMultimap.o
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public NavigableSet h() {
            return (NavigableSet) super.h();
        }

        @Override // java.util.NavigableSet
        public Object lower(Object obj) {
            return h().lower(obj);
        }

        @Override // java.util.NavigableSet
        public Object pollFirst() {
            return Iterators.t(iterator());
        }

        @Override // java.util.NavigableSet
        public Object pollLast() {
            return Iterators.t(descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet subSet(Object obj, boolean z10, Object obj2, boolean z11) {
            return l(h().subSet(obj, z10, obj2, z11));
        }

        @Override // java.util.NavigableSet
        public NavigableSet tailSet(Object obj, boolean z10) {
            return l(h().tailSet(obj, z10));
        }
    }

    class n extends k implements Set {
        n(Object obj, Set set) {
            super(obj, set, null);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.k, java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zI = Sets.i((Set) this.f30294b, collection);
            if (zI) {
                AbstractMapBasedMultimap.access$212(AbstractMapBasedMultimap.this, this.f30294b.size() - size);
                g();
            }
            return zI;
        }
    }

    class o extends k implements SortedSet {
        o(Object obj, SortedSet sortedSet, k kVar) {
            super(obj, sortedSet, kVar);
        }

        @Override // java.util.SortedSet
        public Comparator comparator() {
            return h().comparator();
        }

        @Override // java.util.SortedSet
        public Object first() {
            f();
            return h().first();
        }

        SortedSet h() {
            return (SortedSet) c();
        }

        @Override // java.util.SortedSet
        public SortedSet headSet(Object obj) {
            f();
            return new o(e(), h().headSet(obj), b() == null ? this : b());
        }

        @Override // java.util.SortedSet
        public Object last() {
            f();
            return h().last();
        }

        @Override // java.util.SortedSet
        public SortedSet subSet(Object obj, Object obj2) {
            f();
            return new o(e(), h().subSet(obj, obj2), b() == null ? this : b());
        }

        @Override // java.util.SortedSet
        public SortedSet tailSet(Object obj) {
            f();
            return new o(e(), h().tailSet(obj), b() == null ? this : b());
        }
    }

    protected AbstractMapBasedMultimap(Map<K, Collection<V>> map) {
        com.google.common.base.m.d(map.isEmpty());
        this.map = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Collection a(Object obj) {
        Collection<V> collection = this.map.get(obj);
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionCreateCollection = createCollection(obj);
        this.map.put(obj, collectionCreateCollection);
        return collectionCreateCollection;
    }

    static /* synthetic */ int access$208(AbstractMapBasedMultimap abstractMapBasedMultimap) {
        int i11 = abstractMapBasedMultimap.totalSize;
        abstractMapBasedMultimap.totalSize = i11 + 1;
        return i11;
    }

    static /* synthetic */ int access$210(AbstractMapBasedMultimap abstractMapBasedMultimap) {
        int i11 = abstractMapBasedMultimap.totalSize;
        abstractMapBasedMultimap.totalSize = i11 - 1;
        return i11;
    }

    static /* synthetic */ int access$212(AbstractMapBasedMultimap abstractMapBasedMultimap, int i11) {
        int i12 = abstractMapBasedMultimap.totalSize + i11;
        abstractMapBasedMultimap.totalSize = i12;
        return i12;
    }

    static /* synthetic */ int access$220(AbstractMapBasedMultimap abstractMapBasedMultimap, int i11) {
        int i12 = abstractMapBasedMultimap.totalSize - i11;
        abstractMapBasedMultimap.totalSize = i12;
        return i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Iterator b(Collection collection) {
        return collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Object obj) {
        Collection collection = (Collection) Maps.w(this.map, obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            this.totalSize -= size;
        }
    }

    Map<K, Collection<V>> backingMap() {
        return this.map;
    }

    @Override // com.google.common.collect.j3
    public void clear() {
        Iterator<Collection<V>> it = this.map.values().iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        this.map.clear();
        this.totalSize = 0;
    }

    @Override // com.google.common.collect.j3
    public boolean containsKey(Object obj) {
        return this.map.containsKey(obj);
    }

    @Override // com.google.common.collect.c
    Map<K, Collection<V>> createAsMap() {
        return new c(this.map);
    }

    abstract Collection<V> createCollection();

    Collection<V> createCollection(K k11) {
        return createCollection();
    }

    @Override // com.google.common.collect.c
    Collection<Map.Entry<K, V>> createEntries() {
        return this instanceof x3 ? new com.google.common.collect.c.b() : new com.google.common.collect.c.a();
    }

    @Override // com.google.common.collect.c
    Set<K> createKeySet() {
        return new e(this.map);
    }

    @Override // com.google.common.collect.c
    l3 createKeys() {
        return new Multimaps.c(this);
    }

    final Map<K, Collection<V>> createMaybeNavigableAsMap() {
        Map<K, Collection<V>> map = this.map;
        if (map instanceof NavigableMap) {
            return new f((NavigableMap) this.map);
        }
        return map instanceof SortedMap ? new i((SortedMap) this.map) : new c(this.map);
    }

    final Set<K> createMaybeNavigableKeySet() {
        Map<K, Collection<V>> map = this.map;
        if (map instanceof NavigableMap) {
            return new g((NavigableMap) this.map);
        }
        return map instanceof SortedMap ? new j((SortedMap) this.map) : new e(this.map);
    }

    Collection<V> createUnmodifiableEmptyCollection() {
        return (Collection<V>) unmodifiableCollectionSubclass(createCollection());
    }

    @Override // com.google.common.collect.c
    Collection<V> createValues() {
        return new com.google.common.collect.c.C0412c();
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    public Collection<Map.Entry<K, V>> entries() {
        return super.entries();
    }

    @Override // com.google.common.collect.c
    Iterator<Map.Entry<K, V>> entryIterator() {
        return new b();
    }

    @Override // com.google.common.collect.j3
    public Collection<V> get(K k11) {
        Collection<V> collectionCreateCollection = this.map.get(k11);
        if (collectionCreateCollection == null) {
            collectionCreateCollection = createCollection(k11);
        }
        return wrapCollection(k11, collectionCreateCollection);
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    public boolean put(K k11, V v11) {
        Collection<V> collection = this.map.get(k11);
        if (collection != null) {
            if (!collection.add(v11)) {
                return false;
            }
            this.totalSize++;
            return true;
        }
        Collection<V> collectionCreateCollection = createCollection(k11);
        if (!collectionCreateCollection.add(v11)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.totalSize++;
        this.map.put(k11, collectionCreateCollection);
        return true;
    }

    @Override // com.google.common.collect.j3
    public Collection<V> removeAll(Object obj) {
        Collection<V> collectionRemove = this.map.remove(obj);
        if (collectionRemove == null) {
            return createUnmodifiableEmptyCollection();
        }
        Collection collectionCreateCollection = createCollection();
        collectionCreateCollection.addAll(collectionRemove);
        this.totalSize -= collectionRemove.size();
        collectionRemove.clear();
        return (Collection<V>) unmodifiableCollectionSubclass(collectionCreateCollection);
    }

    public Collection<V> replaceValues(K k11, Iterable<? extends V> iterable) {
        Iterator<? extends V> it = iterable.iterator();
        if (!it.hasNext()) {
            return removeAll(k11);
        }
        Collection collectionA = a(k11);
        Collection collectionCreateCollection = createCollection();
        collectionCreateCollection.addAll(collectionA);
        this.totalSize -= collectionA.size();
        collectionA.clear();
        while (it.hasNext()) {
            if (collectionA.add(it.next())) {
                this.totalSize++;
            }
        }
        return (Collection<V>) unmodifiableCollectionSubclass(collectionCreateCollection);
    }

    final void setMap(Map<K, Collection<V>> map) {
        this.map = map;
        this.totalSize = 0;
        for (Collection<V> collection : map.values()) {
            com.google.common.base.m.d(!collection.isEmpty());
            this.totalSize += collection.size();
        }
    }

    @Override // com.google.common.collect.j3
    public int size() {
        return this.totalSize;
    }

    <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        return Collections.unmodifiableCollection(collection);
    }

    @Override // com.google.common.collect.c
    Iterator<V> valueIterator() {
        return new a();
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    public Collection<V> values() {
        return super.values();
    }

    Collection<V> wrapCollection(K k11, Collection<V> collection) {
        return new k(k11, collection, null);
    }

    final List<V> wrapList(K k11, List<V> list, AbstractMapBasedMultimap<K, V>.k kVar) {
        return list instanceof RandomAccess ? new h(k11, list, kVar) : new l(k11, list, kVar);
    }
}
