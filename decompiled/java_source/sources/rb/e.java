package rb;

import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final b f74246c = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final vb.g f74247a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f74248b;

    private static final class b implements c {
        private b() {
        }

        @Override // rb.c
        public void a() {
        }

        @Override // rb.c
        public String b() {
            return null;
        }

        @Override // rb.c
        public byte[] c() {
            return null;
        }

        @Override // rb.c
        public void d() {
        }

        @Override // rb.c
        public void e(long j11, String str) {
        }
    }

    public e(vb.g gVar) {
        this.f74247a = gVar;
        this.f74248b = f74246c;
    }

    public e(vb.g gVar, String str) {
        this(gVar);
        e(str);
    }

    private File d(String str) {
        return this.f74247a.q(str, "userlog");
    }

    public void a() {
        this.f74248b.d();
    }

    public byte[] b() {
        return this.f74248b.c();
    }

    public String c() {
        return this.f74248b.b();
    }

    public final void e(String str) {
        this.f74248b.a();
        this.f74248b = f74246c;
        if (str == null) {
            return;
        }
        f(d(str), 65536);
    }

    void f(File file, int i11) {
        this.f74248b = new h(file, i11);
    }

    public void g(long j11, String str) {
        this.f74248b.e(j11, str);
    }
}
