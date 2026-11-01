package ht;

/* JADX INFO: loaded from: classes7.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f64838a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f64839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f64840c;

    private c() {
    }

    public final boolean a(int i11, long j11) {
        if (f64840c != i11) {
            f64840c = i11;
            f64839b = System.currentTimeMillis();
            return false;
        }
        if (System.currentTimeMillis() - f64839b <= j11) {
            return true;
        }
        f64840c = i11;
        f64839b = System.currentTimeMillis();
        return false;
    }
}
