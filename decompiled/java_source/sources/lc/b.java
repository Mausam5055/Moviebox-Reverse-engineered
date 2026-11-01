package lc;

/* JADX INFO: loaded from: classes5.dex */
public class b implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f68805a;

    private b() {
    }

    public static b a() {
        if (f68805a == null) {
            f68805a = new b();
        }
        return f68805a;
    }

    @Override // lc.a
    public long currentTimeMillis() {
        return System.currentTimeMillis();
    }
}
