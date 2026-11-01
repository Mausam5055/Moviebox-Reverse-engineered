package s;

import androidx.compose.runtime.a2;
import androidx.compose.runtime.k;
import androidx.compose.runtime.m2;
import androidx.compose.runtime.o1;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g f74782a = new g();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f74783b = new g();

    public final void a() {
        this.f74783b.m();
        this.f74782a.m();
    }

    public final void b(Function0 function0, int i11, androidx.compose.runtime.c cVar) {
        g gVar = this.f74782a;
        d.n nVar = d.n.f74807c;
        gVar.y(nVar);
        g gVarA = g.c.a(gVar);
        g.c.d(gVarA, d.t.a(0), function0);
        g.c.c(gVarA, d.q.a(0), i11);
        int i12 = 1;
        g.c.d(gVarA, d.t.a(1), cVar);
        if (!(gVar.f74826g == gVar.n(nVar.b()) && gVar.f74827h == gVar.n(nVar.d()))) {
            StringBuilder sb2 = new StringBuilder();
            int iB = nVar.b();
            int i13 = 0;
            int i14 = 0;
            while (i14 < iB) {
                if (((i12 << i14) & gVar.f74826g) != 0) {
                    if (i13 > 0) {
                        sb2.append(", ");
                    }
                    sb2.append(nVar.e(d.q.a(i14)));
                    i13++;
                }
                i14++;
                i12 = 1;
            }
            String string = sb2.toString();
            Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
            StringBuilder sb3 = new StringBuilder();
            int iD = nVar.d();
            int i15 = 0;
            int i16 = 0;
            while (i16 < iD) {
                if (((1 << i16) & gVar.f74827h) != 0) {
                    if (i13 > 0) {
                        sb3.append(", ");
                    }
                    sb3.append(nVar.f(d.t.a(i16)));
                    i15++;
                }
                i16++;
                gVar = gVar;
            }
            String string2 = sb3.toString();
            Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
            o1.b("Error while pushing " + nVar + ". Not all arguments were provided. Missing " + i13 + " int arguments (" + string + ") and " + i15 + " object arguments (" + string2 + ").");
        }
        g gVar2 = this.f74783b;
        d.u uVar = d.u.f74812c;
        gVar2.y(uVar);
        g gVarA2 = g.c.a(gVar2);
        g.c.c(gVarA2, d.q.a(0), i11);
        g.c.d(gVarA2, d.t.a(0), cVar);
        if (gVar2.f74826g == gVar2.n(uVar.b()) && gVar2.f74827h == gVar2.n(uVar.d())) {
            return;
        }
        StringBuilder sb4 = new StringBuilder();
        int iB2 = uVar.b();
        int i17 = 0;
        for (int i18 = 0; i18 < iB2; i18++) {
            if (((1 << i18) & gVar2.f74826g) != 0) {
                if (i17 > 0) {
                    sb4.append(", ");
                }
                sb4.append(uVar.e(d.q.a(i18)));
                i17++;
            }
        }
        String string3 = sb4.toString();
        Intrinsics.g(string3, "StringBuilder().apply(builderAction).toString()");
        StringBuilder sb5 = new StringBuilder();
        int iD2 = uVar.d();
        int i19 = 0;
        int i20 = 0;
        while (i20 < iD2) {
            if (((1 << i20) & gVar2.f74827h) != 0) {
                if (i17 > 0) {
                    sb5.append(", ");
                }
                sb5.append(uVar.f(d.t.a(i20)));
                i19++;
            }
            i20++;
            gVar2 = gVar2;
        }
        String string4 = sb5.toString();
        Intrinsics.g(string4, "StringBuilder().apply(builderAction).toString()");
        o1.b("Error while pushing " + uVar + ". Not all arguments were provided. Missing " + i17 + " int arguments (" + string3 + ") and " + i19 + " object arguments (" + string4 + ").");
    }

    public final void c() {
        if (!this.f74783b.u()) {
            k.r("Cannot end node insertion, there are no pending operations that can be realized.");
        }
        this.f74783b.w(this.f74782a);
    }

    public final void d(androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
        if (!this.f74783b.t()) {
            k.r("FixupList has pending fixup operations that were not realized. Were there mismatched insertNode() and endNodeInsert() calls?");
        }
        this.f74782a.r(fVar, m2Var, a2Var);
    }

    public final boolean e() {
        return this.f74782a.t();
    }

    public final void f(Object obj, Function2 function2) {
        g gVar = this.f74782a;
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
}
