package androidx.compose.ui.text;

import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final long f6353a = o0.w.f70628b.a();

    public static final r a(r rVar, int i11, int i12, long j11, androidx.compose.ui.text.style.n nVar, u uVar, androidx.compose.ui.text.style.g gVar, int i13, int i14, androidx.compose.ui.text.style.o oVar) {
        long j12;
        int iH = i11;
        androidx.compose.ui.text.style.n nVarJ = nVar;
        androidx.compose.ui.text.style.h.a aVar = androidx.compose.ui.text.style.h.f6400b;
        if (androidx.compose.ui.text.style.h.k(iH, aVar.g()) || androidx.compose.ui.text.style.h.k(iH, rVar.h())) {
            if (o0.x.d(j11)) {
                j12 = j11;
            } else {
                j12 = j11;
                if (o0.w.e(j12, rVar.e())) {
                }
            }
            if ((nVarJ == null || Intrinsics.c(nVarJ, rVar.j())) && ((androidx.compose.ui.text.style.j.j(i12, androidx.compose.ui.text.style.j.f6414b.f()) || androidx.compose.ui.text.style.j.j(i12, rVar.i())) && ((uVar == null || Intrinsics.c(uVar, rVar.g())) && ((gVar == null || Intrinsics.c(gVar, rVar.f())) && ((androidx.compose.ui.text.style.e.d(i13, androidx.compose.ui.text.style.e.f6366a.b()) || androidx.compose.ui.text.style.e.d(i13, rVar.d())) && ((androidx.compose.ui.text.style.d.e(i14, androidx.compose.ui.text.style.d.f6362a.c()) || androidx.compose.ui.text.style.d.e(i14, rVar.c())) && (oVar == null || Intrinsics.c(oVar, rVar.k())))))))) {
                return rVar;
            }
        } else {
            j12 = j11;
        }
        long jE = o0.x.d(j11) ? rVar.e() : j12;
        if (nVarJ == null) {
            nVarJ = rVar.j();
        }
        androidx.compose.ui.text.style.n nVar2 = nVarJ;
        if (androidx.compose.ui.text.style.h.k(iH, aVar.g())) {
            iH = rVar.h();
        }
        return new r(iH, !androidx.compose.ui.text.style.j.j(i12, androidx.compose.ui.text.style.j.f6414b.f()) ? i12 : rVar.i(), jE, nVar2, b(rVar, uVar), gVar == null ? rVar.f() : gVar, !androidx.compose.ui.text.style.e.d(i13, androidx.compose.ui.text.style.e.f6366a.b()) ? i13 : rVar.d(), !androidx.compose.ui.text.style.d.e(i14, androidx.compose.ui.text.style.d.f6362a.c()) ? i14 : rVar.c(), oVar == null ? rVar.k() : oVar, null);
    }

    private static final u b(r rVar, u uVar) {
        if (rVar.g() == null) {
            return uVar;
        }
        return uVar == null ? rVar.g() : rVar.g().c(uVar);
    }

    public static final r c(r rVar, LayoutDirection layoutDirection) {
        int iH = rVar.h();
        androidx.compose.ui.text.style.h.a aVar = androidx.compose.ui.text.style.h.f6400b;
        int iF = androidx.compose.ui.text.style.h.k(iH, aVar.g()) ? aVar.f() : rVar.h();
        int iD = e0.d(layoutDirection, rVar.i());
        long jE = o0.x.d(rVar.e()) ? f6353a : rVar.e();
        androidx.compose.ui.text.style.n nVarJ = rVar.j();
        if (nVarJ == null) {
            nVarJ = androidx.compose.ui.text.style.n.f6429c.a();
        }
        androidx.compose.ui.text.style.n nVar = nVarJ;
        u uVarG = rVar.g();
        androidx.compose.ui.text.style.g gVarF = rVar.f();
        int iD2 = rVar.d();
        androidx.compose.ui.text.style.e.a aVar2 = androidx.compose.ui.text.style.e.f6366a;
        int iA = androidx.compose.ui.text.style.e.d(iD2, aVar2.b()) ? aVar2.a() : rVar.d();
        int iC = rVar.c();
        androidx.compose.ui.text.style.d.a aVar3 = androidx.compose.ui.text.style.d.f6362a;
        int iB = androidx.compose.ui.text.style.d.e(iC, aVar3.c()) ? aVar3.b() : rVar.c();
        androidx.compose.ui.text.style.o oVarK = rVar.k();
        if (oVarK == null) {
            oVarK = androidx.compose.ui.text.style.o.f6433c.a();
        }
        return new r(iF, iD, jE, nVar, uVarG, gVarF, iA, iB, oVarK, null);
    }
}
