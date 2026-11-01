package androidx.compose.ui.node;

import androidx.compose.ui.unit.LayoutDirection;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class j0 extends LookaheadCapablePlaceable implements androidx.compose.ui.layout.s {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final NodeCoordinator f5394p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Map f5396r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private androidx.compose.ui.layout.v f5398t;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f5395q = o0.p.f70615b.a();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final androidx.compose.ui.layout.q f5397s = new androidx.compose.ui.layout.q(this);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final Map f5399u = new LinkedHashMap();

    public j0(NodeCoordinator nodeCoordinator) {
        this.f5394p = nodeCoordinator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C1(androidx.compose.ui.layout.v vVar) {
        Unit unit;
        Map map;
        if (vVar != null) {
            B0(o0.u.a(vVar.getWidth(), vVar.getHeight()));
            unit = Unit.f67061a;
        } else {
            unit = null;
        }
        if (unit == null) {
            B0(o0.t.f70624b.a());
        }
        if (!Intrinsics.c(this.f5398t, vVar) && vVar != null && ((((map = this.f5396r) != null && !map.isEmpty()) || !vVar.v().isEmpty()) && !Intrinsics.c(vVar.v(), this.f5396r))) {
            r1().v().m();
            Map linkedHashMap = this.f5396r;
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap();
                this.f5396r = linkedHashMap;
            }
            linkedHashMap.clear();
            linkedHashMap.putAll(vVar.v());
        }
        this.f5398t = vVar;
    }

    private final void y1(long j11) {
        if (!o0.p.g(e1(), j11)) {
            B1(j11);
            LayoutNodeLayoutDelegate.LookaheadPassDelegate lookaheadPassDelegateH = a1().P().H();
            if (lookaheadPassDelegateH != null) {
                lookaheadPassDelegateH.f1();
            }
            g1(this.f5394p);
        }
        if (j1()) {
            return;
        }
        R0(b1());
    }

    public final long A1(j0 j0Var, boolean z10) {
        long jA = o0.p.f70615b.a();
        j0 j0VarU1 = this;
        while (!Intrinsics.c(j0VarU1, j0Var)) {
            if (!j0VarU1.i1() || !z10) {
                jA = o0.p.l(jA, j0VarU1.e1());
            }
            NodeCoordinator nodeCoordinatorA2 = j0VarU1.f5394p.a2();
            Intrinsics.e(nodeCoordinatorA2);
            j0VarU1 = nodeCoordinatorA2.U1();
            Intrinsics.e(j0VarU1);
        }
        return jA;
    }

    public void B1(long j11) {
        this.f5395q = j11;
    }

    @Override // o0.n
    public float C0() {
        return this.f5394p.C0();
    }

    @Override // androidx.compose.ui.layout.g0, androidx.compose.ui.layout.i
    public Object G() {
        return this.f5394p.G();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable, androidx.compose.ui.layout.j
    public boolean W() {
        return true;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public LookaheadCapablePlaceable W0() {
        NodeCoordinator nodeCoordinatorZ1 = this.f5394p.Z1();
        if (nodeCoordinatorZ1 != null) {
            return nodeCoordinatorZ1.U1();
        }
        return null;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public androidx.compose.ui.layout.l X0() {
        return this.f5397s;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public boolean Z0() {
        return this.f5398t != null;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public LayoutNode a1() {
        return this.f5394p.a1();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public androidx.compose.ui.layout.v b1() {
        androidx.compose.ui.layout.v vVar = this.f5398t;
        if (vVar != null) {
            return vVar;
        }
        throw new IllegalStateException("LookaheadDelegate has not been measured yet when measureResult is requested.");
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public LookaheadCapablePlaceable c1() {
        NodeCoordinator nodeCoordinatorA2 = this.f5394p.a2();
        if (nodeCoordinatorA2 != null) {
            return nodeCoordinatorA2.U1();
        }
        return null;
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public long e1() {
        return this.f5395q;
    }

    @Override // o0.e
    public float getDensity() {
        return this.f5394p.getDensity();
    }

    @Override // androidx.compose.ui.layout.j
    public LayoutDirection getLayoutDirection() {
        return this.f5394p.getLayoutDirection();
    }

    @Override // androidx.compose.ui.node.LookaheadCapablePlaceable
    public void m1() {
        z0(e1(), 0.0f, null);
    }

    public a r1() {
        a aVarC = this.f5394p.a1().P().C();
        Intrinsics.e(aVarC);
        return aVarC;
    }

    public final int s1(androidx.compose.ui.layout.a aVar) {
        Integer num = (Integer) this.f5399u.get(aVar);
        if (num != null) {
            return num.intValue();
        }
        return Integer.MIN_VALUE;
    }

    protected final Map t1() {
        return this.f5399u;
    }

    public final long u1() {
        return t0();
    }

    public final NodeCoordinator v1() {
        return this.f5394p;
    }

    public final androidx.compose.ui.layout.q w1() {
        return this.f5397s;
    }

    protected void x1() {
        b1().w();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.layout.g0
    public final void z0(long j11, float f11, Function1 function1) {
        y1(j11);
        if (k1()) {
            return;
        }
        x1();
    }

    public final void z1(long j11) {
        y1(o0.p.l(j11, k0()));
    }
}
