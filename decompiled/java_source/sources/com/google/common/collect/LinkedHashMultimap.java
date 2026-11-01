package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class LinkedHashMultimap<K, V> extends LinkedHashMultimapGwtSerializationDependencies<K, V> {
    private static final int DEFAULT_KEY_CAPACITY = 16;
    private static final int DEFAULT_VALUE_SET_CAPACITY = 2;
    static final double VALUE_SET_LOAD_FACTOR = 1.0d;
    private static final long serialVersionUID = 1;
    private transient ValueEntry<K, V> multimapHeaderEntry;
    transient int valueSetCapacity;

    static final class ValueEntry<K, V> extends ImmutableEntry<K, V> implements c {
        ValueEntry<K, V> nextInValueBucket;
        private ValueEntry<K, V> predecessorInMultimap;
        private c predecessorInValueSet;
        final int smearedValueHash;
        private ValueEntry<K, V> successorInMultimap;
        private c successorInValueSet;

        ValueEntry(K k11, V v11, int i11, ValueEntry<K, V> valueEntry) {
            super(k11, v11);
            this.smearedValueHash = i11;
            this.nextInValueBucket = valueEntry;
        }

        static <K, V> ValueEntry<K, V> newHeader() {
            return new ValueEntry<>(null, null, 0, null);
        }

        public ValueEntry<K, V> getPredecessorInMultimap() {
            ValueEntry<K, V> valueEntry = this.predecessorInMultimap;
            Objects.requireNonNull(valueEntry);
            return valueEntry;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public c getPredecessorInValueSet() {
            c cVar = this.predecessorInValueSet;
            Objects.requireNonNull(cVar);
            return cVar;
        }

        public ValueEntry<K, V> getSuccessorInMultimap() {
            ValueEntry<K, V> valueEntry = this.successorInMultimap;
            Objects.requireNonNull(valueEntry);
            return valueEntry;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public c getSuccessorInValueSet() {
            c cVar = this.successorInValueSet;
            Objects.requireNonNull(cVar);
            return cVar;
        }

        boolean matchesValue(Object obj, int i11) {
            return this.smearedValueHash == i11 && com.google.common.base.j.a(getValue(), obj);
        }

        public void setPredecessorInMultimap(ValueEntry<K, V> valueEntry) {
            this.predecessorInMultimap = valueEntry;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public void setPredecessorInValueSet(c cVar) {
            this.predecessorInValueSet = cVar;
        }

        public void setSuccessorInMultimap(ValueEntry<K, V> valueEntry) {
            this.successorInMultimap = valueEntry;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public void setSuccessorInValueSet(c cVar) {
            this.successorInValueSet = cVar;
        }
    }

    class a implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ValueEntry f30491a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ValueEntry f30492b;

        a() {
            this.f30491a = LinkedHashMultimap.this.multimapHeaderEntry.getSuccessorInMultimap();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            ValueEntry valueEntry = this.f30491a;
            this.f30492b = valueEntry;
            this.f30491a = valueEntry.getSuccessorInMultimap();
            return valueEntry;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30491a != LinkedHashMultimap.this.multimapHeaderEntry;
        }

        @Override // java.util.Iterator
        public void remove() {
            com.google.common.base.m.v(this.f30492b != null, "no calls to next() since the last call to remove()");
            LinkedHashMultimap.this.remove(this.f30492b.getKey(), this.f30492b.getValue());
            this.f30492b = null;
        }
    }

    final class b extends Sets.e implements c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f30494a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ValueEntry[] f30495b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f30496c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f30497d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private c f30498e = this;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private c f30499f = this;

        class a implements Iterator {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            c f30501a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            ValueEntry f30502b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            int f30503c;

            a() {
                this.f30501a = b.this.f30498e;
                this.f30503c = b.this.f30497d;
            }

            private void a() {
                if (b.this.f30497d != this.f30503c) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                a();
                return this.f30501a != b.this;
            }

            @Override // java.util.Iterator
            public Object next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                ValueEntry valueEntry = (ValueEntry) this.f30501a;
                V value = valueEntry.getValue();
                this.f30502b = valueEntry;
                this.f30501a = valueEntry.getSuccessorInValueSet();
                return value;
            }

            @Override // java.util.Iterator
            public void remove() {
                a();
                com.google.common.base.m.v(this.f30502b != null, "no calls to next() since the last call to remove()");
                b.this.remove(this.f30502b.getValue());
                this.f30503c = b.this.f30497d;
                this.f30502b = null;
            }
        }

        b(Object obj, int i11) {
            this.f30494a = obj;
            this.f30495b = new ValueEntry[v2.a(i11, 1.0d)];
        }

        private int c() {
            return this.f30495b.length - 1;
        }

        private void e() {
            if (v2.b(this.f30496c, this.f30495b.length, 1.0d)) {
                int length = this.f30495b.length * 2;
                ValueEntry<K, V>[] valueEntryArr = new ValueEntry[length];
                this.f30495b = valueEntryArr;
                int i11 = length - 1;
                for (c successorInValueSet = this.f30498e; successorInValueSet != this; successorInValueSet = successorInValueSet.getSuccessorInValueSet()) {
                    ValueEntry<K, V> valueEntry = (ValueEntry) successorInValueSet;
                    int i12 = valueEntry.smearedValueHash & i11;
                    valueEntry.nextInValueBucket = valueEntryArr[i12];
                    valueEntryArr[i12] = valueEntry;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(Object obj) {
            int iD = v2.d(obj);
            int iC = c() & iD;
            ValueEntry<K, V> valueEntry = this.f30495b[iC];
            for (ValueEntry<K, V> valueEntry2 = valueEntry; valueEntry2 != null; valueEntry2 = valueEntry2.nextInValueBucket) {
                if (valueEntry2.matchesValue(obj, iD)) {
                    return false;
                }
            }
            ValueEntry valueEntry3 = new ValueEntry(this.f30494a, obj, iD, valueEntry);
            LinkedHashMultimap.succeedsInValueSet(this.f30499f, valueEntry3);
            LinkedHashMultimap.succeedsInValueSet(valueEntry3, this);
            LinkedHashMultimap.succeedsInMultimap(LinkedHashMultimap.this.multimapHeaderEntry.getPredecessorInMultimap(), valueEntry3);
            LinkedHashMultimap.succeedsInMultimap(valueEntry3, LinkedHashMultimap.this.multimapHeaderEntry);
            this.f30495b[iC] = valueEntry3;
            this.f30496c++;
            this.f30497d++;
            e();
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Arrays.fill(this.f30495b, (Object) null);
            this.f30496c = 0;
            for (c successorInValueSet = this.f30498e; successorInValueSet != this; successorInValueSet = successorInValueSet.getSuccessorInValueSet()) {
                LinkedHashMultimap.deleteFromMultimap((ValueEntry) successorInValueSet);
            }
            LinkedHashMultimap.succeedsInValueSet(this, this);
            this.f30497d++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            int iD = v2.d(obj);
            for (ValueEntry<K, V> valueEntry = this.f30495b[c() & iD]; valueEntry != null; valueEntry = valueEntry.nextInValueBucket) {
                if (valueEntry.matchesValue(obj, iD)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public c getPredecessorInValueSet() {
            return this.f30499f;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public c getSuccessorInValueSet() {
            return this.f30498e;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int iD = v2.d(obj);
            int iC = c() & iD;
            ValueEntry<K, V> valueEntry = null;
            for (ValueEntry<K, V> valueEntry2 = this.f30495b[iC]; valueEntry2 != null; valueEntry2 = valueEntry2.nextInValueBucket) {
                if (valueEntry2.matchesValue(obj, iD)) {
                    if (valueEntry == null) {
                        this.f30495b[iC] = valueEntry2.nextInValueBucket;
                    } else {
                        valueEntry.nextInValueBucket = valueEntry2.nextInValueBucket;
                    }
                    LinkedHashMultimap.deleteFromValueSet(valueEntry2);
                    LinkedHashMultimap.deleteFromMultimap(valueEntry2);
                    this.f30496c--;
                    this.f30497d++;
                    return true;
                }
                valueEntry = valueEntry2;
            }
            return false;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public void setPredecessorInValueSet(c cVar) {
            this.f30499f = cVar;
        }

        @Override // com.google.common.collect.LinkedHashMultimap.c
        public void setSuccessorInValueSet(c cVar) {
            this.f30498e = cVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f30496c;
        }
    }

    private interface c {
        c getPredecessorInValueSet();

        c getSuccessorInValueSet();

        void setPredecessorInValueSet(c cVar);

        void setSuccessorInValueSet(c cVar);
    }

    private LinkedHashMultimap(int i11, int i12) {
        super(r3.f(i11));
        this.valueSetCapacity = 2;
        e2.b(i12, "expectedValuesPerKey");
        this.valueSetCapacity = i12;
        ValueEntry<K, V> valueEntryNewHeader = ValueEntry.newHeader();
        this.multimapHeaderEntry = valueEntryNewHeader;
        succeedsInMultimap(valueEntryNewHeader, valueEntryNewHeader);
    }

    public static <K, V> LinkedHashMultimap<K, V> create() {
        return new LinkedHashMultimap<>(16, 2);
    }

    public static <K, V> LinkedHashMultimap<K, V> create(int i11, int i12) {
        return new LinkedHashMultimap<>(Maps.d(i11), Maps.d(i12));
    }

    public static <K, V> LinkedHashMultimap<K, V> create(j3 j3Var) {
        LinkedHashMultimap<K, V> linkedHashMultimapCreate = create(j3Var.keySet().size(), 2);
        linkedHashMultimapCreate.putAll(j3Var);
        return linkedHashMultimapCreate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void deleteFromMultimap(ValueEntry<K, V> valueEntry) {
        succeedsInMultimap(valueEntry.getPredecessorInMultimap(), valueEntry.getSuccessorInMultimap());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void deleteFromValueSet(c cVar) {
        succeedsInValueSet(cVar.getPredecessorInValueSet(), cVar.getSuccessorInValueSet());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        ValueEntry<K, V> valueEntryNewHeader = ValueEntry.newHeader();
        this.multimapHeaderEntry = valueEntryNewHeader;
        succeedsInMultimap(valueEntryNewHeader, valueEntryNewHeader);
        this.valueSetCapacity = 2;
        int i11 = objectInputStream.readInt();
        Map mapF = r3.f(12);
        for (int i12 = 0; i12 < i11; i12++) {
            Object object = objectInputStream.readObject();
            mapF.put(object, createCollection(object));
        }
        int i13 = objectInputStream.readInt();
        for (int i14 = 0; i14 < i13; i14++) {
            Object object2 = objectInputStream.readObject();
            Object object3 = objectInputStream.readObject();
            Collection collection = (Collection) mapF.get(object2);
            Objects.requireNonNull(collection);
            collection.add(object3);
        }
        setMap(mapF);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void succeedsInMultimap(ValueEntry<K, V> valueEntry, ValueEntry<K, V> valueEntry2) {
        valueEntry.setSuccessorInMultimap(valueEntry2);
        valueEntry2.setPredecessorInMultimap(valueEntry);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> void succeedsInValueSet(c cVar, c cVar2) {
        cVar.setSuccessorInValueSet(cVar2);
        cVar2.setPredecessorInValueSet(cVar);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(keySet().size());
        Iterator<K> it = keySet().iterator();
        while (it.hasNext()) {
            objectOutputStream.writeObject(it.next());
        }
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : entries()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.c, com.google.common.collect.j3
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.j3
    public void clear() {
        super.clear();
        ValueEntry<K, V> valueEntry = this.multimapHeaderEntry;
        succeedsInMultimap(valueEntry, valueEntry);
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    public /* bridge */ /* synthetic */ boolean containsEntry(Object obj, Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.j3
    public /* bridge */ /* synthetic */ boolean containsKey(Object obj) {
        return super.containsKey(obj);
    }

    @Override // com.google.common.collect.c
    public /* bridge */ /* synthetic */ boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    Collection<V> createCollection(K k11) {
        return new b(k11, this.valueSetCapacity);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
    public Set<V> createCollection() {
        return r3.g(this.valueSetCapacity);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.c, com.google.common.collect.j3
    public Set<Map.Entry<K, V>> entries() {
        return super.entries();
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.c
    Iterator<Map.Entry<K, V>> entryIterator() {
        return new a();
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.c
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.j3
    public /* bridge */ /* synthetic */ Set get(Object obj) {
        return super.get(obj);
    }

    @Override // com.google.common.collect.c
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    public Set<K> keySet() {
        return (Set<K>) super.keySet();
    }

    @Override // com.google.common.collect.c
    public /* bridge */ /* synthetic */ l3 keys() {
        return super.keys();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.c, com.google.common.collect.j3
    public /* bridge */ /* synthetic */ boolean put(Object obj, Object obj2) {
        return super.put(obj, obj2);
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    public /* bridge */ /* synthetic */ boolean putAll(j3 j3Var) {
        return super.putAll(j3Var);
    }

    @Override // com.google.common.collect.c
    public /* bridge */ /* synthetic */ boolean putAll(Object obj, Iterable iterable) {
        return super.putAll(obj, iterable);
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    public /* bridge */ /* synthetic */ boolean remove(Object obj, Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.j3
    public /* bridge */ /* synthetic */ Set removeAll(Object obj) {
        return super.removeAll(obj);
    }

    @Override // com.google.common.collect.AbstractSetMultimap, com.google.common.collect.AbstractMapBasedMultimap
    public Set<V> replaceValues(K k11, Iterable<? extends V> iterable) {
        return super.replaceValues((Object) k11, (Iterable) iterable);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.j3
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.c
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.c
    Iterator<V> valueIterator() {
        return Maps.D(entryIterator());
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.c, com.google.common.collect.j3
    public Collection<V> values() {
        return super.values();
    }
}
