package com.google.common.collect;

import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;

/* JADX INFO: loaded from: classes4.dex */
abstract class e extends Maps.k implements NavigableMap {

    private final class b extends Maps.h {
        private b() {
        }

        @Override // com.google.common.collect.Maps.h
        Iterator m() {
            return e.this.c();
        }

        @Override // com.google.common.collect.Maps.h
        NavigableMap n() {
            return e.this;
        }
    }

    e() {
    }

    abstract Iterator c();

    @Override // java.util.NavigableMap
    public Map.Entry ceilingEntry(Object obj) {
        return tailMap(obj, true).firstEntry();
    }

    @Override // java.util.NavigableMap
    public Object ceilingKey(Object obj) {
        return Maps.m(ceilingEntry(obj));
    }

    @Override // java.util.NavigableMap
    public NavigableSet descendingKeySet() {
        return descendingMap().navigableKeySet();
    }

    @Override // java.util.NavigableMap
    public NavigableMap descendingMap() {
        return new b();
    }

    @Override // java.util.NavigableMap
    public Map.Entry firstEntry() {
        return (Map.Entry) Iterators.o(a(), null);
    }

    @Override // java.util.SortedMap
    public Object firstKey() {
        Map.Entry entryFirstEntry = firstEntry();
        if (entryFirstEntry != null) {
            return entryFirstEntry.getKey();
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.NavigableMap
    public Map.Entry floorEntry(Object obj) {
        return headMap(obj, true).lastEntry();
    }

    @Override // java.util.NavigableMap
    public Object floorKey(Object obj) {
        return Maps.m(floorEntry(obj));
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public SortedMap headMap(Object obj) {
        return headMap(obj, false);
    }

    @Override // java.util.NavigableMap
    public Map.Entry higherEntry(Object obj) {
        return tailMap(obj, false).firstEntry();
    }

    @Override // java.util.NavigableMap
    public Object higherKey(Object obj) {
        return Maps.m(higherEntry(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
    public Set keySet() {
        return navigableKeySet();
    }

    @Override // java.util.NavigableMap
    public Map.Entry lastEntry() {
        return (Map.Entry) Iterators.o(c(), null);
    }

    @Override // java.util.SortedMap
    public Object lastKey() {
        Map.Entry entryLastEntry = lastEntry();
        if (entryLastEntry != null) {
            return entryLastEntry.getKey();
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.NavigableMap
    public Map.Entry lowerEntry(Object obj) {
        return headMap(obj, false).lastEntry();
    }

    @Override // java.util.NavigableMap
    public Object lowerKey(Object obj) {
        return Maps.m(lowerEntry(obj));
    }

    @Override // java.util.NavigableMap
    public NavigableSet navigableKeySet() {
        return new Maps.m(this);
    }

    @Override // java.util.NavigableMap
    public Map.Entry pollFirstEntry() {
        return (Map.Entry) Iterators.t(a());
    }

    @Override // java.util.NavigableMap
    public Map.Entry pollLastEntry() {
        return (Map.Entry) Iterators.t(c());
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public SortedMap subMap(Object obj, Object obj2) {
        return subMap(obj, true, obj2, false);
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    public SortedMap tailMap(Object obj) {
        return tailMap(obj, true);
    }
}
