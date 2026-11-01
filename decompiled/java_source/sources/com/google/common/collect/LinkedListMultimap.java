package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class LinkedListMultimap<K, V> extends com.google.common.collect.c implements i3, Serializable {
    private static final long serialVersionUID = 0;
    private transient g head;
    private transient Map<K, f> keyToKeyList;
    private transient int modCount;
    private transient int size;
    private transient g tail;

    class a extends AbstractSequentialList {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f30505a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ LinkedListMultimap f30506b;

        a(LinkedListMultimap linkedListMultimap, Object obj) {
            this.f30505a = obj;
            this.f30506b = linkedListMultimap;
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator listIterator(int i11) {
            return new i(this.f30505a, i11);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            f fVar = (f) this.f30506b.keyToKeyList.get(this.f30505a);
            if (fVar == null) {
                return 0;
            }
            return fVar.f30519c;
        }
    }

    class b extends AbstractSequentialList {
        b() {
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator listIterator(int i11) {
            return new h(i11);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return LinkedListMultimap.this.size;
        }
    }

    class c extends Sets.e {
        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return LinkedListMultimap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new e(LinkedListMultimap.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return !LinkedListMultimap.this.removeAll(obj).isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedListMultimap.this.keyToKeyList.size();
        }
    }

    class d extends AbstractSequentialList {

        class a extends p4 {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ h f30510b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ d f30511c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(d dVar, ListIterator listIterator, h hVar) {
                super(listIterator);
                this.f30510b = hVar;
                this.f30511c = dVar;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.o4
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public Object a(Map.Entry entry) {
                return entry.getValue();
            }

            @Override // com.google.common.collect.p4, java.util.ListIterator
            public void set(Object obj) {
                this.f30510b.f(obj);
            }
        }

        d() {
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator listIterator(int i11) {
            h hVar = new h(i11);
            return new a(this, hVar, hVar);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return LinkedListMultimap.this.size;
        }
    }

    private class e implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Set f30512a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        g f30513b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        g f30514c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f30515d;

        private e() {
            this.f30512a = Sets.g(LinkedListMultimap.this.keySet().size());
            this.f30513b = LinkedListMultimap.this.head;
            this.f30515d = LinkedListMultimap.this.modCount;
        }

        /* synthetic */ e(LinkedListMultimap linkedListMultimap, a aVar) {
            this();
        }

        private void a() {
            if (LinkedListMultimap.this.modCount != this.f30515d) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            a();
            return this.f30513b != null;
        }

        @Override // java.util.Iterator
        public Object next() {
            g gVar;
            a();
            g gVar2 = this.f30513b;
            if (gVar2 == null) {
                throw new NoSuchElementException();
            }
            this.f30514c = gVar2;
            this.f30512a.add(gVar2.f30520a);
            do {
                gVar = this.f30513b.f30522c;
                this.f30513b = gVar;
                if (gVar == null) {
                    break;
                }
            } while (!this.f30512a.add(gVar.f30520a));
            return this.f30514c.f30520a;
        }

        @Override // java.util.Iterator
        public void remove() {
            a();
            com.google.common.base.m.v(this.f30514c != null, "no calls to next() since the last call to remove()");
            LinkedListMultimap.this.removeAllNodes(this.f30514c.f30520a);
            this.f30514c = null;
            this.f30515d = LinkedListMultimap.this.modCount;
        }
    }

    private static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        g f30517a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        g f30518b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f30519c;

        f(g gVar) {
            this.f30517a = gVar;
            this.f30518b = gVar;
            gVar.f30525f = null;
            gVar.f30524e = null;
            this.f30519c = 1;
        }
    }

    static final class g extends com.google.common.collect.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f30520a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Object f30521b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        g f30522c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        g f30523d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        g f30524e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        g f30525f;

        g(Object obj, Object obj2) {
            this.f30520a = obj;
            this.f30521b = obj2;
        }

        @Override // com.google.common.collect.b, java.util.Map.Entry
        public Object getKey() {
            return this.f30520a;
        }

        @Override // com.google.common.collect.b, java.util.Map.Entry
        public Object getValue() {
            return this.f30521b;
        }

        @Override // com.google.common.collect.b, java.util.Map.Entry
        public Object setValue(Object obj) {
            Object obj2 = this.f30521b;
            this.f30521b = obj;
            return obj2;
        }
    }

    private class h implements ListIterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f30526a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        g f30527b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        g f30528c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        g f30529d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f30530e;

        h(int i11) {
            this.f30530e = LinkedListMultimap.this.modCount;
            int size = LinkedListMultimap.this.size();
            com.google.common.base.m.r(i11, size);
            if (i11 < size / 2) {
                this.f30527b = LinkedListMultimap.this.head;
                while (true) {
                    int i12 = i11 - 1;
                    if (i11 <= 0) {
                        break;
                    }
                    next();
                    i11 = i12;
                }
            } else {
                this.f30529d = LinkedListMultimap.this.tail;
                this.f30526a = size;
                while (true) {
                    int i13 = i11 + 1;
                    if (i11 >= size) {
                        break;
                    }
                    previous();
                    i11 = i13;
                }
            }
            this.f30528c = null;
        }

        private void b() {
            if (LinkedListMultimap.this.modCount != this.f30530e) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.ListIterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void add(Map.Entry entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public g next() {
            b();
            g gVar = this.f30527b;
            if (gVar == null) {
                throw new NoSuchElementException();
            }
            this.f30528c = gVar;
            this.f30529d = gVar;
            this.f30527b = gVar.f30522c;
            this.f30526a++;
            return gVar;
        }

        @Override // java.util.ListIterator
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public g previous() {
            b();
            g gVar = this.f30529d;
            if (gVar == null) {
                throw new NoSuchElementException();
            }
            this.f30528c = gVar;
            this.f30527b = gVar;
            this.f30529d = gVar.f30523d;
            this.f30526a--;
            return gVar;
        }

        @Override // java.util.ListIterator
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void set(Map.Entry entry) {
            throw new UnsupportedOperationException();
        }

        void f(Object obj) {
            com.google.common.base.m.u(this.f30528c != null);
            this.f30528c.f30521b = obj;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            b();
            return this.f30527b != null;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            b();
            return this.f30529d != null;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f30526a;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f30526a - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            b();
            com.google.common.base.m.v(this.f30528c != null, "no calls to next() since the last call to remove()");
            g gVar = this.f30528c;
            if (gVar != this.f30527b) {
                this.f30529d = gVar.f30523d;
                this.f30526a--;
            } else {
                this.f30527b = gVar.f30522c;
            }
            LinkedListMultimap.this.removeNode(gVar);
            this.f30528c = null;
            this.f30530e = LinkedListMultimap.this.modCount;
        }
    }

    private class i implements ListIterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f30532a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f30533b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        g f30534c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        g f30535d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        g f30536e;

        i(Object obj) {
            this.f30532a = obj;
            f fVar = (f) LinkedListMultimap.this.keyToKeyList.get(obj);
            this.f30534c = fVar == null ? null : fVar.f30517a;
        }

        public i(Object obj, int i11) {
            f fVar = (f) LinkedListMultimap.this.keyToKeyList.get(obj);
            int i12 = fVar == null ? 0 : fVar.f30519c;
            com.google.common.base.m.r(i11, i12);
            if (i11 < i12 / 2) {
                this.f30534c = fVar == null ? null : fVar.f30517a;
                while (true) {
                    int i13 = i11 - 1;
                    if (i11 <= 0) {
                        break;
                    }
                    next();
                    i11 = i13;
                }
            } else {
                this.f30536e = fVar == null ? null : fVar.f30518b;
                this.f30533b = i12;
                while (true) {
                    int i14 = i11 + 1;
                    if (i11 >= i12) {
                        break;
                    }
                    previous();
                    i11 = i14;
                }
            }
            this.f30532a = obj;
            this.f30535d = null;
        }

        @Override // java.util.ListIterator
        public void add(Object obj) {
            this.f30536e = LinkedListMultimap.this.addNode(this.f30532a, obj, this.f30534c);
            this.f30533b++;
            this.f30535d = null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f30534c != null;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f30536e != null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public Object next() {
            g gVar = this.f30534c;
            if (gVar == null) {
                throw new NoSuchElementException();
            }
            this.f30535d = gVar;
            this.f30536e = gVar;
            this.f30534c = gVar.f30524e;
            this.f30533b++;
            return gVar.f30521b;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f30533b;
        }

        @Override // java.util.ListIterator
        public Object previous() {
            g gVar = this.f30536e;
            if (gVar == null) {
                throw new NoSuchElementException();
            }
            this.f30535d = gVar;
            this.f30534c = gVar;
            this.f30536e = gVar.f30525f;
            this.f30533b--;
            return gVar.f30521b;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f30533b - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            com.google.common.base.m.v(this.f30535d != null, "no calls to next() since the last call to remove()");
            g gVar = this.f30535d;
            if (gVar != this.f30534c) {
                this.f30536e = gVar.f30525f;
                this.f30533b--;
            } else {
                this.f30534c = gVar.f30524e;
            }
            LinkedListMultimap.this.removeNode(gVar);
            this.f30535d = null;
        }

        @Override // java.util.ListIterator
        public void set(Object obj) {
            com.google.common.base.m.u(this.f30535d != null);
            this.f30535d.f30521b = obj;
        }
    }

    LinkedListMultimap() {
        this(12);
    }

    private LinkedListMultimap(int i11) {
        this.keyToKeyList = r3.d(i11);
    }

    private LinkedListMultimap(j3 j3Var) {
        this(j3Var.keySet().size());
        putAll(j3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public g addNode(K k11, V v11, g gVar) {
        g gVar2 = new g(k11, v11);
        if (this.head == null) {
            this.tail = gVar2;
            this.head = gVar2;
            this.keyToKeyList.put(k11, new f(gVar2));
            this.modCount++;
        } else if (gVar == null) {
            g gVar3 = this.tail;
            Objects.requireNonNull(gVar3);
            gVar3.f30522c = gVar2;
            gVar2.f30523d = this.tail;
            this.tail = gVar2;
            f fVar = this.keyToKeyList.get(k11);
            if (fVar == null) {
                this.keyToKeyList.put(k11, new f(gVar2));
                this.modCount++;
            } else {
                fVar.f30519c++;
                g gVar4 = fVar.f30518b;
                gVar4.f30524e = gVar2;
                gVar2.f30525f = gVar4;
                fVar.f30518b = gVar2;
            }
        } else {
            f fVar2 = this.keyToKeyList.get(k11);
            Objects.requireNonNull(fVar2);
            fVar2.f30519c++;
            gVar2.f30523d = gVar.f30523d;
            gVar2.f30525f = gVar.f30525f;
            gVar2.f30522c = gVar;
            gVar2.f30524e = gVar;
            g gVar5 = gVar.f30525f;
            if (gVar5 == null) {
                fVar2.f30517a = gVar2;
            } else {
                gVar5.f30524e = gVar2;
            }
            g gVar6 = gVar.f30523d;
            if (gVar6 == null) {
                this.head = gVar2;
            } else {
                gVar6.f30522c = gVar2;
            }
            gVar.f30523d = gVar2;
            gVar.f30525f = gVar2;
        }
        this.size++;
        return gVar2;
    }

    public static <K, V> LinkedListMultimap<K, V> create() {
        return new LinkedListMultimap<>();
    }

    public static <K, V> LinkedListMultimap<K, V> create(int i11) {
        return new LinkedListMultimap<>(i11);
    }

    public static <K, V> LinkedListMultimap<K, V> create(j3 j3Var) {
        return new LinkedListMultimap<>(j3Var);
    }

    private List<V> getCopy(K k11) {
        return Collections.unmodifiableList(Lists.k(new i(k11)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.keyToKeyList = CompactLinkedHashMap.create();
        int i11 = objectInputStream.readInt();
        for (int i12 = 0; i12 < i11; i12++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeAllNodes(K k11) {
        Iterators.d(new i(k11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeNode(g gVar) {
        g gVar2 = gVar.f30523d;
        if (gVar2 != null) {
            gVar2.f30522c = gVar.f30522c;
        } else {
            this.head = gVar.f30522c;
        }
        g gVar3 = gVar.f30522c;
        if (gVar3 != null) {
            gVar3.f30523d = gVar2;
        } else {
            this.tail = gVar2;
        }
        if (gVar.f30525f == null && gVar.f30524e == null) {
            f fVarRemove = this.keyToKeyList.remove(gVar.f30520a);
            Objects.requireNonNull(fVarRemove);
            fVarRemove.f30519c = 0;
            this.modCount++;
        } else {
            f fVar = this.keyToKeyList.get(gVar.f30520a);
            Objects.requireNonNull(fVar);
            fVar.f30519c--;
            g gVar4 = gVar.f30525f;
            if (gVar4 == null) {
                g gVar5 = gVar.f30524e;
                Objects.requireNonNull(gVar5);
                fVar.f30517a = gVar5;
            } else {
                gVar4.f30524e = gVar.f30524e;
            }
            g gVar6 = gVar.f30524e;
            if (gVar6 == null) {
                g gVar7 = gVar.f30525f;
                Objects.requireNonNull(gVar7);
                fVar.f30518b = gVar7;
            } else {
                gVar6.f30525f = gVar.f30525f;
            }
        }
        this.size--;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : entries()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    public /* bridge */ /* synthetic */ Map asMap() {
        return super.asMap();
    }

    @Override // com.google.common.collect.j3
    public void clear() {
        this.head = null;
        this.tail = null;
        this.keyToKeyList.clear();
        this.size = 0;
        this.modCount++;
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    public /* bridge */ /* synthetic */ boolean containsEntry(Object obj, Object obj2) {
        return super.containsEntry(obj, obj2);
    }

    @Override // com.google.common.collect.j3
    public boolean containsKey(Object obj) {
        return this.keyToKeyList.containsKey(obj);
    }

    @Override // com.google.common.collect.c
    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override // com.google.common.collect.c
    Map<K, Collection<V>> createAsMap() {
        return new Multimaps.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.c
    public List<Map.Entry<K, V>> createEntries() {
        return new b();
    }

    @Override // com.google.common.collect.c
    Set<K> createKeySet() {
        return new c();
    }

    @Override // com.google.common.collect.c
    l3 createKeys() {
        return new Multimaps.c(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.c
    public List<V> createValues() {
        return new d();
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    public List<Map.Entry<K, V>> entries() {
        return (List) super.entries();
    }

    @Override // com.google.common.collect.c
    Iterator<Map.Entry<K, V>> entryIterator() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.c
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.j3
    public List<V> get(K k11) {
        return new a(this, k11);
    }

    @Override // com.google.common.collect.c
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    public boolean isEmpty() {
        return this.head == null;
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    @Override // com.google.common.collect.c
    public /* bridge */ /* synthetic */ l3 keys() {
        return super.keys();
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    public boolean put(K k11, V v11) {
        addNode(k11, v11, null);
        return true;
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.j3
    public List<V> removeAll(Object obj) {
        List<V> copy = getCopy(obj);
        removeAllNodes(obj);
        return copy;
    }

    public List<V> replaceValues(K k11, Iterable<? extends V> iterable) {
        List<V> copy = getCopy(k11);
        i iVar = new i(k11);
        Iterator<? extends V> it = iterable.iterator();
        while (iVar.hasNext() && it.hasNext()) {
            iVar.next();
            iVar.set(it.next());
        }
        while (iVar.hasNext()) {
            iVar.next();
            iVar.remove();
        }
        while (it.hasNext()) {
            iVar.add(it.next());
        }
        return copy;
    }

    @Override // com.google.common.collect.j3
    public int size() {
        return this.size;
    }

    @Override // com.google.common.collect.c
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    public List<V> values() {
        return (List) super.values();
    }
}
