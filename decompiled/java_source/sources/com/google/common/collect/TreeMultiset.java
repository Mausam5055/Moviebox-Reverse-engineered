package com.google.common.collect;

import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class TreeMultiset<E> extends h implements Serializable {
    private static final long serialVersionUID = 1;
    private final transient e header;
    private final transient GeneralRange<E> range;
    private final transient f rootReference;

    private enum Aggregate {
        SIZE { // from class: com.google.common.collect.TreeMultiset.Aggregate.1
            @Override // com.google.common.collect.TreeMultiset.Aggregate
            int nodeAggregate(e eVar) {
                return eVar.f30718b;
            }

            @Override // com.google.common.collect.TreeMultiset.Aggregate
            long treeAggregate(e eVar) {
                if (eVar == null) {
                    return 0L;
                }
                return eVar.f30720d;
            }
        },
        DISTINCT { // from class: com.google.common.collect.TreeMultiset.Aggregate.2
            @Override // com.google.common.collect.TreeMultiset.Aggregate
            int nodeAggregate(e eVar) {
                return 1;
            }

            @Override // com.google.common.collect.TreeMultiset.Aggregate
            long treeAggregate(e eVar) {
                if (eVar == null) {
                    return 0L;
                }
                return eVar.f30719c;
            }
        };

        /* synthetic */ Aggregate(a aVar) {
            this();
        }

        abstract int nodeAggregate(e eVar);

        abstract long treeAggregate(e eVar);
    }

    class a extends Multisets.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ e f30708a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TreeMultiset f30709b;

        a(TreeMultiset treeMultiset, e eVar) {
            this.f30708a = eVar;
            this.f30709b = treeMultiset;
        }

        @Override // com.google.common.collect.l3.a
        public int getCount() {
            int iW = this.f30708a.w();
            return iW == 0 ? this.f30709b.count(getElement()) : iW;
        }

        @Override // com.google.common.collect.l3.a
        public Object getElement() {
            return this.f30708a.x();
        }
    }

    class b implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        e f30710a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        l3.a f30711b;

        b() {
            this.f30710a = TreeMultiset.this.firstNode();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public l3.a next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            TreeMultiset treeMultiset = TreeMultiset.this;
            e eVar = this.f30710a;
            Objects.requireNonNull(eVar);
            l3.a aVarWrapEntry = treeMultiset.wrapEntry(eVar);
            this.f30711b = aVarWrapEntry;
            if (this.f30710a.L() == TreeMultiset.this.header) {
                this.f30710a = null;
            } else {
                this.f30710a = this.f30710a.L();
            }
            return aVarWrapEntry;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f30710a == null) {
                return false;
            }
            if (!TreeMultiset.this.range.tooHigh(this.f30710a.x())) {
                return true;
            }
            this.f30710a = null;
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Iterator
        public void remove() {
            com.google.common.base.m.v(this.f30711b != null, "no calls to next() since the last call to remove()");
            TreeMultiset.this.setCount(this.f30711b.getElement(), 0);
            this.f30711b = null;
        }
    }

    class c implements Iterator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        e f30713a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        l3.a f30714b = null;

        c() {
            this.f30713a = TreeMultiset.this.lastNode();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public l3.a next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Objects.requireNonNull(this.f30713a);
            l3.a aVarWrapEntry = TreeMultiset.this.wrapEntry(this.f30713a);
            this.f30714b = aVarWrapEntry;
            if (this.f30713a.z() == TreeMultiset.this.header) {
                this.f30713a = null;
            } else {
                this.f30713a = this.f30713a.z();
            }
            return aVarWrapEntry;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f30713a == null) {
                return false;
            }
            if (!TreeMultiset.this.range.tooLow(this.f30713a.x())) {
                return true;
            }
            this.f30713a = null;
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Iterator
        public void remove() {
            com.google.common.base.m.v(this.f30714b != null, "no calls to next() since the last call to remove()");
            TreeMultiset.this.setCount(this.f30714b.getElement(), 0);
            this.f30714b = null;
        }
    }

    static /* synthetic */ class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f30716a;

        static {
            int[] iArr = new int[BoundType.values().length];
            f30716a = iArr;
            try {
                iArr[BoundType.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f30716a[BoundType.CLOSED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f30717a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f30718b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f30719c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f30720d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f30721e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private e f30722f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private e f30723g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private e f30724h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private e f30725i;

        e() {
            this.f30717a = null;
            this.f30718b = 1;
        }

        e(Object obj, int i11) {
            com.google.common.base.m.d(i11 > 0);
            this.f30717a = obj;
            this.f30718b = i11;
            this.f30720d = i11;
            this.f30719c = 1;
            this.f30721e = 1;
            this.f30722f = null;
            this.f30723g = null;
        }

        private e A() {
            int iR = r();
            if (iR == -2) {
                Objects.requireNonNull(this.f30723g);
                if (this.f30723g.r() > 0) {
                    this.f30723g = this.f30723g.I();
                }
                return H();
            }
            if (iR != 2) {
                C();
                return this;
            }
            Objects.requireNonNull(this.f30722f);
            if (this.f30722f.r() < 0) {
                this.f30722f = this.f30722f.H();
            }
            return I();
        }

        private void B() {
            D();
            C();
        }

        private void C() {
            this.f30721e = Math.max(y(this.f30722f), y(this.f30723g)) + 1;
        }

        private void D() {
            this.f30719c = TreeMultiset.distinctElements(this.f30722f) + 1 + TreeMultiset.distinctElements(this.f30723g);
            this.f30720d = ((long) this.f30718b) + M(this.f30722f) + M(this.f30723g);
        }

        private e F(e eVar) {
            e eVar2 = this.f30723g;
            if (eVar2 == null) {
                return this.f30722f;
            }
            this.f30723g = eVar2.F(eVar);
            this.f30719c--;
            this.f30720d -= (long) eVar.f30718b;
            return A();
        }

        private e G(e eVar) {
            e eVar2 = this.f30722f;
            if (eVar2 == null) {
                return this.f30723g;
            }
            this.f30722f = eVar2.G(eVar);
            this.f30719c--;
            this.f30720d -= (long) eVar.f30718b;
            return A();
        }

        private e H() {
            com.google.common.base.m.u(this.f30723g != null);
            e eVar = this.f30723g;
            this.f30723g = eVar.f30722f;
            eVar.f30722f = this;
            eVar.f30720d = this.f30720d;
            eVar.f30719c = this.f30719c;
            B();
            eVar.C();
            return eVar;
        }

        private e I() {
            com.google.common.base.m.u(this.f30722f != null);
            e eVar = this.f30722f;
            this.f30722f = eVar.f30723g;
            eVar.f30723g = this;
            eVar.f30720d = this.f30720d;
            eVar.f30719c = this.f30719c;
            B();
            eVar.C();
            return eVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public e L() {
            e eVar = this.f30725i;
            Objects.requireNonNull(eVar);
            return eVar;
        }

        private static long M(e eVar) {
            if (eVar == null) {
                return 0L;
            }
            return eVar.f30720d;
        }

        private e p(Object obj, int i11) {
            this.f30722f = new e(obj, i11);
            TreeMultiset.successor(z(), this.f30722f, this);
            this.f30721e = Math.max(2, this.f30721e);
            this.f30719c++;
            this.f30720d += (long) i11;
            return this;
        }

        private e q(Object obj, int i11) {
            e eVar = new e(obj, i11);
            this.f30723g = eVar;
            TreeMultiset.successor(this, eVar, L());
            this.f30721e = Math.max(2, this.f30721e);
            this.f30719c++;
            this.f30720d += (long) i11;
            return this;
        }

        private int r() {
            return y(this.f30722f) - y(this.f30723g);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public e s(Comparator comparator, Object obj) {
            int iCompare = comparator.compare(obj, x());
            if (iCompare < 0) {
                e eVar = this.f30722f;
                return eVar == null ? this : (e) com.google.common.base.h.a(eVar.s(comparator, obj), this);
            }
            if (iCompare == 0) {
                return this;
            }
            e eVar2 = this.f30723g;
            if (eVar2 == null) {
                return null;
            }
            return eVar2.s(comparator, obj);
        }

        private e u() {
            int i11 = this.f30718b;
            this.f30718b = 0;
            TreeMultiset.successor(z(), L());
            e eVar = this.f30722f;
            if (eVar == null) {
                return this.f30723g;
            }
            e eVar2 = this.f30723g;
            if (eVar2 == null) {
                return eVar;
            }
            if (eVar.f30721e >= eVar2.f30721e) {
                e eVarZ = z();
                eVarZ.f30722f = this.f30722f.F(eVarZ);
                eVarZ.f30723g = this.f30723g;
                eVarZ.f30719c = this.f30719c - 1;
                eVarZ.f30720d = this.f30720d - ((long) i11);
                return eVarZ.A();
            }
            e eVarL = L();
            eVarL.f30723g = this.f30723g.G(eVarL);
            eVarL.f30722f = this.f30722f;
            eVarL.f30719c = this.f30719c - 1;
            eVarL.f30720d = this.f30720d - ((long) i11);
            return eVarL.A();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public e v(Comparator comparator, Object obj) {
            int iCompare = comparator.compare(obj, x());
            if (iCompare > 0) {
                e eVar = this.f30723g;
                return eVar == null ? this : (e) com.google.common.base.h.a(eVar.v(comparator, obj), this);
            }
            if (iCompare == 0) {
                return this;
            }
            e eVar2 = this.f30722f;
            if (eVar2 == null) {
                return null;
            }
            return eVar2.v(comparator, obj);
        }

        private static int y(e eVar) {
            if (eVar == null) {
                return 0;
            }
            return eVar.f30721e;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public e z() {
            e eVar = this.f30724h;
            Objects.requireNonNull(eVar);
            return eVar;
        }

        e E(Comparator comparator, Object obj, int i11, int[] iArr) {
            int iCompare = comparator.compare(obj, x());
            if (iCompare < 0) {
                e eVar = this.f30722f;
                if (eVar == null) {
                    iArr[0] = 0;
                    return this;
                }
                this.f30722f = eVar.E(comparator, obj, i11, iArr);
                int i12 = iArr[0];
                if (i12 > 0) {
                    if (i11 >= i12) {
                        this.f30719c--;
                        this.f30720d -= (long) i12;
                    } else {
                        this.f30720d -= (long) i11;
                    }
                }
                return i12 == 0 ? this : A();
            }
            if (iCompare <= 0) {
                int i13 = this.f30718b;
                iArr[0] = i13;
                if (i11 >= i13) {
                    return u();
                }
                this.f30718b = i13 - i11;
                this.f30720d -= (long) i11;
                return this;
            }
            e eVar2 = this.f30723g;
            if (eVar2 == null) {
                iArr[0] = 0;
                return this;
            }
            this.f30723g = eVar2.E(comparator, obj, i11, iArr);
            int i14 = iArr[0];
            if (i14 > 0) {
                if (i11 >= i14) {
                    this.f30719c--;
                    this.f30720d -= (long) i14;
                } else {
                    this.f30720d -= (long) i11;
                }
            }
            return A();
        }

        e J(Comparator comparator, Object obj, int i11, int i12, int[] iArr) {
            int iCompare = comparator.compare(obj, x());
            if (iCompare < 0) {
                e eVar = this.f30722f;
                if (eVar == null) {
                    iArr[0] = 0;
                    return (i11 != 0 || i12 <= 0) ? this : p(obj, i12);
                }
                this.f30722f = eVar.J(comparator, obj, i11, i12, iArr);
                int i13 = iArr[0];
                if (i13 == i11) {
                    if (i12 == 0 && i13 != 0) {
                        this.f30719c--;
                    } else if (i12 > 0 && i13 == 0) {
                        this.f30719c++;
                    }
                    this.f30720d += (long) (i12 - i13);
                }
                return A();
            }
            if (iCompare <= 0) {
                int i14 = this.f30718b;
                iArr[0] = i14;
                if (i11 == i14) {
                    if (i12 == 0) {
                        return u();
                    }
                    this.f30720d += (long) (i12 - i14);
                    this.f30718b = i12;
                }
                return this;
            }
            e eVar2 = this.f30723g;
            if (eVar2 == null) {
                iArr[0] = 0;
                return (i11 != 0 || i12 <= 0) ? this : q(obj, i12);
            }
            this.f30723g = eVar2.J(comparator, obj, i11, i12, iArr);
            int i15 = iArr[0];
            if (i15 == i11) {
                if (i12 == 0 && i15 != 0) {
                    this.f30719c--;
                } else if (i12 > 0 && i15 == 0) {
                    this.f30719c++;
                }
                this.f30720d += (long) (i12 - i15);
            }
            return A();
        }

        e K(Comparator comparator, Object obj, int i11, int[] iArr) {
            int iCompare = comparator.compare(obj, x());
            if (iCompare < 0) {
                e eVar = this.f30722f;
                if (eVar == null) {
                    iArr[0] = 0;
                    return i11 > 0 ? p(obj, i11) : this;
                }
                this.f30722f = eVar.K(comparator, obj, i11, iArr);
                if (i11 == 0 && iArr[0] != 0) {
                    this.f30719c--;
                } else if (i11 > 0 && iArr[0] == 0) {
                    this.f30719c++;
                }
                this.f30720d += (long) (i11 - iArr[0]);
                return A();
            }
            if (iCompare <= 0) {
                int i12 = this.f30718b;
                iArr[0] = i12;
                if (i11 == 0) {
                    return u();
                }
                this.f30720d += (long) (i11 - i12);
                this.f30718b = i11;
                return this;
            }
            e eVar2 = this.f30723g;
            if (eVar2 == null) {
                iArr[0] = 0;
                return i11 > 0 ? q(obj, i11) : this;
            }
            this.f30723g = eVar2.K(comparator, obj, i11, iArr);
            if (i11 == 0 && iArr[0] != 0) {
                this.f30719c--;
            } else if (i11 > 0 && iArr[0] == 0) {
                this.f30719c++;
            }
            this.f30720d += (long) (i11 - iArr[0]);
            return A();
        }

        e o(Comparator comparator, Object obj, int i11, int[] iArr) {
            int iCompare = comparator.compare(obj, x());
            if (iCompare < 0) {
                e eVar = this.f30722f;
                if (eVar == null) {
                    iArr[0] = 0;
                    return p(obj, i11);
                }
                int i12 = eVar.f30721e;
                e eVarO = eVar.o(comparator, obj, i11, iArr);
                this.f30722f = eVarO;
                if (iArr[0] == 0) {
                    this.f30719c++;
                }
                this.f30720d += (long) i11;
                return eVarO.f30721e == i12 ? this : A();
            }
            if (iCompare <= 0) {
                int i13 = this.f30718b;
                iArr[0] = i13;
                long j11 = i11;
                com.google.common.base.m.d(((long) i13) + j11 <= 2147483647L);
                this.f30718b += i11;
                this.f30720d += j11;
                return this;
            }
            e eVar2 = this.f30723g;
            if (eVar2 == null) {
                iArr[0] = 0;
                return q(obj, i11);
            }
            int i14 = eVar2.f30721e;
            e eVarO2 = eVar2.o(comparator, obj, i11, iArr);
            this.f30723g = eVarO2;
            if (iArr[0] == 0) {
                this.f30719c++;
            }
            this.f30720d += (long) i11;
            return eVarO2.f30721e == i14 ? this : A();
        }

        int t(Comparator comparator, Object obj) {
            int iCompare = comparator.compare(obj, x());
            if (iCompare < 0) {
                e eVar = this.f30722f;
                if (eVar == null) {
                    return 0;
                }
                return eVar.t(comparator, obj);
            }
            if (iCompare <= 0) {
                return this.f30718b;
            }
            e eVar2 = this.f30723g;
            if (eVar2 == null) {
                return 0;
            }
            return eVar2.t(comparator, obj);
        }

        public String toString() {
            return Multisets.g(x(), w()).toString();
        }

        int w() {
            return this.f30718b;
        }

        Object x() {
            return m3.a(this.f30717a);
        }
    }

    private static final class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Object f30726a;

        private f() {
        }

        /* synthetic */ f(a aVar) {
            this();
        }

        public void a(Object obj, Object obj2) {
            if (this.f30726a != obj) {
                throw new ConcurrentModificationException();
            }
            this.f30726a = obj2;
        }

        void b() {
            this.f30726a = null;
        }

        public Object c() {
            return this.f30726a;
        }
    }

    TreeMultiset(f fVar, GeneralRange<E> generalRange, e eVar) {
        super(generalRange.comparator());
        this.rootReference = fVar;
        this.range = generalRange;
        this.header = eVar;
    }

    TreeMultiset(Comparator<? super E> comparator) {
        super(comparator);
        this.range = GeneralRange.all(comparator);
        e eVar = new e();
        this.header = eVar;
        successor(eVar, eVar);
        this.rootReference = new f(null);
    }

    private long aggregateAboveRange(Aggregate aggregate, e eVar) {
        long jTreeAggregate;
        long jAggregateAboveRange;
        if (eVar == null) {
            return 0L;
        }
        int iCompare = comparator().compare(m3.a(this.range.getUpperEndpoint()), eVar.x());
        if (iCompare > 0) {
            return aggregateAboveRange(aggregate, eVar.f30723g);
        }
        if (iCompare == 0) {
            int i11 = d.f30716a[this.range.getUpperBoundType().ordinal()];
            if (i11 != 1) {
                if (i11 == 2) {
                    return aggregate.treeAggregate(eVar.f30723g);
                }
                throw new AssertionError();
            }
            jTreeAggregate = aggregate.nodeAggregate(eVar);
            jAggregateAboveRange = aggregate.treeAggregate(eVar.f30723g);
        } else {
            jTreeAggregate = aggregate.treeAggregate(eVar.f30723g) + ((long) aggregate.nodeAggregate(eVar));
            jAggregateAboveRange = aggregateAboveRange(aggregate, eVar.f30722f);
        }
        return jTreeAggregate + jAggregateAboveRange;
    }

    private long aggregateBelowRange(Aggregate aggregate, e eVar) {
        long jTreeAggregate;
        long jAggregateBelowRange;
        if (eVar == null) {
            return 0L;
        }
        int iCompare = comparator().compare(m3.a(this.range.getLowerEndpoint()), eVar.x());
        if (iCompare < 0) {
            return aggregateBelowRange(aggregate, eVar.f30722f);
        }
        if (iCompare == 0) {
            int i11 = d.f30716a[this.range.getLowerBoundType().ordinal()];
            if (i11 != 1) {
                if (i11 == 2) {
                    return aggregate.treeAggregate(eVar.f30722f);
                }
                throw new AssertionError();
            }
            jTreeAggregate = aggregate.nodeAggregate(eVar);
            jAggregateBelowRange = aggregate.treeAggregate(eVar.f30722f);
        } else {
            jTreeAggregate = aggregate.treeAggregate(eVar.f30722f) + ((long) aggregate.nodeAggregate(eVar));
            jAggregateBelowRange = aggregateBelowRange(aggregate, eVar.f30723g);
        }
        return jTreeAggregate + jAggregateBelowRange;
    }

    private long aggregateForEntries(Aggregate aggregate) {
        e eVar = (e) this.rootReference.c();
        long jTreeAggregate = aggregate.treeAggregate(eVar);
        if (this.range.hasLowerBound()) {
            jTreeAggregate -= aggregateBelowRange(aggregate, eVar);
        }
        return this.range.hasUpperBound() ? jTreeAggregate - aggregateAboveRange(aggregate, eVar) : jTreeAggregate;
    }

    public static <E extends Comparable> TreeMultiset<E> create() {
        return new TreeMultiset<>(Ordering.natural());
    }

    public static <E extends Comparable> TreeMultiset<E> create(Iterable<? extends E> iterable) {
        TreeMultiset<E> treeMultisetCreate = create();
        g3.a(treeMultisetCreate, iterable);
        return treeMultisetCreate;
    }

    public static <E> TreeMultiset<E> create(Comparator<? super E> comparator) {
        return comparator == null ? new TreeMultiset<>(Ordering.natural()) : new TreeMultiset<>(comparator);
    }

    static int distinctElements(e eVar) {
        if (eVar == null) {
            return 0;
        }
        return eVar.f30719c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public e firstNode() {
        e eVarL;
        e eVar = (e) this.rootReference.c();
        if (eVar == null) {
            return null;
        }
        if (this.range.hasLowerBound()) {
            Object objA = m3.a(this.range.getLowerEndpoint());
            eVarL = eVar.s(comparator(), objA);
            if (eVarL == null) {
                return null;
            }
            if (this.range.getLowerBoundType() == BoundType.OPEN && comparator().compare(objA, eVarL.x()) == 0) {
                eVarL = eVarL.L();
            }
        } else {
            eVarL = this.header.L();
        }
        if (eVarL == this.header || !this.range.contains((E) eVarL.x())) {
            return null;
        }
        return eVarL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public e lastNode() {
        e eVarZ;
        e eVar = (e) this.rootReference.c();
        if (eVar == null) {
            return null;
        }
        if (this.range.hasUpperBound()) {
            Object objA = m3.a(this.range.getUpperEndpoint());
            eVarZ = eVar.v(comparator(), objA);
            if (eVarZ == null) {
                return null;
            }
            if (this.range.getUpperBoundType() == BoundType.OPEN && comparator().compare(objA, eVarZ.x()) == 0) {
                eVarZ = eVarZ.z();
            }
        } else {
            eVarZ = this.header.z();
        }
        if (eVarZ == this.header || !this.range.contains((E) eVarZ.x())) {
            return null;
        }
        return eVarZ;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Object object = objectInputStream.readObject();
        Objects.requireNonNull(object);
        Comparator comparator = (Comparator) object;
        w3.a(h.class, "comparator").b(this, comparator);
        w3.a(TreeMultiset.class, "range").b(this, GeneralRange.all(comparator));
        w3.a(TreeMultiset.class, "rootReference").b(this, new f(null));
        e eVar = new e();
        w3.a(TreeMultiset.class, "header").b(this, eVar);
        successor(eVar, eVar);
        w3.f(this, objectInputStream);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> void successor(e eVar, e eVar2) {
        eVar.f30725i = eVar2;
        eVar2.f30724h = eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> void successor(e eVar, e eVar2, e eVar3) {
        successor(eVar, eVar2);
        successor(eVar2, eVar3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public l3.a wrapEntry(e eVar) {
        return new a(this, eVar);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(elementSet().comparator());
        w3.k(this, objectOutputStream);
    }

    @Override // com.google.common.collect.d, com.google.common.collect.l3
    public int add(E e11, int i11) {
        e2.b(i11, "occurrences");
        if (i11 == 0) {
            return count(e11);
        }
        com.google.common.base.m.d(this.range.contains(e11));
        e eVar = (e) this.rootReference.c();
        if (eVar != null) {
            int[] iArr = new int[1];
            this.rootReference.a(eVar, eVar.o(comparator(), e11, i11, iArr));
            return iArr[0];
        }
        comparator().compare(e11, e11);
        e eVar2 = new e(e11, i11);
        e eVar3 = this.header;
        successor(eVar3, eVar2, eVar3);
        this.rootReference.a(eVar, eVar2);
        return 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        if (this.range.hasLowerBound() || this.range.hasUpperBound()) {
            Iterators.d(entryIterator());
            return;
        }
        e eVarL = this.header.L();
        while (true) {
            e eVar = this.header;
            if (eVarL == eVar) {
                successor(eVar, eVar);
                this.rootReference.b();
                return;
            }
            e eVarL2 = eVarL.L();
            eVarL.f30718b = 0;
            eVarL.f30722f = null;
            eVarL.f30723g = null;
            eVarL.f30724h = null;
            eVarL.f30725i = null;
            eVarL = eVarL2;
        }
    }

    @Override // com.google.common.collect.h, com.google.common.collect.a4, com.google.common.collect.y3
    public /* bridge */ /* synthetic */ Comparator comparator() {
        return super.comparator();
    }

    @Override // com.google.common.collect.d, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ boolean contains(Object obj) {
        return super.contains(obj);
    }

    @Override // com.google.common.collect.l3
    public int count(Object obj) {
        try {
            e eVar = (e) this.rootReference.c();
            if (this.range.contains(obj) && eVar != null) {
                return eVar.t(comparator(), obj);
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @Override // com.google.common.collect.h
    Iterator<l3.a> descendingEntryIterator() {
        return new c();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.a4
    public /* bridge */ /* synthetic */ a4 descendingMultiset() {
        return super.descendingMultiset();
    }

    @Override // com.google.common.collect.d
    int distinctElements() {
        return Ints.n(aggregateForEntries(Aggregate.DISTINCT));
    }

    @Override // com.google.common.collect.d
    Iterator<E> elementIterator() {
        return Multisets.e(entryIterator());
    }

    @Override // com.google.common.collect.h, com.google.common.collect.d, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ NavigableSet elementSet() {
        return super.elementSet();
    }

    @Override // com.google.common.collect.d
    Iterator<l3.a> entryIterator() {
        return new b();
    }

    @Override // com.google.common.collect.d, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.a4
    public /* bridge */ /* synthetic */ l3.a firstEntry() {
        return super.firstEntry();
    }

    @Override // com.google.common.collect.a4
    public a4 headMultiset(E e11, BoundType boundType) {
        return new TreeMultiset(this.rootReference, this.range.intersect(GeneralRange.upTo(comparator(), e11, boundType)), this.header);
    }

    @Override // com.google.common.collect.d, java.util.AbstractCollection, java.util.Collection
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return Multisets.i(this);
    }

    @Override // com.google.common.collect.h, com.google.common.collect.a4
    public /* bridge */ /* synthetic */ l3.a lastEntry() {
        return super.lastEntry();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.a4
    public /* bridge */ /* synthetic */ l3.a pollFirstEntry() {
        return super.pollFirstEntry();
    }

    @Override // com.google.common.collect.h, com.google.common.collect.a4
    public /* bridge */ /* synthetic */ l3.a pollLastEntry() {
        return super.pollLastEntry();
    }

    @Override // com.google.common.collect.d, com.google.common.collect.l3
    public int remove(Object obj, int i11) {
        e2.b(i11, "occurrences");
        if (i11 == 0) {
            return count(obj);
        }
        e eVar = (e) this.rootReference.c();
        int[] iArr = new int[1];
        try {
            if (this.range.contains(obj) && eVar != null) {
                this.rootReference.a(eVar, eVar.E(comparator(), obj, i11, iArr));
                return iArr[0];
            }
        } catch (ClassCastException | NullPointerException unused) {
        }
        return 0;
    }

    @Override // com.google.common.collect.d, com.google.common.collect.l3
    public int setCount(E e11, int i11) {
        e2.b(i11, "count");
        if (!this.range.contains(e11)) {
            com.google.common.base.m.d(i11 == 0);
            return 0;
        }
        e eVar = (e) this.rootReference.c();
        if (eVar == null) {
            if (i11 > 0) {
                add(e11, i11);
            }
            return 0;
        }
        int[] iArr = new int[1];
        this.rootReference.a(eVar, eVar.K(comparator(), e11, i11, iArr));
        return iArr[0];
    }

    @Override // com.google.common.collect.d, com.google.common.collect.l3
    public boolean setCount(E e11, int i11, int i12) {
        e2.b(i12, "newCount");
        e2.b(i11, "oldCount");
        com.google.common.base.m.d(this.range.contains(e11));
        e eVar = (e) this.rootReference.c();
        if (eVar != null) {
            int[] iArr = new int[1];
            this.rootReference.a(eVar, eVar.J(comparator(), e11, i11, i12, iArr));
            return iArr[0] == i11;
        }
        if (i11 != 0) {
            return false;
        }
        if (i12 > 0) {
            add(e11, i12);
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.l3
    public int size() {
        return Ints.n(aggregateForEntries(Aggregate.SIZE));
    }

    @Override // com.google.common.collect.h, com.google.common.collect.a4
    public /* bridge */ /* synthetic */ a4 subMultiset(Object obj, BoundType boundType, Object obj2, BoundType boundType2) {
        return super.subMultiset(obj, boundType, obj2, boundType2);
    }

    @Override // com.google.common.collect.a4
    public a4 tailMultiset(E e11, BoundType boundType) {
        return new TreeMultiset(this.rootReference, this.range.intersect(GeneralRange.downTo(comparator(), e11, boundType)), this.header);
    }
}
