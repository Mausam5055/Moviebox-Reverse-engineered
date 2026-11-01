package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.Enum;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class EnumHashBiMap<K extends Enum<K>, V> extends AbstractBiMap<K, V> {
    private static final long serialVersionUID = 0;
    transient Class<K> keyTypeOrObjectUnderJ2cl;

    private EnumHashBiMap(Class<K> cls) {
        super(new EnumMap(cls), new HashMap());
        this.keyTypeOrObjectUnderJ2cl = cls;
    }

    public static <K extends Enum<K>, V> EnumHashBiMap<K, V> create(Class<K> cls) {
        return new EnumHashBiMap<>(cls);
    }

    public static <K extends Enum<K>, V> EnumHashBiMap<K, V> create(Map<K, ? extends V> map) {
        EnumHashBiMap<K, V> enumHashBiMapCreate = create(EnumBiMap.inferKeyTypeOrObjectUnderJ2cl(map));
        enumHashBiMapCreate.putAll(map);
        return enumHashBiMapCreate;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Object object = objectInputStream.readObject();
        Objects.requireNonNull(object);
        this.keyTypeOrObjectUnderJ2cl = (Class) object;
        setDelegates(new EnumMap(this.keyTypeOrObjectUnderJ2cl), new HashMap());
        w3.b(this, objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.keyTypeOrObjectUnderJ2cl);
        w3.i(this, objectOutputStream);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.AbstractBiMap
    public K checkKey(K k11) {
        return (K) com.google.common.base.m.o(k11);
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.n2, java.util.Map
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.n2, java.util.Map
    public /* bridge */ /* synthetic */ boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.n2, java.util.Map
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.AbstractBiMap
    public V forcePut(K k11, V v11) {
        return (V) super.forcePut(k11, (Object) v11);
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.k
    public /* bridge */ /* synthetic */ k inverse() {
        return super.inverse();
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.n2, java.util.Map
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    public Class<K> keyType() {
        return this.keyTypeOrObjectUnderJ2cl;
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.n2, java.util.Map
    public V put(K k11, V v11) {
        return (V) super.put(k11, (Object) v11);
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.n2, java.util.Map
    public /* bridge */ /* synthetic */ void putAll(Map map) {
        super.putAll(map);
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.n2, java.util.Map
    public /* bridge */ /* synthetic */ Object remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.n2, java.util.Map
    public /* bridge */ /* synthetic */ Set values() {
        return super.values();
    }
}
