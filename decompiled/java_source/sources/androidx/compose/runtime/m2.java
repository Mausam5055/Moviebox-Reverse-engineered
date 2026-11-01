package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class m2 {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final a f3806y = new a(null);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f3807z = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j2 f3808a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f3809b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object[] f3810c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList f3811d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private HashMap f3812e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private androidx.collection.e0 f3813f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3814g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f3815h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f3816i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f3817j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f3818k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f3819l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f3820m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f3821n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f3822o;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private androidx.collection.e0 f3826s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f3827t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f3828u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f3830w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private r1 f3831x;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final m0 f3823p = new m0();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final m0 f3824q = new m0();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final m0 f3825r = new m0();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f3829v = -1;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final List b(m2 m2Var, int i11, m2 m2Var2, boolean z10, boolean z11, boolean z12) {
            boolean zM0;
            List listL;
            int iK0 = m2Var.k0(i11);
            int i12 = i11 + iK0;
            int iP = m2Var.P(i11);
            int iP2 = m2Var.P(i12);
            int i13 = iP2 - iP;
            boolean zM = m2Var.M(i11);
            m2Var2.o0(iK0);
            m2Var2.p0(i13, m2Var2.a0());
            if (m2Var.f3814g < i12) {
                m2Var.x0(i12);
            }
            if (m2Var.f3818k < iP2) {
                m2Var.z0(iP2, i12);
            }
            int[] iArr = m2Var2.f3809b;
            int iA0 = m2Var2.a0();
            ArraysKt.l(m2Var.f3809b, iArr, iA0 * 5, i11 * 5, i12 * 5);
            Object[] objArr = m2Var2.f3810c;
            int i14 = m2Var2.f3816i;
            ArraysKt.n(m2Var.f3810c, objArr, i14, iP, iP2);
            int iC0 = m2Var2.c0();
            l2.b0(iArr, iA0, iC0);
            int i15 = iA0 - i11;
            int i16 = iA0 + iK0;
            int iQ = i14 - m2Var2.Q(iArr, iA0);
            int i17 = m2Var2.f3820m;
            int i18 = m2Var2.f3819l;
            int length = objArr.length;
            int i19 = i17;
            int i20 = iA0;
            while (true) {
                zM0 = false;
                if (i20 >= i16) {
                    break;
                }
                if (i20 != iA0) {
                    l2.b0(iArr, i20, l2.T(iArr, i20) + i15);
                }
                int i21 = iQ;
                l2.X(iArr, i20, m2Var2.S(m2Var2.Q(iArr, i20) + iQ, i19 >= i20 ? m2Var2.f3818k : 0, i18, length));
                if (i20 == i19) {
                    i19++;
                }
                i20++;
                iQ = i21;
                i16 = i16;
            }
            int i22 = i16;
            m2Var2.f3820m = i19;
            int iP3 = l2.P(m2Var.f3811d, i11, m2Var.d0());
            int iP4 = l2.P(m2Var.f3811d, i12, m2Var.d0());
            if (iP3 < iP4) {
                ArrayList arrayList = m2Var.f3811d;
                ArrayList arrayList2 = new ArrayList(iP4 - iP3);
                for (int i23 = iP3; i23 < iP4; i23++) {
                    c cVar = (c) arrayList.get(i23);
                    cVar.c(cVar.a() + i15);
                    arrayList2.add(cVar);
                }
                m2Var2.f3811d.addAll(l2.P(m2Var2.f3811d, m2Var2.a0(), m2Var2.d0()), arrayList2);
                arrayList.subList(iP3, iP4).clear();
                listL = arrayList2;
            } else {
                listL = CollectionsKt.l();
            }
            if (!listL.isEmpty()) {
                HashMap map = m2Var.f3812e;
                HashMap map2 = m2Var2.f3812e;
                if (map != null && map2 != null) {
                    int size = listL.size();
                    for (int i24 = 0; i24 < size; i24++) {
                    }
                }
            }
            m2Var2.c0();
            m2Var2.e1(iC0);
            int iE0 = m2Var.E0(i11);
            if (z12) {
                if (z10) {
                    boolean z13 = iE0 >= 0;
                    if (z13) {
                        m2Var.g1();
                        m2Var.D(iE0 - m2Var.a0());
                        m2Var.g1();
                    }
                    m2Var.D(i11 - m2Var.a0());
                    boolean zL0 = m2Var.L0();
                    if (z13) {
                        m2Var.W0();
                        m2Var.T();
                        m2Var.W0();
                        m2Var.T();
                    }
                    zM0 = zL0;
                } else {
                    zM0 = m2Var.M0(i11, iK0);
                    m2Var.N0(iP, i13, i11 - 1);
                }
            }
            if (zM0) {
                k.r("Unexpectedly removed anchors");
            }
            m2Var2.f3822o += l2.N(iArr, iA0) ? 1 : l2.Q(iArr, iA0);
            if (z11) {
                m2Var2.f3827t = i22;
                m2Var2.f3816i = i14 + i13;
            }
            if (zM) {
                m2Var2.p1(iC0);
            }
            return listL;
        }

        static /* synthetic */ List c(a aVar, m2 m2Var, int i11, m2 m2Var2, boolean z10, boolean z11, boolean z12, int i12, Object obj) {
            if ((i12 & 32) != 0) {
                z12 = true;
            }
            return aVar.b(m2Var, i11, m2Var2, z10, z11, z12);
        }
    }

    public m2(j2 j2Var) {
        this.f3808a = j2Var;
        this.f3809b = j2Var.o();
        this.f3810c = j2Var.q();
        this.f3811d = j2Var.m();
        this.f3812e = j2Var.s();
        this.f3813f = j2Var.n();
        this.f3814g = j2Var.p();
        this.f3815h = (this.f3809b.length / 5) - j2Var.p();
        this.f3818k = j2Var.r();
        this.f3819l = this.f3810c.length - j2Var.r();
        this.f3820m = j2Var.p();
        this.f3828u = j2Var.p();
    }

    private final int D0(int[] iArr, int i11) {
        return Q(iArr, i11);
    }

    private final int F0(int[] iArr, int i11) {
        return G0(l2.T(iArr, h0(i11)));
    }

    private final int G0(int i11) {
        return i11 > -2 ? i11 : d0() + i11 + 2;
    }

    private final int H(int[] iArr, int i11) {
        return Q(iArr, i11) + l2.E(l2.H(iArr, i11) >> 29);
    }

    private final int H0(int i11, int i12) {
        return i11 < i12 ? i11 : -((d0() - i11) + 2);
    }

    private final Object I0(Object obj) {
        Object objU0 = U0();
        T0(obj);
        return objU0;
    }

    private final boolean J(int i11) {
        int iK0 = i11 + 1;
        int iK1 = i11 + k0(i11);
        while (iK0 < iK1) {
            if (l2.C(this.f3809b, h0(iK0))) {
                return true;
            }
            iK0 += k0(iK0);
        }
        return false;
    }

    private final void J0() {
        r1 r1Var = this.f3831x;
        if (r1Var != null) {
            while (r1Var.b()) {
                q1(r1Var.d(), r1Var);
            }
        }
    }

    private final void K() {
        int i11 = this.f3818k;
        ArraysKt.w(this.f3810c, null, i11, this.f3819l + i11);
    }

    private final boolean K0(int i11, int i12, HashMap map) {
        int i13 = i12 + i11;
        int iP = l2.P(this.f3811d, i13, Y() - this.f3815h);
        if (iP >= this.f3811d.size()) {
            iP--;
        }
        int i14 = iP + 1;
        int i15 = 0;
        while (iP >= 0) {
            c cVar = (c) this.f3811d.get(iP);
            int iF = F(cVar);
            if (iF < i11) {
                break;
            }
            if (iF < i13) {
                cVar.c(Integer.MIN_VALUE);
                if (map != null) {
                }
                if (i15 == 0) {
                    i15 = iP + 1;
                }
                i14 = iP;
            }
            iP--;
        }
        boolean z10 = i14 < i15;
        if (z10) {
            this.f3811d.subList(i14, i15).clear();
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean M(int i11) {
        return i11 >= 0 && l2.C(this.f3809b, h0(i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean M0(int i11, int i12) {
        boolean zK0 = false;
        if (i12 > 0) {
            ArrayList arrayList = this.f3811d;
            x0(i11);
            zK0 = arrayList.isEmpty() ? false : K0(i11, i12, this.f3812e);
            this.f3814g = i11;
            this.f3815h += i12;
            int i13 = this.f3820m;
            if (i13 > i11) {
                this.f3820m = Math.max(i11, i13 - i12);
            }
            int i14 = this.f3828u;
            if (i14 >= this.f3814g) {
                this.f3828u = i14 - i12;
            }
            int i15 = this.f3829v;
            if (N(i15)) {
                p1(i15);
            }
        }
        return zK0;
    }

    private final boolean N(int i11) {
        return i11 >= 0 && l2.D(this.f3809b, h0(i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N0(int i11, int i12, int i13) {
        if (i12 > 0) {
            int i14 = this.f3819l;
            int i15 = i11 + i12;
            z0(i15, i13);
            this.f3818k = i11;
            this.f3819l = i14 + i12;
            ArraysKt.w(this.f3810c, null, i11, i15);
            int i16 = this.f3817j;
            if (i16 >= i11) {
                this.f3817j = i16 - i12;
            }
        }
    }

    private final int O(int i11, int i12, int i13) {
        return i11 < 0 ? (i13 - i12) + i11 + 1 : i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int P(int i11) {
        return Q(this.f3809b, h0(i11));
    }

    private final int P0() {
        int iY = (Y() - this.f3815h) - this.f3824q.i();
        this.f3828u = iY;
        return iY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int Q(int[] iArr, int i11) {
        return i11 >= Y() ? this.f3810c.length - this.f3819l : O(l2.F(iArr, i11), this.f3819l, this.f3810c.length);
    }

    private final void Q0() {
        this.f3824q.j((Y() - this.f3815h) - this.f3828u);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int R(int i11) {
        return i11 < this.f3818k ? i11 : i11 + this.f3819l;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int S(int i11, int i12, int i13, int i14) {
        return i11 > i12 ? -(((i14 - i13) - i11) + 1) : i11;
    }

    private final void X(int i11, int i12, int i13) {
        int iH0 = H0(i11, this.f3814g);
        while (i13 < i12) {
            l2.b0(this.f3809b, h0(i13), iH0);
            int I = l2.I(this.f3809b, h0(i13)) + i13;
            X(i13, I, i13 + 1);
            i13 = I;
        }
    }

    private final int Y() {
        return this.f3809b.length / 5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int Z0(int[] iArr, int i11) {
        return i11 >= Y() ? this.f3810c.length - this.f3819l : O(l2.V(iArr, i11), this.f3819l, this.f3810c.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final l0 e1(int i11) {
        c cVarL1;
        HashMap map = this.f3812e;
        if (map == null || (cVarL1 = l1(i11)) == null) {
            return null;
        }
        return (l0) map.get(cVarL1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int h0(int i11) {
        return i11 < this.f3814g ? i11 : i11 + this.f3815h;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void i1(int i11, Object obj, boolean z10, Object obj2) {
        int I;
        int i12 = this.f3829v;
        Object[] objArr = this.f3821n > 0;
        this.f3825r.j(this.f3822o);
        if (objArr == true) {
            int i13 = this.f3827t;
            int iQ = Q(this.f3809b, h0(i13));
            o0(1);
            this.f3816i = iQ;
            this.f3817j = iQ;
            int iH0 = h0(i13);
            i.a aVar = i.f3736a;
            int i14 = obj != aVar.a() ? 1 : 0;
            int i15 = (z10 || obj2 == aVar.a()) ? 0 : 1;
            int iS = S(iQ, this.f3818k, this.f3819l, this.f3810c.length);
            l2.M(this.f3809b, iH0, i11, z10, i14, i15, this.f3829v, (iS < 0 || this.f3820m >= i13) ? iS : -(((this.f3810c.length - this.f3819l) - iS) + 1));
            int i16 = (z10 ? 1 : 0) + i14 + i15;
            if (i16 > 0) {
                p0(i16, i13);
                Object[] objArr2 = this.f3810c;
                int i17 = this.f3816i;
                if (z10) {
                    objArr2[i17] = obj2;
                    i17++;
                }
                if (i14 != 0) {
                    objArr2[i17] = obj;
                    i17++;
                }
                if (i15 != 0) {
                    objArr2[i17] = obj2;
                    i17++;
                }
                this.f3816i = i17;
            }
            this.f3822o = 0;
            I = i13 + 1;
            this.f3829v = i13;
            this.f3827t = I;
            if (i12 >= 0) {
                e1(i12);
            }
        } else {
            this.f3823p.j(i12);
            Q0();
            int i18 = this.f3827t;
            int iH1 = h0(i18);
            if (!Intrinsics.c(obj2, i.f3736a.a())) {
                if (z10) {
                    t1(obj2);
                } else {
                    o1(obj2);
                }
            }
            this.f3816i = Z0(this.f3809b, iH1);
            this.f3817j = Q(this.f3809b, h0(this.f3827t + 1));
            this.f3822o = l2.Q(this.f3809b, iH1);
            this.f3829v = i18;
            this.f3827t = i18 + 1;
            I = i18 + l2.I(this.f3809b, iH1);
        }
        this.f3828u = I;
    }

    private final void n1(int i11, int i12) {
        c cVar;
        int iA;
        c cVar2;
        int iA2;
        int i13;
        int iY = Y() - this.f3815h;
        if (i11 >= i12) {
            for (int iP = l2.P(this.f3811d, i12, iY); iP < this.f3811d.size() && (iA = (cVar = (c) this.f3811d.get(iP)).a()) >= 0; iP++) {
                cVar.c(-(iY - iA));
            }
            return;
        }
        for (int iP2 = l2.P(this.f3811d, i11, iY); iP2 < this.f3811d.size() && (iA2 = (cVar2 = (c) this.f3811d.get(iP2)).a()) < 0 && (i13 = iA2 + iY) < i12; iP2++) {
            cVar2.c(i13);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o0(int i11) {
        if (i11 > 0) {
            int i12 = this.f3827t;
            x0(i12);
            int i13 = this.f3814g;
            int i14 = this.f3815h;
            int[] iArr = this.f3809b;
            int length = iArr.length / 5;
            int i15 = length - i14;
            if (i14 < i11) {
                int iMax = Math.max(Math.max(length * 2, i15 + i11), 32);
                int[] iArr2 = new int[iMax * 5];
                int i16 = iMax - i15;
                ArraysKt.l(iArr, iArr2, 0, 0, i13 * 5);
                ArraysKt.l(iArr, iArr2, (i13 + i16) * 5, (i14 + i13) * 5, length * 5);
                this.f3809b = iArr2;
                i14 = i16;
            }
            int i17 = this.f3828u;
            if (i17 >= i13) {
                this.f3828u = i17 + i11;
            }
            int i18 = i13 + i11;
            this.f3814g = i18;
            this.f3815h = i14 - i11;
            int iS = S(i15 > 0 ? P(i12 + i11) : 0, this.f3820m >= i13 ? this.f3818k : 0, this.f3819l, this.f3810c.length);
            for (int i19 = i13; i19 < i18; i19++) {
                l2.X(this.f3809b, i19, iS);
            }
            int i20 = this.f3820m;
            if (i20 >= i13) {
                this.f3820m = i20 + i11;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p0(int i11, int i12) {
        if (i11 > 0) {
            z0(this.f3816i, i12);
            int i13 = this.f3818k;
            int i14 = this.f3819l;
            if (i14 < i11) {
                Object[] objArr = this.f3810c;
                int length = objArr.length;
                int i15 = length - i14;
                int iMax = Math.max(Math.max(length * 2, i15 + i11), 32);
                Object[] objArr2 = new Object[iMax];
                for (int i16 = 0; i16 < iMax; i16++) {
                    objArr2[i16] = null;
                }
                int i17 = iMax - i15;
                ArraysKt.n(objArr, objArr2, 0, 0, i13);
                ArraysKt.n(objArr, objArr2, i13 + i17, i14 + i13, length);
                this.f3810c = objArr2;
                i14 = i17;
            }
            int i18 = this.f3817j;
            if (i18 >= i13) {
                this.f3817j = i18 + i11;
            }
            this.f3818k = i13 + i11;
            this.f3819l = i14 - i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void p1(int i11) {
        if (i11 >= 0) {
            r1 r1Var = this.f3831x;
            if (r1Var == null) {
                r1Var = new r1(null, 1, 0 == true ? 1 : 0);
                this.f3831x = r1Var;
            }
            r1Var.a(i11);
        }
    }

    private final void q1(int i11, r1 r1Var) {
        int iH0 = h0(i11);
        boolean zJ = J(i11);
        if (l2.D(this.f3809b, iH0) != zJ) {
            l2.W(this.f3809b, iH0, zJ);
            int iE0 = E0(i11);
            if (iE0 >= 0) {
                r1Var.a(iE0);
            }
        }
    }

    private final void r1(int[] iArr, int i11, int i12) {
        l2.X(iArr, i11, S(i12, this.f3818k, this.f3819l, this.f3810c.length));
    }

    public static /* synthetic */ void t0(m2 m2Var, int i11, int i12, Object obj) {
        if ((i12 & 1) != 0) {
            i11 = m2Var.f3829v;
        }
        m2Var.s0(i11);
    }

    private final void u0(int i11, int i12, int i13) {
        c cVar;
        int iF;
        int i14 = i13 + i11;
        int iD0 = d0();
        int iP = l2.P(this.f3811d, i11, iD0);
        ArrayList arrayList = new ArrayList();
        if (iP >= 0) {
            while (iP < this.f3811d.size() && (iF = F((cVar = (c) this.f3811d.get(iP)))) >= i11 && iF < i14) {
                arrayList.add(cVar);
                this.f3811d.remove(iP);
            }
        }
        int i15 = i12 - i11;
        int size = arrayList.size();
        for (int i16 = 0; i16 < size; i16++) {
            c cVar2 = (c) arrayList.get(i16);
            int iF2 = F(cVar2) + i15;
            if (iF2 >= this.f3814g) {
                cVar2.c(-(iD0 - iF2));
            } else {
                cVar2.c(iF2);
            }
            this.f3811d.add(l2.P(this.f3811d, iF2, iD0), cVar2);
        }
    }

    private final void u1(int i11, Object obj) {
        int iH0 = h0(i11);
        int[] iArr = this.f3809b;
        if (!(iH0 < iArr.length && l2.N(iArr, iH0))) {
            k.r("Updating the node of a group at " + i11 + " that was not created with as a node group");
        }
        this.f3810c[R(D0(this.f3809b, iH0))] = obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x0(int i11) {
        int i12 = this.f3815h;
        int i13 = this.f3814g;
        if (i13 != i11) {
            if (!this.f3811d.isEmpty()) {
                n1(i13, i11);
            }
            if (i12 > 0) {
                int[] iArr = this.f3809b;
                int i14 = i11 * 5;
                int i15 = i12 * 5;
                int i16 = i13 * 5;
                if (i11 < i13) {
                    ArraysKt.l(iArr, iArr, i15 + i14, i14, i16);
                } else {
                    ArraysKt.l(iArr, iArr, i16, i16 + i15, i14 + i15);
                }
            }
            if (i11 < i13) {
                i13 = i11 + i12;
            }
            int iY = Y();
            k.O(i13 < iY);
            while (i13 < iY) {
                int iT = l2.T(this.f3809b, i13);
                int iH0 = H0(G0(iT), i11);
                if (iH0 != iT) {
                    l2.b0(this.f3809b, i13, iH0);
                }
                i13++;
                if (i13 == i11) {
                    i13 += i12;
                }
            }
        }
        this.f3814g = i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z0(int i11, int i12) {
        int i13 = this.f3819l;
        int i14 = this.f3818k;
        int i15 = this.f3820m;
        if (i14 != i11) {
            Object[] objArr = this.f3810c;
            if (i11 < i14) {
                ArraysKt.n(objArr, objArr, i11 + i13, i11, i14);
            } else {
                ArraysKt.n(objArr, objArr, i14, i14 + i13, i11 + i13);
            }
        }
        int iMin = Math.min(i12 + 1, d0());
        if (i15 != iMin) {
            int length = this.f3810c.length - i13;
            if (iMin < i15) {
                int iH0 = h0(iMin);
                int iH1 = h0(i15);
                int i16 = this.f3814g;
                while (iH0 < iH1) {
                    int iF = l2.F(this.f3809b, iH0);
                    if (!(iF >= 0)) {
                        k.r("Unexpected anchor value, expected a positive anchor");
                    }
                    l2.X(this.f3809b, iH0, -((length - iF) + 1));
                    iH0++;
                    if (iH0 == i16) {
                        iH0 += this.f3815h;
                    }
                }
            } else {
                int iH2 = h0(i15);
                int iH3 = h0(iMin);
                while (iH2 < iH3) {
                    int iF2 = l2.F(this.f3809b, iH2);
                    if (!(iF2 < 0)) {
                        k.r("Unexpected anchor value, expected a negative anchor");
                    }
                    l2.X(this.f3809b, iH2, iF2 + length + 1);
                    iH2++;
                    if (iH2 == this.f3814g) {
                        iH2 += this.f3815h;
                    }
                }
            }
            this.f3820m = iMin;
        }
        this.f3818k = i11;
    }

    public final Object A0(int i11) {
        int iH0 = h0(i11);
        if (l2.N(this.f3809b, iH0)) {
            return this.f3810c[R(D0(this.f3809b, iH0))];
        }
        return null;
    }

    public final Object B0(c cVar) {
        return A0(cVar.e(this));
    }

    public final int C0(int i11) {
        return l2.Q(this.f3809b, h0(i11));
    }

    public final void D(int i11) {
        boolean z10 = false;
        if (!(i11 >= 0)) {
            k.r("Cannot seek backwards");
        }
        if (!(this.f3821n <= 0)) {
            o1.b("Cannot call seek() while inserting");
        }
        if (i11 == 0) {
            return;
        }
        int i12 = this.f3827t + i11;
        if (i12 >= this.f3829v && i12 <= this.f3828u) {
            z10 = true;
        }
        if (!z10) {
            k.r("Cannot seek outside the current group (" + this.f3829v + '-' + this.f3828u + ')');
        }
        this.f3827t = i12;
        int iQ = Q(this.f3809b, h0(i12));
        this.f3816i = iQ;
        this.f3817j = iQ;
    }

    public final c E(int i11) {
        ArrayList arrayList = this.f3811d;
        int iU = l2.U(arrayList, i11, d0());
        if (iU >= 0) {
            return (c) arrayList.get(iU);
        }
        if (i11 > this.f3814g) {
            i11 = -(d0() - i11);
        }
        c cVar = new c(i11);
        arrayList.add(-(iU + 1), cVar);
        return cVar;
    }

    public final int E0(int i11) {
        return F0(this.f3809b, i11);
    }

    public final int F(c cVar) {
        int iA = cVar.a();
        return iA < 0 ? iA + d0() : iA;
    }

    public final void G(c cVar, Object obj) {
        if (!(this.f3821n == 0)) {
            k.r("Can only append a slot if not current inserting");
        }
        int i11 = this.f3816i;
        int i12 = this.f3817j;
        int iF = F(cVar);
        int iQ = Q(this.f3809b, h0(iF + 1));
        this.f3816i = iQ;
        this.f3817j = iQ;
        p0(1, iF);
        if (i11 >= iQ) {
            i11++;
            i12++;
        }
        this.f3810c[iQ] = obj;
        this.f3816i = i11;
        this.f3817j = i12;
    }

    public final void I() {
        int i11 = this.f3821n;
        this.f3821n = i11 + 1;
        if (i11 == 0) {
            Q0();
        }
    }

    public final void L(boolean z10) {
        this.f3830w = true;
        if (z10 && this.f3823p.d()) {
            x0(d0());
            z0(this.f3810c.length - this.f3819l, this.f3814g);
            K();
            J0();
        }
        this.f3808a.f(this, this.f3809b, this.f3814g, this.f3810c, this.f3818k, this.f3811d, this.f3812e, this.f3813f);
    }

    public final boolean L0() {
        if (!(this.f3821n == 0)) {
            k.r("Cannot remove group while inserting");
        }
        int i11 = this.f3827t;
        int i12 = this.f3816i;
        int iQ = Q(this.f3809b, h0(i11));
        int iV0 = V0();
        e1(this.f3829v);
        r1 r1Var = this.f3831x;
        if (r1Var != null) {
            while (r1Var.b() && r1Var.c() >= i11) {
                r1Var.d();
            }
        }
        boolean zM0 = M0(i11, this.f3827t - i11);
        N0(iQ, this.f3816i - iQ, i11 - 1);
        this.f3827t = i11;
        this.f3816i = i12;
        this.f3822o -= iV0;
        return zM0;
    }

    public final void O0() {
        if (!(this.f3821n == 0)) {
            k.r("Cannot reset when inserting");
        }
        J0();
        this.f3827t = 0;
        this.f3828u = Y() - this.f3815h;
        this.f3816i = 0;
        this.f3817j = 0;
        this.f3822o = 0;
    }

    public final Object R0(int i11, int i12, Object obj) {
        int iR = R(a1(i11, i12));
        Object[] objArr = this.f3810c;
        Object obj2 = objArr[iR];
        objArr[iR] = obj;
        return obj2;
    }

    public final Object S0(int i11, Object obj) {
        return R0(this.f3827t, i11, obj);
    }

    public final int T() {
        androidx.collection.l0 l0Var;
        boolean z10 = this.f3821n > 0;
        int i11 = this.f3827t;
        int i12 = this.f3828u;
        int i13 = this.f3829v;
        int iH0 = h0(i13);
        int i14 = this.f3822o;
        int i15 = i11 - i13;
        boolean zN = l2.N(this.f3809b, iH0);
        if (z10) {
            androidx.collection.e0 e0Var = this.f3826s;
            if (e0Var != null && (l0Var = (androidx.collection.l0) e0Var.c(i13)) != null) {
                Object[] objArr = l0Var.f2244a;
                int i16 = l0Var.f2245b;
                for (int i17 = 0; i17 < i16; i17++) {
                    I0(objArr[i17]);
                }
            }
            l2.Y(this.f3809b, iH0, i15);
            l2.a0(this.f3809b, iH0, i14);
            this.f3822o = this.f3825r.i() + (zN ? 1 : i14);
            int iF0 = F0(this.f3809b, i13);
            this.f3829v = iF0;
            int iD0 = iF0 < 0 ? d0() : h0(iF0 + 1);
            int iQ = iD0 >= 0 ? Q(this.f3809b, iD0) : 0;
            this.f3816i = iQ;
            this.f3817j = iQ;
        } else {
            if (!(i11 == i12)) {
                k.r("Expected to be at the end of a group");
            }
            int I = l2.I(this.f3809b, iH0);
            int iQ2 = l2.Q(this.f3809b, iH0);
            l2.Y(this.f3809b, iH0, i15);
            l2.a0(this.f3809b, iH0, i14);
            int i18 = this.f3823p.i();
            P0();
            this.f3829v = i18;
            int iF1 = F0(this.f3809b, i13);
            int i19 = this.f3825r.i();
            this.f3822o = i19;
            if (iF1 == i18) {
                this.f3822o = i19 + (zN ? 0 : i14 - iQ2);
            } else {
                int i20 = i15 - I;
                int i21 = zN ? 0 : i14 - iQ2;
                if (i20 != 0 || i21 != 0) {
                    while (iF1 != 0 && iF1 != i18 && (i21 != 0 || i20 != 0)) {
                        int iH1 = h0(iF1);
                        if (i20 != 0) {
                            l2.Y(this.f3809b, iH1, l2.I(this.f3809b, iH1) + i20);
                        }
                        if (i21 != 0) {
                            int[] iArr = this.f3809b;
                            l2.a0(iArr, iH1, l2.Q(iArr, iH1) + i21);
                        }
                        if (l2.N(this.f3809b, iH1)) {
                            i21 = 0;
                        }
                        iF1 = F0(this.f3809b, iF1);
                    }
                }
                this.f3822o += i21;
            }
        }
        return i14;
    }

    public final void T0(Object obj) {
        if (!(this.f3816i <= this.f3817j)) {
            k.r("Writing to an invalid slot");
        }
        this.f3810c[R(this.f3816i - 1)] = obj;
    }

    public final void U() {
        if (!(this.f3821n > 0)) {
            o1.b("Unbalanced begin/end insert");
        }
        int i11 = this.f3821n - 1;
        this.f3821n = i11;
        if (i11 == 0) {
            if (!(this.f3825r.b() == this.f3823p.b())) {
                k.r("startGroup/endGroup mismatch while inserting");
            }
            P0();
        }
    }

    public final Object U0() {
        if (this.f3821n > 0) {
            p0(1, this.f3829v);
        }
        Object[] objArr = this.f3810c;
        int i11 = this.f3816i;
        this.f3816i = i11 + 1;
        return objArr[R(i11)];
    }

    public final void V(int i11) {
        boolean z10 = false;
        if (!(this.f3821n <= 0)) {
            k.r("Cannot call ensureStarted() while inserting");
        }
        int i12 = this.f3829v;
        if (i12 != i11) {
            if (i11 >= i12 && i11 < this.f3828u) {
                z10 = true;
            }
            if (!z10) {
                k.r("Started group at " + i11 + " must be a subgroup of the group at " + i12);
            }
            int i13 = this.f3827t;
            int i14 = this.f3816i;
            int i15 = this.f3817j;
            this.f3827t = i11;
            g1();
            this.f3827t = i13;
            this.f3816i = i14;
            this.f3817j = i15;
        }
    }

    public final int V0() {
        int iH0 = h0(this.f3827t);
        int I = this.f3827t + l2.I(this.f3809b, iH0);
        this.f3827t = I;
        this.f3816i = Q(this.f3809b, h0(I));
        if (l2.N(this.f3809b, iH0)) {
            return 1;
        }
        return l2.Q(this.f3809b, iH0);
    }

    public final void W(c cVar) {
        V(cVar.e(this));
    }

    public final void W0() {
        int i11 = this.f3828u;
        this.f3827t = i11;
        this.f3816i = Q(this.f3809b, h0(i11));
    }

    public final Object X0(int i11, int i12) {
        int iZ0 = Z0(this.f3809b, h0(i11));
        int iQ = Q(this.f3809b, h0(i11 + 1));
        int i13 = i12 + iZ0;
        if (iZ0 > i13 || i13 >= iQ) {
            return i.f3736a.a();
        }
        return this.f3810c[R(i13)];
    }

    public final Object Y0(c cVar, int i11) {
        return X0(F(cVar), i11);
    }

    public final boolean Z() {
        return this.f3830w;
    }

    public final int a0() {
        return this.f3827t;
    }

    public final int a1(int i11, int i12) {
        int iZ0 = Z0(this.f3809b, h0(i11));
        int i13 = iZ0 + i12;
        if (!(i13 >= iZ0 && i13 < Q(this.f3809b, h0(i11 + 1)))) {
            k.r("Write to an invalid slot index " + i12 + " for group " + i11);
        }
        return i13;
    }

    public final int b0() {
        return this.f3828u;
    }

    public final int b1(int i11) {
        return Q(this.f3809b, h0(i11 + k0(i11)));
    }

    public final int c0() {
        return this.f3829v;
    }

    public final int c1(int i11) {
        return Q(this.f3809b, h0(i11 + 1));
    }

    public final int d0() {
        return Y() - this.f3815h;
    }

    public final int d1(int i11) {
        return Z0(this.f3809b, h0(i11));
    }

    public final int e0() {
        return this.f3810c.length - this.f3819l;
    }

    public final j2 f0() {
        return this.f3808a;
    }

    public final void f1(int i11, Object obj, Object obj2) {
        i1(i11, obj, false, obj2);
    }

    public final Object g0(int i11) {
        int iH0 = h0(i11);
        return l2.J(this.f3809b, iH0) ? this.f3810c[H(this.f3809b, iH0)] : i.f3736a.a();
    }

    public final void g1() {
        if (!(this.f3821n == 0)) {
            k.r("Key must be supplied when inserting");
        }
        i.a aVar = i.f3736a;
        i1(0, aVar.a(), false, aVar.a());
    }

    public final void h1(int i11, Object obj) {
        i1(i11, obj, false, i.f3736a.a());
    }

    public final int i0(int i11) {
        return l2.O(this.f3809b, h0(i11));
    }

    public final Object j0(int i11) {
        int iH0 = h0(i11);
        if (l2.L(this.f3809b, iH0)) {
            return this.f3810c[l2.S(this.f3809b, iH0)];
        }
        return null;
    }

    public final void j1(int i11, Object obj) {
        i1(i11, obj, true, i.f3736a.a());
    }

    public final int k0(int i11) {
        return l2.I(this.f3809b, h0(i11));
    }

    public final void k1(int i11) {
        k.O(i11 > 0);
        int i12 = this.f3829v;
        int iZ0 = Z0(this.f3809b, h0(i12));
        int iQ = Q(this.f3809b, h0(i12 + 1)) - i11;
        k.O(iQ >= iZ0);
        N0(iQ, i11, i12);
        int i13 = this.f3816i;
        if (i13 >= iZ0) {
            this.f3816i = i13 - i11;
        }
    }

    public final boolean l0(int i11) {
        return m0(i11, this.f3827t);
    }

    public final c l1(int i11) {
        if (i11 < 0 || i11 >= d0()) {
            return null;
        }
        return l2.G(this.f3811d, i11, d0());
    }

    public final boolean m0(int i11, int i12) {
        int iC;
        int iY;
        if (i12 == this.f3829v) {
            iY = this.f3828u;
        } else if (i12 <= this.f3823p.h(0) && (iC = this.f3823p.c(i12)) >= 0) {
            iY = (Y() - this.f3815h) - this.f3824q.f(iC);
        } else {
            int iK0 = k0(i12);
            iY = iK0 + i12;
        }
        return i11 > i12 && i11 < iY;
    }

    public final Object m1(Object obj) {
        if (this.f3821n <= 0 || this.f3816i == this.f3818k) {
            return I0(obj);
        }
        androidx.collection.e0 e0Var = this.f3826s;
        DefaultConstructorMarker defaultConstructorMarker = null;
        int i11 = 1;
        int i12 = 0;
        if (e0Var == null) {
            e0Var = new androidx.collection.e0(i12, i11, defaultConstructorMarker);
        }
        this.f3826s = e0Var;
        int i13 = this.f3829v;
        Object objC = e0Var.c(i13);
        if (objC == null) {
            objC = new androidx.collection.l0(i12, i11, defaultConstructorMarker);
            e0Var.t(i13, objC);
        }
        ((androidx.collection.l0) objC).e(obj);
        return i.f3736a.a();
    }

    public final boolean n0(int i11) {
        int i12 = this.f3829v;
        return (i11 > i12 && i11 < this.f3828u) || (i12 == 0 && i11 == 0);
    }

    public final void o1(Object obj) {
        int iH0 = h0(this.f3827t);
        if (!l2.J(this.f3809b, iH0)) {
            k.r("Updating the data of a group that was not created with a data slot");
        }
        this.f3810c[R(H(this.f3809b, iH0))] = obj;
    }

    public final boolean q0() {
        int i11 = this.f3827t;
        return i11 < this.f3828u && l2.N(this.f3809b, h0(i11));
    }

    public final boolean r0(int i11) {
        return l2.N(this.f3809b, h0(i11));
    }

    public final void s0(int i11) {
        int iH0 = h0(i11);
        if (l2.K(this.f3809b, iH0)) {
            return;
        }
        l2.Z(this.f3809b, iH0, true);
        if (l2.D(this.f3809b, iH0)) {
            return;
        }
        p1(E0(i11));
    }

    public final void s1(c cVar, Object obj) {
        u1(cVar.e(this), obj);
    }

    public final void t1(Object obj) {
        u1(this.f3827t, obj);
    }

    public String toString() {
        return "SlotWriter(current = " + this.f3827t + " end=" + this.f3828u + " size = " + d0() + " gap=" + this.f3814g + '-' + (this.f3814g + this.f3815h) + ')';
    }

    public final List v0(j2 j2Var, int i11, boolean z10) {
        boolean z11 = false;
        k.O(this.f3821n > 0 ? true : z11);
        if (i11 != 0 || this.f3827t != 0 || this.f3808a.p() != 0 || l2.I(j2Var.o(), i11) != j2Var.p()) {
            m2 m2VarX = j2Var.x();
            try {
                return f3806y.b(m2VarX, i11, this, true, true, z10);
            } finally {
                m2VarX.L(z11);
            }
        }
        int[] iArr = this.f3809b;
        Object[] objArr = this.f3810c;
        ArrayList arrayList = this.f3811d;
        HashMap map = this.f3812e;
        androidx.collection.e0 e0Var = this.f3813f;
        int[] iArrO = j2Var.o();
        int iP = j2Var.p();
        Object[] objArrQ = j2Var.q();
        int iR = j2Var.r();
        HashMap mapS = j2Var.s();
        androidx.collection.e0 e0VarN = j2Var.n();
        this.f3809b = iArrO;
        this.f3810c = objArrQ;
        this.f3811d = j2Var.m();
        this.f3814g = iP;
        this.f3815h = (iArrO.length / 5) - iP;
        this.f3818k = iR;
        this.f3819l = objArrQ.length - iR;
        this.f3820m = iP;
        this.f3812e = mapS;
        this.f3813f = e0VarN;
        j2Var.z(iArr, 0, objArr, 0, arrayList, map, e0Var);
        return this.f3811d;
    }

    public final void v1() {
        this.f3812e = this.f3808a.s();
        this.f3813f = this.f3808a.n();
    }

    public final void w0(int i11) {
        if (!(this.f3821n == 0)) {
            k.r("Cannot move a group while inserting");
        }
        if (!(i11 >= 0)) {
            k.r("Parameter offset is out of bounds");
        }
        if (i11 == 0) {
            return;
        }
        int i12 = this.f3827t;
        int i13 = this.f3829v;
        int i14 = this.f3828u;
        int I = i12;
        for (int i15 = i11; i15 > 0; i15--) {
            I += l2.I(this.f3809b, h0(I));
            if (!(I <= i14)) {
                k.r("Parameter offset is out of bounds");
            }
        }
        int I2 = l2.I(this.f3809b, h0(I));
        int iQ = Q(this.f3809b, h0(this.f3827t));
        int iQ2 = Q(this.f3809b, h0(I));
        int i16 = I + I2;
        int iQ3 = Q(this.f3809b, h0(i16));
        int i17 = iQ3 - iQ2;
        p0(i17, Math.max(this.f3827t - 1, 0));
        o0(I2);
        int[] iArr = this.f3809b;
        int iH0 = h0(i16) * 5;
        ArraysKt.l(iArr, iArr, h0(i12) * 5, iH0, (I2 * 5) + iH0);
        if (i17 > 0) {
            Object[] objArr = this.f3810c;
            ArraysKt.n(objArr, objArr, iQ, R(iQ2 + i17), R(iQ3 + i17));
        }
        int i18 = iQ2 + i17;
        int i19 = i18 - iQ;
        int i20 = this.f3818k;
        int i21 = this.f3819l;
        int length = this.f3810c.length;
        int i22 = this.f3820m;
        int i23 = i12 + I2;
        int i24 = i12;
        while (i24 < i23) {
            int iH1 = h0(i24);
            int i25 = i20;
            int i26 = i19;
            r1(iArr, iH1, S(Q(iArr, iH1) - i19, i22 < iH1 ? 0 : i25, i21, length));
            i24++;
            i20 = i25;
            i19 = i26;
        }
        u0(i16, i12, I2);
        if (M0(i16, I2)) {
            k.r("Unexpectedly removed anchors");
        }
        X(i13, this.f3828u, i12);
        if (i17 > 0) {
            N0(i18, i17, i16 - 1);
        }
    }

    public final List y0(int i11, j2 j2Var, int i12) {
        k.O(this.f3821n <= 0 && k0(this.f3827t + i11) == 1);
        int i13 = this.f3827t;
        int i14 = this.f3816i;
        int i15 = this.f3817j;
        D(i11);
        g1();
        I();
        m2 m2VarX = j2Var.x();
        try {
            List listC = a.c(f3806y, m2VarX, i12, this, false, true, false, 32, null);
            m2VarX.L(true);
            U();
            T();
            this.f3827t = i13;
            this.f3816i = i14;
            this.f3817j = i15;
            return listC;
        } catch (Throwable th2) {
            m2VarX.L(false);
            throw th2;
        }
    }
}
