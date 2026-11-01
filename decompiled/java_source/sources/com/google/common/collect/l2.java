package com.google.common.collect;

import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class l2 extends n2 implements ConcurrentMap {
    protected l2() {
    }

    @Override // com.google.common.collect.n2, com.google.common.collect.q2
    /* JADX INFO: renamed from: delegate */
    protected abstract ConcurrentMap l();

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public Object putIfAbsent(Object obj, Object obj2) {
        return l().putIfAbsent(obj, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean remove(Object obj, Object obj2) {
        return l().remove(obj, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public Object replace(Object obj, Object obj2) {
        return l().replace(obj, obj2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public boolean replace(Object obj, Object obj2, Object obj3) {
        return l().replace(obj, obj2, obj3);
    }
}
