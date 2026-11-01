package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
abstract class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final i0 f8847a = c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final i0 f8848b = new j0();

    static i0 a() {
        return f8847a;
    }

    static i0 b() {
        return f8848b;
    }

    private static i0 c() {
        if (x0.f8931d) {
            return null;
        }
        try {
            return (i0) Class.forName("androidx.datastore.preferences.protobuf.MapFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
            return null;
        }
    }
}
