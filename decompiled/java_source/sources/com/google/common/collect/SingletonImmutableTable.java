package com.google.common.collect;

import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
class SingletonImmutableTable<R, C, V> extends ImmutableTable<R, C, V> {
    final C singleColumnKey;
    final R singleRowKey;
    final V singleValue;

    SingletonImmutableTable(c4.a aVar) {
        this(aVar.getRowKey(), aVar.getColumnKey(), aVar.getValue());
    }

    SingletonImmutableTable(R r11, C c11, V v11) {
        this.singleRowKey = (R) com.google.common.base.m.o(r11);
        this.singleColumnKey = (C) com.google.common.base.m.o(c11);
        this.singleValue = (V) com.google.common.base.m.o(v11);
    }

    @Override // com.google.common.collect.ImmutableTable
    /* JADX INFO: renamed from: column, reason: merged with bridge method [inline-methods] */
    public ImmutableMap<R, V> mo287column(C c11) {
        com.google.common.base.m.o(c11);
        return containsColumn(c11) ? ImmutableMap.of(this.singleRowKey, (Object) this.singleValue) : ImmutableMap.of();
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.c4
    public ImmutableMap<C, Map<R, V>> columnMap() {
        return ImmutableMap.of(this.singleColumnKey, ImmutableMap.of(this.singleRowKey, (Object) this.singleValue));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.i
    public ImmutableSet<c4.a> createCellSet() {
        return ImmutableSet.of(ImmutableTable.cellOf(this.singleRowKey, this.singleColumnKey, this.singleValue));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.i
    public ImmutableCollection<V> createValues() {
        return ImmutableSet.of(this.singleValue);
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.c4
    public ImmutableMap<R, Map<C, V>> rowMap() {
        return ImmutableMap.of(this.singleRowKey, ImmutableMap.of(this.singleColumnKey, (Object) this.singleValue));
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.c4
    public int size() {
        return 1;
    }

    @Override // com.google.common.collect.ImmutableTable
    Object writeReplace() {
        return ImmutableTable.SerializedForm.create(this, new int[]{0}, new int[]{0});
    }
}
