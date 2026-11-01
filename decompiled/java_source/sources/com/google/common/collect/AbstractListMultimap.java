package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
abstract class AbstractListMultimap<K, V> extends AbstractMapBasedMultimap<K, V> implements i3 {
    private static final long serialVersionUID = 6588350623831699109L;

    protected AbstractListMultimap(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // com.google.common.collect.c, com.google.common.collect.j3
    public Map<K, Collection<V>> asMap() {
        return (Map<K, Collection<V>>) super.asMap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.AbstractMapBasedMultimap
    public abstract List<V> createCollection();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.AbstractMapBasedMultimap
    public List<V> createUnmodifiableEmptyCollection() {
        return Collections.emptyList();
    }

    @Override // com.google.common.collect.c
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.j3
    public List<V> get(K k11) {
        return (List) super.get((Object) k11);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.c, com.google.common.collect.j3
    public boolean put(K k11, V v11) {
        return super.put(k11, v11);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.j3
    public List<V> removeAll(Object obj) {
        return (List) super.removeAll(obj);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    public List<V> replaceValues(K k11, Iterable<? extends V> iterable) {
        return (List) super.replaceValues((Object) k11, (Iterable) iterable);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    <E> Collection<E> unmodifiableCollectionSubclass(Collection<E> collection) {
        return Collections.unmodifiableList((List) collection);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    Collection<V> wrapCollection(K k11, Collection<V> collection) {
        return wrapList(k11, (List) collection, null);
    }
}
