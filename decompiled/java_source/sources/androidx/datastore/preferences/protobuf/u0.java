package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
abstract class u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final s0 f8913a = c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final s0 f8914b = new t0();

    static s0 a() {
        return f8913a;
    }

    static s0 b() {
        return f8914b;
    }

    private static s0 c() {
        if (x0.f8931d) {
            return null;
        }
        try {
            return (s0) Class.forName("androidx.datastore.preferences.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
            return null;
        }
    }
}
