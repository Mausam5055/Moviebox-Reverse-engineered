package androidx.databinding;

/* JADX INFO: loaded from: classes.dex */
public class h extends c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final androidx.core.util.h f8549f = new androidx.core.util.h(10);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final c.a f8550g = new a();

    class a extends c.a {
        a() {
        }

        @Override // androidx.databinding.c.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(j.a aVar, j jVar, int i11, b bVar) {
            if (i11 == 1) {
                aVar.b(jVar, bVar.f8551a, bVar.f8552b);
                return;
            }
            if (i11 == 2) {
                aVar.c(jVar, bVar.f8551a, bVar.f8552b);
                return;
            }
            if (i11 == 3) {
                aVar.d(jVar, bVar.f8551a, bVar.f8553c, bVar.f8552b);
            } else if (i11 != 4) {
                aVar.a(jVar);
            } else {
                aVar.e(jVar, bVar.f8551a, bVar.f8552b);
            }
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f8551a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f8552b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f8553c;

        b() {
        }
    }

    public h() {
        super(f8550g);
    }

    private static b m(int i11, int i12, int i13) {
        b bVar = (b) f8549f.acquire();
        if (bVar == null) {
            bVar = new b();
        }
        bVar.f8551a = i11;
        bVar.f8553c = i12;
        bVar.f8552b = i13;
        return bVar;
    }

    public synchronized void n(j jVar, int i11, b bVar) {
        super.d(jVar, i11, bVar);
        if (bVar != null) {
            f8549f.release(bVar);
        }
    }

    public void o(j jVar, int i11, int i12) {
        n(jVar, 1, m(i11, 0, i12));
    }

    public void p(j jVar, int i11, int i12) {
        n(jVar, 2, m(i11, 0, i12));
    }

    public void q(j jVar, int i11, int i12) {
        n(jVar, 4, m(i11, 0, i12));
    }
}
