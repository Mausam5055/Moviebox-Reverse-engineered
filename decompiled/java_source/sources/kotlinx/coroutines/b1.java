package kotlinx.coroutines;

/* JADX INFO: loaded from: classes7.dex */
final class b1 implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a1 f67642a;

    public b1(a1 a1Var) {
        this.f67642a = a1Var;
    }

    @Override // kotlinx.coroutines.m
    public void a(Throwable th2) {
        this.f67642a.dispose();
    }

    public String toString() {
        return "DisposeOnCancel[" + this.f67642a + ']';
    }
}
