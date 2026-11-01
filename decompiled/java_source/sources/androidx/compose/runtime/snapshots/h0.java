package androidx.compose.runtime.snapshots;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class h0 extends j {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final j f3996g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f3997h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f3998i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Function1 f3999j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Function1 f4000k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final long f4001l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final j f4002m;

    public h0(j jVar, Function1 function1, boolean z10, boolean z11) {
        Function1 function1H;
        super(0, SnapshotIdSet.f3916e.a(), null);
        this.f3996g = jVar;
        this.f3997h = z10;
        this.f3998i = z11;
        this.f3999j = SnapshotKt.K(function1, (jVar == null || (function1H = jVar.h()) == null) ? ((GlobalSnapshot) SnapshotKt.f3931j.get()).h() : function1H, z10);
        this.f4001l = androidx.compose.runtime.b.a();
        this.f4002m = this;
    }

    private final j A() {
        j jVar = this.f3996g;
        return jVar == null ? (j) SnapshotKt.f3931j.get() : jVar;
    }

    @Override // androidx.compose.runtime.snapshots.j
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public Function1 h() {
        return this.f3999j;
    }

    public final long C() {
        return this.f4001l;
    }

    @Override // androidx.compose.runtime.snapshots.j
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public Void m(j jVar) {
        u.b();
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.runtime.snapshots.j
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public Void n(j jVar) {
        u.b();
        throw new KotlinNothingValueException();
    }

    public void F(Function1 function1) {
        this.f3999j = function1;
    }

    @Override // androidx.compose.runtime.snapshots.j
    public void d() {
        j jVar;
        t(true);
        if (!this.f3998i || (jVar = this.f3996g) == null) {
            return;
        }
        jVar.d();
    }

    @Override // androidx.compose.runtime.snapshots.j
    public int f() {
        return A().f();
    }

    @Override // androidx.compose.runtime.snapshots.j
    public SnapshotIdSet g() {
        return A().g();
    }

    @Override // androidx.compose.runtime.snapshots.j
    public boolean i() {
        return A().i();
    }

    @Override // androidx.compose.runtime.snapshots.j
    public Function1 k() {
        return this.f4000k;
    }

    @Override // androidx.compose.runtime.snapshots.j
    public void o() {
        A().o();
    }

    @Override // androidx.compose.runtime.snapshots.j
    public void p(c0 c0Var) {
        A().p(c0Var);
    }

    @Override // androidx.compose.runtime.snapshots.j
    public j x(Function1 function1) {
        Function1 function1L = SnapshotKt.L(function1, h(), false, 4, null);
        return !this.f3997h ? SnapshotKt.D(A().x(null), function1L, true) : A().x(function1L);
    }
}
