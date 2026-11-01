package androidx.compose.ui.node;

import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.e4;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.p4;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class d0 implements z.g, z.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z.a f5384a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private n f5385b;

    /* JADX WARN: Multi-variable type inference failed */
    public d0() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public d0(z.a aVar) {
        this.f5384a = aVar;
    }

    public /* synthetic */ d0(z.a aVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? new z.a() : aVar);
    }

    @Override // o0.n
    public float C0() {
        return this.f5384a.C0();
    }

    @Override // z.g
    public void D0(Path path, long j11, float f11, z.h hVar, v1 v1Var, int i11) {
        this.f5384a.D0(path, j11, f11, hVar, v1Var, i11);
    }

    @Override // o0.e
    public float E0(float f11) {
        return this.f5384a.E0(f11);
    }

    @Override // z.g
    public void G0(List list, int i11, long j11, float f11, int i12, p4 p4Var, float f12, v1 v1Var, int i13) {
        this.f5384a.G0(list, i11, j11, f11, i12, p4Var, f12, v1Var, i13);
    }

    @Override // o0.n
    public long H(float f11) {
        return this.f5384a.H(f11);
    }

    @Override // z.g
    public z.d H0() {
        return this.f5384a.H0();
    }

    @Override // o0.n
    public float J(long j11) {
        return this.f5384a.J(j11);
    }

    @Override // z.g
    public void K0(long j11, float f11, long j12, float f12, z.h hVar, v1 v1Var, int i11) {
        this.f5384a.K0(j11, f11, j12, f12, hVar, v1Var, i11);
    }

    @Override // z.g
    public void L0(long j11, long j12, long j13, float f11, z.h hVar, v1 v1Var, int i11) {
        this.f5384a.L0(j11, j12, j13, f11, hVar, v1Var, i11);
    }

    @Override // z.g
    public void N0(androidx.compose.ui.graphics.j1 j1Var, long j11, long j12, float f11, z.h hVar, v1 v1Var, int i11) {
        this.f5384a.N0(j1Var, j11, j12, f11, hVar, v1Var, i11);
    }

    @Override // z.g
    public long O0() {
        return this.f5384a.O0();
    }

    @Override // o0.e
    public long Q(float f11) {
        return this.f5384a.Q(f11);
    }

    @Override // o0.e
    public long Q0(long j11) {
        return this.f5384a.Q0(j11);
    }

    @Override // z.g
    public void T(long j11, long j12, long j13, long j14, z.h hVar, float f11, v1 v1Var, int i11) {
        this.f5384a.T(j11, j12, j13, j14, hVar, f11, v1Var, i11);
    }

    @Override // z.g
    public void U0(e4 e4Var, long j11, long j12, long j13, long j14, float f11, z.h hVar, v1 v1Var, int i11, int i12) {
        this.f5384a.U0(e4Var, j11, j12, j13, j14, f11, hVar, v1Var, i11, i12);
    }

    @Override // z.g
    public void V0(androidx.compose.ui.graphics.j1 j1Var, long j11, long j12, long j13, float f11, z.h hVar, v1 v1Var, int i11) {
        this.f5384a.V0(j1Var, j11, j12, j13, f11, hVar, v1Var, i11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v5, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8, types: [androidx.compose.ui.f$c] */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [androidx.compose.runtime.collection.b] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v6 */
    @Override // z.c
    public void Y0() {
        androidx.compose.ui.graphics.m1 m1VarE = H0().e();
        n nVar = this.f5385b;
        Intrinsics.e(nVar);
        ?? B = e0.b(nVar);
        if (B == 0) {
            NodeCoordinator nodeCoordinatorH = g.h(nVar, s0.a(4));
            if (nodeCoordinatorH.Y1() == nVar.getNode()) {
                nodeCoordinatorH = nodeCoordinatorH.Z1();
                Intrinsics.e(nodeCoordinatorH);
            }
            nodeCoordinatorH.u2(m1VarE, H0().g());
            return;
        }
        int iA = s0.a(4);
        ?? bVar = 0;
        while (B != 0) {
            if (B instanceof n) {
                z((n) B, m1VarE, H0().g());
            } else if ((B.f1() & iA) != 0 && (B instanceof i)) {
                androidx.compose.ui.f.c cVarE1 = ((i) B).E1();
                int i11 = 0;
                B = B;
                bVar = bVar;
                while (cVarE1 != null) {
                    if ((cVarE1.f1() & iA) != 0) {
                        i11++;
                        if (i11 == 1) {
                            bVar = bVar;
                            B = cVarE1;
                        } else {
                            if (bVar == 0) {
                                bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                            }
                            if (B != 0) {
                                bVar.b(B);
                                B = 0;
                            }
                            bVar.b(cVarE1);
                        }
                    }
                    cVarE1 = cVarE1.b1();
                    B = B;
                    bVar = bVar;
                }
                if (i11 == 1) {
                }
            }
            B = g.g(bVar);
        }
    }

    @Override // o0.e
    public int c0(float f11) {
        return this.f5384a.c0(f11);
    }

    @Override // o0.e
    public float getDensity() {
        return this.f5384a.getDensity();
    }

    @Override // z.g
    public LayoutDirection getLayoutDirection() {
        return this.f5384a.getLayoutDirection();
    }

    @Override // o0.e
    public float h0(long j11) {
        return this.f5384a.h0(j11);
    }

    @Override // z.g
    public long i() {
        return this.f5384a.i();
    }

    @Override // z.g
    public void i0(Path path, androidx.compose.ui.graphics.j1 j1Var, float f11, z.h hVar, v1 v1Var, int i11) {
        this.f5384a.i0(path, j1Var, f11, hVar, v1Var, i11);
    }

    public final void n(androidx.compose.ui.graphics.m1 m1Var, long j11, NodeCoordinator nodeCoordinator, androidx.compose.ui.f.c cVar, GraphicsLayer graphicsLayer) {
        int iA = s0.a(4);
        androidx.compose.ui.f.c cVarG = cVar;
        androidx.compose.runtime.collection.b bVar = null;
        while (cVarG != null) {
            if (cVarG instanceof n) {
                v(m1Var, j11, nodeCoordinator, (n) cVarG, graphicsLayer);
            } else if ((cVarG.f1() & iA) != 0 && (cVarG instanceof i)) {
                int i11 = 0;
                for (androidx.compose.ui.f.c cVarE1 = ((i) cVarG).E1(); cVarE1 != null; cVarE1 = cVarE1.b1()) {
                    if ((cVarE1.f1() & iA) != 0) {
                        i11++;
                        if (i11 == 1) {
                            cVarG = cVarE1;
                        } else {
                            if (bVar == null) {
                                bVar = new androidx.compose.runtime.collection.b(new androidx.compose.ui.f.c[16], 0);
                            }
                            if (cVarG != null) {
                                bVar.b(cVarG);
                                cVarG = null;
                            }
                            bVar.b(cVarE1);
                        }
                    }
                }
                if (i11 == 1) {
                }
            }
            cVarG = g.g(bVar);
        }
    }

    @Override // z.g
    public void q0(long j11, long j12, long j13, float f11, int i11, p4 p4Var, float f12, v1 v1Var, int i12) {
        this.f5384a.q0(j11, j12, j13, f11, i11, p4Var, f12, v1Var, i12);
    }

    public final void v(androidx.compose.ui.graphics.m1 m1Var, long j11, NodeCoordinator nodeCoordinator, n nVar, GraphicsLayer graphicsLayer) {
        n nVar2 = this.f5385b;
        this.f5385b = nVar;
        z.a aVar = this.f5384a;
        LayoutDirection layoutDirection = nodeCoordinator.getLayoutDirection();
        o0.e density = aVar.H0().getDensity();
        LayoutDirection layoutDirection2 = aVar.H0().getLayoutDirection();
        androidx.compose.ui.graphics.m1 m1VarE = aVar.H0().e();
        long jI = aVar.H0().i();
        GraphicsLayer graphicsLayerG = aVar.H0().g();
        z.d dVarH0 = aVar.H0();
        dVarH0.b(nodeCoordinator);
        dVarH0.a(layoutDirection);
        dVarH0.h(m1Var);
        dVarH0.f(j11);
        dVarH0.d(graphicsLayer);
        m1Var.n();
        try {
            nVar.n(this);
            m1Var.j();
            z.d dVarH1 = aVar.H0();
            dVarH1.b(density);
            dVarH1.a(layoutDirection2);
            dVarH1.h(m1VarE);
            dVarH1.f(jI);
            dVarH1.d(graphicsLayerG);
            this.f5385b = nVar2;
        } catch (Throwable th2) {
            m1Var.j();
            z.d dVarH2 = aVar.H0();
            dVarH2.b(density);
            dVarH2.a(layoutDirection2);
            dVarH2.h(m1VarE);
            dVarH2.f(jI);
            dVarH2.d(graphicsLayerG);
            throw th2;
        }
    }

    @Override // o0.e
    public float x0(int i11) {
        return this.f5384a.x0(i11);
    }

    @Override // o0.e
    public float y0(float f11) {
        return this.f5384a.y0(f11);
    }

    public final void z(n nVar, androidx.compose.ui.graphics.m1 m1Var, GraphicsLayer graphicsLayer) {
        NodeCoordinator nodeCoordinatorH = g.h(nVar, s0.a(4));
        nodeCoordinatorH.a1().W().v(m1Var, o0.u.d(nodeCoordinatorH.k()), nodeCoordinatorH, nVar, graphicsLayer);
    }
}
