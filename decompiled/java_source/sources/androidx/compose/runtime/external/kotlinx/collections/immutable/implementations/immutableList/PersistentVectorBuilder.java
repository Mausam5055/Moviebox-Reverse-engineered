package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.o1;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
public final class PersistentVectorBuilder extends AbstractMutableList implements t.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private t.f f3695a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object[] f3696b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object[] f3697c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f3698d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private w.e f3699e = new w.e();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Object[] f3700f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Object[] f3701g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f3702h;

    public PersistentVectorBuilder(t.f fVar, Object[] objArr, Object[] objArr2, int i11) {
        this.f3695a = fVar;
        this.f3696b = objArr;
        this.f3697c = objArr2;
        this.f3698d = i11;
        this.f3700f = this.f3696b;
        this.f3701g = this.f3697c;
        this.f3702h = this.f3695a.size();
    }

    private final Object[] A(Object[] objArr, Object[] objArr2, int i11) {
        int iA = j.a(size() - 1, i11);
        Object[] objArrQ = q(objArr);
        if (i11 == 5) {
            objArrQ[iA] = objArr2;
        } else {
            objArrQ[iA] = A((Object[]) objArrQ[iA], objArr2, i11 - 5);
        }
        return objArrQ;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final int B(Function1 function1, Object[] objArr, int i11, int i12, c cVar, List list, List list2) {
        if (o(objArr)) {
            list.add(objArr);
        }
        Object objA = cVar.a();
        Intrinsics.f(objA, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        Object[] objArr2 = (Object[]) objA;
        Object[] objArrS = objArr2;
        for (int i13 = 0; i13 < i11; i13++) {
            Object obj = objArr[i13];
            if (!((Boolean) function1.invoke(obj)).booleanValue()) {
                if (i12 == 32) {
                    objArrS = !list.isEmpty() ? (Object[]) list.remove(list.size() - 1) : s();
                    i12 = 0;
                }
                objArrS[i12] = obj;
                i12++;
            }
        }
        cVar.b(objArrS);
        if (objArr2 != cVar.a()) {
            list2.add(objArr2);
        }
        return i12;
    }

    private final int C(Function1 function1, Object[] objArr, int i11, c cVar) {
        Object[] objArrQ = objArr;
        int i12 = i11;
        boolean z10 = false;
        for (int i13 = 0; i13 < i11; i13++) {
            Object obj = objArr[i13];
            if (((Boolean) function1.invoke(obj)).booleanValue()) {
                if (!z10) {
                    objArrQ = q(objArr);
                    z10 = true;
                    i12 = i13;
                }
            } else if (z10) {
                objArrQ[i12] = obj;
                i12++;
            }
        }
        cVar.b(objArrQ);
        return i12;
    }

    private final boolean D(Function1 function1) {
        Object[] objArrX;
        int iN = N();
        c cVar = new c(null);
        if (this.f3700f == null) {
            return E(function1, iN, cVar) != iN;
        }
        ListIterator listIteratorP = p(0);
        int iC = 32;
        while (iC == 32 && listIteratorP.hasNext()) {
            iC = C(function1, (Object[]) listIteratorP.next(), 32, cVar);
        }
        if (iC == 32) {
            w.a.a(!listIteratorP.hasNext());
            int iE = E(function1, iN, cVar);
            if (iE == 0) {
                w(this.f3700f, size(), this.f3698d);
            }
            return iE != iN;
        }
        int iPreviousIndex = listIteratorP.previousIndex() << 5;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int iB = iC;
        while (listIteratorP.hasNext()) {
            iB = B(function1, (Object[]) listIteratorP.next(), 32, iB, cVar, arrayList2, arrayList);
            iPreviousIndex = iPreviousIndex;
        }
        int i11 = iPreviousIndex;
        int iB2 = B(function1, this.f3701g, iN, iB, cVar, arrayList2, arrayList);
        Object objA = cVar.a();
        Intrinsics.f(objA, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        Object[] objArr = (Object[]) objA;
        ArraysKt.w(objArr, null, iB2, 32);
        if (arrayList.isEmpty()) {
            objArrX = this.f3700f;
            Intrinsics.e(objArrX);
        } else {
            objArrX = x(this.f3700f, i11, this.f3698d, arrayList.iterator());
        }
        int size = i11 + (arrayList.size() << 5);
        this.f3700f = I(objArrX, size);
        this.f3701g = objArr;
        this.f3702h = size + iB2;
        return true;
    }

    private final int E(Function1 function1, int i11, c cVar) {
        int iC = C(function1, this.f3701g, i11, cVar);
        if (iC == i11) {
            w.a.a(cVar.a() == this.f3701g);
            return i11;
        }
        Object objA = cVar.a();
        Intrinsics.f(objA, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        Object[] objArr = (Object[]) objA;
        ArraysKt.w(objArr, null, iC, i11);
        this.f3701g = objArr;
        this.f3702h = size() - (i11 - iC);
        return iC;
    }

    private final Object[] G(Object[] objArr, int i11, int i12, c cVar) {
        int iA = j.a(i12, i11);
        if (i11 == 0) {
            Object obj = objArr[iA];
            Object[] objArrN = ArraysKt.n(objArr, q(objArr), iA, iA + 1, 32);
            objArrN[31] = cVar.a();
            cVar.b(obj);
            return objArrN;
        }
        int iA2 = objArr[31] == null ? j.a(J() - 1, i11) : 31;
        Object[] objArrQ = q(objArr);
        int i13 = i11 - 5;
        int i14 = iA + 1;
        if (i14 <= iA2) {
            while (true) {
                Object obj2 = objArrQ[iA2];
                Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
                objArrQ[iA2] = G((Object[]) obj2, i13, 0, cVar);
                if (iA2 == i14) {
                    break;
                }
                iA2--;
            }
        }
        Object obj3 = objArrQ[iA];
        Intrinsics.f(obj3, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        objArrQ[iA] = G((Object[]) obj3, i13, i12, cVar);
        return objArrQ;
    }

    private final Object H(Object[] objArr, int i11, int i12, int i13) {
        int size = size() - i11;
        w.a.a(i13 < size);
        if (size == 1) {
            Object obj = this.f3701g[0];
            w(objArr, i11, i12);
            return obj;
        }
        Object[] objArr2 = this.f3701g;
        Object obj2 = objArr2[i13];
        Object[] objArrN = ArraysKt.n(objArr2, q(objArr2), i13, i13 + 1, size);
        objArrN[size - 1] = null;
        this.f3700f = objArr;
        this.f3701g = objArrN;
        this.f3702h = (i11 + size) - 1;
        this.f3698d = i12;
        return obj2;
    }

    private final Object[] I(Object[] objArr, int i11) {
        if (!((i11 & 31) == 0)) {
            o1.a("invalid size");
        }
        if (i11 == 0) {
            this.f3698d = 0;
            return null;
        }
        int i12 = i11 - 1;
        while (true) {
            int i13 = this.f3698d;
            if ((i12 >> i13) != 0) {
                return u(objArr, i12, i13);
            }
            this.f3698d = i13 - 5;
            Object[] objArr2 = objArr[0];
            Intrinsics.f(objArr2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArr = objArr2;
        }
    }

    private final int J() {
        if (size() <= 32) {
            return 0;
        }
        return j.d(size());
    }

    private final Object[] K(Object[] objArr, int i11, int i12, Object obj, c cVar) {
        int iA = j.a(i12, i11);
        Object[] objArrQ = q(objArr);
        if (i11 != 0) {
            Object obj2 = objArrQ[iA];
            Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArrQ[iA] = K((Object[]) obj2, i11 - 5, i12, obj, cVar);
            return objArrQ;
        }
        if (objArrQ != objArr) {
            ((AbstractList) this).modCount++;
        }
        cVar.b(objArrQ[iA]);
        objArrQ[iA] = obj;
        return objArrQ;
    }

    private final Object[] L(int i11, int i12, Object[][] objArr, int i13, Object[] objArr2) {
        if (this.f3700f == null) {
            throw new IllegalStateException("root is null");
        }
        ListIterator listIteratorP = p(J() >> 5);
        while (listIteratorP.previousIndex() != i11) {
            Object[] objArr3 = (Object[]) listIteratorP.previous();
            ArraysKt.n(objArr3, objArr2, 0, 32 - i12, 32);
            objArr2 = r(objArr3, i12);
            i13--;
            objArr[i13] = objArr2;
        }
        return (Object[]) listIteratorP.previous();
    }

    private final void M(Collection collection, int i11, Object[] objArr, int i12, Object[][] objArr2, int i13, Object[] objArr3) {
        Object[] objArrS;
        if (!(i13 >= 1)) {
            o1.a("requires at least one nullBuffer");
        }
        Object[] objArrQ = q(objArr);
        objArr2[0] = objArrQ;
        int i14 = i11 & 31;
        int size = ((i11 + collection.size()) - 1) & 31;
        int i15 = (i12 - i14) + size;
        if (i15 < 32) {
            ArraysKt.n(objArrQ, objArr3, size + 1, i14, i12);
        } else {
            int i16 = i15 - 31;
            if (i13 == 1) {
                objArrS = objArrQ;
            } else {
                objArrS = s();
                i13--;
                objArr2[i13] = objArrS;
            }
            int i17 = i12 - i16;
            ArraysKt.n(objArrQ, objArr3, 0, i17, i12);
            ArraysKt.n(objArrQ, objArrS, size + 1, i14, i17);
            objArr3 = objArrS;
        }
        Iterator it = collection.iterator();
        c(objArrQ, i14, it);
        for (int i18 = 1; i18 < i13; i18++) {
            objArr2[i18] = c(s(), 0, it);
        }
        c(objArr3, 0, it);
    }

    private final int N() {
        return O(size());
    }

    private final int O(int i11) {
        return i11 <= 32 ? i11 : i11 - j.d(i11);
    }

    private final Object[] a(int i11) {
        if (J() <= i11) {
            return this.f3701g;
        }
        Object[] objArr = this.f3700f;
        Intrinsics.e(objArr);
        for (int i12 = this.f3698d; i12 > 0; i12 -= 5) {
            Object[] objArr2 = objArr[j.a(i11, i12)];
            Intrinsics.f(objArr2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArr = objArr2;
        }
        return objArr;
    }

    private final Object[] c(Object[] objArr, int i11, Iterator it) {
        while (i11 < 32 && it.hasNext()) {
            objArr[i11] = it.next();
            i11++;
        }
        return objArr;
    }

    private final void l(Collection collection, int i11, int i12, Object[][] objArr, int i13, Object[] objArr2) {
        if (this.f3700f == null) {
            throw new IllegalStateException("root is null");
        }
        int i14 = i11 >> 5;
        Object[] objArrL = L(i14, i12, objArr, i13, objArr2);
        int iJ = i13 - (((J() >> 5) - 1) - i14);
        if (iJ < i13) {
            objArr2 = objArr[iJ];
            Intrinsics.e(objArr2);
        }
        M(collection, i11, objArrL, 32, objArr, iJ, objArr2);
    }

    private final Object[] m(Object[] objArr, int i11, int i12, Object obj, c cVar) {
        Object obj2;
        int iA = j.a(i12, i11);
        if (i11 == 0) {
            cVar.b(objArr[31]);
            Object[] objArrN = ArraysKt.n(objArr, q(objArr), iA + 1, iA, 31);
            objArrN[iA] = obj;
            return objArrN;
        }
        Object[] objArrQ = q(objArr);
        int i13 = i11 - 5;
        Object obj3 = objArrQ[iA];
        Intrinsics.f(obj3, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        objArrQ[iA] = m((Object[]) obj3, i13, i12, obj, cVar);
        while (true) {
            iA++;
            if (iA >= 32 || (obj2 = objArrQ[iA]) == null) {
                break;
            }
            Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArrQ[iA] = m((Object[]) obj2, i13, 0, cVar.a(), cVar);
        }
        return objArrQ;
    }

    private final void n(Object[] objArr, int i11, Object obj) {
        int iN = N();
        Object[] objArrQ = q(this.f3701g);
        if (iN < 32) {
            ArraysKt.n(this.f3701g, objArrQ, i11 + 1, i11, iN);
            objArrQ[i11] = obj;
            this.f3700f = objArr;
            this.f3701g = objArrQ;
            this.f3702h = size() + 1;
            return;
        }
        Object[] objArr2 = this.f3701g;
        Object obj2 = objArr2[31];
        ArraysKt.n(objArr2, objArrQ, i11 + 1, i11, 31);
        objArrQ[i11] = obj;
        z(objArr, objArrQ, t(obj2));
    }

    private final boolean o(Object[] objArr) {
        return objArr.length == 33 && objArr[32] == this.f3699e;
    }

    private final ListIterator p(int i11) {
        Object[] objArr = this.f3700f;
        if (objArr == null) {
            throw new IllegalStateException("Invalid root");
        }
        int iJ = J() >> 5;
        w.d.b(i11, iJ);
        int i12 = this.f3698d;
        return i12 == 0 ? new g(objArr, i11) : new i(objArr, i11, iJ, i12 / 5);
    }

    private final Object[] q(Object[] objArr) {
        if (objArr == null) {
            return s();
        }
        return o(objArr) ? objArr : ArraysKt.r(objArr, s(), 0, 0, RangesKt.i(objArr.length, 32), 6, null);
    }

    private final Object[] r(Object[] objArr, int i11) {
        return o(objArr) ? ArraysKt.n(objArr, objArr, i11, 0, 32 - i11) : ArraysKt.n(objArr, s(), i11, 0, 32 - i11);
    }

    private final Object[] s() {
        Object[] objArr = new Object[33];
        objArr[32] = this.f3699e;
        return objArr;
    }

    private final Object[] t(Object obj) {
        Object[] objArr = new Object[33];
        objArr[0] = obj;
        objArr[32] = this.f3699e;
        return objArr;
    }

    private final Object[] u(Object[] objArr, int i11, int i12) {
        if (!(i12 >= 0)) {
            o1.a("shift should be positive");
        }
        if (i12 == 0) {
            return objArr;
        }
        int iA = j.a(i11, i12);
        Object obj = objArr[iA];
        Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        Object objU = u((Object[]) obj, i11, i12 - 5);
        if (iA < 31) {
            int i13 = iA + 1;
            if (objArr[i13] != null) {
                if (o(objArr)) {
                    ArraysKt.w(objArr, null, i13, 32);
                }
                objArr = ArraysKt.n(objArr, s(), 0, 0, i13);
            }
        }
        if (objU == objArr[iA]) {
            return objArr;
        }
        Object[] objArrQ = q(objArr);
        objArrQ[iA] = objU;
        return objArrQ;
    }

    private final Object[] v(Object[] objArr, int i11, int i12, c cVar) {
        Object[] objArrV;
        int iA = j.a(i12 - 1, i11);
        if (i11 == 5) {
            cVar.b(objArr[iA]);
            objArrV = null;
        } else {
            Object obj = objArr[iA];
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArrV = v((Object[]) obj, i11 - 5, i12, cVar);
        }
        if (objArrV == null && iA == 0) {
            return null;
        }
        Object[] objArrQ = q(objArr);
        objArrQ[iA] = objArrV;
        return objArrQ;
    }

    private final void w(Object[] objArr, int i11, int i12) {
        if (i12 == 0) {
            this.f3700f = null;
            if (objArr == null) {
                objArr = new Object[0];
            }
            this.f3701g = objArr;
            this.f3702h = i11;
            this.f3698d = i12;
            return;
        }
        c cVar = new c(null);
        Intrinsics.e(objArr);
        Object[] objArrV = v(objArr, i12, i11, cVar);
        Intrinsics.e(objArrV);
        Object objA = cVar.a();
        Intrinsics.f(objA, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        this.f3701g = (Object[]) objA;
        this.f3702h = i11;
        if (objArrV[1] == null) {
            this.f3700f = (Object[]) objArrV[0];
            this.f3698d = i12 - 5;
        } else {
            this.f3700f = objArrV;
            this.f3698d = i12;
        }
    }

    private final Object[] x(Object[] objArr, int i11, int i12, Iterator it) {
        if (!it.hasNext()) {
            o1.a("invalid buffersIterator");
        }
        if (!(i12 >= 0)) {
            o1.a("negative shift");
        }
        if (i12 == 0) {
            return (Object[]) it.next();
        }
        Object[] objArrQ = q(objArr);
        int iA = j.a(i11, i12);
        int i13 = i12 - 5;
        objArrQ[iA] = x((Object[]) objArrQ[iA], i11, i13, it);
        while (true) {
            iA++;
            if (iA >= 32 || !it.hasNext()) {
                break;
            }
            objArrQ[iA] = x((Object[]) objArrQ[iA], 0, i13, it);
        }
        return objArrQ;
    }

    private final Object[] y(Object[] objArr, int i11, Object[][] objArr2) {
        Iterator itA = ArrayIteratorKt.a(objArr2);
        int i12 = i11 >> 5;
        int i13 = this.f3698d;
        Object[] objArrX = i12 < (1 << i13) ? x(objArr, i11, i13, itA) : q(objArr);
        while (itA.hasNext()) {
            this.f3698d += 5;
            objArrX = t(objArrX);
            int i14 = this.f3698d;
            x(objArrX, 1 << i14, i14, itA);
        }
        return objArrX;
    }

    private final void z(Object[] objArr, Object[] objArr2, Object[] objArr3) {
        int size = size() >> 5;
        int i11 = this.f3698d;
        if (size > (1 << i11)) {
            this.f3700f = A(t(objArr), objArr2, this.f3698d + 5);
            this.f3701g = objArr3;
            this.f3698d += 5;
            this.f3702h = size() + 1;
            return;
        }
        if (objArr == null) {
            this.f3700f = objArr2;
            this.f3701g = objArr3;
            this.f3702h = size() + 1;
        } else {
            this.f3700f = A(objArr, objArr2, i11);
            this.f3701g = objArr3;
            this.f3702h = size() + 1;
        }
    }

    public final boolean F(Function1 function1) {
        boolean zD = D(function1);
        if (zD) {
            ((AbstractList) this).modCount++;
        }
        return zD;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i11, Object obj) {
        w.d.b(i11, size());
        if (i11 == size()) {
            add(obj);
            return;
        }
        ((AbstractList) this).modCount++;
        int iJ = J();
        if (i11 >= iJ) {
            n(this.f3700f, i11 - iJ, obj);
            return;
        }
        c cVar = new c(null);
        Object[] objArr = this.f3700f;
        Intrinsics.e(objArr);
        n(m(objArr, this.f3698d, i11, obj, cVar), 0, cVar.a());
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        ((AbstractList) this).modCount++;
        int iN = N();
        if (iN < 32) {
            Object[] objArrQ = q(this.f3701g);
            objArrQ[iN] = obj;
            this.f3701g = objArrQ;
            this.f3702h = size() + 1;
        } else {
            z(this.f3700f, this.f3701g, t(obj));
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int i11, Collection collection) {
        Object[] objArrN;
        w.d.b(i11, size());
        if (i11 == size()) {
            return addAll(collection);
        }
        if (collection.isEmpty()) {
            return false;
        }
        ((AbstractList) this).modCount++;
        int i12 = (i11 >> 5) << 5;
        int size = (((size() - i12) + collection.size()) - 1) / 32;
        if (size == 0) {
            w.a.a(i11 >= J());
            int i13 = i11 & 31;
            int size2 = ((i11 + collection.size()) - 1) & 31;
            Object[] objArr = this.f3701g;
            Object[] objArrN2 = ArraysKt.n(objArr, q(objArr), size2 + 1, i13, N());
            c(objArrN2, i13, collection.iterator());
            this.f3701g = objArrN2;
            this.f3702h = size() + collection.size();
            return true;
        }
        Object[][] objArr2 = new Object[size][];
        int iN = N();
        int iO = O(size() + collection.size());
        if (i11 >= J()) {
            objArrN = s();
            M(collection, i11, this.f3701g, iN, objArr2, size, objArrN);
        } else if (iO > iN) {
            int i14 = iO - iN;
            objArrN = r(this.f3701g, i14);
            l(collection, i11, i14, objArr2, size, objArrN);
        } else {
            int i15 = iN - iO;
            objArrN = ArraysKt.n(this.f3701g, s(), 0, i15, iN);
            int i16 = 32 - i15;
            Object[] objArrR = r(this.f3701g, i16);
            int i17 = size - 1;
            objArr2[i17] = objArrR;
            l(collection, i11, i16, objArr2, i17, objArrR);
        }
        this.f3700f = y(this.f3700f, i12, objArr2);
        this.f3701g = objArrN;
        this.f3702h = size() + collection.size();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        ((AbstractList) this).modCount++;
        int iN = N();
        Iterator it = collection.iterator();
        if (32 - iN >= collection.size()) {
            this.f3701g = c(q(this.f3701g), iN, it);
            this.f3702h = size() + collection.size();
        } else {
            int size = ((collection.size() + iN) - 1) / 32;
            Object[][] objArr = new Object[size][];
            objArr[0] = c(q(this.f3701g), iN, it);
            for (int i11 = 1; i11 < size; i11++) {
                objArr[i11] = c(s(), 0, it);
            }
            this.f3700f = y(this.f3700f, J(), objArr);
            this.f3701g = c(s(), 0, it);
            this.f3702h = size() + collection.size();
        }
        return true;
    }

    @Override // t.f.a
    public t.f build() {
        t.f dVar;
        if (this.f3700f == this.f3696b && this.f3701g == this.f3697c) {
            dVar = this.f3695a;
        } else {
            this.f3699e = new w.e();
            Object[] objArr = this.f3700f;
            this.f3696b = objArr;
            Object[] objArr2 = this.f3701g;
            this.f3697c = objArr2;
            if (objArr != null) {
                Object[] objArr3 = this.f3700f;
                Intrinsics.e(objArr3);
                dVar = new d(objArr3, this.f3701g, size(), this.f3698d);
            } else if (objArr2.length == 0) {
                dVar = j.b();
            } else {
                Object[] objArrCopyOf = Arrays.copyOf(this.f3701g, size());
                Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
                dVar = new h(objArrCopyOf);
            }
        }
        this.f3695a = dVar;
        return dVar;
    }

    public final int e() {
        return ((AbstractList) this).modCount;
    }

    public final Object[] f() {
        return this.f3700f;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i11) {
        w.d.a(i11, size());
        return a(i11)[i11 & 31];
    }

    @Override // kotlin.collections.AbstractMutableList
    public int getSize() {
        return this.f3702h;
    }

    public final int h() {
        return this.f3698d;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator iterator() {
        return listIterator();
    }

    public final Object[] j() {
        return this.f3701g;
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator listIterator(int i11) {
        w.d.b(i11, size());
        return new f(this, i11);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(final Collection collection) {
        return F(new Function1<Object, Boolean>() { // from class: androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.PersistentVectorBuilder.removeAll.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(Object obj) {
                return Boolean.valueOf(collection.contains(obj));
            }
        });
    }

    @Override // kotlin.collections.AbstractMutableList
    public Object removeAt(int i11) {
        w.d.a(i11, size());
        ((AbstractList) this).modCount++;
        int iJ = J();
        if (i11 >= iJ) {
            return H(this.f3700f, iJ, this.f3698d, i11 - iJ);
        }
        c cVar = new c(this.f3701g[0]);
        Object[] objArr = this.f3700f;
        Intrinsics.e(objArr);
        H(G(objArr, this.f3698d, i11, cVar), iJ, this.f3698d, 0);
        return cVar.a();
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i11, Object obj) {
        w.d.a(i11, size());
        if (J() > i11) {
            c cVar = new c(null);
            Object[] objArr = this.f3700f;
            Intrinsics.e(objArr);
            this.f3700f = K(objArr, this.f3698d, i11, obj, cVar);
            return cVar.a();
        }
        Object[] objArrQ = q(this.f3701g);
        if (objArrQ != this.f3701g) {
            ((AbstractList) this).modCount++;
        }
        int i12 = i11 & 31;
        Object obj2 = objArrQ[i12];
        objArrQ[i12] = obj;
        this.f3701g = objArrQ;
        return obj2;
    }
}
