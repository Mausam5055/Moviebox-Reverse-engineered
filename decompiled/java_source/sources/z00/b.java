package z00;

/* JADX INFO: loaded from: classes7.dex */
public class b implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f79155a;

    public b() {
    }

    public b(c cVar) {
        a(cVar);
    }

    public void a(c cVar) {
        if (this.f79155a != null) {
            throw new IllegalStateException("The Not ResourceSelector accepts a single nested ResourceSelector");
        }
        this.f79155a = cVar;
    }
}
