package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
abstract class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f8738a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Class f8739b = a("libcore.io.Memory");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final boolean f8740c;

    static {
        f8740c = (f8738a || a("org.robolectric.Robolectric") == null) ? false : true;
    }

    private static Class a(String str) {
        try {
            return Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    static Class b() {
        return f8739b;
    }

    static boolean c() {
        return f8738a || !(f8739b == null || f8740c);
    }
}
