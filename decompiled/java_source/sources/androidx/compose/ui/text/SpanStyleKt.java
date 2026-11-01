package androidx.compose.ui.text;

import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.z4;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class SpanStyleKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final long f6066a = o0.x.c(14);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final long f6067b = o0.x.c(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final long f6068c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f6069d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final androidx.compose.ui.text.style.l f6070e;

    static {
        u1.a aVar = u1.f4658b;
        f6068c = aVar.d();
        long jA = aVar.a();
        f6069d = jA;
        f6070e = androidx.compose.ui.text.style.l.f6422a.b(jA);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0033  */
    public static final x b(x xVar, long j11, j1 j1Var, float f11, long j12, androidx.compose.ui.text.font.p pVar, androidx.compose.ui.text.font.n nVar, androidx.compose.ui.text.font.o oVar, androidx.compose.ui.text.font.h hVar, String str, long j13, androidx.compose.ui.text.style.a aVar, androidx.compose.ui.text.style.m mVar, n0.i iVar, long j14, androidx.compose.ui.text.style.i iVar2, z4 z4Var, v vVar, z.h hVar2) {
        androidx.compose.ui.text.style.m mVarU;
        long jD;
        v vVar2;
        z.h hVarH;
        androidx.compose.ui.text.font.p pVarN = pVar;
        androidx.compose.ui.text.font.n nVarL = nVar;
        androidx.compose.ui.text.font.o oVarM = oVar;
        String strJ = str;
        androidx.compose.ui.text.style.a aVarE = aVar;
        if (!o0.x.d(j12) && !o0.w.e(j12, xVar.k())) {
            mVarU = mVar;
            jD = j14;
            vVar2 = vVar;
            hVarH = hVar2;
        } else if ((j1Var != null || j11 == 16 || u1.m(j11, xVar.t().a())) && ((nVarL == null || Intrinsics.c(nVarL, xVar.l())) && ((pVarN == null || Intrinsics.c(pVarN, xVar.n())) && ((hVar == null || hVar == xVar.i()) && (o0.x.d(j13) || o0.w.e(j13, xVar.o())))))) {
            if ((iVar2 == null || Intrinsics.c(iVar2, xVar.s())) && Intrinsics.c(j1Var, xVar.t().d()) && ((j1Var == null || f11 == xVar.t().getAlpha()) && ((oVarM == null || Intrinsics.c(oVarM, xVar.m())) && ((strJ == null || Intrinsics.c(strJ, xVar.j())) && (aVarE == null || Intrinsics.c(aVarE, xVar.e())))))) {
                mVarU = mVar;
                if ((mVarU == null || Intrinsics.c(mVarU, xVar.u())) && (iVar == null || Intrinsics.c(iVar, xVar.p()))) {
                    jD = j14;
                    if ((jD == 16 || u1.m(jD, xVar.d())) && (z4Var == null || Intrinsics.c(z4Var, xVar.r()))) {
                        vVar2 = vVar;
                        if (vVar2 == null || Intrinsics.c(vVar2, xVar.q())) {
                            hVarH = hVar2;
                            if (hVarH == null || Intrinsics.c(hVarH, xVar.h())) {
                                return xVar;
                            }
                            xVar = xVar;
                        } else {
                            xVar = xVar;
                            hVarH = hVar2;
                        }
                    } else {
                        xVar = xVar;
                        vVar2 = vVar;
                        hVarH = hVar2;
                    }
                }
            } else {
                mVarU = mVar;
            }
            jD = j14;
            vVar2 = vVar;
            hVarH = hVar2;
        } else {
            mVarU = mVar;
            jD = j14;
            vVar2 = vVar;
            hVarH = hVar2;
        }
        androidx.compose.ui.text.style.l lVarC = xVar.t().c(j1Var != null ? androidx.compose.ui.text.style.l.f6422a.a(j1Var, f11) : androidx.compose.ui.text.style.l.f6422a.b(j11));
        androidx.compose.ui.text.font.h hVarI = hVar == null ? xVar.i() : hVar;
        long jK = !o0.x.d(j12) ? j12 : xVar.k();
        if (pVarN == null) {
            pVarN = xVar.n();
        }
        if (nVarL == null) {
            nVarL = xVar.l();
        }
        if (oVarM == null) {
            oVarM = xVar.m();
        }
        if (strJ == null) {
            strJ = xVar.j();
        }
        long jO = !o0.x.d(j13) ? j13 : xVar.o();
        if (aVarE == null) {
            aVarE = xVar.e();
        }
        if (mVarU == null) {
            mVarU = xVar.u();
        }
        n0.i iVarP = iVar == null ? xVar.p() : iVar;
        if (jD == 16) {
            jD = xVar.d();
        }
        androidx.compose.ui.text.style.i iVarS = iVar2 == null ? xVar.s() : iVar2;
        z4 z4VarR = z4Var == null ? xVar.r() : z4Var;
        v vVarC = c(xVar, vVar2);
        if (hVarH == null) {
            hVarH = xVar.h();
        }
        return new x(lVarC, jK, pVarN, nVarL, oVarM, hVarI, strJ, jO, aVarE, mVarU, iVarP, jD, iVarS, z4VarR, vVarC, hVarH, (DefaultConstructorMarker) null);
    }

    private static final v c(x xVar, v vVar) {
        if (xVar.q() == null) {
            return vVar;
        }
        return vVar == null ? xVar.q() : xVar.q().a(vVar);
    }

    public static final x d(x xVar) {
        androidx.compose.ui.text.style.l lVarB = xVar.t().b(new Function0<androidx.compose.ui.text.style.l>() { // from class: androidx.compose.ui.text.SpanStyleKt$resolveSpanStyleDefaults$1
            @Override // kotlin.jvm.functions.Function0
            public final androidx.compose.ui.text.style.l invoke() {
                return SpanStyleKt.f6070e;
            }
        });
        long jK = o0.x.d(xVar.k()) ? f6066a : xVar.k();
        androidx.compose.ui.text.font.p pVarN = xVar.n();
        if (pVarN == null) {
            pVarN = androidx.compose.ui.text.font.p.f6149b.a();
        }
        androidx.compose.ui.text.font.p pVar = pVarN;
        androidx.compose.ui.text.font.n nVarL = xVar.l();
        androidx.compose.ui.text.font.n nVarC = androidx.compose.ui.text.font.n.c(nVarL != null ? nVarL.i() : androidx.compose.ui.text.font.n.f6139b.b());
        androidx.compose.ui.text.font.o oVarM = xVar.m();
        androidx.compose.ui.text.font.o oVarE = androidx.compose.ui.text.font.o.e(oVarM != null ? oVarM.k() : androidx.compose.ui.text.font.o.f6143b.a());
        androidx.compose.ui.text.font.h hVarI = xVar.i();
        if (hVarI == null) {
            hVarI = androidx.compose.ui.text.font.h.f6124b.a();
        }
        androidx.compose.ui.text.font.h hVar = hVarI;
        String strJ = xVar.j();
        if (strJ == null) {
            strJ = "";
        }
        String str = strJ;
        long jO = o0.x.d(xVar.o()) ? f6067b : xVar.o();
        androidx.compose.ui.text.style.a aVarE = xVar.e();
        androidx.compose.ui.text.style.a aVarB = androidx.compose.ui.text.style.a.b(aVarE != null ? aVarE.h() : androidx.compose.ui.text.style.a.f6354b.a());
        androidx.compose.ui.text.style.m mVarU = xVar.u();
        if (mVarU == null) {
            mVarU = androidx.compose.ui.text.style.m.f6425c.a();
        }
        androidx.compose.ui.text.style.m mVar = mVarU;
        n0.i iVarP = xVar.p();
        if (iVarP == null) {
            iVarP = n0.i.f70061c.a();
        }
        n0.i iVar = iVarP;
        long jD = xVar.d();
        if (jD == 16) {
            jD = f6068c;
        }
        long j11 = jD;
        androidx.compose.ui.text.style.i iVarS = xVar.s();
        if (iVarS == null) {
            iVarS = androidx.compose.ui.text.style.i.f6409b.c();
        }
        androidx.compose.ui.text.style.i iVar2 = iVarS;
        z4 z4VarR = xVar.r();
        if (z4VarR == null) {
            z4VarR = z4.f4921d.a();
        }
        z4 z4Var = z4VarR;
        v vVarQ = xVar.q();
        z.h hVarH = xVar.h();
        if (hVarH == null) {
            hVarH = z.l.f79114a;
        }
        return new x(lVarB, jK, pVar, nVarC, oVarE, hVar, str, jO, aVarB, mVar, iVar, j11, iVar2, z4Var, vVarQ, hVarH, (DefaultConstructorMarker) null);
    }
}
