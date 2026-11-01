package com.google.protobuf;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
class l1 extends AbstractMap {
    private List<com.google.protobuf.l1.e> entryList;
    private boolean isImmutable;
    private volatile com.google.protobuf.l1.c lazyDescendingEntrySet;
    private volatile com.google.protobuf.l1.g lazyEntrySet;
    private final int maxArraySize;
    private Map<Comparable<Object>, Object> overflowEntries;
    private Map<Comparable<Object>, Object> overflowEntriesDescending;

    class a extends l1 {
        a(int i11) {
            super(i11, null);
        }

        @Override // com.google.protobuf.l1
        public void makeImmutable() {
            if (!isImmutable()) {
                for (int i11 = 0; i11 < getNumArrayEntries(); i11++) {
                    Map.Entry<Comparable<Object>, Object> arrayEntryAt = getArrayEntryAt(i11);
                    if (((t.c) arrayEntryAt.getKey()).isRepeated()) {
                        arrayEntryAt.setValue(Collections.unmodifiableList((List) arrayEntryAt.getValue()));
                    }
                }
                for (Map.Entry<Comparable<Object>, Object> entry : getOverflowEntries()) {
                    if (((t.c) entry.getKey()).isRepeated()) {
                        entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                    }
                }
            }
            super.makeImmutable();
        }

        @Override // com.google.protobuf.l1, java.util.AbstractMap, java.util.Map
        public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            return super.put((Comparable<Object>) obj, obj2);
        }
    }

    private class b implements Iterator {
        private Iterator<Map.Entry<Comparable<Object>, Object>> lazyOverflowIterator;
        private int pos;

        private b() {
            this.pos = l1.this.entryList.size();
        }

        /* synthetic */ b(l1 l1Var, a aVar) {
            this();
        }

        private Iterator<Map.Entry<Comparable<Object>, Object>> getOverflowIterator() {
            if (this.lazyOverflowIterator == null) {
                this.lazyOverflowIterator = l1.this.overflowEntriesDescending.entrySet().iterator();
            }
            return this.lazyOverflowIterator;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            int i11 = this.pos;
            return (i11 > 0 && i11 <= l1.this.entryList.size()) || getOverflowIterator().hasNext();
        }

        @Override // java.util.Iterator
        public Map.Entry<Comparable<Object>, Object> next() {
            if (getOverflowIterator().hasNext()) {
                return getOverflowIterator().next();
            }
            List list = l1.this.entryList;
            int i11 = this.pos - 1;
            this.pos = i11;
            return (Map.Entry) list.get(i11);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    private class c extends g {
        private c() {
            super(l1.this, null);
        }

        /* synthetic */ c(l1 l1Var, a aVar) {
            this();
        }

        @Override // com.google.protobuf.l1.g, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<Comparable<Object>, Object>> iterator() {
            return new b(l1.this, null);
        }
    }

    private static class d {
        private static final Iterator<Object> ITERATOR = new a();
        private static final Iterable<Object> ITERABLE = new b();

        class a implements Iterator {
            a() {
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return false;
            }

            @Override // java.util.Iterator
            public Object next() {
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        }

        class b implements Iterable {
            b() {
            }

            @Override // java.lang.Iterable
            public Iterator<Object> iterator() {
                return d.ITERATOR;
            }
        }

        private d() {
        }

        static <T> Iterable<T> iterable() {
            return (Iterable<T>) ITERABLE;
        }
    }

    private class e implements Map.Entry, Comparable {
        private final Comparable<Object> key;
        private Object value;

        e(Comparable<Object> comparable, Object obj) {
            this.key = comparable;
            this.value = obj;
        }

        e(l1 l1Var, Map.Entry<Comparable<Object>, Object> entry) {
            this(entry.getKey(), entry.getValue());
        }

        private boolean equals(Object obj, Object obj2) {
            if (obj == null) {
                return obj2 == null;
            }
            return obj.equals(obj2);
        }

        @Override // java.lang.Comparable
        public int compareTo(com.google.protobuf.l1.e eVar) {
            return getKey().compareTo(eVar.getKey());
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return equals(this.key, entry.getKey()) && equals(this.value, entry.getValue());
        }

        @Override // java.util.Map.Entry
        public Comparable<Object> getKey() {
            return this.key;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.value;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            Comparable<Object> comparable = this.key;
            int iHashCode = comparable == null ? 0 : comparable.hashCode();
            Object obj = this.value;
            return iHashCode ^ (obj != null ? obj.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            l1.this.checkMutable();
            Object obj2 = this.value;
            this.value = obj;
            return obj2;
        }

        public String toString() {
            return this.key + UrlUtils.EQUAL_MARK + this.value;
        }
    }

    private class f implements Iterator {
        private Iterator<Map.Entry<Comparable<Object>, Object>> lazyOverflowIterator;
        private boolean nextCalledBeforeRemove;
        private int pos;

        private f() {
            this.pos = -1;
        }

        /* synthetic */ f(l1 l1Var, a aVar) {
            this();
        }

        private Iterator<Map.Entry<Comparable<Object>, Object>> getOverflowIterator() {
            if (this.lazyOverflowIterator == null) {
                this.lazyOverflowIterator = l1.this.overflowEntries.entrySet().iterator();
            }
            return this.lazyOverflowIterator;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.pos + 1 >= l1.this.entryList.size()) {
                return !l1.this.overflowEntries.isEmpty() && getOverflowIterator().hasNext();
            }
            return true;
        }

        @Override // java.util.Iterator
        public Map.Entry<Comparable<Object>, Object> next() {
            this.nextCalledBeforeRemove = true;
            int i11 = this.pos + 1;
            this.pos = i11;
            return i11 < l1.this.entryList.size() ? (Map.Entry) l1.this.entryList.get(this.pos) : getOverflowIterator().next();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.nextCalledBeforeRemove) {
                throw new IllegalStateException("remove() was called before next()");
            }
            this.nextCalledBeforeRemove = false;
            l1.this.checkMutable();
            if (this.pos >= l1.this.entryList.size()) {
                getOverflowIterator().remove();
                return;
            }
            l1 l1Var = l1.this;
            int i11 = this.pos;
            this.pos = i11 - 1;
            l1Var.removeArrayEntryAt(i11);
        }
    }

    private class g extends AbstractSet {
        private g() {
        }

        /* synthetic */ g(l1 l1Var, a aVar) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(Map.Entry<Comparable<Object>, Object> entry) {
            if (contains(entry)) {
                return false;
            }
            l1.this.put(entry.getKey(), entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            l1.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = l1.this.get(entry.getKey());
            Object value = entry.getValue();
            return obj2 == value || (obj2 != null && obj2.equals(value));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<Comparable<Object>, Object>> iterator() {
            return new f(l1.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                return false;
            }
            l1.this.remove(entry.getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return l1.this.size();
        }
    }

    private l1(int i11) {
        this.maxArraySize = i11;
        this.entryList = Collections.emptyList();
        this.overflowEntries = Collections.emptyMap();
        this.overflowEntriesDescending = Collections.emptyMap();
    }

    /* synthetic */ l1(int i11, a aVar) {
        this(i11);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0026  */
    /* JADX WARN: Code duplicated, block: B:17:0x0042  */
    /* JADX WARN: Code duplicated, block: B:21:0x0040 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x0046 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x003c A[SYNTHETIC] */
    private int binarySearchInArray(Comparable<Object> comparable) {
        int i11;
        int i12;
        int i13;
        int iCompareTo;
        int size = this.entryList.size();
        int i14 = size - 1;
        if (i14 < 0) {
            i11 = 0;
            while (i11 <= i14) {
                i13 = (i11 + i14) / 2;
                iCompareTo = comparable.compareTo(this.entryList.get(i13).getKey());
                if (iCompareTo < 0) {
                    i14 = i13 - 1;
                } else {
                    if (iCompareTo > 0) {
                        return i13;
                    }
                    i11 = i13 + 1;
                }
            }
            i12 = i11 + 1;
        } else {
            int iCompareTo2 = comparable.compareTo(this.entryList.get(i14).getKey());
            if (iCompareTo2 > 0) {
                i12 = size + 1;
            } else {
                if (iCompareTo2 == 0) {
                    return i14;
                }
                i11 = 0;
                while (i11 <= i14) {
                    i13 = (i11 + i14) / 2;
                    iCompareTo = comparable.compareTo(this.entryList.get(i13).getKey());
                    if (iCompareTo < 0) {
                        i14 = i13 - 1;
                    } else {
                        if (iCompareTo > 0) {
                            return i13;
                        }
                        i11 = i13 + 1;
                    }
                }
                i12 = i11 + 1;
            }
        }
        return -i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkMutable() {
        if (this.isImmutable) {
            throw new UnsupportedOperationException();
        }
    }

    private void ensureEntryArrayMutable() {
        checkMutable();
        if (!this.entryList.isEmpty() || (this.entryList instanceof ArrayList)) {
            return;
        }
        this.entryList = new ArrayList(this.maxArraySize);
    }

    private SortedMap<Comparable<Object>, Object> getOverflowEntriesMutable() {
        checkMutable();
        if (this.overflowEntries.isEmpty() && !(this.overflowEntries instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.overflowEntries = treeMap;
            this.overflowEntriesDescending = treeMap.descendingMap();
        }
        return (SortedMap) this.overflowEntries;
    }

    static <FieldDescriptorType extends t.c> l1 newFieldMap(int i11) {
        return new a(i11);
    }

    static <K extends Comparable<K>, V> l1 newInstanceForTest(int i11) {
        return new l1(i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object removeArrayEntryAt(int i11) {
        checkMutable();
        Object value = this.entryList.remove(i11).getValue();
        if (!this.overflowEntries.isEmpty()) {
            Iterator<Map.Entry<Comparable<Object>, Object>> it = getOverflowEntriesMutable().entrySet().iterator();
            this.entryList.add(new e(this, it.next()));
            it.remove();
        }
        return value;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        checkMutable();
        if (!this.entryList.isEmpty()) {
            this.entryList.clear();
        }
        if (this.overflowEntries.isEmpty()) {
            return;
        }
        this.overflowEntries.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable<Object> comparable = (Comparable) obj;
        return binarySearchInArray(comparable) >= 0 || this.overflowEntries.containsKey(comparable);
    }

    Set<Map.Entry<Comparable<Object>, Object>> descendingEntrySet() {
        if (this.lazyDescendingEntrySet == null) {
            this.lazyDescendingEntrySet = new c(this, null);
        }
        return this.lazyDescendingEntrySet;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<Comparable<Object>, Object>> entrySet() {
        if (this.lazyEntrySet == null) {
            this.lazyEntrySet = new g(this, null);
        }
        return this.lazyEntrySet;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l1)) {
            return super.equals(obj);
        }
        l1 l1Var = (l1) obj;
        int size = size();
        if (size != l1Var.size()) {
            return false;
        }
        int numArrayEntries = getNumArrayEntries();
        if (numArrayEntries != l1Var.getNumArrayEntries()) {
            return entrySet().equals(l1Var.entrySet());
        }
        for (int i11 = 0; i11 < numArrayEntries; i11++) {
            if (!getArrayEntryAt(i11).equals(l1Var.getArrayEntryAt(i11))) {
                return false;
            }
        }
        if (numArrayEntries != size) {
            return this.overflowEntries.equals(l1Var.overflowEntries);
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        Comparable<Object> comparable = (Comparable) obj;
        int iBinarySearchInArray = binarySearchInArray(comparable);
        return iBinarySearchInArray >= 0 ? this.entryList.get(iBinarySearchInArray).getValue() : this.overflowEntries.get(comparable);
    }

    public Map.Entry<Comparable<Object>, Object> getArrayEntryAt(int i11) {
        return this.entryList.get(i11);
    }

    public int getNumArrayEntries() {
        return this.entryList.size();
    }

    public int getNumOverflowEntries() {
        return this.overflowEntries.size();
    }

    public Iterable<Map.Entry<Comparable<Object>, Object>> getOverflowEntries() {
        return this.overflowEntries.isEmpty() ? d.iterable() : this.overflowEntries.entrySet();
    }

    Iterable<Map.Entry<Comparable<Object>, Object>> getOverflowEntriesDescending() {
        return this.overflowEntriesDescending.isEmpty() ? d.iterable() : this.overflowEntriesDescending.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int numArrayEntries = getNumArrayEntries();
        int iHashCode = 0;
        for (int i11 = 0; i11 < numArrayEntries; i11++) {
            iHashCode += this.entryList.get(i11).hashCode();
        }
        return getNumOverflowEntries() > 0 ? iHashCode + this.overflowEntries.hashCode() : iHashCode;
    }

    public boolean isImmutable() {
        return this.isImmutable;
    }

    public void makeImmutable() {
        if (this.isImmutable) {
            return;
        }
        this.overflowEntries = this.overflowEntries.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.overflowEntries);
        this.overflowEntriesDescending = this.overflowEntriesDescending.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.overflowEntriesDescending);
        this.isImmutable = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object put(Comparable<Object> comparable, Object obj) {
        checkMutable();
        int iBinarySearchInArray = binarySearchInArray(comparable);
        if (iBinarySearchInArray >= 0) {
            return this.entryList.get(iBinarySearchInArray).setValue(obj);
        }
        ensureEntryArrayMutable();
        int i11 = -(iBinarySearchInArray + 1);
        if (i11 >= this.maxArraySize) {
            return getOverflowEntriesMutable().put(comparable, obj);
        }
        int size = this.entryList.size();
        int i12 = this.maxArraySize;
        if (size == i12) {
            e eVarRemove = this.entryList.remove(i12 - 1);
            getOverflowEntriesMutable().put(eVarRemove.getKey(), eVarRemove.getValue());
        }
        this.entryList.add(i11, new e(comparable, obj));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        checkMutable();
        Comparable<Object> comparable = (Comparable) obj;
        int iBinarySearchInArray = binarySearchInArray(comparable);
        if (iBinarySearchInArray >= 0) {
            return removeArrayEntryAt(iBinarySearchInArray);
        }
        if (this.overflowEntries.isEmpty()) {
            return null;
        }
        return this.overflowEntries.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.entryList.size() + this.overflowEntries.size();
    }
}
