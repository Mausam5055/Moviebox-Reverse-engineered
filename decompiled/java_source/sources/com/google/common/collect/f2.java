package com.google.common.collect;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class f2 {

    static class a extends AbstractCollection {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Collection f30785a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final com.google.common.base.n f30786b;

        a(Collection collection, com.google.common.base.n nVar) {
            this.f30785a = collection;
            this.f30786b = nVar;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(Object obj) {
            com.google.common.base.m.d(this.f30786b.apply(obj));
            return this.f30785a.add(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                com.google.common.base.m.d(this.f30786b.apply(it.next()));
            }
            return this.f30785a.addAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            g3.l(this.f30785a, this.f30786b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (f2.c(this.f30785a, obj)) {
                return this.f30786b.apply(obj);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection collection) {
            return f2.a(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return !g3.b(this.f30785a, this.f30786b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return Iterators.k(this.f30785a.iterator(), this.f30786b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            return contains(obj) && this.f30785a.remove(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection collection) {
            Iterator it = this.f30785a.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Object next = it.next();
                if (this.f30786b.apply(next) && collection.contains(next)) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection collection) {
            Iterator it = this.f30785a.iterator();
            boolean z10 = false;
            while (it.hasNext()) {
                Object next = it.next();
                if (this.f30786b.apply(next) && !collection.contains(next)) {
                    it.remove();
                    z10 = true;
                }
            }
            return z10;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            Iterator it = this.f30785a.iterator();
            int i11 = 0;
            while (it.hasNext()) {
                if (this.f30786b.apply(it.next())) {
                    i11++;
                }
            }
            return i11;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return Lists.k(iterator()).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray(Object[] objArr) {
            return Lists.k(iterator()).toArray(objArr);
        }
    }

    static boolean a(Collection collection, Collection collection2) {
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    static StringBuilder b(int i11) {
        e2.b(i11, "size");
        return new StringBuilder((int) Math.min(((long) i11) * 8, 1073741824L));
    }

    static boolean c(Collection collection, Object obj) {
        com.google.common.base.m.o(collection);
        try {
            return collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    static boolean d(Collection collection, Object obj) {
        com.google.common.base.m.o(collection);
        try {
            return collection.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    static String e(Collection collection) {
        StringBuilder sbB = b(collection.size());
        sbB.append('[');
        boolean z10 = true;
        for (Object obj : collection) {
            if (!z10) {
                sbB.append(", ");
            }
            if (obj == collection) {
                sbB.append("(this Collection)");
            } else {
                sbB.append(obj);
            }
            z10 = false;
        }
        sbB.append(']');
        return sbB.toString();
    }
}
