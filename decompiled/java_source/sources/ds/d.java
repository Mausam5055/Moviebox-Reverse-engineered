package ds;

/* JADX INFO: loaded from: classes7.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f61428a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f61429b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f61430c;

    private d() {
    }

    public final boolean a(int i11, long j11) {
        if (f61430c != i11) {
            f61430c = i11;
            f61429b = System.currentTimeMillis();
            return false;
        }
        if (System.currentTimeMillis() - f61429b <= j11) {
            return true;
        }
        f61430c = i11;
        f61429b = System.currentTimeMillis();
        return false;
    }
}
