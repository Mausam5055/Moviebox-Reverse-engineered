package com.google.common.collect;

import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes4.dex */
abstract class b4 {

    static class a extends Multisets.c implements SortedSet {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a4 f30762a;

        a(a4 a4Var) {
            this.f30762a = a4Var;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Multisets.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final a4 a() {
            return this.f30762a;
        }

        @Override // java.util.SortedSet
        public Comparator comparator() {
            return a().comparator();
        }

        @Override // java.util.SortedSet
        public Object first() {
            return b4.d(a().firstEntry());
        }

        @Override // java.util.SortedSet
        public SortedSet headSet(Object obj) {
            return a().headMultiset(obj, BoundType.OPEN).elementSet();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return Multisets.e(a().entrySet().iterator());
        }

        @Override // java.util.SortedSet
        public Object last() {
            return b4.d(a().lastEntry());
        }

        @Override // java.util.SortedSet
        public SortedSet subSet(Object obj, Object obj2) {
            return a().subMultiset(obj, BoundType.CLOSED, obj2, BoundType.OPEN).elementSet();
        }

        @Override // java.util.SortedSet
        public SortedSet tailSet(Object obj) {
            return a().tailMultiset(obj, BoundType.CLOSED).elementSet();
        }
    }

    static class b extends a implements NavigableSet {
        b(a4 a4Var) {
            super(a4Var);
        }

        @Override // java.util.NavigableSet
        public Object ceiling(Object obj) {
            return b4.c(a().tailMultiset(obj, BoundType.CLOSED).firstEntry());
        }

        @Override // java.util.NavigableSet
        public Iterator descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet descendingSet() {
            return new b(a().descendingMultiset());
        }

        @Override // java.util.NavigableSet
        public Object floor(Object obj) {
            return b4.c(a().headMultiset(obj, BoundType.CLOSED).lastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet headSet(Object obj, boolean z10) {
            return new b(a().headMultiset(obj, BoundType.forBoolean(z10)));
        }

        @Override // java.util.NavigableSet
        public Object higher(Object obj) {
            return b4.c(a().tailMultiset(obj, BoundType.OPEN).firstEntry());
        }

        @Override // java.util.NavigableSet
        public Object lower(Object obj) {
            return b4.c(a().headMultiset(obj, BoundType.OPEN).lastEntry());
        }

        @Override // java.util.NavigableSet
        public Object pollFirst() {
            return b4.c(a().pollFirstEntry());
        }

        @Override // java.util.NavigableSet
        public Object pollLast() {
            return b4.c(a().pollLastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet subSet(Object obj, boolean z10, Object obj2, boolean z11) {
            return new b(a().subMultiset(obj, BoundType.forBoolean(z10), obj2, BoundType.forBoolean(z11)));
        }

        @Override // java.util.NavigableSet
        public NavigableSet tailSet(Object obj, boolean z10) {
            return new b(a().tailMultiset(obj, BoundType.forBoolean(z10)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object c(l3.a aVar) {
        if (aVar == null) {
            return null;
        }
        return aVar.getElement();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object d(l3.a aVar) {
        if (aVar != null) {
            return aVar.getElement();
        }
        throw new NoSuchElementException();
    }
}
