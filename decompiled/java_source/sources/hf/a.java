package hf;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final jf.a f64428a = new jf.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f64429b = 0;

    protected final void a(int i11) {
        this.f64429b += i11;
    }

    public final int b() {
        int iK = this.f64428a.k(this.f64429b);
        return iK < 0 ? this.f64429b : this.f64428a.p(iK);
    }

    public final int c() {
        return this.f64429b;
    }

    public void d() {
        this.f64428a.e();
        this.f64429b = 0;
    }

    public final void e(int i11, int i12) {
        this.f64428a.n(i11, i12);
    }
}
