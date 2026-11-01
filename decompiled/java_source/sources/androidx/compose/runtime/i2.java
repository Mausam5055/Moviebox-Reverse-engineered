package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class i2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j2 f3742a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f3743b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f3744c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object[] f3745d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f3746e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private HashMap f3747f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f3748g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f3749h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f3750i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f3751j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final m0 f3752k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f3753l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f3754m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f3755n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f3756o;

    public i2(j2 j2Var) {
        this.f3742a = j2Var;
        this.f3743b = j2Var.o();
        int iP = j2Var.p();
        this.f3744c = iP;
        this.f3745d = j2Var.q();
        this.f3746e = j2Var.r();
        this.f3750i = iP;
        this.f3751j = -1;
        this.f3752k = new m0();
    }

    private final Object M(int[] iArr, int i11) {
        return l2.N(iArr, i11) ? this.f3745d[l2.R(iArr, i11)] : i.f3736a.a();
    }

    private final Object O(int[] iArr, int i11) {
        if (l2.L(iArr, i11)) {
            return this.f3745d[l2.S(iArr, i11)];
        }
        return null;
    }

    private final Object b(int[] iArr, int i11) {
        return l2.J(iArr, i11) ? this.f3745d[l2.B(iArr, i11)] : i.f3736a.a();
    }

    public final Object A(int i11) {
        return B(this.f3749h, i11);
    }

    public final Object B(int i11, int i12) {
        int iV = l2.V(this.f3743b, i11);
        int i13 = i11 + 1;
        int i14 = iV + i12;
        return i14 < (i13 < this.f3744c ? l2.F(this.f3743b, i13) : this.f3746e) ? this.f3745d[i14] : i.f3736a.a();
    }

    public final int C(int i11) {
        return l2.O(this.f3743b, i11);
    }

    public final Object D(int i11) {
        return O(this.f3743b, i11);
    }

    public final int E(int i11) {
        return l2.I(this.f3743b, i11);
    }

    public final boolean F(int i11) {
        return l2.K(this.f3743b, i11);
    }

    public final boolean G(int i11) {
        return l2.L(this.f3743b, i11);
    }

    public final boolean H() {
        return t() || this.f3749h == this.f3750i;
    }

    public final boolean I() {
        return l2.N(this.f3743b, this.f3749h);
    }

    public final boolean J(int i11) {
        return l2.N(this.f3743b, i11);
    }

    public final Object K() {
        int i11;
        if (this.f3753l > 0 || (i11 = this.f3754m) >= this.f3755n) {
            this.f3756o = false;
            return i.f3736a.a();
        }
        this.f3756o = true;
        Object[] objArr = this.f3745d;
        this.f3754m = i11 + 1;
        return objArr[i11];
    }

    public final Object L(int i11) {
        if (l2.N(this.f3743b, i11)) {
            return M(this.f3743b, i11);
        }
        return null;
    }

    public final int N(int i11) {
        return l2.Q(this.f3743b, i11);
    }

    public final int P(int i11) {
        return l2.T(this.f3743b, i11);
    }

    public final void Q(int i11) {
        if (!(this.f3753l == 0)) {
            k.r("Cannot reposition while in an empty region");
        }
        this.f3749h = i11;
        int iT = i11 < this.f3744c ? l2.T(this.f3743b, i11) : -1;
        this.f3751j = iT;
        if (iT < 0) {
            this.f3750i = this.f3744c;
        } else {
            this.f3750i = iT + l2.I(this.f3743b, iT);
        }
        this.f3754m = 0;
        this.f3755n = 0;
    }

    public final void R(int i11) {
        int I = l2.I(this.f3743b, i11) + i11;
        int i12 = this.f3749h;
        if (!(i12 >= i11 && i12 <= I)) {
            k.r("Index " + i11 + " is not a parent of " + i12);
        }
        this.f3751j = i11;
        this.f3750i = I;
        this.f3754m = 0;
        this.f3755n = 0;
    }

    public final int S() {
        if (!(this.f3753l == 0)) {
            k.r("Cannot skip while in an empty region");
        }
        int iQ = l2.N(this.f3743b, this.f3749h) ? 1 : l2.Q(this.f3743b, this.f3749h);
        int i11 = this.f3749h;
        this.f3749h = i11 + l2.I(this.f3743b, i11);
        return iQ;
    }

    public final void T() {
        if (!(this.f3753l == 0)) {
            k.r("Cannot skip the enclosing group while in an empty region");
        }
        this.f3749h = this.f3750i;
        this.f3754m = 0;
        this.f3755n = 0;
    }

    public final void U() {
        if (this.f3753l <= 0) {
            int i11 = this.f3751j;
            int i12 = this.f3749h;
            if (!(l2.T(this.f3743b, i12) == i11)) {
                o1.a("Invalid slot table detected");
            }
            HashMap map = this.f3747f;
            if (map != null) {
            }
            m0 m0Var = this.f3752k;
            int i13 = this.f3754m;
            int i14 = this.f3755n;
            if (i13 == 0 && i14 == 0) {
                m0Var.j(-1);
            } else {
                m0Var.j(i13);
            }
            this.f3751j = i12;
            this.f3750i = l2.I(this.f3743b, i12) + i12;
            int i15 = i12 + 1;
            this.f3749h = i15;
            this.f3754m = l2.V(this.f3743b, i12);
            this.f3755n = i12 >= this.f3744c - 1 ? this.f3746e : l2.F(this.f3743b, i15);
        }
    }

    public final void V() {
        if (this.f3753l <= 0) {
            if (!l2.N(this.f3743b, this.f3749h)) {
                o1.a("Expected a node group");
            }
            U();
        }
    }

    public final c a(int i11) {
        ArrayList arrayListM = this.f3742a.m();
        int iU = l2.U(arrayListM, i11, this.f3744c);
        if (iU >= 0) {
            return (c) arrayListM.get(iU);
        }
        c cVar = new c(i11);
        arrayListM.add(-(iU + 1), cVar);
        return cVar;
    }

    public final void c() {
        this.f3753l++;
    }

    public final void d() {
        this.f3748g = true;
        this.f3742a.e(this, this.f3747f);
    }

    public final boolean e(int i11) {
        return l2.D(this.f3743b, i11);
    }

    public final void f() {
        if (!(this.f3753l > 0)) {
            o1.a("Unbalanced begin/end empty");
        }
        this.f3753l--;
    }

    public final void g() {
        if (this.f3753l == 0) {
            if (!(this.f3749h == this.f3750i)) {
                k.r("endGroup() not called at the end of a group");
            }
            int iT = l2.T(this.f3743b, this.f3751j);
            this.f3751j = iT;
            this.f3750i = iT < 0 ? this.f3744c : l2.I(this.f3743b, iT) + iT;
            int i11 = this.f3752k.i();
            if (i11 < 0) {
                this.f3754m = 0;
                this.f3755n = 0;
            } else {
                this.f3754m = i11;
                this.f3755n = iT >= this.f3744c - 1 ? this.f3746e : l2.F(this.f3743b, iT + 1);
            }
        }
    }

    public final List h() {
        ArrayList arrayList = new ArrayList();
        if (this.f3753l > 0) {
            return arrayList;
        }
        int I = this.f3749h;
        int i11 = 0;
        while (I < this.f3750i) {
            arrayList.add(new q0(l2.O(this.f3743b, I), O(this.f3743b, I), I, l2.N(this.f3743b, I) ? 1 : l2.Q(this.f3743b, I), i11));
            I += l2.I(this.f3743b, I);
            i11++;
        }
        return arrayList;
    }

    public final boolean i() {
        return this.f3748g;
    }

    public final int j() {
        return this.f3750i;
    }

    public final int k() {
        return this.f3749h;
    }

    public final Object l() {
        int i11 = this.f3749h;
        if (i11 < this.f3750i) {
            return b(this.f3743b, i11);
        }
        return 0;
    }

    public final int m() {
        return this.f3750i;
    }

    public final int n() {
        int i11 = this.f3749h;
        if (i11 < this.f3750i) {
            return l2.O(this.f3743b, i11);
        }
        return 0;
    }

    public final Object o() {
        int i11 = this.f3749h;
        if (i11 < this.f3750i) {
            return O(this.f3743b, i11);
        }
        return null;
    }

    public final int p() {
        return l2.I(this.f3743b, this.f3749h);
    }

    public final int q() {
        return this.f3754m - l2.V(this.f3743b, this.f3751j);
    }

    public final boolean r() {
        return this.f3756o;
    }

    public final boolean s() {
        int i11 = this.f3749h;
        return i11 < this.f3750i && l2.L(this.f3743b, i11);
    }

    public final boolean t() {
        return this.f3753l > 0;
    }

    public String toString() {
        return "SlotReader(current=" + this.f3749h + ", key=" + n() + ", parent=" + this.f3751j + ", end=" + this.f3750i + ')';
    }

    public final int u() {
        return this.f3751j;
    }

    public final int v() {
        int i11 = this.f3751j;
        if (i11 >= 0) {
            return l2.Q(this.f3743b, i11);
        }
        return 0;
    }

    public final int w() {
        return this.f3755n - this.f3754m;
    }

    public final int x() {
        return this.f3744c;
    }

    public final j2 y() {
        return this.f3742a;
    }

    public final Object z(int i11) {
        return b(this.f3743b, i11);
    }
}
