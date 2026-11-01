package com.cloud.tmc.kernel.datastructure.immutable;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
class ImmutableCollection<E> implements Iterable<E> {
    private static Iterator sEmptyIterator = new Iterator() { // from class: com.cloud.tmc.kernel.datastructure.immutable.ImmutableCollection.1
        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            return null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("removing is unsupported");
        }
    };
    protected Collection<E> immutableCollection;

    private static class ImmutableIterator implements Iterator {
        private Iterator immutableIterator;

        public ImmutableIterator(Iterator it) {
            this.immutableIterator = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            Iterator it = this.immutableIterator;
            return it != null && it.hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            Iterator it = this.immutableIterator;
            if (it != null) {
                return it.next();
            }
            return null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("removing is unsupported");
        }
    }

    public ImmutableCollection() {
    }

    public ImmutableCollection(Collection<E> collection) {
        this.immutableCollection = collection;
    }

    public boolean contains(Object obj) {
        Collection<E> collection = this.immutableCollection;
        return collection != null && collection.contains(obj);
    }

    public boolean containsAll(Collection<?> collection) {
        Collection<E> collection2 = this.immutableCollection;
        return collection2 != null && collection2.containsAll(collection);
    }

    public boolean isEmpty() {
        Collection<E> collection = this.immutableCollection;
        return collection == null || collection.isEmpty();
    }

    @Override // java.lang.Iterable
    public Iterator<E> iterator() {
        Collection<E> collection = this.immutableCollection;
        return collection == null ? sEmptyIterator : new ImmutableIterator(collection.iterator());
    }

    public int size() {
        Collection<E> collection = this.immutableCollection;
        if (collection != null) {
            return collection.size();
        }
        return 0;
    }

    public Object[] toArray() {
        Collection<E> collection = this.immutableCollection;
        if (collection != null) {
            return collection.toArray();
        }
        return null;
    }
}
