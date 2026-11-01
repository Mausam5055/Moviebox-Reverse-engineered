package h10;

/* JADX INFO: loaded from: classes7.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final int f64128a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected l f64129b;

    public l(int i11) {
        this(i11, null);
    }

    public l(int i11, l lVar) {
        if (i11 != 393216 && i11 != 327680 && i11 != 262144 && i11 != 458752) {
            throw new IllegalArgumentException();
        }
        this.f64128a = i11;
        this.f64129b = lVar;
    }

    public abstract a a(String str, boolean z10);

    public abstract void b(c cVar);

    public abstract void c();

    public abstract a d(int i11, z zVar, String str, boolean z10);
}
