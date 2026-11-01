package androidx.compose.ui.node;

import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.UnaryOperator;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes.dex */
public final class q implements List, KMappedMarker {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5424d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object[] f5421a = new Object[16];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long[] f5422b = new long[16];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f5423c = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f5425e = true;

    private final class a implements ListIterator, KMappedMarker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f5426a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f5427b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f5428c;

        public a(int i11, int i12, int i13) {
            this.f5426a = i11;
            this.f5427b = i12;
            this.f5428c = i13;
        }

        public /* synthetic */ a(q qVar, int i11, int i12, int i13, int i14, DefaultConstructorMarker defaultConstructorMarker) {
            this((i14 & 1) != 0 ? 0 : i11, (i14 & 2) != 0 ? 0 : i12, (i14 & 4) != 0 ? qVar.size() : i13);
        }

        @Override // java.util.ListIterator, java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public androidx.compose.ui.f.c next() {
            Object[] objArr = q.this.f5421a;
            int i11 = this.f5426a;
            this.f5426a = i11 + 1;
            Object obj = objArr[i11];
            Intrinsics.f(obj, "null cannot be cast to non-null type androidx.compose.ui.Modifier.Node");
            return (androidx.compose.ui.f.c) obj;
        }

        @Override // java.util.ListIterator
        public /* bridge */ /* synthetic */ void add(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public androidx.compose.ui.f.c previous() {
            Object[] objArr = q.this.f5421a;
            int i11 = this.f5426a - 1;
            this.f5426a = i11;
            Object obj = objArr[i11];
            Intrinsics.f(obj, "null cannot be cast to non-null type androidx.compose.ui.Modifier.Node");
            return (androidx.compose.ui.f.c) obj;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f5426a < this.f5428c;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f5426a > this.f5427b;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f5426a - this.f5427b;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return (this.f5426a - this.f5427b) - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public /* bridge */ /* synthetic */ void set(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    private final class b implements List, KMappedMarker {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f5430a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f5431b;

        public b(int i11, int i12) {
            this.f5430a = i11;
            this.f5431b = i12;
        }

        public boolean a(androidx.compose.ui.f.c cVar) {
            return indexOf(cVar) != -1;
        }

        @Override // java.util.List
        public /* bridge */ /* synthetic */ void add(int i11, Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public /* bridge */ /* synthetic */ boolean add(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        public boolean addAll(int i11, Collection collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public boolean addAll(Collection collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public androidx.compose.ui.f.c get(int i11) {
            Object obj = q.this.f5421a[i11 + this.f5430a];
            Intrinsics.f(obj, "null cannot be cast to non-null type androidx.compose.ui.Modifier.Node");
            return (androidx.compose.ui.f.c) obj;
        }

        @Override // java.util.List, java.util.Collection
        public void clear() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public final /* bridge */ boolean contains(Object obj) {
            if (obj instanceof androidx.compose.ui.f.c) {
                return a((androidx.compose.ui.f.c) obj);
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public boolean containsAll(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (!contains((androidx.compose.ui.f.c) it.next())) {
                    return false;
                }
            }
            return true;
        }

        public int e() {
            return this.f5431b - this.f5430a;
        }

        public int f(androidx.compose.ui.f.c cVar) {
            int i11 = this.f5430a;
            int i12 = this.f5431b;
            if (i11 > i12) {
                return -1;
            }
            while (!Intrinsics.c(q.this.f5421a[i11], cVar)) {
                if (i11 == i12) {
                    return -1;
                }
                i11++;
            }
            return i11 - this.f5430a;
        }

        public int h(androidx.compose.ui.f.c cVar) {
            int i11 = this.f5431b;
            int i12 = this.f5430a;
            if (i12 > i11) {
                return -1;
            }
            while (!Intrinsics.c(q.this.f5421a[i11], cVar)) {
                if (i11 == i12) {
                    return -1;
                }
                i11--;
            }
            return i11 - this.f5430a;
        }

        @Override // java.util.List
        public final /* bridge */ int indexOf(Object obj) {
            if (obj instanceof androidx.compose.ui.f.c) {
                return f((androidx.compose.ui.f.c) obj);
            }
            return -1;
        }

        @Override // java.util.List, java.util.Collection
        public boolean isEmpty() {
            return size() == 0;
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            q qVar = q.this;
            int i11 = this.f5430a;
            return qVar.new a(i11, i11, this.f5431b);
        }

        @Override // java.util.List
        public final /* bridge */ int lastIndexOf(Object obj) {
            if (obj instanceof androidx.compose.ui.f.c) {
                return h((androidx.compose.ui.f.c) obj);
            }
            return -1;
        }

        @Override // java.util.List
        public ListIterator listIterator() {
            q qVar = q.this;
            int i11 = this.f5430a;
            return qVar.new a(i11, i11, this.f5431b);
        }

        @Override // java.util.List
        public ListIterator listIterator(int i11) {
            q qVar = q.this;
            int i12 = this.f5430a;
            return qVar.new a(i11 + i12, i12, this.f5431b);
        }

        @Override // java.util.List
        public /* bridge */ /* synthetic */ Object remove(int i11) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public boolean removeAll(Collection collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        public void replaceAll(UnaryOperator unaryOperator) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public boolean retainAll(Collection collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        public /* bridge */ /* synthetic */ Object set(int i11, Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public final /* bridge */ int size() {
            return e();
        }

        @Override // java.util.List
        public void sort(Comparator comparator) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        public List subList(int i11, int i12) {
            q qVar = q.this;
            int i13 = this.f5430a;
            return qVar.new b(i11 + i13, i13 + i12);
        }

        @Override // java.util.List, java.util.Collection
        public Object[] toArray() {
            return CollectionToArray.a(this);
        }

        @Override // java.util.List, java.util.Collection
        public Object[] toArray(Object[] objArr) {
            return CollectionToArray.b(this, objArr);
        }
    }

    private final void j() {
        int i11 = this.f5423c;
        Object[] objArr = this.f5421a;
        if (i11 >= objArr.length) {
            int length = objArr.length + 16;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, length);
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f5421a = objArrCopyOf;
            long[] jArrCopyOf = Arrays.copyOf(this.f5422b, length);
            Intrinsics.g(jArrCopyOf, "copyOf(this, newSize)");
            this.f5422b = jArrCopyOf;
        }
    }

    private final long l() {
        long jA = r.a(Float.POSITIVE_INFINITY, false);
        int i11 = this.f5423c + 1;
        int iN = CollectionsKt.n(this);
        if (i11 <= iN) {
            while (true) {
                long jB = l.b(this.f5422b[i11]);
                if (l.a(jB, jA) < 0) {
                    jA = jB;
                }
                if (l.c(jA) < 0.0f && l.d(jA)) {
                    return jA;
                }
                if (i11 != iN) {
                    i11++;
                }
            }
        }
        return jA;
    }

    private final void v() {
        int i11 = this.f5423c + 1;
        int iN = CollectionsKt.n(this);
        if (i11 <= iN) {
            while (true) {
                this.f5421a[i11] = null;
                if (i11 == iN) {
                    break;
                } else {
                    i11++;
                }
            }
        }
        this.f5424d = this.f5423c + 1;
    }

    public final void a() {
        this.f5423c = size() - 1;
    }

    @Override // java.util.List
    public /* bridge */ /* synthetic */ void add(int i11, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i11, Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        this.f5423c = -1;
        v();
        this.f5425e = true;
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof androidx.compose.ui.f.c) {
            return h((androidx.compose.ui.f.c) obj);
        }
        return false;
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains((androidx.compose.ui.f.c) it.next())) {
                return false;
            }
        }
        return true;
    }

    public boolean h(androidx.compose.ui.f.c cVar) {
        return indexOf(cVar) != -1;
    }

    @Override // java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof androidx.compose.ui.f.c) {
            return s((androidx.compose.ui.f.c) obj);
        }
        return -1;
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return new a(this, 0, 0, 0, 7, null);
    }

    @Override // java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof androidx.compose.ui.f.c) {
            return u((androidx.compose.ui.f.c) obj);
        }
        return -1;
    }

    @Override // java.util.List
    public ListIterator listIterator() {
        return new a(this, 0, 0, 0, 7, null);
    }

    @Override // java.util.List
    public ListIterator listIterator(int i11) {
        return new a(this, i11, 0, 0, 6, null);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public androidx.compose.ui.f.c get(int i11) {
        Object obj = this.f5421a[i11];
        Intrinsics.f(obj, "null cannot be cast to non-null type androidx.compose.ui.Modifier.Node");
        return (androidx.compose.ui.f.c) obj;
    }

    public final boolean n() {
        return this.f5425e;
    }

    public int o() {
        return this.f5424d;
    }

    public final boolean p() {
        long jL = l();
        return l.c(jL) < 0.0f && l.d(jL);
    }

    public final void q(androidx.compose.ui.f.c cVar, boolean z10, Function0 function0) {
        r(cVar, -1.0f, z10, function0);
        NodeCoordinator nodeCoordinatorC1 = cVar.c1();
        if (nodeCoordinatorC1 == null || nodeCoordinatorC1.F2()) {
            return;
        }
        this.f5425e = false;
    }

    public final void r(androidx.compose.ui.f.c cVar, float f11, boolean z10, Function0 function0) {
        int i11 = this.f5423c;
        this.f5423c = i11 + 1;
        j();
        Object[] objArr = this.f5421a;
        int i12 = this.f5423c;
        objArr[i12] = cVar;
        this.f5422b[i12] = r.a(f11, z10);
        v();
        function0.invoke();
        this.f5423c = i11;
    }

    @Override // java.util.List
    public /* bridge */ /* synthetic */ Object remove(int i11) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public void replaceAll(UnaryOperator unaryOperator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public int s(androidx.compose.ui.f.c cVar) {
        int iN = CollectionsKt.n(this);
        if (iN < 0) {
            return -1;
        }
        int i11 = 0;
        while (!Intrinsics.c(this.f5421a[i11], cVar)) {
            if (i11 == iN) {
                return -1;
            }
            i11++;
        }
        return i11;
    }

    @Override // java.util.List
    public /* bridge */ /* synthetic */ Object set(int i11, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return o();
    }

    @Override // java.util.List
    public void sort(Comparator comparator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public List subList(int i11, int i12) {
        return new b(i11, i12);
    }

    public final boolean t(float f11, boolean z10) {
        if (this.f5423c == CollectionsKt.n(this)) {
            return true;
        }
        return l.a(l(), r.a(f11, z10)) > 0;
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.a(this);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray(Object[] objArr) {
        return CollectionToArray.b(this, objArr);
    }

    public int u(androidx.compose.ui.f.c cVar) {
        for (int iN = CollectionsKt.n(this); -1 < iN; iN--) {
            if (Intrinsics.c(this.f5421a[iN], cVar)) {
                return iN;
            }
        }
        return -1;
    }

    public final void w(androidx.compose.ui.f.c cVar, float f11, boolean z10, Function0 function0) {
        if (this.f5423c == CollectionsKt.n(this)) {
            r(cVar, f11, z10, function0);
            if (this.f5423c + 1 == CollectionsKt.n(this)) {
                v();
                return;
            }
            return;
        }
        long jL = l();
        int i11 = this.f5423c;
        this.f5423c = CollectionsKt.n(this);
        r(cVar, f11, z10, function0);
        if (this.f5423c + 1 < CollectionsKt.n(this) && l.a(jL, l()) > 0) {
            int i12 = this.f5423c + 1;
            int i13 = i11 + 1;
            Object[] objArr = this.f5421a;
            ArraysKt.n(objArr, objArr, i13, i12, size());
            long[] jArr = this.f5422b;
            ArraysKt.m(jArr, jArr, i13, i12, size());
            this.f5423c = ((size() + i11) - this.f5423c) - 1;
        }
        v();
        this.f5423c = i11;
    }
}
