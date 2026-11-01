package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class h extends AbstractPersistentList implements t.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f3718b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f3719c = 8;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final h f3720d = new h(new Object[0]);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object[] f3721a;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final h a() {
            return h.f3720d;
        }
    }

    public h(Object[] objArr) {
        this.f3721a = objArr;
        w.a.a(objArr.length <= 32);
    }

    private final Object[] h(int i11) {
        return new Object[i11];
    }

    @Override // java.util.List, t.f
    public t.f add(int i11, Object obj) {
        w.d.b(i11, size());
        if (i11 == size()) {
            return add(obj);
        }
        if (size() < 32) {
            Object[] objArrH = h(size() + 1);
            ArraysKt.r(this.f3721a, objArrH, 0, 0, i11, 6, null);
            ArraysKt.n(this.f3721a, objArrH, i11 + 1, i11, size());
            objArrH[i11] = obj;
            return new h(objArrH);
        }
        Object[] objArr = this.f3721a;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        Intrinsics.g(objArrCopyOf, "copyOf(this, size)");
        ArraysKt.n(this.f3721a, objArrCopyOf, i11 + 1, i11, size() - 1);
        objArrCopyOf[i11] = obj;
        return new d(objArrCopyOf, j.c(this.f3721a[31]), size() + 1, 0);
    }

    @Override // java.util.Collection, java.util.List, t.f
    public t.f add(Object obj) {
        if (size() >= 32) {
            return new d(this.f3721a, j.c(obj), size() + 1, 0);
        }
        Object[] objArrCopyOf = Arrays.copyOf(this.f3721a, size() + 1);
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        objArrCopyOf[size()] = obj;
        return new h(objArrCopyOf);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList, java.util.Collection, java.util.List, t.f
    public t.f addAll(Collection collection) {
        if (size() + collection.size() > 32) {
            t.f.a aVarBuilder = builder();
            aVarBuilder.addAll(collection);
            return aVarBuilder.build();
        }
        Object[] objArrCopyOf = Arrays.copyOf(this.f3721a, size() + collection.size());
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        int size = size();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            objArrCopyOf[size] = it.next();
            size++;
        }
        return new h(objArrCopyOf);
    }

    @Override // t.f
    public t.f.a builder() {
        return new PersistentVectorBuilder(this, null, this.f3721a, 0);
    }

    @Override // t.f
    public t.f d(int i11) {
        w.d.a(i11, size());
        if (size() == 1) {
            return f3720d;
        }
        Object[] objArrCopyOf = Arrays.copyOf(this.f3721a, size() - 1);
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        ArraysKt.n(this.f3721a, objArrCopyOf, i11, i11 + 1, size());
        return new h(objArrCopyOf);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public Object get(int i11) {
        w.d.a(i11, size());
        return this.f3721a[i11];
    }

    @Override // kotlin.collections.AbstractCollection
    /* JADX INFO: renamed from: getSize */
    public int get_size() {
        return this.f3721a.length;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public int indexOf(Object obj) {
        return ArraysKt.h0(this.f3721a, obj);
    }

    @Override // t.f
    public t.f k(Function1 function1) {
        Object[] objArrCopyOf = this.f3721a;
        int size = size();
        int size2 = size();
        boolean z10 = false;
        for (int i11 = 0; i11 < size2; i11++) {
            Object obj = this.f3721a[i11];
            if (((Boolean) function1.invoke(obj)).booleanValue()) {
                if (!z10) {
                    Object[] objArr = this.f3721a;
                    objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
                    Intrinsics.g(objArrCopyOf, "copyOf(this, size)");
                    z10 = true;
                    size = i11;
                }
            } else if (z10) {
                objArrCopyOf[size] = obj;
                size++;
            }
        }
        if (size == size()) {
            return this;
        }
        return size == 0 ? f3720d : new h(ArraysKt.t(objArrCopyOf, 0, size));
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public int lastIndexOf(Object obj) {
        return ArraysKt.v0(this.f3721a, obj);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public ListIterator listIterator(int i11) {
        w.d.b(i11, size());
        return new b(this.f3721a, i11, size());
    }

    @Override // kotlin.collections.AbstractList, java.util.List, t.f
    public t.f set(int i11, Object obj) {
        w.d.a(i11, size());
        Object[] objArr = this.f3721a;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        Intrinsics.g(objArrCopyOf, "copyOf(this, size)");
        objArrCopyOf[i11] = obj;
        return new h(objArrCopyOf);
    }
}
