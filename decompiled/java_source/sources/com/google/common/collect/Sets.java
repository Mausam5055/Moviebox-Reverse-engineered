package com.google.common.collect;

import com.google.common.base.Predicates;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Sets {

    static final class UnmodifiableNavigableSet<E> extends u2 implements NavigableSet<E>, Serializable {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private transient UnmodifiableNavigableSet f30655a;
        private final NavigableSet<E> delegate;
        private final SortedSet<E> unmodifiableDelegate;

        UnmodifiableNavigableSet(NavigableSet<E> navigableSet) {
            this.delegate = (NavigableSet) com.google.common.base.m.o(navigableSet);
            this.unmodifiableDelegate = Collections.unmodifiableSortedSet(navigableSet);
        }

        @Override // java.util.NavigableSet
        public E ceiling(E e11) {
            return this.delegate.ceiling(e11);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.s2, com.google.common.collect.k2, com.google.common.collect.q2
        /* JADX INFO: renamed from: delegate */
        public SortedSet<E> l() {
            return this.unmodifiableDelegate;
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return Iterators.B(this.delegate.descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            UnmodifiableNavigableSet unmodifiableNavigableSet = this.f30655a;
            if (unmodifiableNavigableSet != null) {
                return unmodifiableNavigableSet;
            }
            UnmodifiableNavigableSet unmodifiableNavigableSet2 = new UnmodifiableNavigableSet(this.delegate.descendingSet());
            this.f30655a = unmodifiableNavigableSet2;
            unmodifiableNavigableSet2.f30655a = this;
            return unmodifiableNavigableSet2;
        }

        @Override // java.util.NavigableSet
        public E floor(E e11) {
            return this.delegate.floor(e11);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e11, boolean z10) {
            return Sets.l(this.delegate.headSet(e11, z10));
        }

        @Override // java.util.NavigableSet
        public E higher(E e11) {
            return this.delegate.higher(e11);
        }

        @Override // java.util.NavigableSet
        public E lower(E e11) {
            return this.delegate.lower(e11);
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e11, boolean z10, E e12, boolean z11) {
            return Sets.l(this.delegate.subSet(e11, z10, e12, z11));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e11, boolean z10) {
            return Sets.l(this.delegate.tailSet(e11, z10));
        }
    }

    class a extends f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Set f30656a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Set f30657b;

        /* JADX INFO: renamed from: com.google.common.collect.Sets$a$a, reason: collision with other inner class name */
        class C0408a extends AbstractIterator {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final Iterator f30658c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final Iterator f30659d;

            C0408a() {
                this.f30658c = a.this.f30656a.iterator();
                this.f30659d = a.this.f30657b.iterator();
            }

            @Override // com.google.common.collect.AbstractIterator
            protected Object a() {
                if (this.f30658c.hasNext()) {
                    return this.f30658c.next();
                }
                while (this.f30659d.hasNext()) {
                    Object next = this.f30659d.next();
                    if (!a.this.f30656a.contains(next)) {
                        return next;
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Set set, Set set2) {
            super(null);
            this.f30656a = set;
            this.f30657b = set2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public r4 iterator() {
            return new C0408a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f30656a.contains(obj) || this.f30657b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f30656a.isEmpty() && this.f30657b.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            int size = this.f30656a.size();
            Iterator it = this.f30657b.iterator();
            while (it.hasNext()) {
                if (!this.f30656a.contains(it.next())) {
                    size++;
                }
            }
            return size;
        }
    }

    class b extends f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Set f30661a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Set f30662b;

        class a extends AbstractIterator {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final Iterator f30663c;

            a() {
                this.f30663c = b.this.f30661a.iterator();
            }

            @Override // com.google.common.collect.AbstractIterator
            protected Object a() {
                while (this.f30663c.hasNext()) {
                    Object next = this.f30663c.next();
                    if (b.this.f30662b.contains(next)) {
                        return next;
                    }
                }
                return b();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Set set, Set set2) {
            super(null);
            this.f30661a = set;
            this.f30662b = set2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* JADX INFO: renamed from: a */
        public r4 iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f30661a.contains(obj) && this.f30662b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection collection) {
            return this.f30661a.containsAll(collection) && this.f30662b.containsAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return Collections.disjoint(this.f30662b, this.f30661a);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            Iterator it = this.f30661a.iterator();
            int i11 = 0;
            while (it.hasNext()) {
                if (this.f30662b.contains(it.next())) {
                    i11++;
                }
            }
            return i11;
        }
    }

    private static class c extends f2.a implements Set {
        c(Set set, com.google.common.base.n nVar) {
            super(set, nVar);
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return Sets.a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.d(this);
        }
    }

    private static class d extends c implements SortedSet {
        d(SortedSet sortedSet, com.google.common.base.n nVar) {
            super(sortedSet, nVar);
        }

        @Override // java.util.SortedSet
        public Comparator comparator() {
            return ((SortedSet) this.f30785a).comparator();
        }

        @Override // java.util.SortedSet
        public Object first() {
            return Iterators.l(this.f30785a.iterator(), this.f30786b);
        }

        @Override // java.util.SortedSet
        public SortedSet headSet(Object obj) {
            return new d(((SortedSet) this.f30785a).headSet(obj), this.f30786b);
        }

        @Override // java.util.SortedSet
        public Object last() {
            SortedSet sortedSetHeadSet = (SortedSet) this.f30785a;
            while (true) {
                Object objLast = sortedSetHeadSet.last();
                if (this.f30786b.apply(objLast)) {
                    return objLast;
                }
                sortedSetHeadSet = sortedSetHeadSet.headSet(objLast);
            }
        }

        @Override // java.util.SortedSet
        public SortedSet subSet(Object obj, Object obj2) {
            return new d(((SortedSet) this.f30785a).subSet(obj, obj2), this.f30786b);
        }

        @Override // java.util.SortedSet
        public SortedSet tailSet(Object obj) {
            return new d(((SortedSet) this.f30785a).tailSet(obj), this.f30786b);
        }
    }

    static abstract class e extends AbstractSet {
        e() {
        }

        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection collection) {
            return Sets.i(this, collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection collection) {
            return super.retainAll((Collection) com.google.common.base.m.o(collection));
        }
    }

    public static abstract class f extends AbstractSet {
        private f() {
        }

        /* synthetic */ f(a aVar) {
            this();
        }

        /* JADX INFO: renamed from: a */
        public abstract r4 iterator();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean removeAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean retainAll(Collection collection) {
            throw new UnsupportedOperationException();
        }
    }

    static boolean a(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                return set.size() == set2.size() && set.containsAll(set2);
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static Set b(Set set, com.google.common.base.n nVar) {
        if (set instanceof SortedSet) {
            return c((SortedSet) set, nVar);
        }
        if (!(set instanceof c)) {
            return new c((Set) com.google.common.base.m.o(set), (com.google.common.base.n) com.google.common.base.m.o(nVar));
        }
        c cVar = (c) set;
        return new c((Set) cVar.f30785a, Predicates.c(cVar.f30786b, nVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static SortedSet c(SortedSet sortedSet, com.google.common.base.n nVar) {
        if (!(sortedSet instanceof c)) {
            return new d((SortedSet) com.google.common.base.m.o(sortedSet), (com.google.common.base.n) com.google.common.base.m.o(nVar));
        }
        c cVar = (c) sortedSet;
        return new d((SortedSet) cVar.f30785a, Predicates.c(cVar.f30786b, nVar));
    }

    static int d(Set set) {
        Iterator it = set.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i11 = ~(~(i11 + (next != null ? next.hashCode() : 0)));
        }
        return i11;
    }

    public static f e(Set set, Set set2) {
        com.google.common.base.m.p(set, "set1");
        com.google.common.base.m.p(set2, "set2");
        return new b(set, set2);
    }

    public static HashSet f() {
        return new HashSet();
    }

    public static HashSet g(int i11) {
        return new HashSet(Maps.d(i11));
    }

    public static Set h() {
        return Collections.newSetFromMap(Maps.q());
    }

    static boolean i(Set set, Collection collection) {
        com.google.common.base.m.o(collection);
        if (collection instanceof l3) {
            collection = ((l3) collection).elementSet();
        }
        return (!(collection instanceof Set) || collection.size() <= set.size()) ? j(set, collection.iterator()) : Iterators.u(set.iterator(), collection);
    }

    static boolean j(Set set, Iterator it) {
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= set.remove(it.next());
        }
        return zRemove;
    }

    public static f k(Set set, Set set2) {
        com.google.common.base.m.p(set, "set1");
        com.google.common.base.m.p(set2, "set2");
        return new a(set, set2);
    }

    public static NavigableSet l(NavigableSet navigableSet) {
        return ((navigableSet instanceof ImmutableCollection) || (navigableSet instanceof UnmodifiableNavigableSet)) ? navigableSet : new UnmodifiableNavigableSet(navigableSet);
    }
}
