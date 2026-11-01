package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class g0 extends b {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final b f3989s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final boolean f3990t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final boolean f3991u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Function1 f3992v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Function1 f3993w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final long f3994x;

    public g0(b bVar, Function1 function1, Function1 function2, boolean z10, boolean z11) {
        Function1 function1K;
        Function1 function1H;
        super(0, SnapshotIdSet.f3916e.a(), SnapshotKt.K(function1, (bVar == null || (function1H = bVar.h()) == null) ? ((GlobalSnapshot) SnapshotKt.f3931j.get()).h() : function1H, z10), SnapshotKt.M(function2, (bVar == null || (function1K = bVar.k()) == null) ? ((GlobalSnapshot) SnapshotKt.f3931j.get()).k() : function1K));
        this.f3989s = bVar;
        this.f3990t = z10;
        this.f3991u = z11;
        this.f3992v = super.h();
        this.f3993w = super.k();
        this.f3994x = androidx.compose.runtime.b.a();
    }

    private final b T() {
        b bVar = this.f3989s;
        return bVar == null ? (b) SnapshotKt.f3931j.get() : bVar;
    }

    @Override // androidx.compose.runtime.snapshots.b
    public k C() {
        return T().C();
    }

    @Override // androidx.compose.runtime.snapshots.b
    public MutableScatterSet E() {
        return T().E();
    }

    @Override // androidx.compose.runtime.snapshots.b, androidx.compose.runtime.snapshots.j
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public Function1 h() {
        return this.f3992v;
    }

    @Override // androidx.compose.runtime.snapshots.b
    public void P(MutableScatterSet mutableScatterSet) {
        u.b();
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.runtime.snapshots.b
    public b Q(Function1 function1, Function1 function2) {
        Function1 function1L = SnapshotKt.L(function1, h(), false, 4, null);
        Function1 function1M = SnapshotKt.M(function2, k());
        return !this.f3990t ? new g0(T().Q(null, function1M), function1L, function1M, false, true) : T().Q(function1L, function1M);
    }

    public final long U() {
        return this.f3994x;
    }

    @Override // androidx.compose.runtime.snapshots.b, androidx.compose.runtime.snapshots.j
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
    public Void m(j jVar) {
        u.b();
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.runtime.snapshots.b, androidx.compose.runtime.snapshots.j
    /* JADX INFO: renamed from: W, reason: merged with bridge method [inline-methods] */
    public Void n(j jVar) {
        u.b();
        throw new KotlinNothingValueException();
    }

    public void X(Function1 function1) {
        this.f3992v = function1;
    }

    public void Y(Function1 function1) {
        this.f3993w = function1;
    }

    @Override // androidx.compose.runtime.snapshots.b, androidx.compose.runtime.snapshots.j
    public void d() {
        b bVar;
        t(true);
        if (!this.f3991u || (bVar = this.f3989s) == null) {
            return;
        }
        bVar.d();
    }

    @Override // androidx.compose.runtime.snapshots.j
    public int f() {
        return T().f();
    }

    @Override // androidx.compose.runtime.snapshots.j
    public SnapshotIdSet g() {
        return T().g();
    }

    @Override // androidx.compose.runtime.snapshots.b, androidx.compose.runtime.snapshots.j
    public boolean i() {
        return T().i();
    }

    @Override // androidx.compose.runtime.snapshots.b, androidx.compose.runtime.snapshots.j
    public int j() {
        return T().j();
    }

    @Override // androidx.compose.runtime.snapshots.b, androidx.compose.runtime.snapshots.j
    public Function1 k() {
        return this.f3993w;
    }

    @Override // androidx.compose.runtime.snapshots.b, androidx.compose.runtime.snapshots.j
    public void o() {
        T().o();
    }

    @Override // androidx.compose.runtime.snapshots.b, androidx.compose.runtime.snapshots.j
    public void p(c0 c0Var) {
        T().p(c0Var);
    }

    @Override // androidx.compose.runtime.snapshots.j
    public void u(int i11) {
        u.b();
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.runtime.snapshots.j
    public void v(SnapshotIdSet snapshotIdSet) {
        u.b();
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.runtime.snapshots.b, androidx.compose.runtime.snapshots.j
    public void w(int i11) {
        T().w(i11);
    }

    @Override // androidx.compose.runtime.snapshots.b, androidx.compose.runtime.snapshots.j
    public j x(Function1 function1) {
        Function1 function1L = SnapshotKt.L(function1, h(), false, 4, null);
        return !this.f3990t ? SnapshotKt.D(T().x(null), function1L, true) : T().x(function1L);
    }
}
