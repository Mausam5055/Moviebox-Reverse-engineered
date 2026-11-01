package kotlinx.coroutines;

/* JADX INFO: loaded from: classes7.dex */
final class u extends w1 implements t {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final v f68000e;

    public u(v vVar) {
        this.f68000e = vVar;
    }

    @Override // kotlinx.coroutines.t
    public boolean a(Throwable th2) {
        return t().childCancelled(th2);
    }

    @Override // kotlinx.coroutines.t
    public t1 getParent() {
        return t();
    }

    @Override // kotlinx.coroutines.w1
    public boolean u() {
        return true;
    }

    @Override // kotlinx.coroutines.w1
    public void v(Throwable th2) {
        this.f68000e.parentCancelled(t());
    }
}
