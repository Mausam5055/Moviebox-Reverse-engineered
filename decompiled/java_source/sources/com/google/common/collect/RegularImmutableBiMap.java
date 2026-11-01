package com.google.common.collect;

import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class RegularImmutableBiMap<K, V> extends ImmutableBiMap<K, V> {
    static final RegularImmutableBiMap<Object, Object> EMPTY = new RegularImmutableBiMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final transient Object f30629a;
    final transient Object[] alternatingKeysAndValues;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final transient int f30630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final transient int f30631c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final transient RegularImmutableBiMap f30632d;

    private RegularImmutableBiMap() {
        this.f30629a = null;
        this.alternatingKeysAndValues = new Object[0];
        this.f30630b = 0;
        this.f30631c = 0;
        this.f30632d = this;
    }

    private RegularImmutableBiMap(Object obj, Object[] objArr, int i11, RegularImmutableBiMap regularImmutableBiMap) {
        this.f30629a = obj;
        this.alternatingKeysAndValues = objArr;
        this.f30630b = 1;
        this.f30631c = i11;
        this.f30632d = regularImmutableBiMap;
    }

    RegularImmutableBiMap(Object[] objArr, int i11) {
        this.alternatingKeysAndValues = objArr;
        this.f30631c = i11;
        this.f30630b = 0;
        int iChooseTableSize = i11 >= 2 ? ImmutableSet.chooseTableSize(i11) : 0;
        this.f30629a = RegularImmutableMap.createHashTableOrThrow(objArr, i11, iChooseTableSize, 0);
        this.f30632d = new RegularImmutableBiMap(RegularImmutableMap.createHashTableOrThrow(objArr, i11, iChooseTableSize, 1), objArr, i11, this);
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return new RegularImmutableMap.EntrySet(this, this.alternatingKeysAndValues, this.f30630b, this.f30631c);
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<K> createKeySet() {
        return new RegularImmutableMap.KeySet(this, new RegularImmutableMap.KeysOrValuesAsList(this.alternatingKeysAndValues, this.f30630b, this.f30631c));
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(Object obj) {
        V v11 = (V) RegularImmutableMap.get(this.f30629a, this.alternatingKeysAndValues, this.f30631c, this.f30630b, obj);
        if (v11 == null) {
            return null;
        }
        return v11;
    }

    @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.k
    public ImmutableBiMap<V, K> inverse() {
        return this.f30632d;
    }

    @Override // com.google.common.collect.ImmutableMap
    boolean isPartialView() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.f30631c;
    }

    @Override // com.google.common.collect.ImmutableBiMap, com.google.common.collect.ImmutableMap
    Object writeReplace() {
        return super.writeReplace();
    }
}
