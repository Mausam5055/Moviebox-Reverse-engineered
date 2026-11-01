package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Comparator;
import java.util.Deque;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.PriorityQueue;
import java.util.Queue;

/* JADX INFO: loaded from: classes.dex */
public abstract class Iterators {

    /* JADX INFO: loaded from: classes4.dex */
    private enum EmptyModifiableIterator implements Iterator<Object> {
        INSTANCE;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            e2.e(false);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    class a extends r4 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Iterator f30475a;

        a(Iterator it) {
            this.f30475a = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30475a.hasNext();
        }

        @Override // java.util.Iterator
        public Object next() {
            return this.f30475a.next();
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    class b extends AbstractIterator {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Iterator f30476c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.google.common.base.n f30477d;

        b(Iterator it, com.google.common.base.n nVar) {
            this.f30476c = it;
            this.f30477d = nVar;
        }

        @Override // com.google.common.collect.AbstractIterator
        protected Object a() {
            while (this.f30476c.hasNext()) {
                Object next = this.f30476c.next();
                if (this.f30477d.apply(next)) {
                    return next;
                }
            }
            return b();
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    class c extends o4 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.google.common.base.f f30478b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(Iterator it, com.google.common.base.f fVar) {
            super(it);
            this.f30478b = fVar;
        }

        @Override // com.google.common.collect.o4
        Object a(Object obj) {
            return this.f30478b.apply(obj);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    private static final class d extends com.google.common.collect.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final s4 f30479d = new d(new Object[0], 0);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Object[] f30480c;

        d(Object[] objArr, int i11) {
            super(objArr.length, i11);
            this.f30480c = objArr;
        }

        @Override // com.google.common.collect.a
        protected Object a(int i11) {
            return this.f30480c[i11];
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    private static class e implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Iterator f30481a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Iterator f30482b = Iterators.h();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Iterator f30483c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Deque f30484d;

        e(Iterator it) {
            this.f30483c = (Iterator) com.google.common.base.m.o(it);
        }

        private Iterator a() {
            while (true) {
                Iterator it = this.f30483c;
                if (it != null && it.hasNext()) {
                    return this.f30483c;
                }
                Deque deque = this.f30484d;
                if (deque == null || deque.isEmpty()) {
                    return null;
                }
                this.f30483c = (Iterator) this.f30484d.removeFirst();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (!((Iterator) com.google.common.base.m.o(this.f30482b)).hasNext()) {
                Iterator itA = a();
                this.f30483c = itA;
                if (itA == null) {
                    return false;
                }
                Iterator it = (Iterator) itA.next();
                this.f30482b = it;
                if (it instanceof e) {
                    e eVar = (e) it;
                    this.f30482b = eVar.f30482b;
                    if (this.f30484d == null) {
                        this.f30484d = new ArrayDeque();
                    }
                    this.f30484d.addFirst(this.f30483c);
                    if (eVar.f30484d != null) {
                        while (!eVar.f30484d.isEmpty()) {
                            this.f30484d.addFirst((Iterator) eVar.f30484d.removeLast());
                        }
                    }
                    this.f30483c = eVar.f30483c;
                }
            }
            return true;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Iterator it = this.f30482b;
            this.f30481a = it;
            return it.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            Iterator it = this.f30481a;
            if (it == null) {
                throw new IllegalStateException("no calls to next() since the last call to remove()");
            }
            it.remove();
            this.f30481a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes4.dex */
    static class f extends r4 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Queue f30485a;

        public f(Iterable iterable, final Comparator comparator) {
            this.f30485a = new PriorityQueue(2, new Comparator() { // from class: com.google.common.collect.h3
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return Iterators.f.b(comparator, (q3) obj, (q3) obj2);
                }
            });
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                Iterator it2 = (Iterator) it.next();
                if (it2.hasNext()) {
                    this.f30485a.add(Iterators.s(it2));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ int b(Comparator comparator, q3 q3Var, q3 q3Var2) {
            return comparator.compare(q3Var.peek(), q3Var2.peek());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f30485a.isEmpty();
        }

        @Override // java.util.Iterator
        public Object next() {
            q3 q3Var = (q3) this.f30485a.remove();
            Object next = q3Var.next();
            if (q3Var.hasNext()) {
                this.f30485a.add(q3Var);
            }
            return next;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    private static class g implements q3 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Iterator f30486a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f30487b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Object f30488c;

        public g(Iterator it) {
            this.f30486a = (Iterator) com.google.common.base.m.o(it);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f30487b || this.f30486a.hasNext();
        }

        @Override // com.google.common.collect.q3, java.util.Iterator
        public Object next() {
            if (!this.f30487b) {
                return this.f30486a.next();
            }
            Object objA = m3.a(this.f30488c);
            this.f30487b = false;
            this.f30488c = null;
            return objA;
        }

        @Override // com.google.common.collect.q3
        public Object peek() {
            if (!this.f30487b) {
                this.f30488c = this.f30486a.next();
                this.f30487b = true;
            }
            return m3.a(this.f30488c);
        }

        @Override // java.util.Iterator
        public void remove() {
            com.google.common.base.m.v(!this.f30487b, "Can't remove after you've peeked at next");
            this.f30486a.remove();
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    private static final class h extends r4 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f30489a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f30490b;

        h(Object obj) {
            this.f30489a = obj;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f30490b;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (this.f30490b) {
                throw new NoSuchElementException();
            }
            this.f30490b = true;
            return this.f30489a;
        }
    }

    public static Iterator A(Iterator it, com.google.common.base.f fVar) {
        com.google.common.base.m.o(fVar);
        return new c(it, fVar);
    }

    public static r4 B(Iterator it) {
        com.google.common.base.m.o(it);
        return it instanceof r4 ? (r4) it : new a(it);
    }

    public static boolean a(Collection collection, Iterator it) {
        com.google.common.base.m.o(collection);
        com.google.common.base.m.o(it);
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= collection.add(it.next());
        }
        return zAdd;
    }

    public static int b(Iterator it, int i11) {
        com.google.common.base.m.o(it);
        int i12 = 0;
        com.google.common.base.m.e(i11 >= 0, "numberToAdvance must be nonnegative");
        while (i12 < i11 && it.hasNext()) {
            it.next();
            i12++;
        }
        return i12;
    }

    public static boolean c(Iterator it, com.google.common.base.n nVar) {
        return q(it, nVar) != -1;
    }

    static void d(Iterator it) {
        com.google.common.base.m.o(it);
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    public static Iterator e(Iterator it) {
        return new e(it);
    }

    public static boolean f(Iterator it, Object obj) {
        if (obj == null) {
            while (it.hasNext()) {
                if (it.next() == null) {
                    return true;
                }
            }
            return false;
        }
        while (it.hasNext()) {
            if (obj.equals(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean g(Iterator it, Iterator it2) {
        while (it.hasNext()) {
            if (!it2.hasNext() || !com.google.common.base.j.a(it.next(), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    static r4 h() {
        return i();
    }

    static s4 i() {
        return d.f30479d;
    }

    static Iterator j() {
        return EmptyModifiableIterator.INSTANCE;
    }

    public static r4 k(Iterator it, com.google.common.base.n nVar) {
        com.google.common.base.m.o(it);
        com.google.common.base.m.o(nVar);
        return new b(it, nVar);
    }

    public static Object l(Iterator it, com.google.common.base.n nVar) {
        com.google.common.base.m.o(it);
        com.google.common.base.m.o(nVar);
        while (it.hasNext()) {
            Object next = it.next();
            if (nVar.apply(next)) {
                return next;
            }
        }
        throw new NoSuchElementException();
    }

    public static Object m(Iterator it) {
        Object next;
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    public static Object n(Iterator it, Object obj) {
        return it.hasNext() ? m(it) : obj;
    }

    public static Object o(Iterator it, Object obj) {
        return it.hasNext() ? it.next() : obj;
    }

    public static Object p(Iterator it) {
        Object next = it.next();
        if (!it.hasNext()) {
            return next;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("expected one element but was: <");
        sb2.append(next);
        for (int i11 = 0; i11 < 4 && it.hasNext(); i11++) {
            sb2.append(", ");
            sb2.append(it.next());
        }
        if (it.hasNext()) {
            sb2.append(", ...");
        }
        sb2.append('>');
        throw new IllegalArgumentException(sb2.toString());
    }

    public static int q(Iterator it, com.google.common.base.n nVar) {
        com.google.common.base.m.p(nVar, "predicate");
        int i11 = 0;
        while (it.hasNext()) {
            if (nVar.apply(it.next())) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    public static r4 r(Iterable iterable, Comparator comparator) {
        com.google.common.base.m.p(iterable, "iterators");
        com.google.common.base.m.p(comparator, "comparator");
        return new f(iterable, comparator);
    }

    public static q3 s(Iterator it) {
        return it instanceof g ? (g) it : new g(it);
    }

    static Object t(Iterator it) {
        if (!it.hasNext()) {
            return null;
        }
        Object next = it.next();
        it.remove();
        return next;
    }

    public static boolean u(Iterator it, Collection collection) {
        com.google.common.base.m.o(collection);
        boolean z10 = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    public static boolean v(Iterator it, com.google.common.base.n nVar) {
        com.google.common.base.m.o(nVar);
        boolean z10 = false;
        while (it.hasNext()) {
            if (nVar.apply(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    public static boolean w(Iterator it, Collection collection) {
        com.google.common.base.m.o(collection);
        boolean z10 = false;
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
                z10 = true;
            }
        }
        return z10;
    }

    public static r4 x(Object obj) {
        return new h(obj);
    }

    public static int y(Iterator it) {
        long j11 = 0;
        while (it.hasNext()) {
            it.next();
            j11++;
        }
        return Ints.n(j11);
    }

    public static String z(Iterator it) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('[');
        boolean z10 = true;
        while (it.hasNext()) {
            if (!z10) {
                sb2.append(", ");
            }
            sb2.append(it.next());
            z10 = false;
        }
        sb2.append(']');
        return sb2.toString();
    }
}
