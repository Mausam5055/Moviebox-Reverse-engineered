package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
abstract class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c0 f8750a = c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c0 f8751b = new d0();

    static c0 a() {
        return f8750a;
    }

    static c0 b() {
        return f8751b;
    }

    private static c0 c() {
        if (x0.f8931d) {
            return null;
        }
        try {
            return (c0) Class.forName("androidx.datastore.preferences.protobuf.ListFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
            return null;
        }
    }
}
