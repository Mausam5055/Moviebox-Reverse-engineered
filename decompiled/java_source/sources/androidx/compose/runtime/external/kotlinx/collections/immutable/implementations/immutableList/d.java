package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.o1;
import java.util.Arrays;
import java.util.ListIterator;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class d extends AbstractPersistentList implements t.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object[] f3707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object[] f3708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f3709c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3710d;

    public d(Object[] objArr, Object[] objArr2, int i11, int i12) {
        this.f3707a = objArr;
        this.f3708b = objArr2;
        this.f3709c = i11;
        this.f3710d = i12;
        if (!(size() > 32)) {
            o1.a("Trie-based persistent vector should have at least 33 elements, got " + size());
        }
        w.a.a(size() - j.d(size()) <= RangesKt.i(objArr2.length, 32));
    }

    private final Object[] f(int i11) {
        if (s() <= i11) {
            return this.f3708b;
        }
        Object[] objArr = this.f3707a;
        for (int i12 = this.f3710d; i12 > 0; i12 -= 5) {
            Object[] objArr2 = objArr[j.a(i11, i12)];
            Intrinsics.f(objArr2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArr = objArr2;
        }
        return objArr;
    }

    private final Object[] j(Object[] objArr, int i11, int i12, Object obj, c cVar) {
        Object[] objArrCopyOf;
        int iA = j.a(i12, i11);
        if (i11 == 0) {
            if (iA == 0) {
                objArrCopyOf = new Object[32];
            } else {
                objArrCopyOf = Arrays.copyOf(objArr, 32);
                Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            }
            ArraysKt.n(objArr, objArrCopyOf, iA + 1, iA, 31);
            cVar.b(objArr[31]);
            objArrCopyOf[iA] = obj;
            return objArrCopyOf;
        }
        Object[] objArrCopyOf2 = Arrays.copyOf(objArr, 32);
        Intrinsics.g(objArrCopyOf2, "copyOf(this, newSize)");
        int i13 = i11 - 5;
        Object obj2 = objArr[iA];
        String str = "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>";
        Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        objArrCopyOf2[iA] = j((Object[]) obj2, i13, i12, obj, cVar);
        int i14 = iA + 1;
        while (i14 < 32 && objArrCopyOf2[i14] != null) {
            Object obj3 = objArr[i14];
            Intrinsics.f(obj3, str);
            Object[] objArr2 = objArrCopyOf2;
            objArr2[i14] = j((Object[]) obj3, i13, 0, cVar.a(), cVar);
            i14++;
            objArrCopyOf2 = objArr2;
            str = str;
        }
        return objArrCopyOf2;
    }

    private final d l(Object[] objArr, int i11, Object obj) {
        int size = size() - s();
        Object[] objArrCopyOf = Arrays.copyOf(this.f3708b, 32);
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        if (size < 32) {
            ArraysKt.n(this.f3708b, objArrCopyOf, i11 + 1, i11, size);
            objArrCopyOf[i11] = obj;
            return new d(objArr, objArrCopyOf, size() + 1, this.f3710d);
        }
        Object[] objArr2 = this.f3708b;
        Object obj2 = objArr2[31];
        ArraysKt.n(objArr2, objArrCopyOf, i11 + 1, i11, size - 1);
        objArrCopyOf[i11] = obj;
        return o(objArr, objArrCopyOf, j.c(obj2));
    }

    private final Object[] m(Object[] objArr, int i11, int i12, c cVar) {
        Object[] objArrM;
        int iA = j.a(i12, i11);
        if (i11 == 5) {
            cVar.b(objArr[iA]);
            objArrM = null;
        } else {
            Object obj = objArr[iA];
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArrM = m((Object[]) obj, i11 - 5, i12, cVar);
        }
        if (objArrM == null && iA == 0) {
            return null;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, 32);
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        objArrCopyOf[iA] = objArrM;
        return objArrCopyOf;
    }

    private final t.f n(Object[] objArr, int i11, int i12) {
        if (i12 == 0) {
            if (objArr.length == 33) {
                objArr = Arrays.copyOf(objArr, 32);
                Intrinsics.g(objArr, "copyOf(this, newSize)");
            }
            return new h(objArr);
        }
        c cVar = new c(null);
        Object[] objArrM = m(objArr, i12, i11 - 1, cVar);
        Intrinsics.e(objArrM);
        Object objA = cVar.a();
        Intrinsics.f(objA, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        Object[] objArr2 = (Object[]) objA;
        if (objArrM[1] != null) {
            return new d(objArrM, objArr2, i11, i12);
        }
        Object obj = objArrM[0];
        Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        return new d((Object[]) obj, objArr2, i11, i12 - 5);
    }

    private final d o(Object[] objArr, Object[] objArr2, Object[] objArr3) {
        int size = size() >> 5;
        int i11 = this.f3710d;
        if (size <= (1 << i11)) {
            return new d(p(objArr, i11, objArr2), objArr3, size() + 1, this.f3710d);
        }
        Object[] objArrC = j.c(objArr);
        int i12 = this.f3710d + 5;
        return new d(p(objArrC, i12, objArr2), objArr3, size() + 1, i12);
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0019  */
    private final Object[] p(Object[] objArr, int i11, Object[] objArr2) {
        Object[] objArrCopyOf;
        int iA = j.a(size() - 1, i11);
        if (objArr != null) {
            objArrCopyOf = Arrays.copyOf(objArr, 32);
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            if (objArrCopyOf == null) {
                objArrCopyOf = new Object[32];
            }
        } else {
            objArrCopyOf = new Object[32];
        }
        if (i11 == 5) {
            objArrCopyOf[iA] = objArr2;
        } else {
            objArrCopyOf[iA] = p((Object[]) objArrCopyOf[iA], i11 - 5, objArr2);
        }
        return objArrCopyOf;
    }

    private final Object[] q(Object[] objArr, int i11, int i12, c cVar) {
        Object[] objArrCopyOf;
        int iA = j.a(i12, i11);
        if (i11 == 0) {
            if (iA == 0) {
                objArrCopyOf = new Object[32];
            } else {
                objArrCopyOf = Arrays.copyOf(objArr, 32);
                Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            }
            ArraysKt.n(objArr, objArrCopyOf, iA, iA + 1, 32);
            objArrCopyOf[31] = cVar.a();
            cVar.b(objArr[iA]);
            return objArrCopyOf;
        }
        int iA2 = objArr[31] == null ? j.a(s() - 1, i11) : 31;
        Object[] objArrCopyOf2 = Arrays.copyOf(objArr, 32);
        Intrinsics.g(objArrCopyOf2, "copyOf(this, newSize)");
        int i13 = i11 - 5;
        int i14 = iA + 1;
        if (i14 <= iA2) {
            while (true) {
                Object obj = objArrCopyOf2[iA2];
                Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
                objArrCopyOf2[iA2] = q((Object[]) obj, i13, 0, cVar);
                if (iA2 == i14) {
                    break;
                }
                iA2--;
            }
        }
        Object obj2 = objArrCopyOf2[iA];
        Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        objArrCopyOf2[iA] = q((Object[]) obj2, i13, i12, cVar);
        return objArrCopyOf2;
    }

    private final t.f r(Object[] objArr, int i11, int i12, int i13) {
        int size = size() - i11;
        w.a.a(i13 < size);
        if (size == 1) {
            return n(objArr, i11, i12);
        }
        Object[] objArrCopyOf = Arrays.copyOf(this.f3708b, 32);
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        int i14 = size - 1;
        if (i13 < i14) {
            ArraysKt.n(this.f3708b, objArrCopyOf, i13, i13 + 1, size);
        }
        objArrCopyOf[i14] = null;
        return new d(objArr, objArrCopyOf, (i11 + size) - 1, i12);
    }

    private final int s() {
        return j.d(size());
    }

    private final Object[] t(Object[] objArr, int i11, int i12, Object obj) {
        int iA = j.a(i12, i11);
        Object[] objArrCopyOf = Arrays.copyOf(objArr, 32);
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        if (i11 == 0) {
            objArrCopyOf[iA] = obj;
        } else {
            Object obj2 = objArrCopyOf[iA];
            Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArrCopyOf[iA] = t((Object[]) obj2, i11 - 5, i12, obj);
        }
        return objArrCopyOf;
    }

    @Override // java.util.List, t.f
    public t.f add(int i11, Object obj) {
        w.d.b(i11, size());
        if (i11 == size()) {
            return add(obj);
        }
        int iS = s();
        if (i11 >= iS) {
            return l(this.f3707a, i11 - iS, obj);
        }
        c cVar = new c(null);
        return l(j(this.f3707a, this.f3710d, i11, obj, cVar), 0, cVar.a());
    }

    @Override // java.util.Collection, java.util.List, t.f
    public t.f add(Object obj) {
        int size = size() - s();
        if (size >= 32) {
            return o(this.f3707a, this.f3708b, j.c(obj));
        }
        Object[] objArrCopyOf = Arrays.copyOf(this.f3708b, 32);
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        objArrCopyOf[size] = obj;
        return new d(this.f3707a, objArrCopyOf, size() + 1, this.f3710d);
    }

    @Override // t.f
    public t.f d(int i11) {
        w.d.a(i11, size());
        int iS = s();
        return i11 >= iS ? r(this.f3707a, iS, this.f3710d, i11 - iS) : r(q(this.f3707a, this.f3710d, i11, new c(this.f3708b[0])), iS, this.f3710d, 0);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public Object get(int i11) {
        w.d.a(i11, size());
        return f(i11)[i11 & 31];
    }

    @Override // kotlin.collections.AbstractCollection
    /* JADX INFO: renamed from: getSize */
    public int get_size() {
        return this.f3709c;
    }

    @Override // t.f
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public PersistentVectorBuilder builder() {
        return new PersistentVectorBuilder(this, this.f3707a, this.f3708b, this.f3710d);
    }

    @Override // t.f
    public t.f k(Function1 function1) {
        PersistentVectorBuilder persistentVectorBuilderBuilder = builder();
        persistentVectorBuilderBuilder.F(function1);
        return persistentVectorBuilderBuilder.build();
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public ListIterator listIterator(int i11) {
        w.d.b(i11, size());
        return new e(this.f3707a, this.f3708b, i11, size(), (this.f3710d / 5) + 1);
    }

    @Override // kotlin.collections.AbstractList, java.util.List, t.f
    public t.f set(int i11, Object obj) {
        w.d.a(i11, size());
        if (s() > i11) {
            return new d(t(this.f3707a, this.f3710d, i11, obj), this.f3708b, size(), this.f3710d);
        }
        Object[] objArrCopyOf = Arrays.copyOf(this.f3708b, 32);
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        objArrCopyOf[i11 & 31] = obj;
        return new d(this.f3707a, objArrCopyOf, size(), this.f3710d);
    }
}
