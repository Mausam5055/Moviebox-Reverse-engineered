package com.google.common.collect;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
class ImmutableEntry<K, V> extends b implements Serializable {
    private static final long serialVersionUID = 0;
    final K key;
    final V value;

    ImmutableEntry(K k11, V v11) {
        this.key = k11;
        this.value = v11;
    }

    @Override // com.google.common.collect.b, java.util.Map.Entry
    public final K getKey() {
        return this.key;
    }

    @Override // com.google.common.collect.b, java.util.Map.Entry
    public final V getValue() {
        return this.value;
    }

    @Override // com.google.common.collect.b, java.util.Map.Entry
    public final V setValue(V v11) {
        throw new UnsupportedOperationException();
    }
}
