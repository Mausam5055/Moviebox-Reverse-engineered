package androidx.compose.foundation;

import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.a5;
import androidx.compose.ui.graphics.b5;
import androidx.compose.ui.graphics.c1;
import androidx.compose.ui.graphics.e4;
import androidx.compose.ui.graphics.f4;
import androidx.compose.ui.graphics.g4;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.k4;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.o1;
import androidx.compose.ui.graphics.o4;
import androidx.compose.ui.graphics.s4;
import androidx.compose.ui.graphics.t1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.unit.LayoutDirection;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public final class BorderModifierNode extends androidx.compose.ui.node.i {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private c f2556p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f2557q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private j1 f2558r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private a5 f2559s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final androidx.compose.ui.draw.b f2560t;

    private BorderModifierNode(float f11, j1 j1Var, a5 a5Var) {
        this.f2557q = f11;
        this.f2558r = j1Var;
        this.f2559s = a5Var;
        this.f2560t = (androidx.compose.ui.draw.b) D1(androidx.compose.ui.draw.g.a(new Function1<androidx.compose.ui.draw.c, androidx.compose.ui.draw.h>() { // from class: androidx.compose.foundation.BorderModifierNode$drawWithCacheModifierNode$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final androidx.compose.ui.draw.h invoke(androidx.compose.ui.draw.c cVar) {
                if (cVar.E0(this.this$0.P1()) < 0.0f || y.m.h(cVar.i()) <= 0.0f) {
                    return BorderKt.i(cVar);
                }
                float f12 = 2;
                float fMin = Math.min(o0.i.i(this.this$0.P1(), o0.i.f70603b.a()) ? 1.0f : (float) Math.ceil(cVar.E0(this.this$0.P1())), (float) Math.ceil(y.m.h(cVar.i()) / f12));
                float f13 = fMin / f12;
                long jA = y.h.a(f13, f13);
                long jA2 = y.n.a(y.m.i(cVar.i()) - fMin, y.m.g(cVar.i()) - fMin);
                boolean z10 = f12 * fMin > y.m.h(cVar.i());
                k4 k4VarA = this.this$0.O1().a(cVar.i(), cVar.getLayoutDirection(), cVar);
                if (k4VarA instanceof k4.a) {
                    BorderModifierNode borderModifierNode = this.this$0;
                    return borderModifierNode.L1(cVar, borderModifierNode.N1(), (k4.a) k4VarA, z10, fMin);
                }
                if (k4VarA instanceof k4.c) {
                    BorderModifierNode borderModifierNode2 = this.this$0;
                    return borderModifierNode2.M1(cVar, borderModifierNode2.N1(), (k4.c) k4VarA, jA, jA2, z10, fMin);
                }
                if (k4VarA instanceof k4.b) {
                    return BorderKt.j(cVar, this.this$0.N1(), jA, jA2, z10, fMin);
                }
                throw new NoWhenBranchMatchedException();
            }
        }));
    }

    public /* synthetic */ BorderModifierNode(float f11, j1 j1Var, a5 a5Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(f11, j1Var, a5Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:26:0x00db  */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7, types: [T, androidx.compose.ui.graphics.e4] */
    public final androidx.compose.ui.draw.h L1(androidx.compose.ui.draw.c cVar, final j1 j1Var, final k4.a aVar, boolean z10, float f11) throws Throwable {
        int iB;
        v1 v1VarB;
        boolean z11;
        m1 m1Var;
        ?? r12;
        float f12;
        long j11;
        z.d dVar;
        if (z10) {
            return cVar.v(new Function1<z.c, Unit>() { // from class: androidx.compose.foundation.BorderModifierNode$drawGenericBorder$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((z.c) obj);
                    return Unit.f67061a;
                }

                public final void invoke(z.c cVar2) {
                    cVar2.Y0();
                    z.f.g(cVar2, aVar.b(), j1Var, 0.0f, null, null, 0, 60, null);
                }
            });
        }
        if (j1Var instanceof b5) {
            iB = f4.f4439b.a();
            v1VarB = v1.a.b(v1.f4675b, ((b5) j1Var).b(), 0, 2, null);
        } else {
            iB = f4.f4439b.b();
            v1VarB = null;
        }
        final y.i bounds = aVar.b().getBounds();
        if (this.f2556p == null) {
            this.f2556p = new c(null, null, null, null, 15, null);
        }
        c cVar2 = this.f2556p;
        Intrinsics.e(cVar2);
        Path pathG = cVar2.g();
        pathG.reset();
        o4.a(pathG, bounds, null, 2, null);
        pathG.l(pathG, aVar.b(), s4.f4638a.a());
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        final long jA = o0.u.a((int) Math.ceil(bounds.k()), (int) Math.ceil(bounds.e()));
        c cVar3 = this.f2556p;
        Intrinsics.e(cVar3);
        e4 e4Var = cVar3.f2616a;
        m1 m1Var2 = cVar3.f2617b;
        f4 f4VarF = e4Var != null ? f4.f(e4Var.b()) : null;
        if (!(f4VarF == null ? false : f4.i(f4VarF.l(), f4.f4439b.b()))) {
            z11 = f4.h(iB, e4Var != null ? f4.f(e4Var.b()) : null);
        }
        if (e4Var == null || m1Var2 == null || y.m.i(cVar.i()) > e4Var.getWidth() || y.m.g(cVar.i()) > e4Var.getHeight() || !z11) {
            e4 e4VarB = g4.b(o0.t.g(jA), o0.t.f(jA), iB, false, null, 24, null);
            cVar3.f2616a = e4VarB;
            m1 m1VarA = o1.a(e4VarB);
            cVar3.f2617b = m1VarA;
            m1Var = m1VarA;
            r12 = e4VarB;
        } else {
            r12 = e4Var;
            m1Var = m1Var2;
        }
        z.a aVar2 = cVar3.f2618c;
        if (aVar2 == null) {
            aVar2 = new z.a();
            cVar3.f2618c = aVar2;
        }
        z.a aVar3 = aVar2;
        long jD = o0.u.d(jA);
        LayoutDirection layoutDirection = cVar.getLayoutDirection();
        z.a.C0973a c0973aF = aVar3.F();
        o0.e eVarA = c0973aF.a();
        LayoutDirection layoutDirectionB = c0973aF.b();
        m1 m1VarC = c0973aF.c();
        long jD2 = c0973aF.d();
        z.a.C0973a c0973aF2 = aVar3.F();
        c0973aF2.j(cVar);
        c0973aF2.k(layoutDirection);
        c0973aF2.i(m1Var);
        c0973aF2.l(jD);
        m1Var.n();
        long jA2 = u1.f4658b.a();
        c1.a aVar4 = c1.f4292a;
        z.f.j(aVar3, jA2, 0L, jD, 0.0f, null, null, aVar4.a(), 58, null);
        float f13 = -bounds.f();
        float f14 = -bounds.i();
        aVar3.H0().c().c(f13, f14);
        try {
            f14 = f14;
            f12 = f13;
            try {
                z.f.g(aVar3, aVar.b(), j1Var, 0.0f, new z.m(f11 * 2, 0.0f, 0, 0, null, 30, null), null, 0, 52, null);
                float f15 = 1;
                float fI = (y.m.i(aVar3.i()) + f15) / y.m.i(aVar3.i());
                float fG = (y.m.g(aVar3.i()) + f15) / y.m.g(aVar3.i());
                long jO0 = aVar3.O0();
                z.d dVarH0 = aVar3.H0();
                long jI = dVarH0.i();
                dVarH0.e().n();
                try {
                    dVarH0.c().e(fI, fG, jO0);
                    dVar = dVarH0;
                    try {
                        z.f.g(aVar3, pathG, j1Var, 0.0f, null, null, aVar4.a(), 28, null);
                        dVar.e().j();
                        dVar.f(jI);
                        aVar3.H0().c().c(-f12, -f14);
                        m1Var.j();
                        z.a.C0973a c0973aF3 = aVar3.F();
                        c0973aF3.j(eVarA);
                        c0973aF3.k(layoutDirectionB);
                        c0973aF3.i(m1VarC);
                        c0973aF3.l(jD2);
                        r12.a();
                        objectRef.element = r12;
                        final v1 v1Var = v1VarB;
                        return cVar.v(new Function1<z.c, Unit>() { // from class: androidx.compose.foundation.BorderModifierNode$drawGenericBorder$3
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                invoke((z.c) obj);
                                return Unit.f67061a;
                            }

                            public final void invoke(z.c cVar4) {
                                cVar4.Y0();
                                float f16 = bounds.f();
                                float fI2 = bounds.i();
                                Ref.ObjectRef<e4> objectRef2 = objectRef;
                                long j12 = jA;
                                v1 v1Var2 = v1Var;
                                cVar4.H0().c().c(f16, fI2);
                                try {
                                    z.f.e(cVar4, objectRef2.element, 0L, j12, 0L, 0L, 0.0f, null, v1Var2, 0, 0, 890, null);
                                } finally {
                                    cVar4.H0().c().c(-f16, -fI2);
                                }
                            }
                        });
                    } catch (Throwable th2) {
                        th = th2;
                        j11 = jI;
                        try {
                            dVar.e().j();
                            dVar.f(j11);
                            throw th;
                        } catch (Throwable th3) {
                            th = th3;
                            aVar3.H0().c().c(-f12, -f14);
                            throw th;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    j11 = jI;
                    dVar = dVarH0;
                }
            } catch (Throwable th5) {
                th = th5;
                f14 = f14;
                f12 = f12;
            }
        } catch (Throwable th6) {
            th = th6;
            f12 = f13;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final androidx.compose.ui.draw.h M1(androidx.compose.ui.draw.c cVar, final j1 j1Var, k4.c cVar2, final long j11, final long j12, final boolean z10, final float f11) {
        if (y.l.e(cVar2.b())) {
            final long jH = cVar2.b().h();
            final float f12 = f11 / 2;
            final z.m mVar = new z.m(f11, 0.0f, 0, 0, null, 30, null);
            return cVar.v(new Function1<z.c, Unit>() { // from class: androidx.compose.foundation.BorderModifierNode$drawRoundRectBorder$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) throws Throwable {
                    invoke((z.c) obj);
                    return Unit.f67061a;
                }

                public final void invoke(z.c cVar3) throws Throwable {
                    long j13;
                    cVar3.Y0();
                    if (z10) {
                        z.f.k(cVar3, j1Var, 0L, 0L, jH, 0.0f, null, null, 0, 246, null);
                        return;
                    }
                    float fD = y.a.d(jH);
                    float f13 = f12;
                    if (fD >= f13) {
                        z.f.k(cVar3, j1Var, j11, j12, BorderKt.k(jH, f13), 0.0f, mVar, null, 0, Sdk$SDKError.Reason.INVALID_BID_PAYLOAD_VALUE, null);
                        return;
                    }
                    float f14 = f11;
                    float fI = y.m.i(cVar3.i()) - f11;
                    float fG = y.m.g(cVar3.i()) - f11;
                    int iA = t1.f4647a.a();
                    j1 j1Var2 = j1Var;
                    long j14 = jH;
                    z.d dVarH0 = cVar3.H0();
                    long jI = dVarH0.i();
                    dVarH0.e().n();
                    try {
                        dVarH0.c().a(f14, f14, fI, fG, iA);
                        j13 = jI;
                        try {
                            z.f.k(cVar3, j1Var2, 0L, 0L, j14, 0.0f, null, null, 0, 246, null);
                            dVarH0.e().j();
                            dVarH0.f(j13);
                        } catch (Throwable th2) {
                            th = th2;
                            dVarH0.e().j();
                            dVarH0.f(j13);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        j13 = jI;
                    }
                }
            });
        }
        if (this.f2556p == null) {
            this.f2556p = new c(null, null, null, null, 15, null);
        }
        c cVar3 = this.f2556p;
        Intrinsics.e(cVar3);
        final Path pathH = BorderKt.h(cVar3.g(), cVar2.b(), f11, z10);
        return cVar.v(new Function1<z.c, Unit>() { // from class: androidx.compose.foundation.BorderModifierNode$drawRoundRectBorder$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((z.c) obj);
                return Unit.f67061a;
            }

            public final void invoke(z.c cVar4) {
                cVar4.Y0();
                z.f.g(cVar4, pathH, j1Var, 0.0f, null, null, 0, 60, null);
            }
        });
    }

    public final void A0(a5 a5Var) {
        if (Intrinsics.c(this.f2559s, a5Var)) {
            return;
        }
        this.f2559s = a5Var;
        this.f2560t.o0();
    }

    public final j1 N1() {
        return this.f2558r;
    }

    public final a5 O1() {
        return this.f2559s;
    }

    public final float P1() {
        return this.f2557q;
    }

    public final void Q1(j1 j1Var) {
        if (Intrinsics.c(this.f2558r, j1Var)) {
            return;
        }
        this.f2558r = j1Var;
        this.f2560t.o0();
    }

    public final void R1(float f11) {
        if (o0.i.i(this.f2557q, f11)) {
            return;
        }
        this.f2557q = f11;
        this.f2560t.o0();
    }
}
