package sc;

import android.util.Log;

/* JADX INFO: loaded from: classes5.dex */
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f75322a;

    private c() {
    }

    public static synchronized c c() {
        try {
            if (f75322a == null) {
                f75322a = new c();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f75322a;
    }

    void a(String str) {
    }

    void b(String str) {
        Log.e("FirebasePerformance", str);
    }

    void d(String str) {
    }

    void e(String str) {
        Log.w("FirebasePerformance", str);
    }
}
