package u;

import androidx.compose.runtime.o1;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes2.dex */
public final class t {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f76516e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f76517f = 8;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final t f76518g = new t(0, 0, new Object[0]);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f76519a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f76520b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w.e f76521c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object[] f76522d;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final t a() {
            return t.f76518g;
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private t f76523a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f76524b;

        public b(t tVar, int i11) {
            this.f76523a = tVar;
            this.f76524b = i11;
        }

        public final t a() {
            return this.f76523a;
        }

        public final int b() {
            return this.f76524b;
        }

        public final void c(t tVar) {
            this.f76523a = tVar;
        }
    }

    public t(int i11, int i12, Object[] objArr) {
        this(i11, i12, objArr, null);
    }

    public t(int i11, int i12, Object[] objArr, w.e eVar) {
        this.f76519a = i11;
        this.f76520b = i12;
        this.f76521c = eVar;
        this.f76522d = objArr;
    }

    private final t A(int i11, f fVar) {
        fVar.p(fVar.size() - 1);
        fVar.n(W(i11));
        if (this.f76522d.length == 2) {
            return null;
        }
        if (this.f76521c != fVar.l()) {
            return new t(0, 0, x.h(this.f76522d, i11), fVar.l());
        }
        this.f76522d = x.h(this.f76522d, i11);
        return this;
    }

    private final t B(int i11, Object obj, Object obj2, w.e eVar) {
        int iN = n(i11);
        if (this.f76521c != eVar) {
            return new t(i11 | this.f76519a, this.f76520b, x.g(this.f76522d, iN, obj, obj2), eVar);
        }
        this.f76522d = x.g(this.f76522d, iN, obj, obj2);
        this.f76519a = i11 | this.f76519a;
        return this;
    }

    private final t C(int i11, int i12, int i13, Object obj, Object obj2, int i14, w.e eVar) {
        if (this.f76521c != eVar) {
            return new t(this.f76519a ^ i12, i12 | this.f76520b, d(i11, i12, i13, obj, obj2, i14, eVar), eVar);
        }
        this.f76522d = d(i11, i12, i13, obj, obj2, i14, eVar);
        this.f76519a ^= i12;
        this.f76520b |= i12;
        return this;
    }

    private final t F(t tVar, int i11, int i12, w.b bVar, f fVar) {
        if (r(i11)) {
            t tVarN = N(O(i11));
            if (tVar.r(i11)) {
                return tVarN.E(tVar.N(tVar.O(i11)), i12 + 5, bVar, fVar);
            }
            if (!tVar.q(i11)) {
                return tVarN;
            }
            int iN = tVar.n(i11);
            Object objT = tVar.t(iN);
            Object objW = tVar.W(iN);
            int size = fVar.size();
            t tVarD = tVarN.D(objT != null ? objT.hashCode() : 0, objT, objW, i12 + 5, fVar);
            if (fVar.size() != size) {
                return tVarD;
            }
            bVar.c(bVar.a() + 1);
            return tVarD;
        }
        if (!tVar.r(i11)) {
            int iN2 = n(i11);
            Object objT2 = t(iN2);
            Object objW2 = W(iN2);
            int iN3 = tVar.n(i11);
            Object objT3 = tVar.t(iN3);
            return u(objT2 != null ? objT2.hashCode() : 0, objT2, objW2, objT3 != null ? objT3.hashCode() : 0, objT3, tVar.W(iN3), i12 + 5, fVar.l());
        }
        t tVarN2 = tVar.N(tVar.O(i11));
        if (q(i11)) {
            int iN4 = n(i11);
            Object objT4 = t(iN4);
            int i13 = i12 + 5;
            if (!tVarN2.k(objT4 != null ? objT4.hashCode() : 0, objT4, i13)) {
                return tVarN2.D(objT4 != null ? objT4.hashCode() : 0, objT4, W(iN4), i13, fVar);
            }
            bVar.c(bVar.a() + 1);
        }
        return tVarN2;
    }

    private final t I(int i11, int i12, f fVar) {
        fVar.p(fVar.size() - 1);
        fVar.n(W(i11));
        if (this.f76522d.length == 2) {
            return null;
        }
        if (this.f76521c != fVar.l()) {
            return new t(i12 ^ this.f76519a, this.f76520b, x.h(this.f76522d, i11), fVar.l());
        }
        this.f76522d = x.h(this.f76522d, i11);
        this.f76519a ^= i12;
        return this;
    }

    private final t J(int i11, int i12, w.e eVar) {
        Object[] objArr = this.f76522d;
        if (objArr.length == 1) {
            return null;
        }
        if (this.f76521c != eVar) {
            return new t(this.f76519a, i12 ^ this.f76520b, x.i(objArr, i11), eVar);
        }
        this.f76522d = x.i(objArr, i11);
        this.f76520b ^= i12;
        return this;
    }

    private final t K(t tVar, t tVar2, int i11, int i12, w.e eVar) {
        if (tVar2 == null) {
            return J(i11, i12, eVar);
        }
        return (this.f76521c == eVar || tVar != tVar2) ? L(i11, tVar2, eVar) : this;
    }

    private final t L(int i11, t tVar, w.e eVar) {
        Object[] objArr = this.f76522d;
        if (objArr.length == 1 && tVar.f76522d.length == 2 && tVar.f76520b == 0) {
            tVar.f76519a = this.f76520b;
            return tVar;
        }
        if (this.f76521c == eVar) {
            objArr[i11] = tVar;
            return this;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        Intrinsics.g(objArrCopyOf, "copyOf(this, size)");
        objArrCopyOf[i11] = tVar;
        return new t(this.f76519a, this.f76520b, objArrCopyOf, eVar);
    }

    private final t M(int i11, Object obj, f fVar) {
        if (this.f76521c == fVar.l()) {
            this.f76522d[i11 + 1] = obj;
            return this;
        }
        fVar.m(fVar.i() + 1);
        Object[] objArr = this.f76522d;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        Intrinsics.g(objArrCopyOf, "copyOf(this, size)");
        objArrCopyOf[i11 + 1] = obj;
        return new t(this.f76519a, this.f76520b, objArrCopyOf, fVar.l());
    }

    private final t R(int i11, int i12) {
        Object[] objArr = this.f76522d;
        if (objArr.length == 2) {
            return null;
        }
        return new t(i12 ^ this.f76519a, this.f76520b, x.h(objArr, i11));
    }

    private final t S(int i11, int i12) {
        Object[] objArr = this.f76522d;
        if (objArr.length == 1) {
            return null;
        }
        return new t(this.f76519a, i12 ^ this.f76520b, x.i(objArr, i11));
    }

    private final t T(t tVar, t tVar2, int i11, int i12) {
        if (tVar2 == null) {
            return S(i11, i12);
        }
        return tVar != tVar2 ? U(i11, i12, tVar2) : this;
    }

    private final t U(int i11, int i12, t tVar) {
        Object[] objArr = tVar.f76522d;
        if (objArr.length != 2 || tVar.f76520b != 0) {
            Object[] objArr2 = this.f76522d;
            Object[] objArrCopyOf = Arrays.copyOf(objArr2, objArr2.length);
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            objArrCopyOf[i11] = tVar;
            return new t(this.f76519a, this.f76520b, objArrCopyOf);
        }
        if (this.f76522d.length == 1) {
            tVar.f76519a = this.f76520b;
            return tVar;
        }
        return new t(this.f76519a ^ i12, i12 ^ this.f76520b, x.k(this.f76522d, i11, n(i12), objArr[0], objArr[1]));
    }

    private final t V(int i11, Object obj) {
        Object[] objArr = this.f76522d;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        Intrinsics.g(objArrCopyOf, "copyOf(this, size)");
        objArrCopyOf[i11 + 1] = obj;
        return new t(this.f76519a, this.f76520b, objArrCopyOf);
    }

    private final Object W(int i11) {
        return this.f76522d[i11 + 1];
    }

    private final b b() {
        return new b(this, 1);
    }

    private final b c() {
        return new b(this, 0);
    }

    private final Object[] d(int i11, int i12, int i13, Object obj, Object obj2, int i14, w.e eVar) {
        Object objT = t(i11);
        return x.j(this.f76522d, i11, O(i12) + 1, u(objT != null ? objT.hashCode() : 0, objT, W(i11), i13, obj, obj2, i14 + 5, eVar));
    }

    private final int e() {
        if (this.f76520b == 0) {
            return this.f76522d.length / 2;
        }
        int iBitCount = Integer.bitCount(this.f76519a);
        int length = this.f76522d.length;
        for (int i11 = iBitCount * 2; i11 < length; i11++) {
            iBitCount += N(i11).e();
        }
        return iBitCount;
    }

    private final boolean f(Object obj) {
        IntProgression intProgressionS = RangesKt.s(RangesKt.t(0, this.f76522d.length), 2);
        int iF = intProgressionS.getFirst();
        int iH = intProgressionS.getLast();
        int iL = intProgressionS.getStep();
        if ((iL > 0 && iF <= iH) || (iL < 0 && iH <= iF)) {
            while (!Intrinsics.c(obj, this.f76522d[iF])) {
                if (iF != iH) {
                    iF += iL;
                }
            }
            return true;
        }
        return false;
    }

    private final Object g(Object obj) {
        IntProgression intProgressionS = RangesKt.s(RangesKt.t(0, this.f76522d.length), 2);
        int iF = intProgressionS.getFirst();
        int iH = intProgressionS.getLast();
        int iL = intProgressionS.getStep();
        if ((iL <= 0 || iF > iH) && (iL >= 0 || iH > iF)) {
            return null;
        }
        while (!Intrinsics.c(obj, t(iF))) {
            if (iF == iH) {
                return null;
            }
            iF += iL;
        }
        return W(iF);
    }

    private final b h(Object obj, Object obj2) {
        IntProgression intProgressionS = RangesKt.s(RangesKt.t(0, this.f76522d.length), 2);
        int iF = intProgressionS.getFirst();
        int iH = intProgressionS.getLast();
        int iL = intProgressionS.getStep();
        if ((iL > 0 && iF <= iH) || (iL < 0 && iH <= iF)) {
            while (!Intrinsics.c(obj, t(iF))) {
                if (iF != iH) {
                    iF += iL;
                }
            }
            if (obj2 == W(iF)) {
                return null;
            }
            Object[] objArr = this.f76522d;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            Intrinsics.g(objArrCopyOf, "copyOf(this, size)");
            objArrCopyOf[iF + 1] = obj2;
            return new t(0, 0, objArrCopyOf).c();
        }
        return new t(0, 0, x.g(this.f76522d, 0, obj, obj2)).b();
    }

    private final t i(Object obj) {
        IntProgression intProgressionS = RangesKt.s(RangesKt.t(0, this.f76522d.length), 2);
        int iF = intProgressionS.getFirst();
        int iH = intProgressionS.getLast();
        int iL = intProgressionS.getStep();
        if ((iL > 0 && iF <= iH) || (iL < 0 && iH <= iF)) {
            while (!Intrinsics.c(obj, t(iF))) {
                if (iF != iH) {
                    iF += iL;
                }
            }
            return j(iF);
        }
        return this;
    }

    private final t j(int i11) {
        Object[] objArr = this.f76522d;
        if (objArr.length == 2) {
            return null;
        }
        return new t(0, 0, x.h(objArr, i11));
    }

    private final boolean l(t tVar) {
        if (this == tVar) {
            return true;
        }
        if (this.f76520b != tVar.f76520b || this.f76519a != tVar.f76519a) {
            return false;
        }
        int length = this.f76522d.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (this.f76522d[i11] != tVar.f76522d[i11]) {
                return false;
            }
        }
        return true;
    }

    private final boolean r(int i11) {
        return (i11 & this.f76520b) != 0;
    }

    private final t s(int i11, Object obj, Object obj2) {
        return new t(i11 | this.f76519a, this.f76520b, x.g(this.f76522d, n(i11), obj, obj2));
    }

    private final Object t(int i11) {
        return this.f76522d[i11];
    }

    private final t u(int i11, Object obj, Object obj2, int i12, Object obj3, Object obj4, int i13, w.e eVar) {
        if (i13 > 30) {
            return new t(0, 0, new Object[]{obj, obj2, obj3, obj4}, eVar);
        }
        int iF = x.f(i11, i13);
        int iF2 = x.f(i12, i13);
        if (iF != iF2) {
            return new t((1 << iF) | (1 << iF2), 0, iF < iF2 ? new Object[]{obj, obj2, obj3, obj4} : new Object[]{obj3, obj4, obj, obj2}, eVar);
        }
        return new t(0, 1 << iF, new Object[]{u(i11, obj, obj2, i12, obj3, obj4, i13 + 5, eVar)}, eVar);
    }

    private final t v(int i11, int i12, int i13, Object obj, Object obj2, int i14) {
        return new t(this.f76519a ^ i12, i12 | this.f76520b, d(i11, i12, i13, obj, obj2, i14, null));
    }

    private final t w(Object obj, Object obj2, f fVar) {
        IntProgression intProgressionS = RangesKt.s(RangesKt.t(0, this.f76522d.length), 2);
        int iF = intProgressionS.getFirst();
        int iH = intProgressionS.getLast();
        int iL = intProgressionS.getStep();
        if ((iL > 0 && iF <= iH) || (iL < 0 && iH <= iF)) {
            while (!Intrinsics.c(obj, t(iF))) {
                if (iF != iH) {
                    iF += iL;
                }
            }
            fVar.n(W(iF));
            if (this.f76521c == fVar.l()) {
                this.f76522d[iF + 1] = obj2;
                return this;
            }
            fVar.m(fVar.i() + 1);
            Object[] objArr = this.f76522d;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            Intrinsics.g(objArrCopyOf, "copyOf(this, size)");
            objArrCopyOf[iF + 1] = obj2;
            return new t(0, 0, objArrCopyOf, fVar.l());
        }
        fVar.p(fVar.size() + 1);
        return new t(0, 0, x.g(this.f76522d, 0, obj, obj2), fVar.l());
    }

    private final t x(t tVar, w.b bVar, w.e eVar) {
        w.a.a(this.f76520b == 0);
        w.a.a(this.f76519a == 0);
        w.a.a(tVar.f76520b == 0);
        w.a.a(tVar.f76519a == 0);
        Object[] objArr = this.f76522d;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length + tVar.f76522d.length);
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        int length = this.f76522d.length;
        IntProgression intProgressionS = RangesKt.s(RangesKt.t(0, tVar.f76522d.length), 2);
        int iF = intProgressionS.getFirst();
        int iH = intProgressionS.getLast();
        int iL = intProgressionS.getStep();
        if ((iL > 0 && iF <= iH) || (iL < 0 && iH <= iF)) {
            while (true) {
                if (f(tVar.f76522d[iF])) {
                    bVar.c(bVar.a() + 1);
                } else {
                    Object[] objArr2 = tVar.f76522d;
                    objArrCopyOf[length] = objArr2[iF];
                    objArrCopyOf[length + 1] = objArr2[iF + 1];
                    length += 2;
                }
                if (iF == iH) {
                    break;
                }
                iF += iL;
            }
        }
        if (length == this.f76522d.length) {
            return this;
        }
        if (length == tVar.f76522d.length) {
            return tVar;
        }
        if (length == objArrCopyOf.length) {
            return new t(0, 0, objArrCopyOf, eVar);
        }
        Object[] objArrCopyOf2 = Arrays.copyOf(objArrCopyOf, length);
        Intrinsics.g(objArrCopyOf2, "copyOf(this, newSize)");
        return new t(0, 0, objArrCopyOf2, eVar);
    }

    private final t y(Object obj, Object obj2, f fVar) {
        IntProgression intProgressionS = RangesKt.s(RangesKt.t(0, this.f76522d.length), 2);
        int iF = intProgressionS.getFirst();
        int iH = intProgressionS.getLast();
        int iL = intProgressionS.getStep();
        if ((iL > 0 && iF <= iH) || (iL < 0 && iH <= iF)) {
            while (true) {
                if (Intrinsics.c(obj, t(iF)) && Intrinsics.c(obj2, W(iF))) {
                    return A(iF, fVar);
                }
                if (iF != iH) {
                    iF += iL;
                }
            }
        }
        return this;
    }

    private final t z(Object obj, f fVar) {
        IntProgression intProgressionS = RangesKt.s(RangesKt.t(0, this.f76522d.length), 2);
        int iF = intProgressionS.getFirst();
        int iH = intProgressionS.getLast();
        int iL = intProgressionS.getStep();
        if ((iL > 0 && iF <= iH) || (iL < 0 && iH <= iF)) {
            while (!Intrinsics.c(obj, t(iF))) {
                if (iF != iH) {
                    iF += iL;
                }
            }
            return A(iF, fVar);
        }
        return this;
    }

    public final t D(int i11, Object obj, Object obj2, int i12, f fVar) {
        int iF = 1 << x.f(i11, i12);
        if (q(iF)) {
            int iN = n(iF);
            if (Intrinsics.c(obj, t(iN))) {
                fVar.n(W(iN));
                return W(iN) == obj2 ? this : M(iN, obj2, fVar);
            }
            fVar.p(fVar.size() + 1);
            return C(iN, iF, i11, obj, obj2, i12, fVar.l());
        }
        if (!r(iF)) {
            fVar.p(fVar.size() + 1);
            return B(iF, obj, obj2, fVar.l());
        }
        int iO = O(iF);
        t tVarN = N(iO);
        t tVarW = i12 == 30 ? tVarN.w(obj, obj2, fVar) : tVarN.D(i11, obj, obj2, i12 + 5, fVar);
        return tVarN == tVarW ? this : L(iO, tVarW, fVar.l());
    }

    public final t E(t tVar, int i11, w.b bVar, f fVar) {
        if (this == tVar) {
            bVar.b(e());
            return this;
        }
        if (i11 > 30) {
            return x(tVar, bVar, fVar.l());
        }
        int i12 = this.f76520b | tVar.f76520b;
        int i13 = this.f76519a;
        int i14 = tVar.f76519a;
        int i15 = (i13 ^ i14) & (~i12);
        int i16 = i13 & i14;
        int i17 = i15;
        while (i16 != 0) {
            int iLowestOneBit = Integer.lowestOneBit(i16);
            if (Intrinsics.c(t(n(iLowestOneBit)), tVar.t(tVar.n(iLowestOneBit)))) {
                i17 |= iLowestOneBit;
            } else {
                i12 |= iLowestOneBit;
            }
            i16 ^= iLowestOneBit;
        }
        int i18 = 0;
        if (!((i12 & i17) == 0)) {
            o1.b("Check failed.");
        }
        t tVar2 = (Intrinsics.c(this.f76521c, fVar.l()) && this.f76519a == i17 && this.f76520b == i12) ? this : new t(i17, i12, new Object[(Integer.bitCount(i17) * 2) + Integer.bitCount(i12)]);
        int i19 = i12;
        int i20 = 0;
        while (i19 != 0) {
            int iLowestOneBit2 = Integer.lowestOneBit(i19);
            Object[] objArr = tVar2.f76522d;
            objArr[(objArr.length - 1) - i20] = F(tVar, iLowestOneBit2, i11, bVar, fVar);
            i20++;
            i19 ^= iLowestOneBit2;
        }
        while (i17 != 0) {
            int iLowestOneBit3 = Integer.lowestOneBit(i17);
            int i21 = i18 * 2;
            if (tVar.q(iLowestOneBit3)) {
                int iN = tVar.n(iLowestOneBit3);
                tVar2.f76522d[i21] = tVar.t(iN);
                tVar2.f76522d[i21 + 1] = tVar.W(iN);
                if (q(iLowestOneBit3)) {
                    bVar.c(bVar.a() + 1);
                }
            } else {
                int iN2 = n(iLowestOneBit3);
                tVar2.f76522d[i21] = t(iN2);
                tVar2.f76522d[i21 + 1] = W(iN2);
            }
            i18++;
            i17 ^= iLowestOneBit3;
        }
        if (l(tVar2)) {
            return this;
        }
        return tVar.l(tVar2) ? tVar : tVar2;
    }

    public final t G(int i11, Object obj, int i12, f fVar) {
        int iF = 1 << x.f(i11, i12);
        if (q(iF)) {
            int iN = n(iF);
            return Intrinsics.c(obj, t(iN)) ? I(iN, iF, fVar) : this;
        }
        if (!r(iF)) {
            return this;
        }
        int iO = O(iF);
        t tVarN = N(iO);
        return K(tVarN, i12 == 30 ? tVarN.z(obj, fVar) : tVarN.G(i11, obj, i12 + 5, fVar), iO, iF, fVar.l());
    }

    public final t H(int i11, Object obj, Object obj2, int i12, f fVar) {
        int iF = 1 << x.f(i11, i12);
        if (q(iF)) {
            int iN = n(iF);
            return (Intrinsics.c(obj, t(iN)) && Intrinsics.c(obj2, W(iN))) ? I(iN, iF, fVar) : this;
        }
        if (!r(iF)) {
            return this;
        }
        int iO = O(iF);
        t tVarN = N(iO);
        return K(tVarN, i12 == 30 ? tVarN.y(obj, obj2, fVar) : tVarN.H(i11, obj, obj2, i12 + 5, fVar), iO, iF, fVar.l());
    }

    public final t N(int i11) {
        Object obj = this.f76522d[i11];
        Intrinsics.f(obj, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode>");
        return (t) obj;
    }

    public final int O(int i11) {
        return (this.f76522d.length - 1) - Integer.bitCount((i11 - 1) & this.f76520b);
    }

    public final b P(int i11, Object obj, Object obj2, int i12) {
        b bVarP;
        int iF = 1 << x.f(i11, i12);
        if (q(iF)) {
            int iN = n(iF);
            if (!Intrinsics.c(obj, t(iN))) {
                return v(iN, iF, i11, obj, obj2, i12).b();
            }
            if (W(iN) == obj2) {
                return null;
            }
            return V(iN, obj2).c();
        }
        if (!r(iF)) {
            return s(iF, obj, obj2).b();
        }
        int iO = O(iF);
        t tVarN = N(iO);
        if (i12 == 30) {
            bVarP = tVarN.h(obj, obj2);
            if (bVarP == null) {
                return null;
            }
        } else {
            bVarP = tVarN.P(i11, obj, obj2, i12 + 5);
            if (bVarP == null) {
                return null;
            }
        }
        bVarP.c(U(iO, iF, bVarP.a()));
        return bVarP;
    }

    public final t Q(int i11, Object obj, int i12) {
        int iF = 1 << x.f(i11, i12);
        if (q(iF)) {
            int iN = n(iF);
            return Intrinsics.c(obj, t(iN)) ? R(iN, iF) : this;
        }
        if (!r(iF)) {
            return this;
        }
        int iO = O(iF);
        t tVarN = N(iO);
        return T(tVarN, i12 == 30 ? tVarN.i(obj) : tVarN.Q(i11, obj, i12 + 5), iO, iF);
    }

    public final boolean k(int i11, Object obj, int i12) {
        int iF = 1 << x.f(i11, i12);
        if (q(iF)) {
            return Intrinsics.c(obj, t(n(iF)));
        }
        if (!r(iF)) {
            return false;
        }
        t tVarN = N(O(iF));
        return i12 == 30 ? tVarN.f(obj) : tVarN.k(i11, obj, i12 + 5);
    }

    public final int m() {
        return Integer.bitCount(this.f76519a);
    }

    public final int n(int i11) {
        return Integer.bitCount((i11 - 1) & this.f76519a) * 2;
    }

    public final Object o(int i11, Object obj, int i12) {
        int iF = 1 << x.f(i11, i12);
        if (q(iF)) {
            int iN = n(iF);
            if (Intrinsics.c(obj, t(iN))) {
                return W(iN);
            }
            return null;
        }
        if (!r(iF)) {
            return null;
        }
        t tVarN = N(O(iF));
        return i12 == 30 ? tVarN.g(obj) : tVarN.o(i11, obj, i12 + 5);
    }

    public final Object[] p() {
        return this.f76522d;
    }

    public final boolean q(int i11) {
        return (i11 & this.f76519a) != 0;
    }
}
