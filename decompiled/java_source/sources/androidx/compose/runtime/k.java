package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f3786a = new l1("provider");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f3787b = new l1("provider");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f3788c = new l1("compositionLocalMap");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Object f3789d = new l1("providerValues");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Object f3790e = new l1("providers");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Object f3791f = new l1("reference");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Comparator f3792g = new Comparator() { // from class: androidx.compose.runtime.j
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return k.b((o0) obj, (o0) obj2);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object A(q0 q0Var) {
        return q0Var.d() != null ? new p0(Integer.valueOf(q0Var.a()), q0Var.d()) : Integer.valueOf(q0Var.a());
    }

    public static final Object B() {
        return f3787b;
    }

    public static final Object C() {
        return f3790e;
    }

    public static final Object D() {
        return f3791f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(List list, int i11, RecomposeScopeImpl recomposeScopeImpl, Object obj) {
        int iW = w(list, i11);
        if (iW < 0) {
            int i12 = -(iW + 1);
            if (!(obj instanceof z)) {
                obj = null;
            }
            list.add(i12, new o0(recomposeScopeImpl, i11, obj));
            return;
        }
        o0 o0Var = (o0) list.get(iW);
        if (!(obj instanceof z)) {
            o0Var.e(null);
            return;
        }
        Object objA = o0Var.a();
        if (objA == null) {
            o0Var.e(obj);
        } else if (objA instanceof MutableScatterSet) {
            ((MutableScatterSet) objA).h(obj);
        } else {
            o0Var.e(androidx.collection.w0.b(objA, obj));
        }
    }

    public static final boolean F(i2 i2Var) {
        return i2Var.k() > i2Var.u() + 1;
    }

    public static final boolean G(m2 m2Var) {
        return m2Var.a0() > m2Var.c0() + 1;
    }

    public static final boolean H() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.collection.n0 I(int i11) {
        return h1.b(new androidx.collection.n0(i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int J(i2 i2Var, int i11, int i12, int i13) {
        if (i11 == i12) {
            return i11;
        }
        if (i11 == i13 || i12 == i13) {
            return i13;
        }
        if (i2Var.P(i11) == i12) {
            return i12;
        }
        if (i2Var.P(i12) == i11) {
            return i11;
        }
        if (i2Var.P(i11) == i2Var.P(i12)) {
            return i2Var.P(i11);
        }
        int iU = u(i2Var, i11, i13);
        int iU2 = u(i2Var, i12, i13);
        int i14 = iU - iU2;
        for (int i15 = 0; i15 < i14; i15++) {
            i11 = i2Var.P(i11);
        }
        int i16 = iU2 - iU;
        for (int i17 = 0; i17 < i16; i17++) {
            i12 = i2Var.P(i12);
        }
        while (i11 != i12) {
            i11 = i2Var.P(i11);
            i12 = i2Var.P(i12);
        }
        return i11;
    }

    public static final void K(m2 m2Var, a2 a2Var) {
        int iE0;
        int iQ = m2Var.Q(m2Var.f3809b, m2Var.h0(m2Var.a0() + m2Var.k0(m2Var.a0())));
        for (int iQ2 = m2Var.Q(m2Var.f3809b, m2Var.h0(m2Var.a0())); iQ2 < iQ; iQ2++) {
            Object obj = m2Var.f3810c[m2Var.R(iQ2)];
            int iF = -1;
            if (obj instanceof h) {
                a2Var.b((h) obj, m2Var.e0() - iQ2, -1, -1);
            }
            if (obj instanceof c2) {
                int iE1 = m2Var.e0() - iQ2;
                c2 c2Var = (c2) obj;
                c cVarA = c2Var.a();
                if (cVarA == null || !cVarA.b()) {
                    iE0 = -1;
                } else {
                    iF = m2Var.F(cVarA);
                    iE0 = m2Var.e0() - m2Var.b1(iF);
                }
                a2Var.e(c2Var.b(), iE1, iF, iE0);
            }
            if (obj instanceof RecomposeScopeImpl) {
                ((RecomposeScopeImpl) obj).x();
            }
        }
        m2Var.L0();
    }

    private static final void L(m2 m2Var, int i11, int i12, Object obj) {
        if (obj == m2Var.R0(i11, i12, i.f3736a.a())) {
            return;
        }
        r("Slot table is out of sync");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final o0 M(List list, int i11) {
        int iW = w(list, i11);
        if (iW >= 0) {
            return (o0) list.remove(iW);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N(List list, int i11, int i12) {
        int iV = v(list, i11);
        while (iV < list.size() && ((o0) list.get(iV)).b() < i12) {
            list.remove(iV);
        }
    }

    public static final void O(boolean z10) {
        if (z10) {
            return;
        }
        r("Check failed");
    }

    public static final void P() {
    }

    public static final void Q(int i11, int i12, int i13, String str) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int b(o0 o0Var, o0 o0Var2) {
        return Intrinsics.j(o0Var.b(), o0Var2.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean n(int i11) {
        return i11 != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int o(boolean z10) {
        return z10 ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List p(j2 j2Var, c cVar) {
        ArrayList arrayList = new ArrayList();
        i2 i2VarW = j2Var.w();
        try {
            q(i2VarW, arrayList, j2Var.c(cVar));
            Unit unit = Unit.f67061a;
            return arrayList;
        } finally {
            i2VarW.d();
        }
    }

    private static final void q(i2 i2Var, List list, int i11) {
        if (i2Var.J(i11)) {
            list.add(i2Var.L(i11));
            return;
        }
        int iE = i11 + 1;
        int iE2 = i11 + i2Var.E(i11);
        while (iE < iE2) {
            q(i2Var, list, iE);
            iE += i2Var.E(iE);
        }
    }

    public static final void r(String str) {
        throw new ComposeRuntimeError("Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API (" + str + "). Please report to Google or use https://goo.gle/compose-feedback");
    }

    public static final Void s(String str) {
        throw new ComposeRuntimeError("Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API (" + str + "). Please report to Google or use https://goo.gle/compose-feedback");
    }

    public static final void t(m2 m2Var, a2 a2Var) {
        int iF;
        int iE0;
        int iA0 = m2Var.a0();
        int iB0 = m2Var.b0();
        while (iA0 < iB0) {
            Object objA0 = m2Var.A0(iA0);
            if (objA0 instanceof h) {
                a2Var.d((h) objA0, m2Var.e0() - m2Var.d1(iA0), -1, -1);
            }
            int iZ0 = m2Var.Z0(m2Var.f3809b, m2Var.h0(iA0));
            int i11 = iA0 + 1;
            int iQ = m2Var.Q(m2Var.f3809b, m2Var.h0(i11));
            for (int i12 = iZ0; i12 < iQ; i12++) {
                int i13 = i12 - iZ0;
                Object obj = m2Var.f3810c[m2Var.R(i12)];
                if (obj instanceof c2) {
                    c2 c2Var = (c2) obj;
                    b2 b2VarB = c2Var.b();
                    if (!(b2VarB instanceof e2)) {
                        L(m2Var, iA0, i13, obj);
                        int iE1 = m2Var.e0() - i13;
                        c cVarA = c2Var.a();
                        if (cVarA == null || !cVarA.b()) {
                            iF = -1;
                            iE0 = -1;
                        } else {
                            iF = m2Var.F(cVarA);
                            iE0 = m2Var.e0() - m2Var.b1(iF);
                        }
                        a2Var.e(b2VarB, iE1, iF, iE0);
                    }
                } else if (obj instanceof RecomposeScopeImpl) {
                    L(m2Var, iA0, i13, obj);
                    ((RecomposeScopeImpl) obj).x();
                }
            }
            iA0 = i11;
        }
    }

    private static final int u(i2 i2Var, int i11, int i12) {
        int i13 = 0;
        while (i11 > 0 && i11 != i12) {
            i11 = i2Var.P(i11);
            i13++;
        }
        return i13;
    }

    private static final int v(List list, int i11) {
        int iW = w(list, i11);
        return iW < 0 ? -(iW + 1) : iW;
    }

    private static final int w(List list, int i11) {
        int size = list.size() - 1;
        int i12 = 0;
        while (i12 <= size) {
            int i13 = (i12 + size) >>> 1;
            int iJ = Intrinsics.j(((o0) list.get(i13)).b(), i11);
            if (iJ < 0) {
                i12 = i13 + 1;
            } else {
                if (iJ <= 0) {
                    return i13;
                }
                size = i13 - 1;
            }
        }
        return -(i12 + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final o0 x(List list, int i11, int i12) {
        int iV = v(list, i11);
        if (iV >= list.size()) {
            return null;
        }
        o0 o0Var = (o0) list.get(iV);
        if (o0Var.b() < i12) {
            return o0Var;
        }
        return null;
    }

    public static final Object y() {
        return f3788c;
    }

    public static final Object z() {
        return f3786a;
    }
}
