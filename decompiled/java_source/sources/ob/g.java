package ob;

import android.util.Log;

/* JADX INFO: loaded from: classes5.dex */
public class g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final g f70955c = new g("FirebaseCrashlytics");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f70956a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f70957b = 4;

    public g(String str) {
        this.f70956a = str;
    }

    private boolean a(int i11) {
        return this.f70957b <= i11 || Log.isLoggable(this.f70956a, i11);
    }

    public static g f() {
        return f70955c;
    }

    public void b(String str) {
        c(str, null);
    }

    public void c(String str, Throwable th2) {
        a(3);
    }

    public void d(String str) {
        e(str, null);
    }

    public void e(String str, Throwable th2) {
        if (a(6)) {
            Log.e(this.f70956a, str, th2);
        }
    }

    public void g(String str) {
        h(str, null);
    }

    public void h(String str, Throwable th2) {
        a(4);
    }

    public void i(String str) {
        j(str, null);
    }

    public void j(String str, Throwable th2) {
        if (a(2)) {
            Log.v(this.f70956a, str, th2);
        }
    }

    public void k(String str) {
        l(str, null);
    }

    public void l(String str, Throwable th2) {
        if (a(5)) {
            Log.w(this.f70956a, str, th2);
        }
    }
}
