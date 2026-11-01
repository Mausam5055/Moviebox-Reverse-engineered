package bm;

import com.transsion.core.log.ObjectLogUtils;

/* JADX INFO: loaded from: classes5.dex */
public class b implements c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static b f16625d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f16626a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f16627b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ObjectLogUtils f16628c = new ObjectLogUtils.a().o(true).r(true).q(false).m();

    private b() {
    }

    public static b b() {
        if (f16625d == null) {
            synchronized (b.class) {
                try {
                    if (f16625d == null) {
                        f16625d = new b();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f16625d;
    }

    @Override // bm.c
    public void a(boolean z10) {
        if (z10 != this.f16626a) {
            this.f16626a = z10;
        }
    }

    public boolean c() {
        return this.f16626a;
    }

    @Override // bm.c
    public void d(String str, String str2) {
        f(2, str, str2);
    }

    @Override // bm.c
    public void e(String str, String str2) {
        f(6, str, str2);
    }

    @Override // bm.c
    public void e(String str, String str2, Throwable th2) {
        g(6, str, str2, th2);
    }

    public void f(int i11, String str, String str2) {
        g(i11, str, str2, null);
    }

    public void g(int i11, String str, String str2, Throwable th2) {
        if (c() && h(i11)) {
            if (i11 == 2) {
                this.f16628c.y(str, str2, th2);
                return;
            }
            if (i11 == 3) {
                this.f16628c.h(str, str2, th2);
                return;
            }
            if (i11 == 4) {
                this.f16628c.o(str, str2, th2);
            } else if (i11 == 5) {
                this.f16628c.A(str, str2, th2);
            } else {
                if (i11 != 6) {
                    return;
                }
                this.f16628c.j(str, str2, th2);
            }
        }
    }

    public boolean h(int i11) {
        return i11 >= this.f16627b;
    }

    @Override // bm.c
    public void v(String str, String str2) {
        f(2, str, str2);
    }
}
