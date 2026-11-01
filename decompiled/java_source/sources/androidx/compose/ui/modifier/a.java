package androidx.compose.ui.modifier;

/* JADX INFO: loaded from: classes.dex */
public final class a extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private j f5204a;

    public a(j jVar) {
        super(null);
        this.f5204a = jVar;
    }

    @Override // androidx.compose.ui.modifier.f
    public boolean a(c cVar) {
        return cVar == this.f5204a.getKey();
    }

    @Override // androidx.compose.ui.modifier.f
    public Object b(c cVar) {
        if (!(cVar == this.f5204a.getKey())) {
            g0.a.b("Check failed.");
        }
        return this.f5204a.getValue();
    }

    public final void c(j jVar) {
        this.f5204a = jVar;
    }
}
