package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Multimaps {

    private static class CustomListMultimap<K, V> extends AbstractListMultimap<K, V> {
        private static final long serialVersionUID = 0;
        transient com.google.common.base.q factory;

        CustomListMultimap(Map<K, Collection<V>> map, com.google.common.base.q qVar) {
            super(map);
            this.factory = (com.google.common.base.q) com.google.common.base.m.o(qVar);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            Object object = objectInputStream.readObject();
            Objects.requireNonNull(object);
            this.factory = (com.google.common.base.q) object;
            Object object2 = objectInputStream.readObject();
            Objects.requireNonNull(object2);
            setMap((Map) object2);
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.factory);
            objectOutputStream.writeObject(backingMap());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.c
        Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.AbstractListMultimap, com.google.common.collect.AbstractMapBasedMultimap
        public List<V> createCollection() {
            return (List) this.factory.get();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.c
        Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }
    }

    private static class CustomSetMultimap<K, V> extends AbstractSetMultimap<K, V> {
        private static final long serialVersionUID = 0;
        transient com.google.common.base.q factory;

        CustomSetMultimap(Map<K, Collection<V>> map, com.google.common.base.q qVar) {
            super(map);
            this.factory = (com.google.common.base.q) com.google.common.base.m.o(qVar);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            Object object = objectInputStream.readObject();
            Objects.requireNonNull(object);
            this.factory = (com.google.common.base.q) object;
            Object object2 = objectInputStream.readObject();
            Objects.requireNonNull(object2);
            setMap((Map) object2);
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.factory);
            objectOutputStream.writeObject(backingMap());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.c
        Map<K, Collection<V>> createAsMap() {
            return createMaybeNavigableAsMap();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
        public Set<V> createCollection() {
            return (Set) this.factory.get();
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.c
        Set<K> createKeySet() {
            return createMaybeNavigableKeySet();
        }

        @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
        <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
            if (collection instanceof NavigableSet) {
                return Sets.l((NavigableSet) collection);
            }
            return collection instanceof SortedSet ? Collections.unmodifiableSortedSet((SortedSet) collection) : Collections.unmodifiableSet((Set) collection);
        }

        @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
        Collection<V> wrapCollection(K k11, Collection<V> collection) {
            if (collection instanceof NavigableSet) {
                return new AbstractMapBasedMultimap.m(k11, (NavigableSet) collection, null);
            }
            return collection instanceof SortedSet ? new AbstractMapBasedMultimap.o(k11, (SortedSet) collection, null) : new AbstractMapBasedMultimap.n(k11, (Set) collection);
        }
    }

    static final class a extends Maps.q {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final j3 f30608d;

        /* JADX INFO: renamed from: com.google.common.collect.Multimaps$a$a, reason: collision with other inner class name */
        class C0406a extends Maps.i {
            C0406a() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ Collection c(Object obj) {
                return a.this.f30608d.get(obj);
            }

            @Override // com.google.common.collect.Maps.i
            Map a() {
                return a.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator iterator() {
                return Maps.c(a.this.f30608d.keySet(), new com.google.common.base.f() { // from class: com.google.common.collect.k3
                    @Override // com.google.common.base.f
                    public final Object apply(Object obj) {
                        return this.f30820a.c(obj);
                    }
                });
            }

            @Override // com.google.common.collect.Maps.i, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                a.this.i(entry.getKey());
                return true;
            }
        }

        a(j3 j3Var) {
            this.f30608d = (j3) com.google.common.base.m.o(j3Var);
        }

        @Override // com.google.common.collect.Maps.q
        protected Set a() {
            return new C0406a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            this.f30608d.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.f30608d.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public Collection get(Object obj) {
            if (containsKey(obj)) {
                return this.f30608d.get(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Collection remove(Object obj) {
            if (containsKey(obj)) {
                return this.f30608d.removeAll(obj);
            }
            return null;
        }

        void i(Object obj) {
            this.f30608d.keySet().remove(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return this.f30608d.isEmpty();
        }

        @Override // com.google.common.collect.Maps.q, java.util.AbstractMap, java.util.Map
        public Set keySet() {
            return this.f30608d.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f30608d.keySet().size();
        }
    }

    static abstract class b extends AbstractCollection {
        b() {
        }

        abstract j3 a();

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return a().containsEntry(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return a().remove(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return a().size();
        }
    }

    static class c extends d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final j3 f30610a;

        class a extends o4 {

            /* JADX INFO: renamed from: com.google.common.collect.Multimaps$c$a$a, reason: collision with other inner class name */
            class C0407a extends Multisets.b {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ Map.Entry f30612a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ a f30613b;

                C0407a(a aVar, Map.Entry entry) {
                    this.f30612a = entry;
                    this.f30613b = aVar;
                }

                @Override // com.google.common.collect.l3.a
                public int getCount() {
                    return ((Collection) this.f30612a.getValue()).size();
                }

                @Override // com.google.common.collect.l3.a
                public Object getElement() {
                    return this.f30612a.getKey();
                }
            }

            a(Iterator it) {
                super(it);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.o4
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public l3.a a(Map.Entry entry) {
                return new C0407a(this, entry);
            }
        }

        c(j3 j3Var) {
            this.f30610a = j3Var;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.f30610a.clear();
        }

        @Override // com.google.common.collect.d, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.l3
        public boolean contains(Object obj) {
            return this.f30610a.containsKey(obj);
        }

        @Override // com.google.common.collect.l3
        public int count(Object obj) {
            Collection collection = (Collection) Maps.v(this.f30610a.asMap(), obj);
            if (collection == null) {
                return 0;
            }
            return collection.size();
        }

        @Override // com.google.common.collect.d
        int distinctElements() {
            return this.f30610a.asMap().size();
        }

        @Override // com.google.common.collect.d
        Iterator elementIterator() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.d, com.google.common.collect.l3
        public Set elementSet() {
            return this.f30610a.keySet();
        }

        @Override // com.google.common.collect.d
        Iterator entryIterator() {
            return new a(this.f30610a.asMap().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return Maps.l(this.f30610a.entries().iterator());
        }

        @Override // com.google.common.collect.d, com.google.common.collect.l3
        public int remove(Object obj, int i11) {
            e2.b(i11, "occurrences");
            if (i11 == 0) {
                return count(obj);
            }
            Collection collection = (Collection) Maps.v(this.f30610a.asMap(), obj);
            if (collection == null) {
                return 0;
            }
            int size = collection.size();
            if (i11 >= size) {
                collection.clear();
            } else {
                Iterator it = collection.iterator();
                for (int i12 = 0; i12 < i11; i12++) {
                    it.next();
                    it.remove();
                }
            }
            return size;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.l3
        public int size() {
            return this.f30610a.size();
        }
    }

    static boolean a(j3 j3Var, Object obj) {
        if (obj == j3Var) {
            return true;
        }
        if (obj instanceof j3) {
            return j3Var.asMap().equals(((j3) obj).asMap());
        }
        return false;
    }

    public static i3 b(Map map, com.google.common.base.q qVar) {
        return new CustomListMultimap(map, qVar);
    }

    public static x3 c(Map map, com.google.common.base.q qVar) {
        return new CustomSetMultimap(map, qVar);
    }
}
