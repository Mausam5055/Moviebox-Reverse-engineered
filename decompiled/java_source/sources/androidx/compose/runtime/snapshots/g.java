package androidx.compose.runtime.snapshots;

import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class g extends j {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Function1 f3987g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f3988h;

    public g(int i11, SnapshotIdSet snapshotIdSet, Function1 function1) {
        super(i11, snapshotIdSet, null);
        this.f3987g = function1;
        this.f3988h = 1;
    }

    @Override // androidx.compose.runtime.snapshots.j
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] */
    public Function1 h() {
        return this.f3987g;
    }

    @Override // androidx.compose.runtime.snapshots.j
    public void d() {
        if (e()) {
            return;
        }
        n(this);
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
    public void m(j jVar) {
        this.f3988h++;
    }

    @Override // androidx.compose.runtime.snapshots.j
    public void n(j jVar) {
        int i11 = this.f3988h - 1;
        this.f3988h = i11;
        if (i11 == 0) {
            b();
        }
    }

    @Override // androidx.compose.runtime.snapshots.j
    public void o() {
    }

    @Override // androidx.compose.runtime.snapshots.j
    public void p(c0 c0Var) {
        SnapshotKt.Z();
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.runtime.snapshots.j
    public j x(Function1 function1) {
        SnapshotKt.g0(this);
        return new d(f(), g(), SnapshotKt.L(function1, h(), false, 4, null), this);
    }
}
