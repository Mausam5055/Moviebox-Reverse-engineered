package com.google.common.collect;

import java.util.Comparator;
import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes4.dex */
class StandardRowSortedTable<R, C, V> extends StandardTable<R, C, V> implements c4 {
    private static final long serialVersionUID = 0;

    private class b extends StandardTable.h implements SortedMap {
        private b() {
            super();
        }

        @Override // java.util.SortedMap
        public Comparator comparator() {
            return StandardRowSortedTable.this.e().comparator();
        }

        @Override // java.util.SortedMap
        public Object firstKey() {
            return StandardRowSortedTable.this.e().firstKey();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.q
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public SortedSet i() {
            return new Maps.n(this);
        }

        @Override // java.util.SortedMap
        public SortedMap headMap(Object obj) {
            com.google.common.base.m.o(obj);
            return new StandardRowSortedTable(StandardRowSortedTable.this.e().headMap(obj), StandardRowSortedTable.this.factory).rowMap();
        }

        @Override // com.google.common.collect.Maps.q, java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public SortedSet keySet() {
            return (SortedSet) super.keySet();
        }

        @Override // java.util.SortedMap
        public Object lastKey() {
            return StandardRowSortedTable.this.e().lastKey();
        }

        @Override // java.util.SortedMap
        public SortedMap subMap(Object obj, Object obj2) {
            com.google.common.base.m.o(obj);
            com.google.common.base.m.o(obj2);
            return new StandardRowSortedTable(StandardRowSortedTable.this.e().subMap(obj, obj2), StandardRowSortedTable.this.factory).rowMap();
        }

        @Override // java.util.SortedMap
        public SortedMap tailMap(Object obj) {
            com.google.common.base.m.o(obj);
            return new StandardRowSortedTable(StandardRowSortedTable.this.e().tailMap(obj), StandardRowSortedTable.this.factory).rowMap();
        }
    }

    StandardRowSortedTable(SortedMap<R, Map<C, V>> sortedMap, com.google.common.base.q qVar) {
        super(sortedMap, qVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SortedMap e() {
        return (SortedMap) this.backingMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.StandardTable
    public SortedMap<R, Map<C, V>> createRowMap() {
        return new b();
    }

    @Override // com.google.common.collect.StandardTable, com.google.common.collect.c4
    public SortedSet<R> rowKeySet() {
        return (SortedSet) rowMap().keySet();
    }

    @Override // com.google.common.collect.StandardTable, com.google.common.collect.c4
    public SortedMap<R, Map<C, V>> rowMap() {
        return (SortedMap) super.rowMap();
    }
}
