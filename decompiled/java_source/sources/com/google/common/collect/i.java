package com.google.common.collect;

import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
abstract class i implements c4 {
    private transient Set<c4.a> cellSet;
    private transient Collection<Object> values;

    class a extends o4 {
        a(Iterator it) {
            super(it);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.o4
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Object a(c4.a aVar) {
            return aVar.getValue();
        }
    }

    class b extends AbstractSet {
        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            i.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof c4.a)) {
                return false;
            }
            c4.a aVar = (c4.a) obj;
            Map map = (Map) Maps.v(i.this.rowMap(), aVar.getRowKey());
            return map != null && f2.c(map.entrySet(), Maps.i(aVar.getColumnKey(), aVar.getValue()));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return i.this.cellIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof c4.a)) {
                return false;
            }
            c4.a aVar = (c4.a) obj;
            Map map = (Map) Maps.v(i.this.rowMap(), aVar.getRowKey());
            return map != null && f2.d(map.entrySet(), Maps.i(aVar.getColumnKey(), aVar.getValue()));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return i.this.size();
        }
    }

    class c extends AbstractCollection {
        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            i.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return i.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return i.this.valuesIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return i.this.size();
        }
    }

    i() {
    }

    abstract Iterator cellIterator();

    @Override // com.google.common.collect.c4
    public Set cellSet() {
        Set<c4.a> set = this.cellSet;
        if (set != null) {
            return set;
        }
        Set<c4.a> setCreateCellSet = createCellSet();
        this.cellSet = setCreateCellSet;
        return setCreateCellSet;
    }

    public abstract void clear();

    public boolean contains(Object obj, Object obj2) {
        Map map = (Map) Maps.v(rowMap(), obj);
        return map != null && Maps.u(map, obj2);
    }

    public boolean containsColumn(Object obj) {
        return Maps.u(columnMap(), obj);
    }

    public boolean containsRow(Object obj) {
        return Maps.u(rowMap(), obj);
    }

    public boolean containsValue(Object obj) {
        Iterator it = rowMap().values().iterator();
        while (it.hasNext()) {
            if (((Map) it.next()).containsValue(obj)) {
                return true;
            }
        }
        return false;
    }

    Set<c4.a> createCellSet() {
        return new b();
    }

    Collection<Object> createValues() {
        return new c();
    }

    public boolean equals(Object obj) {
        return Tables.a(this, obj);
    }

    @Override // com.google.common.collect.c4
    public Object get(Object obj, Object obj2) {
        Map map = (Map) Maps.v(rowMap(), obj);
        if (map == null) {
            return null;
        }
        return Maps.v(map, obj2);
    }

    public int hashCode() {
        return cellSet().hashCode();
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // com.google.common.collect.c4
    public abstract Object put(Object obj, Object obj2, Object obj3);

    public void putAll(c4 c4Var) {
        for (c4.a aVar : c4Var.cellSet()) {
            put(aVar.getRowKey(), aVar.getColumnKey(), aVar.getValue());
        }
    }

    public String toString() {
        return rowMap().toString();
    }

    public Collection values() {
        Collection<Object> collection = this.values;
        if (collection != null) {
            return collection;
        }
        Collection<Object> collectionCreateValues = createValues();
        this.values = collectionCreateValues;
        return collectionCreateValues;
    }

    Iterator<Object> valuesIterator() {
        return new a(cellSet().iterator());
    }
}
