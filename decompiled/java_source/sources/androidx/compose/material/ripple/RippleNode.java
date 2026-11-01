package androidx.compose.material.ripple;

import androidx.collection.l0;
import androidx.compose.ui.graphics.x1;
import androidx.compose.ui.layout.l;
import androidx.compose.ui.node.n;
import androidx.compose.ui.node.o;
import androidx.compose.ui.node.v;
import androidx.compose.ui.node.w;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.n0;
import o0.u;
import y.m;

/* JADX INFO: loaded from: classes.dex */
public abstract class RippleNode extends androidx.compose.ui.f.c implements androidx.compose.ui.node.d, n, w {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final p.g f3472n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final boolean f3473o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final float f3474p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final x1 f3475q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Function0 f3476r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final boolean f3477s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private StateLayer f3478t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f3479u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f3480v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f3481w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final l0 f3482x;

    private RippleNode(p.g gVar, boolean z10, float f11, x1 x1Var, Function0 function0) {
        this.f3472n = gVar;
        this.f3473o = z10;
        this.f3474p = f11;
        this.f3475q = x1Var;
        this.f3476r = function0;
        this.f3480v = m.f78491b.b();
        this.f3482x = new l0(0, 1, null);
    }

    public /* synthetic */ RippleNode(p.g gVar, boolean z10, float f11, x1 x1Var, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this(gVar, z10, f11, x1Var, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O1(p.k kVar) {
        if (kVar instanceof p.k.b) {
            I1((p.k.b) kVar, this.f3480v, this.f3479u);
        } else if (kVar instanceof p.k.c) {
            P1(((p.k.c) kVar).a());
        } else if (kVar instanceof p.k.a) {
            P1(((p.k.a) kVar).a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Q1(p.f fVar, n0 n0Var) {
        StateLayer stateLayer = this.f3478t;
        if (stateLayer == null) {
            stateLayer = new StateLayer(this.f3473o, this.f3476r);
            o.a(this);
            this.f3478t = stateLayer;
        }
        stateLayer.c(fVar, n0Var);
    }

    @Override // androidx.compose.ui.node.w
    public void F(long j11) {
        this.f3481w = true;
        o0.e eVarI = androidx.compose.ui.node.g.i(this);
        this.f3480v = u.d(j11);
        this.f3479u = Float.isNaN(this.f3474p) ? d.a(eVarI, this.f3473o, this.f3480v) : eVarI.E0(this.f3474p);
        l0 l0Var = this.f3482x;
        Object[] objArr = l0Var.f2244a;
        int i11 = l0Var.f2245b;
        for (int i12 = 0; i12 < i11; i12++) {
            O1((p.k) objArr[i12]);
        }
        this.f3482x.f();
    }

    @Override // androidx.compose.ui.node.w
    public /* synthetic */ void I(l lVar) {
        v.a(this, lVar);
    }

    public abstract void I1(p.k.b bVar, long j11, float f11);

    public abstract void J1(z.g gVar);

    protected final boolean K1() {
        return this.f3473o;
    }

    protected final Function0 L1() {
        return this.f3476r;
    }

    public final long M1() {
        return this.f3475q.a();
    }

    protected final long N1() {
        return this.f3480v;
    }

    public abstract void P1(p.k.b bVar);

    @Override // androidx.compose.ui.f.c
    public final boolean i1() {
        return this.f3477s;
    }

    @Override // androidx.compose.ui.node.n
    public void n(z.c cVar) {
        cVar.Y0();
        StateLayer stateLayer = this.f3478t;
        if (stateLayer != null) {
            stateLayer.b(cVar, this.f3479u, M1());
        }
        J1(cVar);
    }

    @Override // androidx.compose.ui.f.c
    public void n1() {
        kotlinx.coroutines.k.d(d1(), null, null, new RippleNode$onAttach$1(this, null), 3, null);
    }

    @Override // androidx.compose.ui.node.n
    public /* synthetic */ void w0() {
        androidx.compose.ui.node.m.a(this);
    }
}
