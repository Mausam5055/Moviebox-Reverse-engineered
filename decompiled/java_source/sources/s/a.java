package s;

import androidx.compose.runtime.a2;
import androidx.compose.runtime.b2;
import androidx.compose.runtime.j2;
import androidx.compose.runtime.l;
import androidx.compose.runtime.m;
import androidx.compose.runtime.m2;
import androidx.compose.runtime.o1;
import androidx.compose.runtime.x0;
import androidx.compose.runtime.y0;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f74767a = new g();

    public final void A() {
        this.f74767a.x(d.a0.f74787c);
    }

    public final void B(int i11) {
        g gVar = this.f74767a;
        d.b0 b0Var = d.b0.f74789c;
        gVar.y(b0Var);
        g.c.c(g.c.a(gVar), d.q.a(0), i11);
        if (gVar.f74826g == gVar.n(b0Var.b()) && gVar.f74827h == gVar.n(b0Var.d())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int iB = b0Var.b();
        int i12 = 0;
        for (int i13 = 0; i13 < iB; i13++) {
            if (((1 << i13) & gVar.f74826g) != 0) {
                if (i12 > 0) {
                    sb2.append(", ");
                }
                sb2.append(b0Var.e(d.q.a(i13)));
                i12++;
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb3 = new StringBuilder();
        int iD = b0Var.d();
        int i14 = 0;
        for (int i15 = 0; i15 < iD; i15++) {
            if (((1 << i15) & gVar.f74827h) != 0) {
                if (i12 > 0) {
                    sb3.append(", ");
                }
                sb3.append(b0Var.f(d.t.a(i15)));
                i14++;
            }
        }
        String string2 = sb3.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + b0Var + ". Not all arguments were provided. Missing " + i12 + " int arguments (" + string + ") and " + i14 + " object arguments (" + string2 + ").");
    }

    public final void C(Object obj, androidx.compose.runtime.c cVar, int i11) {
        g gVar = this.f74767a;
        d.c0 c0Var = d.c0.f74791c;
        gVar.y(c0Var);
        g gVarA = g.c.a(gVar);
        g.c.d(gVarA, d.t.a(0), obj);
        g.c.d(gVarA, d.t.a(1), cVar);
        g.c.c(gVarA, d.q.a(0), i11);
        if (gVar.f74826g == gVar.n(c0Var.b()) && gVar.f74827h == gVar.n(c0Var.d())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int iB = c0Var.b();
        int i12 = 0;
        for (int i13 = 0; i13 < iB; i13++) {
            if (((1 << i13) & gVar.f74826g) != 0) {
                if (i12 > 0) {
                    sb2.append(", ");
                }
                sb2.append(c0Var.e(d.q.a(i13)));
                i12++;
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb3 = new StringBuilder();
        int iD = c0Var.d();
        int i14 = 0;
        for (int i15 = 0; i15 < iD; i15++) {
            if (((1 << i15) & gVar.f74827h) != 0) {
                if (i12 > 0) {
                    sb3.append(", ");
                }
                sb3.append(c0Var.f(d.t.a(i15)));
                i14++;
            }
        }
        String string2 = sb3.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + c0Var + ". Not all arguments were provided. Missing " + i12 + " int arguments (" + string + ") and " + i14 + " object arguments (" + string2 + ").");
    }

    public final void D(Object obj) {
        g gVar = this.f74767a;
        d.d0 d0Var = d.d0.f74793c;
        gVar.y(d0Var);
        g.c.d(g.c.a(gVar), d.t.a(0), obj);
        if (gVar.f74826g == gVar.n(d0Var.b()) && gVar.f74827h == gVar.n(d0Var.d())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int iB = d0Var.b();
        int i11 = 0;
        for (int i12 = 0; i12 < iB; i12++) {
            if (((1 << i12) & gVar.f74826g) != 0) {
                if (i11 > 0) {
                    sb2.append(", ");
                }
                sb2.append(d0Var.e(d.q.a(i12)));
                i11++;
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb3 = new StringBuilder();
        int iD = d0Var.d();
        int i13 = 0;
        for (int i14 = 0; i14 < iD; i14++) {
            if (((1 << i14) & gVar.f74827h) != 0) {
                if (i11 > 0) {
                    sb3.append(", ");
                }
                sb3.append(d0Var.f(d.t.a(i14)));
                i13++;
            }
        }
        String string2 = sb3.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + d0Var + ". Not all arguments were provided. Missing " + i11 + " int arguments (" + string + ") and " + i13 + " object arguments (" + string2 + ").");
    }

    public final void E(Object obj, Function2 function2) {
        g gVar = this.f74767a;
        d.e0 e0Var = d.e0.f74795c;
        gVar.y(e0Var);
        g gVarA = g.c.a(gVar);
        g.c.d(gVarA, d.t.a(0), obj);
        int iA = d.t.a(1);
        Intrinsics.f(function2, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Unit>");
        g.c.d(gVarA, iA, (Function2) TypeIntrinsics.e(function2, 2));
        if (gVar.f74826g == gVar.n(e0Var.b()) && gVar.f74827h == gVar.n(e0Var.d())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int iB = e0Var.b();
        int i11 = 0;
        for (int i12 = 0; i12 < iB; i12++) {
            if (((1 << i12) & gVar.f74826g) != 0) {
                if (i11 > 0) {
                    sb2.append(", ");
                }
                sb2.append(e0Var.e(d.q.a(i12)));
                i11++;
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb3 = new StringBuilder();
        int iD = e0Var.d();
        int i13 = 0;
        for (int i14 = 0; i14 < iD; i14++) {
            if (((1 << i14) & gVar.f74827h) != 0) {
                if (i11 > 0) {
                    sb3.append(", ");
                }
                sb3.append(e0Var.f(d.t.a(i14)));
                i13++;
            }
        }
        String string2 = sb3.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + e0Var + ". Not all arguments were provided. Missing " + i11 + " int arguments (" + string + ") and " + i13 + " object arguments (" + string2 + ").");
    }

    public final void F(Object obj, int i11) {
        g gVar = this.f74767a;
        d.f0 f0Var = d.f0.f74797c;
        gVar.y(f0Var);
        g gVarA = g.c.a(gVar);
        g.c.d(gVarA, d.t.a(0), obj);
        g.c.c(gVarA, d.q.a(0), i11);
        if (gVar.f74826g == gVar.n(f0Var.b()) && gVar.f74827h == gVar.n(f0Var.d())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int iB = f0Var.b();
        int i12 = 0;
        for (int i13 = 0; i13 < iB; i13++) {
            if (((1 << i13) & gVar.f74826g) != 0) {
                if (i12 > 0) {
                    sb2.append(", ");
                }
                sb2.append(f0Var.e(d.q.a(i13)));
                i12++;
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb3 = new StringBuilder();
        int iD = f0Var.d();
        int i14 = 0;
        for (int i15 = 0; i15 < iD; i15++) {
            if (((1 << i15) & gVar.f74827h) != 0) {
                if (i12 > 0) {
                    sb3.append(", ");
                }
                sb3.append(f0Var.f(d.t.a(i15)));
                i14++;
            }
        }
        String string2 = sb3.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + f0Var + ". Not all arguments were provided. Missing " + i12 + " int arguments (" + string + ") and " + i14 + " object arguments (" + string2 + ").");
    }

    public final void G(int i11) {
        g gVar = this.f74767a;
        d.g0 g0Var = d.g0.f74799c;
        gVar.y(g0Var);
        g.c.c(g.c.a(gVar), d.q.a(0), i11);
        if (gVar.f74826g == gVar.n(g0Var.b()) && gVar.f74827h == gVar.n(g0Var.d())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int iB = g0Var.b();
        int i12 = 0;
        for (int i13 = 0; i13 < iB; i13++) {
            if (((1 << i13) & gVar.f74826g) != 0) {
                if (i12 > 0) {
                    sb2.append(", ");
                }
                sb2.append(g0Var.e(d.q.a(i13)));
                i12++;
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb3 = new StringBuilder();
        int iD = g0Var.d();
        int i14 = 0;
        for (int i15 = 0; i15 < iD; i15++) {
            if (((1 << i15) & gVar.f74827h) != 0) {
                if (i12 > 0) {
                    sb3.append(", ");
                }
                sb3.append(g0Var.f(d.t.a(i15)));
                i14++;
            }
        }
        String string2 = sb3.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + g0Var + ". Not all arguments were provided. Missing " + i12 + " int arguments (" + string + ") and " + i14 + " object arguments (" + string2 + ").");
    }

    public final void H(Object obj) {
        if (obj instanceof androidx.compose.runtime.h) {
            this.f74767a.x(d.h0.f74801c);
        }
    }

    public final void a() {
        this.f74767a.m();
    }

    public final void b(androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
        this.f74767a.r(fVar, m2Var, a2Var);
    }

    public final boolean c() {
        return this.f74767a.t();
    }

    public final boolean d() {
        return this.f74767a.u();
    }

    public final void e(int i11) {
        g gVar = this.f74767a;
        d.a aVar = d.a.f74786c;
        gVar.y(aVar);
        g.c.c(g.c.a(gVar), d.q.a(0), i11);
        if (gVar.f74826g == gVar.n(aVar.b()) && gVar.f74827h == gVar.n(aVar.d())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int iB = aVar.b();
        int i12 = 0;
        for (int i13 = 0; i13 < iB; i13++) {
            if (((1 << i13) & gVar.f74826g) != 0) {
                if (i12 > 0) {
                    sb2.append(", ");
                }
                sb2.append(aVar.e(d.q.a(i13)));
                i12++;
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb3 = new StringBuilder();
        int iD = aVar.d();
        int i14 = 0;
        for (int i15 = 0; i15 < iD; i15++) {
            if (((1 << i15) & gVar.f74827h) != 0) {
                if (i12 > 0) {
                    sb3.append(", ");
                }
                sb3.append(aVar.f(d.t.a(i15)));
                i14++;
            }
        }
        String string2 = sb3.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + aVar + ". Not all arguments were provided. Missing " + i12 + " int arguments (" + string + ") and " + i14 + " object arguments (" + string2 + ").");
    }

    public final void f(androidx.compose.runtime.c cVar, Object obj) {
        g gVar = this.f74767a;
        d.b bVar = d.b.f74788c;
        gVar.y(bVar);
        g gVarA = g.c.a(gVar);
        g.c.d(gVarA, d.t.a(0), cVar);
        g.c.d(gVarA, d.t.a(1), obj);
        if (gVar.f74826g == gVar.n(bVar.b()) && gVar.f74827h == gVar.n(bVar.d())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int iB = bVar.b();
        int i11 = 0;
        for (int i12 = 0; i12 < iB; i12++) {
            if (((1 << i12) & gVar.f74826g) != 0) {
                if (i11 > 0) {
                    sb2.append(", ");
                }
                sb2.append(bVar.e(d.q.a(i12)));
                i11++;
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb3 = new StringBuilder();
        int iD = bVar.d();
        int i13 = 0;
        for (int i14 = 0; i14 < iD; i14++) {
            if (((1 << i14) & gVar.f74827h) != 0) {
                if (i11 > 0) {
                    sb3.append(", ");
                }
                sb3.append(bVar.f(d.t.a(i14)));
                i13++;
            }
        }
        String string2 = sb3.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + bVar + ". Not all arguments were provided. Missing " + i11 + " int arguments (" + string + ") and " + i13 + " object arguments (" + string2 + ").");
    }

    public final void g(List list, androidx.compose.runtime.internal.c cVar) {
        if (list.isEmpty()) {
            return;
        }
        g gVar = this.f74767a;
        d.C0913d c0913d = d.C0913d.f74792c;
        gVar.y(c0913d);
        g gVarA = g.c.a(gVar);
        g.c.d(gVarA, d.t.a(1), list);
        g.c.d(gVarA, d.t.a(0), cVar);
        if (gVar.f74826g == gVar.n(c0913d.b()) && gVar.f74827h == gVar.n(c0913d.d())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int iB = c0913d.b();
        int i11 = 0;
        for (int i12 = 0; i12 < iB; i12++) {
            if (((1 << i12) & gVar.f74826g) != 0) {
                if (i11 > 0) {
                    sb2.append(", ");
                }
                sb2.append(c0913d.e(d.q.a(i12)));
                i11++;
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb3 = new StringBuilder();
        int iD = c0913d.d();
        int i13 = 0;
        for (int i14 = 0; i14 < iD; i14++) {
            if (((1 << i14) & gVar.f74827h) != 0) {
                if (i11 > 0) {
                    sb3.append(", ");
                }
                sb3.append(c0913d.f(d.t.a(i14)));
                i13++;
            }
        }
        String string2 = sb3.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + c0913d + ". Not all arguments were provided. Missing " + i11 + " int arguments (" + string + ") and " + i13 + " object arguments (" + string2 + ").");
    }

    public final void h(x0 x0Var, m mVar, y0 y0Var, y0 y0Var2) {
        g gVar = this.f74767a;
        d.e eVar = d.e.f74794c;
        gVar.y(eVar);
        g gVarA = g.c.a(gVar);
        g.c.d(gVarA, d.t.a(0), x0Var);
        g.c.d(gVarA, d.t.a(1), mVar);
        g.c.d(gVarA, d.t.a(3), y0Var2);
        g.c.d(gVarA, d.t.a(2), y0Var);
        if (gVar.f74826g == gVar.n(eVar.b()) && gVar.f74827h == gVar.n(eVar.d())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int iB = eVar.b();
        int i11 = 0;
        for (int i12 = 0; i12 < iB; i12++) {
            if (((1 << i12) & gVar.f74826g) != 0) {
                if (i11 > 0) {
                    sb2.append(", ");
                }
                sb2.append(eVar.e(d.q.a(i12)));
                i11++;
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb3 = new StringBuilder();
        int iD = eVar.d();
        int i13 = 0;
        for (int i14 = 0; i14 < iD; i14++) {
            if (((1 << i14) & gVar.f74827h) != 0) {
                if (i11 > 0) {
                    sb3.append(", ");
                }
                sb3.append(eVar.f(d.t.a(i14)));
                i13++;
            }
        }
        String string2 = sb3.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + eVar + ". Not all arguments were provided. Missing " + i11 + " int arguments (" + string + ") and " + i13 + " object arguments (" + string2 + ").");
    }

    public final void i() {
        this.f74767a.x(d.f.f74796c);
    }

    public final void j(androidx.compose.runtime.internal.c cVar, androidx.compose.runtime.c cVar2) {
        g gVar = this.f74767a;
        d.g gVar2 = d.g.f74798c;
        gVar.y(gVar2);
        g gVarA = g.c.a(gVar);
        g.c.d(gVarA, d.t.a(0), cVar);
        g.c.d(gVarA, d.t.a(1), cVar2);
        if (gVar.f74826g == gVar.n(gVar2.b()) && gVar.f74827h == gVar.n(gVar2.d())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int iB = gVar2.b();
        int i11 = 0;
        for (int i12 = 0; i12 < iB; i12++) {
            if (((1 << i12) & gVar.f74826g) != 0) {
                if (i11 > 0) {
                    sb2.append(", ");
                }
                sb2.append(gVar2.e(d.q.a(i12)));
                i11++;
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb3 = new StringBuilder();
        int iD = gVar2.d();
        int i13 = 0;
        for (int i14 = 0; i14 < iD; i14++) {
            if (((1 << i14) & gVar.f74827h) != 0) {
                if (i11 > 0) {
                    sb3.append(", ");
                }
                sb3.append(gVar2.f(d.t.a(i14)));
                i13++;
            }
        }
        String string2 = sb3.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + gVar2 + ". Not all arguments were provided. Missing " + i11 + " int arguments (" + string + ") and " + i13 + " object arguments (" + string2 + ").");
    }

    public final void k(Object[] objArr) {
        if (objArr.length == 0) {
            return;
        }
        g gVar = this.f74767a;
        d.h hVar = d.h.f74800c;
        gVar.y(hVar);
        g.c.d(g.c.a(gVar), d.t.a(0), objArr);
        if (gVar.f74826g == gVar.n(hVar.b()) && gVar.f74827h == gVar.n(hVar.d())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int iB = hVar.b();
        int i11 = 0;
        for (int i12 = 0; i12 < iB; i12++) {
            if (((1 << i12) & gVar.f74826g) != 0) {
                if (i11 > 0) {
                    sb2.append(", ");
                }
                sb2.append(hVar.e(d.q.a(i12)));
                i11++;
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb3 = new StringBuilder();
        int iD = hVar.d();
        int i13 = 0;
        for (int i14 = 0; i14 < iD; i14++) {
            if (((1 << i14) & gVar.f74827h) != 0) {
                if (i11 > 0) {
                    sb3.append(", ");
                }
                sb3.append(hVar.f(d.t.a(i14)));
                i13++;
            }
        }
        String string2 = sb3.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + hVar + ". Not all arguments were provided. Missing " + i11 + " int arguments (" + string + ") and " + i13 + " object arguments (" + string2 + ").");
    }

    public final void l(Function1 function1, l lVar) {
        g gVar = this.f74767a;
        d.i iVar = d.i.f74802c;
        gVar.y(iVar);
        g gVarA = g.c.a(gVar);
        g.c.d(gVarA, d.t.a(0), function1);
        g.c.d(gVarA, d.t.a(1), lVar);
        if (gVar.f74826g == gVar.n(iVar.b()) && gVar.f74827h == gVar.n(iVar.d())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int iB = iVar.b();
        int i11 = 0;
        for (int i12 = 0; i12 < iB; i12++) {
            if (((1 << i12) & gVar.f74826g) != 0) {
                if (i11 > 0) {
                    sb2.append(", ");
                }
                sb2.append(iVar.e(d.q.a(i12)));
                i11++;
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb3 = new StringBuilder();
        int iD = iVar.d();
        int i13 = 0;
        for (int i14 = 0; i14 < iD; i14++) {
            if (((1 << i14) & gVar.f74827h) != 0) {
                if (i11 > 0) {
                    sb3.append(", ");
                }
                sb3.append(iVar.f(d.t.a(i14)));
                i13++;
            }
        }
        String string2 = sb3.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + iVar + ". Not all arguments were provided. Missing " + i11 + " int arguments (" + string + ") and " + i13 + " object arguments (" + string2 + ").");
    }

    public final void m() {
        this.f74767a.x(d.j.f74803c);
    }

    public final void n() {
        this.f74767a.x(d.k.f74804c);
    }

    public final void o(androidx.compose.runtime.c cVar) {
        g gVar = this.f74767a;
        d.l lVar = d.l.f74805c;
        gVar.y(lVar);
        g.c.d(g.c.a(gVar), d.t.a(0), cVar);
        if (gVar.f74826g == gVar.n(lVar.b()) && gVar.f74827h == gVar.n(lVar.d())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int iB = lVar.b();
        int i11 = 0;
        for (int i12 = 0; i12 < iB; i12++) {
            if (((1 << i12) & gVar.f74826g) != 0) {
                if (i11 > 0) {
                    sb2.append(", ");
                }
                sb2.append(lVar.e(d.q.a(i12)));
                i11++;
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb3 = new StringBuilder();
        int iD = lVar.d();
        int i13 = 0;
        for (int i14 = 0; i14 < iD; i14++) {
            if (((1 << i14) & gVar.f74827h) != 0) {
                if (i11 > 0) {
                    sb3.append(", ");
                }
                sb3.append(lVar.f(d.t.a(i14)));
                i13++;
            }
        }
        String string2 = sb3.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + lVar + ". Not all arguments were provided. Missing " + i11 + " int arguments (" + string + ") and " + i13 + " object arguments (" + string2 + ").");
    }

    public final void p() {
        this.f74767a.x(d.m.f74806c);
    }

    public final void q(a aVar, androidx.compose.runtime.internal.c cVar) {
        if (aVar.d()) {
            g gVar = this.f74767a;
            d.c cVar2 = d.c.f74790c;
            gVar.y(cVar2);
            g gVarA = g.c.a(gVar);
            g.c.d(gVarA, d.t.a(0), aVar);
            g.c.d(gVarA, d.t.a(1), cVar);
            if (gVar.f74826g == gVar.n(cVar2.b()) && gVar.f74827h == gVar.n(cVar2.d())) {
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            int iB = cVar2.b();
            int i11 = 0;
            for (int i12 = 0; i12 < iB; i12++) {
                if (((1 << i12) & gVar.f74826g) != 0) {
                    if (i11 > 0) {
                        sb2.append(", ");
                    }
                    sb2.append(cVar2.e(d.q.a(i12)));
                    i11++;
                }
            }
            String string = sb2.toString();
            Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
            StringBuilder sb3 = new StringBuilder();
            int iD = cVar2.d();
            int i13 = 0;
            for (int i14 = 0; i14 < iD; i14++) {
                if (((1 << i14) & gVar.f74827h) != 0) {
                    if (i11 > 0) {
                        sb3.append(", ");
                    }
                    sb3.append(cVar2.f(d.t.a(i14)));
                    i13++;
                }
            }
            String string2 = sb3.toString();
            Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
            o1.b("Error while pushing " + cVar2 + ". Not all arguments were provided. Missing " + i11 + " int arguments (" + string + ") and " + i13 + " object arguments (" + string2 + ").");
        }
    }

    public final void r(androidx.compose.runtime.c cVar, j2 j2Var) {
        g gVar = this.f74767a;
        d.o oVar = d.o.f74808c;
        gVar.y(oVar);
        g gVarA = g.c.a(gVar);
        g.c.d(gVarA, d.t.a(0), cVar);
        g.c.d(gVarA, d.t.a(1), j2Var);
        if (gVar.f74826g == gVar.n(oVar.b()) && gVar.f74827h == gVar.n(oVar.d())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int iB = oVar.b();
        int i11 = 0;
        for (int i12 = 0; i12 < iB; i12++) {
            if (((1 << i12) & gVar.f74826g) != 0) {
                if (i11 > 0) {
                    sb2.append(", ");
                }
                sb2.append(oVar.e(d.q.a(i12)));
                i11++;
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb3 = new StringBuilder();
        int iD = oVar.d();
        int i13 = 0;
        for (int i14 = 0; i14 < iD; i14++) {
            if (((1 << i14) & gVar.f74827h) != 0) {
                if (i11 > 0) {
                    sb3.append(", ");
                }
                sb3.append(oVar.f(d.t.a(i14)));
                i13++;
            }
        }
        String string2 = sb3.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + oVar + ". Not all arguments were provided. Missing " + i11 + " int arguments (" + string + ") and " + i13 + " object arguments (" + string2 + ").");
    }

    public final void s(androidx.compose.runtime.c cVar, j2 j2Var, c cVar2) {
        g gVar = this.f74767a;
        d.p pVar = d.p.f74809c;
        gVar.y(pVar);
        g gVarA = g.c.a(gVar);
        g.c.d(gVarA, d.t.a(0), cVar);
        g.c.d(gVarA, d.t.a(1), j2Var);
        g.c.d(gVarA, d.t.a(2), cVar2);
        if (gVar.f74826g == gVar.n(pVar.b()) && gVar.f74827h == gVar.n(pVar.d())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int iB = pVar.b();
        int i11 = 0;
        for (int i12 = 0; i12 < iB; i12++) {
            if (((1 << i12) & gVar.f74826g) != 0) {
                if (i11 > 0) {
                    sb2.append(", ");
                }
                sb2.append(pVar.e(d.q.a(i12)));
                i11++;
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb3 = new StringBuilder();
        int iD = pVar.d();
        int i13 = 0;
        for (int i14 = 0; i14 < iD; i14++) {
            if (((1 << i14) & gVar.f74827h) != 0) {
                if (i11 > 0) {
                    sb3.append(", ");
                }
                sb3.append(pVar.f(d.t.a(i14)));
                i13++;
            }
        }
        String string2 = sb3.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + pVar + ". Not all arguments were provided. Missing " + i11 + " int arguments (" + string + ") and " + i13 + " object arguments (" + string2 + ").");
    }

    public final void t(int i11) {
        g gVar = this.f74767a;
        d.r rVar = d.r.f74810c;
        gVar.y(rVar);
        g.c.c(g.c.a(gVar), d.q.a(0), i11);
        if (gVar.f74826g == gVar.n(rVar.b()) && gVar.f74827h == gVar.n(rVar.d())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int iB = rVar.b();
        int i12 = 0;
        for (int i13 = 0; i13 < iB; i13++) {
            if (((1 << i13) & gVar.f74826g) != 0) {
                if (i12 > 0) {
                    sb2.append(", ");
                }
                sb2.append(rVar.e(d.q.a(i13)));
                i12++;
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb3 = new StringBuilder();
        int iD = rVar.d();
        int i14 = 0;
        for (int i15 = 0; i15 < iD; i15++) {
            if (((1 << i15) & gVar.f74827h) != 0) {
                if (i12 > 0) {
                    sb3.append(", ");
                }
                sb3.append(rVar.f(d.t.a(i15)));
                i14++;
            }
        }
        String string2 = sb3.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + rVar + ". Not all arguments were provided. Missing " + i12 + " int arguments (" + string + ") and " + i14 + " object arguments (" + string2 + ").");
    }

    public final void u(int i11, int i12, int i13) {
        g gVar = this.f74767a;
        d.s sVar = d.s.f74811c;
        gVar.y(sVar);
        g gVarA = g.c.a(gVar);
        g.c.c(gVarA, d.q.a(1), i11);
        g.c.c(gVarA, d.q.a(0), i12);
        g.c.c(gVarA, d.q.a(2), i13);
        if (gVar.f74826g == gVar.n(sVar.b()) && gVar.f74827h == gVar.n(sVar.d())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int iB = sVar.b();
        int i14 = 0;
        for (int i15 = 0; i15 < iB; i15++) {
            if (((1 << i15) & gVar.f74826g) != 0) {
                if (i14 > 0) {
                    sb2.append(", ");
                }
                sb2.append(sVar.e(d.q.a(i15)));
                i14++;
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb3 = new StringBuilder();
        int iD = sVar.d();
        int i16 = 0;
        for (int i17 = 0; i17 < iD; i17++) {
            if (((1 << i17) & gVar.f74827h) != 0) {
                if (i14 > 0) {
                    sb3.append(", ");
                }
                sb3.append(sVar.f(d.t.a(i17)));
                i16++;
            }
        }
        String string2 = sb3.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + sVar + ". Not all arguments were provided. Missing " + i14 + " int arguments (" + string + ") and " + i16 + " object arguments (" + string2 + ").");
    }

    public final void v(b2 b2Var) {
        g gVar = this.f74767a;
        d.v vVar = d.v.f74813c;
        gVar.y(vVar);
        g.c.d(g.c.a(gVar), d.t.a(0), b2Var);
        if (gVar.f74826g == gVar.n(vVar.b()) && gVar.f74827h == gVar.n(vVar.d())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int iB = vVar.b();
        int i11 = 0;
        for (int i12 = 0; i12 < iB; i12++) {
            if (((1 << i12) & gVar.f74826g) != 0) {
                if (i11 > 0) {
                    sb2.append(", ");
                }
                sb2.append(vVar.e(d.q.a(i12)));
                i11++;
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb3 = new StringBuilder();
        int iD = vVar.d();
        int i13 = 0;
        for (int i14 = 0; i14 < iD; i14++) {
            if (((1 << i14) & gVar.f74827h) != 0) {
                if (i11 > 0) {
                    sb3.append(", ");
                }
                sb3.append(vVar.f(d.t.a(i14)));
                i13++;
            }
        }
        String string2 = sb3.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + vVar + ". Not all arguments were provided. Missing " + i11 + " int arguments (" + string + ") and " + i13 + " object arguments (" + string2 + ").");
    }

    public final void w() {
        this.f74767a.x(d.w.f74814c);
    }

    public final void x(int i11, int i12) {
        g gVar = this.f74767a;
        d.x xVar = d.x.f74815c;
        gVar.y(xVar);
        g gVarA = g.c.a(gVar);
        g.c.c(gVarA, d.q.a(0), i11);
        g.c.c(gVarA, d.q.a(1), i12);
        if (gVar.f74826g == gVar.n(xVar.b()) && gVar.f74827h == gVar.n(xVar.d())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int iB = xVar.b();
        int i13 = 0;
        for (int i14 = 0; i14 < iB; i14++) {
            if (((1 << i14) & gVar.f74826g) != 0) {
                if (i13 > 0) {
                    sb2.append(", ");
                }
                sb2.append(xVar.e(d.q.a(i14)));
                i13++;
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb3 = new StringBuilder();
        int iD = xVar.d();
        int i15 = 0;
        for (int i16 = 0; i16 < iD; i16++) {
            if (((1 << i16) & gVar.f74827h) != 0) {
                if (i13 > 0) {
                    sb3.append(", ");
                }
                sb3.append(xVar.f(d.t.a(i16)));
                i15++;
            }
        }
        String string2 = sb3.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + xVar + ". Not all arguments were provided. Missing " + i13 + " int arguments (" + string + ") and " + i15 + " object arguments (" + string2 + ").");
    }

    public final void y() {
        this.f74767a.x(d.y.f74816c);
    }

    public final void z(Function0 function0) {
        g gVar = this.f74767a;
        d.z zVar = d.z.f74817c;
        gVar.y(zVar);
        g.c.d(g.c.a(gVar), d.t.a(0), function0);
        if (gVar.f74826g == gVar.n(zVar.b()) && gVar.f74827h == gVar.n(zVar.d())) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int iB = zVar.b();
        int i11 = 0;
        for (int i12 = 0; i12 < iB; i12++) {
            if (((1 << i12) & gVar.f74826g) != 0) {
                if (i11 > 0) {
                    sb2.append(", ");
                }
                sb2.append(zVar.e(d.q.a(i12)));
                i11++;
            }
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb3 = new StringBuilder();
        int iD = zVar.d();
        int i13 = 0;
        for (int i14 = 0; i14 < iD; i14++) {
            if (((1 << i14) & gVar.f74827h) != 0) {
                if (i11 > 0) {
                    sb3.append(", ");
                }
                sb3.append(zVar.f(d.t.a(i14)));
                i13++;
            }
        }
        String string2 = sb3.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + zVar + ". Not all arguments were provided. Missing " + i11 + " int arguments (" + string + ") and " + i13 + " object arguments (" + string2 + ").");
    }
}
