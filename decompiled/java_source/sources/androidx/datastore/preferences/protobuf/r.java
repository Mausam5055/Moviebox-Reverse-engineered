package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
abstract class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final p f8900a = new q();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final p f8901b = c();

    static p a() {
        p pVar = f8901b;
        if (pVar != null) {
            return pVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    static p b() {
        return f8900a;
    }

    private static p c() {
        if (x0.f8931d) {
            return null;
        }
        try {
            return (p) Class.forName("androidx.datastore.preferences.protobuf.ExtensionSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
            return null;
        }
    }
}
