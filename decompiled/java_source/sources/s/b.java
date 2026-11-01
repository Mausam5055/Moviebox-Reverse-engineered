package s;

import androidx.compose.runtime.ComposerImpl;
import androidx.compose.runtime.b2;
import androidx.compose.runtime.i2;
import androidx.compose.runtime.j2;
import androidx.compose.runtime.k;
import androidx.compose.runtime.l;
import androidx.compose.runtime.m;
import androidx.compose.runtime.m0;
import androidx.compose.runtime.x0;
import androidx.compose.runtime.y0;
import androidx.compose.runtime.z2;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a f74768m = new a(null);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f74769n = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ComposerImpl f74770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private s.a f74771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f74772c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f74775f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f74776g;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f74781l;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final m0 f74773d = new m0();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f74774e = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private z2 f74777h = new z2();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f74778i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f74779j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f74780k = -1;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public b(ComposerImpl composerImpl, s.a aVar) {
        this.f74770a = composerImpl;
        this.f74771b = aVar;
    }

    private final void A() {
        B();
    }

    private final void B() {
        int i11 = this.f74776g;
        if (i11 > 0) {
            this.f74771b.G(i11);
            this.f74776g = 0;
        }
        if (this.f74777h.d()) {
            this.f74771b.k(this.f74777h.i());
            this.f74777h.a();
        }
    }

    private final void C() {
        I(this, false, 1, null);
        K();
    }

    private final void D(boolean z10) {
        H(z10);
    }

    static /* synthetic */ void E(b bVar, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        bVar.D(z10);
    }

    private final void F(int i11, int i12, int i13) {
        A();
        this.f74771b.u(i11, i12, i13);
    }

    private final void G() {
        int i11 = this.f74781l;
        if (i11 > 0) {
            int i12 = this.f74778i;
            if (i12 >= 0) {
                J(i12, i11);
                this.f74778i = -1;
            } else {
                F(this.f74780k, this.f74779j, i11);
                this.f74779j = -1;
                this.f74780k = -1;
            }
            this.f74781l = 0;
        }
    }

    private final void H(boolean z10) {
        int iU = z10 ? q().u() : q().k();
        int i11 = iU - this.f74775f;
        if (!(i11 >= 0)) {
            k.r("Tried to seek backward");
        }
        if (i11 > 0) {
            this.f74771b.e(i11);
            this.f74775f = iU;
        }
    }

    static /* synthetic */ void I(b bVar, boolean z10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            z10 = false;
        }
        bVar.H(z10);
    }

    private final void J(int i11, int i12) {
        A();
        this.f74771b.x(i11, i12);
    }

    private final void k(androidx.compose.runtime.c cVar) {
        E(this, false, 1, null);
        this.f74771b.o(cVar);
        this.f74772c = true;
    }

    private final void l() {
        if (this.f74772c || !this.f74774e) {
            return;
        }
        E(this, false, 1, null);
        this.f74771b.p();
        this.f74772c = true;
    }

    private final i2 q() {
        return this.f74770a.E0();
    }

    public final void K() {
        i2 i2VarQ;
        int iU;
        if (q().x() <= 0 || this.f74773d.h(-2) == (iU = (i2VarQ = q()).u())) {
            return;
        }
        l();
        if (iU > 0) {
            androidx.compose.runtime.c cVarA = i2VarQ.a(iU);
            this.f74773d.j(iU);
            k(cVarA);
        }
    }

    public final void L() {
        B();
        if (this.f74772c) {
            U();
            j();
        }
    }

    public final void M(b2 b2Var) {
        this.f74771b.v(b2Var);
    }

    public final void N() {
        C();
        this.f74771b.w();
        this.f74775f += q().p();
    }

    public final void O(int i11, int i12) {
        if (i12 > 0) {
            if (!(i11 >= 0)) {
                k.r("Invalid remove index " + i11);
            }
            if (this.f74778i == i11) {
                this.f74781l += i12;
                return;
            }
            G();
            this.f74778i = i11;
            this.f74781l = i12;
        }
    }

    public final void P() {
        this.f74771b.y();
    }

    public final void Q() {
        this.f74772c = false;
        this.f74773d.a();
        this.f74775f = 0;
    }

    public final void R(s.a aVar) {
        this.f74771b = aVar;
    }

    public final void S(boolean z10) {
        this.f74774e = z10;
    }

    public final void T(Function0 function0) {
        this.f74771b.z(function0);
    }

    public final void U() {
        this.f74771b.A();
    }

    public final void V(int i11) {
        if (i11 > 0) {
            C();
            this.f74771b.B(i11);
        }
    }

    public final void W(Object obj, androidx.compose.runtime.c cVar, int i11) {
        this.f74771b.C(obj, cVar, i11);
    }

    public final void X(Object obj) {
        E(this, false, 1, null);
        this.f74771b.D(obj);
    }

    public final void Y(Object obj, Function2 function2) {
        A();
        this.f74771b.E(obj, function2);
    }

    public final void Z(Object obj, int i11) {
        D(true);
        this.f74771b.F(obj, i11);
    }

    public final void a(androidx.compose.runtime.c cVar, Object obj) {
        this.f74771b.f(cVar, obj);
    }

    public final void a0(Object obj) {
        A();
        this.f74771b.H(obj);
    }

    public final void b(List list, androidx.compose.runtime.internal.c cVar) {
        this.f74771b.g(list, cVar);
    }

    public final void c(x0 x0Var, m mVar, y0 y0Var, y0 y0Var2) {
        this.f74771b.h(x0Var, mVar, y0Var, y0Var2);
    }

    public final void d() {
        E(this, false, 1, null);
        this.f74771b.i();
    }

    public final void e(androidx.compose.runtime.internal.c cVar, androidx.compose.runtime.c cVar2) {
        B();
        this.f74771b.j(cVar, cVar2);
    }

    public final void f(Function1 function1, l lVar) {
        this.f74771b.l(function1, lVar);
    }

    public final void g() {
        int iU = q().u();
        if (!(this.f74773d.h(-1) <= iU)) {
            k.r("Missed recording an endGroup");
        }
        if (this.f74773d.h(-1) == iU) {
            E(this, false, 1, null);
            this.f74773d.i();
            this.f74771b.m();
        }
    }

    public final void h() {
        this.f74771b.n();
        this.f74775f = 0;
    }

    public final void i() {
        G();
    }

    public final void j() {
        if (this.f74772c) {
            E(this, false, 1, null);
            E(this, false, 1, null);
            this.f74771b.m();
            this.f74772c = false;
        }
    }

    public final void m() {
        B();
        if (this.f74773d.d()) {
            return;
        }
        k.r("Missed recording an endGroup()");
    }

    public final s.a n() {
        return this.f74771b;
    }

    public final boolean o() {
        return this.f74774e;
    }

    public final boolean p() {
        return q().u() - this.f74775f < 0;
    }

    public final void r(s.a aVar, androidx.compose.runtime.internal.c cVar) {
        this.f74771b.q(aVar, cVar);
    }

    public final void s(androidx.compose.runtime.c cVar, j2 j2Var) {
        B();
        C();
        G();
        this.f74771b.r(cVar, j2Var);
    }

    public final void t(androidx.compose.runtime.c cVar, j2 j2Var, c cVar2) {
        B();
        C();
        G();
        this.f74771b.s(cVar, j2Var, cVar2);
    }

    public final void u(int i11) {
        C();
        this.f74771b.t(i11);
    }

    public final void v(Object obj) {
        G();
        this.f74777h.h(obj);
    }

    public final void w(int i11, int i12, int i13) {
        if (i13 > 0) {
            int i14 = this.f74781l;
            if (i14 > 0 && this.f74779j == i11 - i14 && this.f74780k == i12 - i14) {
                this.f74781l = i14 + i13;
                return;
            }
            G();
            this.f74779j = i11;
            this.f74780k = i12;
            this.f74781l = i13;
        }
    }

    public final void x(int i11) {
        this.f74775f += i11 - q().k();
    }

    public final void y(int i11) {
        this.f74775f = i11;
    }

    public final void z() {
        G();
        if (this.f74777h.d()) {
            this.f74777h.g();
        } else {
            this.f74776g++;
        }
    }
}
