package com.google.common.collect;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public abstract class g3 {

    class a extends j2 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Iterable f30789b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.google.common.base.n f30790c;

        a(Iterable iterable, com.google.common.base.n nVar) {
            this.f30789b = iterable;
            this.f30790c = nVar;
        }

        @Override // java.lang.Iterable
        public Iterator iterator() {
            return Iterators.k(this.f30789b.iterator(), this.f30790c);
        }
    }

    class b extends j2 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Iterable f30791b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.google.common.base.f f30792c;

        b(Iterable iterable, com.google.common.base.f fVar) {
            this.f30791b = iterable;
            this.f30792c = fVar;
        }

        @Override // java.lang.Iterable
        public Iterator iterator() {
            return Iterators.A(this.f30791b.iterator(), this.f30792c);
        }
    }

    class c extends j2 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Iterable f30793b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f30794c;

        class a implements Iterator {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            boolean f30795a = true;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Iterator f30796b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ c f30797c;

            a(c cVar, Iterator it) {
                this.f30796b = it;
                this.f30797c = cVar;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f30796b.hasNext();
            }

            @Override // java.util.Iterator
            public Object next() {
                Object next = this.f30796b.next();
                this.f30795a = false;
                return next;
            }

            @Override // java.util.Iterator
            public void remove() {
                e2.e(!this.f30795a);
                this.f30796b.remove();
            }
        }

        c(Iterable iterable, int i11) {
            this.f30793b = iterable;
            this.f30794c = i11;
        }

        @Override // java.lang.Iterable
        public Iterator iterator() {
            Iterable iterable = this.f30793b;
            if (iterable instanceof List) {
                List list = (List) iterable;
                return list.subList(Math.min(list.size(), this.f30794c), list.size()).iterator();
            }
            Iterator it = iterable.iterator();
            Iterators.b(it, this.f30794c);
            return new a(this, it);
        }
    }

    public static boolean a(Collection collection, Iterable iterable) {
        return iterable instanceof Collection ? collection.addAll((Collection) iterable) : Iterators.a(collection, ((Iterable) com.google.common.base.m.o(iterable)).iterator());
    }

    public static boolean b(Iterable iterable, com.google.common.base.n nVar) {
        return Iterators.c(iterable.iterator(), nVar);
    }

    private static Collection c(Iterable iterable) {
        return iterable instanceof Collection ? (Collection) iterable : Lists.k(iterable.iterator());
    }

    public static Iterable d(Iterable iterable, Iterable iterable2) {
        return j2.a(iterable, iterable2);
    }

    public static Iterable e(Iterable iterable, com.google.common.base.n nVar) {
        com.google.common.base.m.o(iterable);
        com.google.common.base.m.o(nVar);
        return new a(iterable, nVar);
    }

    public static Object f(Iterable iterable, Object obj) {
        return Iterators.o(iterable.iterator(), obj);
    }

    public static Object g(Iterable iterable) {
        if (!(iterable instanceof List)) {
            return Iterators.m(iterable.iterator());
        }
        List list = (List) iterable;
        if (list.isEmpty()) {
            throw new NoSuchElementException();
        }
        return i(list);
    }

    public static Object h(Iterable iterable, Object obj) {
        if (iterable instanceof Collection) {
            if (((Collection) iterable).isEmpty()) {
                return obj;
            }
            if (iterable instanceof List) {
                return i(Lists.b(iterable));
            }
        }
        return Iterators.n(iterable.iterator(), obj);
    }

    private static Object i(List list) {
        return list.get(list.size() - 1);
    }

    public static Object j(Iterable iterable) {
        return Iterators.p(iterable.iterator());
    }

    public static boolean k(Iterable iterable) {
        return iterable instanceof Collection ? ((Collection) iterable).isEmpty() : !iterable.iterator().hasNext();
    }

    public static boolean l(Iterable iterable, com.google.common.base.n nVar) {
        return ((iterable instanceof RandomAccess) && (iterable instanceof List)) ? m((List) iterable, (com.google.common.base.n) com.google.common.base.m.o(nVar)) : Iterators.v(iterable.iterator(), nVar);
    }

    private static boolean m(List list, com.google.common.base.n nVar) {
        int i11 = 0;
        int i12 = 0;
        while (i11 < list.size()) {
            Object obj = list.get(i11);
            if (!nVar.apply(obj)) {
                if (i11 > i12) {
                    try {
                        list.set(i12, obj);
                    } catch (IllegalArgumentException unused) {
                        o(list, nVar, i12, i11);
                        return true;
                    } catch (UnsupportedOperationException unused2) {
                        o(list, nVar, i12, i11);
                        return true;
                    }
                }
                i12++;
            }
            i11++;
        }
        list.subList(i12, list.size()).clear();
        return i11 != i12;
    }

    public static Iterable n(Iterable iterable, int i11) {
        com.google.common.base.m.o(iterable);
        com.google.common.base.m.e(i11 >= 0, "number to skip cannot be negative");
        return new c(iterable, i11);
    }

    private static void o(List list, com.google.common.base.n nVar, int i11, int i12) {
        for (int size = list.size() - 1; size > i12; size--) {
            if (nVar.apply(list.get(size))) {
                list.remove(size);
            }
        }
        for (int i13 = i12 - 1; i13 >= i11; i13--) {
            list.remove(i13);
        }
    }

    static Object[] p(Iterable iterable) {
        return c(iterable).toArray();
    }

    static Object[] q(Iterable iterable, Object[] objArr) {
        return c(iterable).toArray(objArr);
    }

    public static String r(Iterable iterable) {
        return Iterators.z(iterable.iterator());
    }

    public static Iterable s(Iterable iterable, com.google.common.base.f fVar) {
        com.google.common.base.m.o(iterable);
        com.google.common.base.m.o(fVar);
        return new b(iterable, fVar);
    }
}
