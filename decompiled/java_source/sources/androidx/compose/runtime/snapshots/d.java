package androidx.compose.runtime.snapshots;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class d extends j {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Function1 f3976g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final j f3977h;

    public d(int i11, SnapshotIdSet snapshotIdSet, Function1 function1, j jVar) {
        super(i11, snapshotIdSet, null);
        this.f3976g = function1;
        this.f3977h = jVar;
        jVar.m(this);
    }

    @Override // androidx.compose.runtime.snapshots.j
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public Function1 h() {
        return this.f3976g;
    }

    @Override // androidx.compose.runtime.snapshots.j
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public Void m(j jVar) {
        u.b();
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.runtime.snapshots.j
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public Void n(j jVar) {
        u.b();
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.runtime.snapshots.j
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public Void p(c0 c0Var) {
        SnapshotKt.Z();
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.runtime.snapshots.j
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public d x(Function1 function1) {
        return new d(f(), g(), SnapshotKt.L(function1, h(), false, 4, null), this.f3977h);
    }

    @Override // androidx.compose.runtime.snapshots.j
    public void d() {
        if (e()) {
            return;
        }
        if (f() != this.f3977h.f()) {
            b();
        }
        this.f3977h.n(this);
        super.d();
    }

    @Override // androidx.compose.runtime.snapshots.j
    public boolean i() {
        return true;
    }

    @Override // androidx.compose.runtime.snapshots.j
    public Function1 k() {
        return null;
    }

    @Override // androidx.compose.runtime.snapshots.j
    public void o() {
    }
}
