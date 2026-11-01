package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
abstract class RegularImmutableTable<R, C, V> extends ImmutableTable<R, C, V> {

    private final class CellSet extends IndexedImmutableSet<c4.a> {
        private CellSet() {
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof c4.a)) {
                return false;
            }
            c4.a aVar = (c4.a) obj;
            Object obj2 = RegularImmutableTable.this.get(aVar.getRowKey(), aVar.getColumnKey());
            return obj2 != null && obj2.equals(aVar.getValue());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.collect.IndexedImmutableSet
        public c4.a get(int i11) {
            return RegularImmutableTable.this.getCell(i11);
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean isPartialView() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return RegularImmutableTable.this.size();
        }

        @Override // com.google.common.collect.IndexedImmutableSet, com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    private final class Values extends ImmutableList<V> {
        private Values() {
        }

        @Override // java.util.List
        public V get(int i11) {
            return (V) RegularImmutableTable.this.getValue(i11);
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return RegularImmutableTable.this.size();
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
        Object writeReplace() {
            return super.writeReplace();
        }
    }

    RegularImmutableTable() {
    }

    private static RegularImmutableTable b(Iterable iterable, Comparator comparator, Comparator comparator2) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        ImmutableList immutableListCopyOf = ImmutableList.copyOf(iterable);
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            c4.a aVar = (c4.a) it.next();
            linkedHashSet.add(aVar.getRowKey());
            linkedHashSet2.add(aVar.getColumnKey());
        }
        return forOrderedComponents(immutableListCopyOf, comparator == null ? ImmutableSet.copyOf((Collection) linkedHashSet) : ImmutableSet.copyOf((Collection) ImmutableList.sortedCopyOf(comparator, linkedHashSet)), comparator2 == null ? ImmutableSet.copyOf((Collection) linkedHashSet2) : ImmutableSet.copyOf((Collection) ImmutableList.sortedCopyOf(comparator2, linkedHashSet2)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int c(Comparator comparator, Comparator comparator2, c4.a aVar, c4.a aVar2) {
        int iCompare = comparator == null ? 0 : comparator.compare(aVar.getRowKey(), aVar2.getRowKey());
        if (iCompare != 0) {
            return iCompare;
        }
        if (comparator2 == null) {
            return 0;
        }
        return comparator2.compare(aVar.getColumnKey(), aVar2.getColumnKey());
    }

    static <R, C, V> RegularImmutableTable<R, C, V> forCells(Iterable<c4.a> iterable) {
        return b(iterable, null, null);
    }

    static <R, C, V> RegularImmutableTable<R, C, V> forCells(List<c4.a> list, final Comparator<? super R> comparator, final Comparator<? super C> comparator2) {
        com.google.common.base.m.o(list);
        if (comparator != null || comparator2 != null) {
            Collections.sort(list, new Comparator() { // from class: com.google.common.collect.v3
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return RegularImmutableTable.c(comparator, comparator2, (c4.a) obj, (c4.a) obj2);
                }
            });
        }
        return b(list, comparator, comparator2);
    }

    static <R, C, V> RegularImmutableTable<R, C, V> forOrderedComponents(ImmutableList<c4.a> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        return ((long) immutableList.size()) > (((long) immutableSet.size()) * ((long) immutableSet2.size())) / 2 ? new DenseImmutableTable(immutableList, immutableSet, immutableSet2) : new SparseImmutableTable(immutableList, immutableSet, immutableSet2);
    }

    final void checkNoDuplicate(R r11, C c11, V v11, V v12) {
        com.google.common.base.m.l(v11 == null, "Duplicate key: (row=%s, column=%s), values: [%s, %s].", r11, c11, v12, v11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.i
    public final ImmutableSet<c4.a> createCellSet() {
        return isEmpty() ? ImmutableSet.of() : new CellSet();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.i
    public final ImmutableCollection<V> createValues() {
        return isEmpty() ? ImmutableList.of() : new Values();
    }

    abstract c4.a getCell(int i11);

    abstract V getValue(int i11);

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.c4
    public abstract /* synthetic */ int size();

    @Override // com.google.common.collect.ImmutableTable
    abstract Object writeReplace();
}
