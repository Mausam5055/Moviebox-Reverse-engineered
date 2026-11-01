package com.google.common.collect;

import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Multisets {

    private static final class DecreasingCount implements Comparator<l3.a> {
        static final Comparator<l3.a> INSTANCE = new DecreasingCount();

        private DecreasingCount() {
        }

        @Override // java.util.Comparator
        public int compare(l3.a aVar, l3.a aVar2) {
            return aVar2.getCount() - aVar.getCount();
        }
    }

    static class ImmutableEntry<E> extends b implements Serializable {
        private static final long serialVersionUID = 0;
        private final int count;
        private final E element;

        ImmutableEntry(E e11, int i11) {
            this.element = e11;
            this.count = i11;
            e2.b(i11, "count");
        }

        @Override // com.google.common.collect.l3.a
        public final int getCount() {
            return this.count;
        }

        @Override // com.google.common.collect.l3.a
        public final E getElement() {
            return this.element;
        }

        public ImmutableEntry<E> nextInBucket() {
            return null;
        }
    }

    class a extends o4 {
        a(Iterator it) {
            super(it);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.o4
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Object a(l3.a aVar) {
            return aVar.getElement();
        }
    }

    static abstract class b implements l3.a {
        b() {
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof l3.a)) {
                return false;
            }
            l3.a aVar = (l3.a) obj;
            return getCount() == aVar.getCount() && com.google.common.base.j.a(getElement(), aVar.getElement());
        }

        public int hashCode() {
            Object element = getElement();
            return (element == null ? 0 : element.hashCode()) ^ getCount();
        }

        @Override // com.google.common.collect.l3.a
        public String toString() {
            String strValueOf = String.valueOf(getElement());
            int count = getCount();
            if (count == 1) {
                return strValueOf;
            }
            return strValueOf + " x " + count;
        }
    }

    static abstract class c extends Sets.e {
        c() {
        }

        abstract l3 a();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return a().contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection collection) {
            return a().containsAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return a().remove(obj, Integer.MAX_VALUE) > 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return a().entrySet().size();
        }
    }

    static abstract class d extends Sets.e {
        d() {
        }

        abstract l3 a();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof l3.a)) {
                return false;
            }
            l3.a aVar = (l3.a) obj;
            return aVar.getCount() > 0 && a().count(aVar.getElement()) == aVar.getCount();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (obj instanceof l3.a) {
                l3.a aVar = (l3.a) obj;
                Object element = aVar.getElement();
                int count = aVar.getCount();
                if (count != 0) {
                    return a().setCount(element, count, 0);
                }
            }
            return false;
        }
    }

    static final class e implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final l3 f30614a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Iterator f30615b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private l3.a f30616c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f30617d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f30618e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f30619f;

        e(l3 l3Var, Iterator it) {
            this.f30614a = l3Var;
            this.f30615b = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30617d > 0 || this.f30615b.hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            if (this.f30617d == 0) {
                l3.a aVar = (l3.a) this.f30615b.next();
                this.f30616c = aVar;
                int count = aVar.getCount();
                this.f30617d = count;
                this.f30618e = count;
            }
            this.f30617d--;
            this.f30619f = true;
            l3.a aVar2 = this.f30616c;
            Objects.requireNonNull(aVar2);
            return aVar2.getElement();
        }

        @Override // java.util.Iterator
        public void remove() {
            e2.e(this.f30619f);
            if (this.f30618e == 1) {
                this.f30615b.remove();
            } else {
                l3 l3Var = this.f30614a;
                l3.a aVar = this.f30616c;
                Objects.requireNonNull(aVar);
                l3Var.remove(aVar.getElement());
            }
            this.f30618e--;
            this.f30619f = false;
        }
    }

    private static boolean a(l3 l3Var, AbstractMapBasedMultiset abstractMapBasedMultiset) {
        if (abstractMapBasedMultiset.isEmpty()) {
            return false;
        }
        abstractMapBasedMultiset.addTo(l3Var);
        return true;
    }

    private static boolean b(l3 l3Var, l3 l3Var2) {
        if (l3Var2 instanceof AbstractMapBasedMultiset) {
            return a(l3Var, (AbstractMapBasedMultiset) l3Var2);
        }
        if (l3Var2.isEmpty()) {
            return false;
        }
        for (l3.a aVar : l3Var2.entrySet()) {
            l3Var.add(aVar.getElement(), aVar.getCount());
        }
        return true;
    }

    static boolean c(l3 l3Var, Collection collection) {
        com.google.common.base.m.o(l3Var);
        com.google.common.base.m.o(collection);
        if (collection instanceof l3) {
            return b(l3Var, d(collection));
        }
        if (collection.isEmpty()) {
            return false;
        }
        return Iterators.a(l3Var, collection.iterator());
    }

    static l3 d(Iterable iterable) {
        return (l3) iterable;
    }

    static Iterator e(Iterator it) {
        return new a(it);
    }

    static boolean f(l3 l3Var, Object obj) {
        if (obj == l3Var) {
            return true;
        }
        if (obj instanceof l3) {
            l3 l3Var2 = (l3) obj;
            if (l3Var.size() == l3Var2.size() && l3Var.entrySet().size() == l3Var2.entrySet().size()) {
                for (l3.a aVar : l3Var2.entrySet()) {
                    if (l3Var.count(aVar.getElement()) != aVar.getCount()) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static l3.a g(Object obj, int i11) {
        return new ImmutableEntry(obj, i11);
    }

    static int h(Iterable iterable) {
        if (iterable instanceof l3) {
            return ((l3) iterable).elementSet().size();
        }
        return 11;
    }

    static Iterator i(l3 l3Var) {
        return new e(l3Var, l3Var.entrySet().iterator());
    }

    /* JADX WARN: Multi-variable type inference failed */
    static boolean j(l3 l3Var, Collection collection) {
        if (collection instanceof l3) {
            collection = ((l3) collection).elementSet();
        }
        return l3Var.elementSet().removeAll(collection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static boolean k(l3 l3Var, Collection collection) {
        com.google.common.base.m.o(collection);
        if (collection instanceof l3) {
            collection = ((l3) collection).elementSet();
        }
        return l3Var.elementSet().retainAll(collection);
    }

    static int l(l3 l3Var, Object obj, int i11) {
        e2.b(i11, "count");
        int iCount = l3Var.count(obj);
        int i12 = i11 - iCount;
        if (i12 > 0) {
            l3Var.add(obj, i12);
        } else if (i12 < 0) {
            l3Var.remove(obj, -i12);
        }
        return iCount;
    }

    static boolean m(l3 l3Var, Object obj, int i11, int i12) {
        e2.b(i11, "oldCount");
        e2.b(i12, "newCount");
        if (l3Var.count(obj) != i11) {
            return false;
        }
        l3Var.setCount(obj, i12);
        return true;
    }
}
