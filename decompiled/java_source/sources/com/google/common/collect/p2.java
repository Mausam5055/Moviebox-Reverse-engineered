package com.google.common.collect;

import java.util.Collection;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class p2 extends k2 implements l3 {
    protected p2() {
    }

    @Override // com.google.common.collect.l3
    public int add(Object obj, int i11) {
        return l().add(obj, i11);
    }

    @Override // com.google.common.collect.l3
    public int count(Object obj) {
        return l().count(obj);
    }

    public abstract Set entrySet();

    @Override // java.util.Collection, com.google.common.collect.l3
    public boolean equals(Object obj) {
        return obj == this || l().equals(obj);
    }

    @Override // java.util.Collection, com.google.common.collect.l3
    public int hashCode() {
        return l().hashCode();
    }

    protected abstract l3 l();

    @Override // com.google.common.collect.l3
    public int remove(Object obj, int i11) {
        return l().remove(obj, i11);
    }

    @Override // com.google.common.collect.l3
    public int setCount(Object obj, int i11) {
        return l().setCount(obj, i11);
    }

    @Override // com.google.common.collect.l3
    public boolean setCount(Object obj, int i11, int i12) {
        return l().setCount(obj, i11, i12);
    }

    @Override // com.google.common.collect.k2
    protected boolean standardAddAll(Collection collection) {
        return Multisets.c(this, collection);
    }

    @Override // com.google.common.collect.k2
    protected void standardClear() {
        Iterators.d(entrySet().iterator());
    }

    @Override // com.google.common.collect.k2
    protected boolean standardContains(Object obj) {
        return count(obj) > 0;
    }

    @Override // com.google.common.collect.k2
    protected boolean standardRemove(Object obj) {
        return remove(obj, 1) > 0;
    }

    @Override // com.google.common.collect.k2
    protected boolean standardRemoveAll(Collection collection) {
        return Multisets.j(this, collection);
    }

    @Override // com.google.common.collect.k2
    protected boolean standardRetainAll(Collection collection) {
        return Multisets.k(this, collection);
    }

    @Override // com.google.common.collect.k2
    protected String standardToString() {
        return entrySet().toString();
    }
}
