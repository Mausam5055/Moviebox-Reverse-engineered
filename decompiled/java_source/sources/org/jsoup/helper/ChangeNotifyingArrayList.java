package org.jsoup.helper;

import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes7.dex */
public abstract class ChangeNotifyingArrayList<E> extends ArrayList<E> {
    public ChangeNotifyingArrayList(int i11) {
        super(i11);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public void add(int i11, E e11) {
        onContentsChanged();
        super.add(i11, e11);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e11) {
        onContentsChanged();
        return super.add(e11);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public boolean addAll(int i11, Collection<? extends E> collection) {
        onContentsChanged();
        return super.addAll(i11, collection);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> collection) {
        onContentsChanged();
        return super.addAll(collection);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        onContentsChanged();
        super.clear();
    }

    public abstract void onContentsChanged();

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public E remove(int i11) {
        onContentsChanged();
        return (E) super.remove(i11);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        onContentsChanged();
        return super.remove(obj);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<?> collection) {
        onContentsChanged();
        return super.removeAll(collection);
    }

    @Override // java.util.ArrayList, java.util.AbstractList
    protected void removeRange(int i11, int i12) {
        onContentsChanged();
        super.removeRange(i11, i12);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean retainAll(Collection<?> collection) {
        onContentsChanged();
        return super.retainAll(collection);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public E set(int i11, E e11) {
        onContentsChanged();
        return (E) super.set(i11, e11);
    }
}
