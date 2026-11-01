package com.transsion.json;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public class f implements Set {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Set f46055a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Set f46056b = new HashSet();

    public f(Set set) {
        this.f46055a = set;
    }

    public Set a() {
        return this.f46055a;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean add(Object obj) {
        return this.f46056b.add(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(Collection collection) {
        return this.f46056b.addAll(collection);
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        this.f46056b.clear();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object obj) {
        return this.f46056b.contains(obj) || this.f46055a.contains(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(Collection collection) {
        return this.f46056b.containsAll(collection) || this.f46055a.containsAll(collection);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return this.f46056b.isEmpty() && this.f46055a.isEmpty();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return new e(this.f46056b, this.f46055a);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        return this.f46056b.remove(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection collection) {
        return this.f46056b.removeAll(collection);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection collection) {
        return this.f46056b.retainAll(collection);
    }

    @Override // java.util.Set, java.util.Collection
    public int size() {
        return this.f46056b.size() + this.f46055a.size();
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        Object[] array = this.f46056b.toArray();
        Object[] array2 = this.f46055a.toArray();
        Object[] objArr = new Object[array.length + array2.length];
        System.arraycopy(array, 0, objArr, 0, array.length);
        System.arraycopy(array2, 0, objArr, array.length, array2.length);
        return objArr;
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray(Object[] objArr) {
        throw new IllegalStateException("Not implemeneted");
    }
}
