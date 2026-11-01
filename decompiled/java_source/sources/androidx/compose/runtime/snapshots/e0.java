package androidx.compose.runtime.snapshots;

/* JADX INFO: loaded from: classes.dex */
public abstract class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3978a = SnapshotKt.H().f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private e0 f3979b;

    public abstract void c(e0 e0Var);

    public abstract e0 d();

    public final e0 e() {
        return this.f3979b;
    }

    public final int f() {
        return this.f3978a;
    }

    public final void g(e0 e0Var) {
        this.f3979b = e0Var;
    }

    public final void h(int i11) {
        this.f3978a = i11;
    }
}
