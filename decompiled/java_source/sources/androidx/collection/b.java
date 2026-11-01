package androidx.collection;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableCollection;
import kotlin.jvm.internal.markers.KMutableSet;

/* JADX INFO: loaded from: classes.dex */
public final class b implements Collection, Set, KMutableCollection, KMutableSet {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int[] f2263a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object[] f2264b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2265c;

    private final class a extends k {
        public a() {
            super(b.this.h());
        }

        @Override // androidx.collection.k
        protected Object a(int i11) {
            return b.this.o(i11);
        }

        @Override // androidx.collection.k
        protected void c(int i11) {
            b.this.j(i11);
        }
    }

    @JvmOverloads
    public b() {
        this(0, 1, null);
    }

    public b(int i11) {
        this.f2263a = n.a.f70051a;
        this.f2264b = n.a.f70053c;
        if (i11 > 0) {
            d.a(this, i11);
        }
    }

    public /* synthetic */ b(int i11, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this((i12 & 1) != 0 ? 0 : i11);
    }

    public final void a(int i11) {
        int iH = h();
        if (e().length < i11) {
            int[] iArrE = e();
            Object[] objArrC = c();
            d.a(this, i11);
            if (h() > 0) {
                ArraysKt.q(iArrE, e(), 0, 0, h(), 6, null);
                ArraysKt.r(objArrC, c(), 0, 0, h(), 6, null);
            }
        }
        if (h() != iH) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(Object obj) {
        int i11;
        int iC;
        int iH = h();
        if (obj == null) {
            iC = d.d(this);
            i11 = 0;
        } else {
            int iHashCode = obj.hashCode();
            i11 = iHashCode;
            iC = d.c(this, obj, iHashCode);
        }
        if (iC >= 0) {
            return false;
        }
        int i12 = ~iC;
        if (iH >= e().length) {
            int i13 = 8;
            if (iH >= 8) {
                i13 = (iH >> 1) + iH;
            } else if (iH < 4) {
                i13 = 4;
            }
            int[] iArrE = e();
            Object[] objArrC = c();
            d.a(this, i13);
            if (iH != h()) {
                throw new ConcurrentModificationException();
            }
            if (!(e().length == 0)) {
                ArraysKt.q(iArrE, e(), 0, 0, iArrE.length, 6, null);
                ArraysKt.r(objArrC, c(), 0, 0, objArrC.length, 6, null);
            }
        }
        if (i12 < iH) {
            int i14 = i12 + 1;
            ArraysKt.l(e(), e(), i14, i12, iH);
            ArraysKt.n(c(), c(), i14, i12, iH);
        }
        if (iH != h() || i12 >= e().length) {
            throw new ConcurrentModificationException();
        }
        e()[i12] = i11;
        c()[i12] = obj;
        n(h() + 1);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection elements) {
        Intrinsics.h(elements, "elements");
        a(h() + elements.size());
        Iterator it = elements.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    public final Object[] c() {
        return this.f2264b;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        if (h() != 0) {
            m(n.a.f70051a);
            l(n.a.f70053c);
            n(0);
        }
        if (h() != 0) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection elements) {
        Intrinsics.h(elements, "elements");
        Iterator it = elements.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final int[] e() {
        return this.f2263a;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof Set) && size() == ((Set) obj).size()) {
            try {
                int iH = h();
                for (int i11 = 0; i11 < iH; i11++) {
                    if (((Set) obj).contains(o(i11))) {
                    }
                }
                return true;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public int f() {
        return this.f2265c;
    }

    public final int h() {
        return this.f2265c;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArrE = e();
        int iH = h();
        int i11 = 0;
        for (int i12 = 0; i12 < iH; i12++) {
            i11 += iArrE[i12];
        }
        return i11;
    }

    public final int indexOf(Object obj) {
        return obj == null ? d.d(this) : d.c(this, obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return h() <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator iterator() {
        return new a();
    }

    public final Object j(int i11) {
        int iH = h();
        Object obj = c()[i11];
        if (iH <= 1) {
            clear();
        } else {
            int i12 = iH - 1;
            if (e().length <= 8 || h() >= e().length / 3) {
                if (i11 < i12) {
                    int i13 = i11 + 1;
                    ArraysKt.l(e(), e(), i11, i13, iH);
                    ArraysKt.n(c(), c(), i11, i13, iH);
                }
                c()[i12] = null;
            } else {
                int iH2 = h() > 8 ? h() + (h() >> 1) : 8;
                int[] iArrE = e();
                Object[] objArrC = c();
                d.a(this, iH2);
                if (i11 > 0) {
                    ArraysKt.q(iArrE, e(), 0, 0, i11, 6, null);
                    ArraysKt.r(objArrC, c(), 0, 0, i11, 6, null);
                }
                if (i11 < i12) {
                    int i14 = i11 + 1;
                    ArraysKt.l(iArrE, e(), i11, i14, iH);
                    ArraysKt.n(objArrC, c(), i11, i14, iH);
                }
            }
            if (iH != h()) {
                throw new ConcurrentModificationException();
            }
            n(i12);
        }
        return obj;
    }

    public final void l(Object[] objArr) {
        Intrinsics.h(objArr, "<set-?>");
        this.f2264b = objArr;
    }

    public final void m(int[] iArr) {
        Intrinsics.h(iArr, "<set-?>");
        this.f2263a = iArr;
    }

    public final void n(int i11) {
        this.f2265c = i11;
    }

    public final Object o(int i11) {
        return c()[i11];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        j(iIndexOf);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection elements) {
        Intrinsics.h(elements, "elements");
        Iterator it = elements.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection elements) {
        Intrinsics.h(elements, "elements");
        boolean z10 = false;
        for (int iH = h() - 1; -1 < iH; iH--) {
            if (!CollectionsKt.b0(elements, c()[iH])) {
                j(iH);
                z10 = true;
            }
        }
        return z10;
    }

    @Override // java.util.Collection, java.util.Set
    public final /* bridge */ int size() {
        return f();
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        return ArraysKt.t(this.f2264b, 0, this.f2265c);
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] array) {
        Intrinsics.h(array, "array");
        Object[] result = c.a(array, this.f2265c);
        ArraysKt.n(this.f2264b, result, 0, 0, this.f2265c);
        Intrinsics.g(result, "result");
        return result;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(h() * 14);
        sb2.append('{');
        int iH = h();
        for (int i11 = 0; i11 < iH; i11++) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            Object objO = o(i11);
            if (objO != this) {
                sb2.append(objO);
            } else {
                sb2.append("(this Set)");
            }
        }
        sb2.append('}');
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }
}
