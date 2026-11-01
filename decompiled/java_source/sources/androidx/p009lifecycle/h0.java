package androidx.p009lifecycle;

/* JADX INFO: loaded from: classes.dex */
class h0 implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f9606a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c.a f9607b;

    h0(Object obj) {
        this.f9606a = obj;
        this.f9607b = c.f9578c.c(obj.getClass());
    }

    @Override // androidx.p009lifecycle.r
    public void onStateChanged(u uVar, Lifecycle.Event event) {
        this.f9607b.a(uVar, event, this.f9606a);
    }
}
