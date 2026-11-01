package com.google.common.collect;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class SparseImmutableTable<R, C, V> extends RegularImmutableTable<R, C, V> {
    static final ImmutableTable<Object, Object, Object> EMPTY = new SparseImmutableTable(ImmutableList.of(), ImmutableSet.of(), ImmutableSet.of());
    private final int[] cellColumnInRowIndices;
    private final int[] cellRowIndices;
    private final ImmutableMap<C, ImmutableMap<R, V>> columnMap;
    private final ImmutableMap<R, ImmutableMap<C, V>> rowMap;

    /* JADX WARN: Multi-variable type inference failed */
    SparseImmutableTable(ImmutableList<c4.a> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        ImmutableMap immutableMapJ = Maps.j(immutableSet);
        LinkedHashMap linkedHashMapR = Maps.r();
        r4 it = immutableSet.iterator();
        while (it.hasNext()) {
            linkedHashMapR.put(it.next(), new LinkedHashMap());
        }
        LinkedHashMap linkedHashMapR2 = Maps.r();
        r4 it2 = immutableSet2.iterator();
        while (it2.hasNext()) {
            linkedHashMapR2.put(it2.next(), new LinkedHashMap());
        }
        int[] iArr = new int[immutableList.size()];
        int[] iArr2 = new int[immutableList.size()];
        for (int i11 = 0; i11 < immutableList.size(); i11++) {
            c4.a aVar = immutableList.get(i11);
            Object rowKey = aVar.getRowKey();
            Object columnKey = aVar.getColumnKey();
            Object value = aVar.getValue();
            Integer num = (Integer) immutableMapJ.get(rowKey);
            Objects.requireNonNull(num);
            iArr[i11] = num.intValue();
            Map map = (Map) linkedHashMapR.get(rowKey);
            Objects.requireNonNull(map);
            Map map2 = map;
            iArr2[i11] = map2.size();
            checkNoDuplicate(rowKey, columnKey, map2.put(columnKey, value), value);
            Map map3 = (Map) linkedHashMapR2.get(columnKey);
            Objects.requireNonNull(map3);
            map3.put(rowKey, value);
        }
        this.cellRowIndices = iArr;
        this.cellColumnInRowIndices = iArr2;
        ImmutableMap.b bVar = new ImmutableMap.b(linkedHashMapR.size());
        for (Map.Entry entry : linkedHashMapR.entrySet()) {
            bVar.h(entry.getKey(), ImmutableMap.copyOf((Map) entry.getValue()));
        }
        this.rowMap = bVar.d();
        ImmutableMap.b bVar2 = new ImmutableMap.b(linkedHashMapR2.size());
        for (Map.Entry entry2 : linkedHashMapR2.entrySet()) {
            bVar2.h(entry2.getKey(), ImmutableMap.copyOf((Map) entry2.getValue()));
        }
        this.columnMap = bVar2.d();
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.c4
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return ImmutableMap.copyOf((Map) this.columnMap);
    }

    @Override // com.google.common.collect.RegularImmutableTable
    c4.a getCell(int i11) {
        Map.Entry<R, ImmutableMap<C, V>> entry = this.rowMap.entrySet().asList().get(this.cellRowIndices[i11]);
        ImmutableMap<C, V> value = entry.getValue();
        Map.Entry<C, V> entry2 = value.entrySet().asList().get(this.cellColumnInRowIndices[i11]);
        return ImmutableTable.cellOf(entry.getKey(), entry2.getKey(), entry2.getValue());
    }

    @Override // com.google.common.collect.RegularImmutableTable
    V getValue(int i11) {
        ImmutableMap<C, V> immutableMap = this.rowMap.values().asList().get(this.cellRowIndices[i11]);
        return immutableMap.values().asList().get(this.cellColumnInRowIndices[i11]);
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.c4
    public ImmutableMap<R, Map<C, V>> rowMap() {
        return ImmutableMap.copyOf((Map) this.rowMap);
    }

    @Override // com.google.common.collect.RegularImmutableTable, com.google.common.collect.ImmutableTable, com.google.common.collect.c4
    public int size() {
        return this.cellRowIndices.length;
    }

    @Override // com.google.common.collect.RegularImmutableTable, com.google.common.collect.ImmutableTable
    Object writeReplace() {
        ImmutableMap immutableMapJ = Maps.j(columnKeySet());
        int[] iArr = new int[cellSet().size()];
        r4 it = cellSet().iterator();
        int i11 = 0;
        while (it.hasNext()) {
            Integer num = (Integer) immutableMapJ.get(((c4.a) it.next()).getColumnKey());
            Objects.requireNonNull(num);
            iArr[i11] = num.intValue();
            i11++;
        }
        return ImmutableTable.SerializedForm.create(this, this.cellRowIndices, iArr);
    }
}
