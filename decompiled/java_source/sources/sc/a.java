package sc;

import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile a f75319c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f75320a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f75321b;

    private a() {
        this(null);
    }

    public a(c cVar) {
        this.f75321b = false;
        this.f75320a = cVar == null ? c.c() : cVar;
    }

    public static a e() {
        if (f75319c == null) {
            synchronized (a.class) {
                try {
                    if (f75319c == null) {
                        f75319c = new a();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f75319c;
    }

    public void a(String str) {
        if (this.f75321b) {
            this.f75320a.a(str);
        }
    }

    public void b(String str, Object... objArr) {
        if (this.f75321b) {
            this.f75320a.a(String.format(Locale.ENGLISH, str, objArr));
        }
    }

    public void c(String str) {
        if (this.f75321b) {
            this.f75320a.b(str);
        }
    }

    public void d(String str, Object... objArr) {
        if (this.f75321b) {
            this.f75320a.b(String.format(Locale.ENGLISH, str, objArr));
        }
    }

    public void f(String str) {
        if (this.f75321b) {
            this.f75320a.d(str);
        }
    }

    public void g(String str, Object... objArr) {
        if (this.f75321b) {
            this.f75320a.d(String.format(Locale.ENGLISH, str, objArr));
        }
    }

    public boolean h() {
        return this.f75321b;
    }

    public void i(boolean z10) {
        this.f75321b = z10;
    }

    public void j(String str) {
        if (this.f75321b) {
            this.f75320a.e(str);
        }
    }

    public void k(String str, Object... objArr) {
        if (this.f75321b) {
            this.f75320a.e(String.format(Locale.ENGLISH, str, objArr));
        }
    }
}
