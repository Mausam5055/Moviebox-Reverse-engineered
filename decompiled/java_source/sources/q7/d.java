package q7;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private q7.a f73148a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private e8.c f73149b;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f73150a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f73151b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f73152c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f73153d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f73154e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f73155f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f73156g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f73157h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private boolean f73158i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private boolean f73159j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private u7.b f73160k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private x7.b f73161l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private w7.b f73162m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private z7.b f73163n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private y7.b f73164o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private t7.a f73165p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private Map f73166q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private List f73167r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private e8.c f73168s;

        public a() {
            e.a();
        }

        public d t() {
            return new d(this);
        }

        public void u(Object[] objArr) {
            t().b(objArr);
        }

        public void v(Object[] objArr) {
            t().d(objArr);
        }

        public void w(Object[] objArr) {
            t().f(objArr);
        }

        public a x(String str) {
            this.f73151b = str;
            return this;
        }

        public void y(Object[] objArr) {
            t().j(objArr);
        }

        public void z(Object[] objArr) {
            t().k(objArr);
        }
    }

    d(q7.a aVar, e8.c cVar) {
        this.f73148a = aVar;
        this.f73149b = cVar;
    }

    d(a aVar) {
        q7.a.C0892a c0892a = new q7.a.C0892a(e.f73170b);
        if (aVar.f73150a != 0) {
            c0892a.B(aVar.f73150a);
        }
        if (aVar.f73151b != null) {
            c0892a.E(aVar.f73151b);
        }
        if (aVar.f73153d) {
            if (aVar.f73152c) {
                c0892a.x();
            } else {
                c0892a.u();
            }
        }
        if (aVar.f73157h) {
            if (aVar.f73154e) {
                c0892a.w(aVar.f73155f, aVar.f73156g);
            } else {
                c0892a.t();
            }
        }
        if (aVar.f73159j) {
            if (aVar.f73158i) {
                c0892a.v();
            } else {
                c0892a.s();
            }
        }
        if (aVar.f73160k != null) {
            c0892a.A(aVar.f73160k);
        }
        if (aVar.f73161l != null) {
            c0892a.H(aVar.f73161l);
        }
        if (aVar.f73162m != null) {
            c0892a.G(aVar.f73162m);
        }
        if (aVar.f73163n != null) {
            c0892a.F(aVar.f73163n);
        }
        if (aVar.f73164o != null) {
            c0892a.D(aVar.f73164o);
        }
        if (aVar.f73165p != null) {
            c0892a.q(aVar.f73165p);
        }
        if (aVar.f73166q != null) {
            c0892a.C(aVar.f73166q);
        }
        if (aVar.f73167r != null) {
            c0892a.z(aVar.f73167r);
        }
        this.f73148a = c0892a.r();
        if (aVar.f73168s != null) {
            this.f73149b = aVar.f73168s;
        } else {
            this.f73149b = e.f73171c;
        }
    }

    private void h(int i11, Object[] objArr) {
        if (i11 < this.f73148a.f73113a) {
            return;
        }
        i(i11, Arrays.deepToString(objArr));
    }

    private void i(int i11, String str) {
        String strA;
        String string;
        q7.a aVar = this.f73148a;
        String str2 = aVar.f73114b;
        String strA2 = aVar.f73115c ? aVar.f73123k.a(Thread.currentThread()) : null;
        q7.a aVar2 = this.f73148a;
        if (aVar2.f73116d) {
            y7.b bVar = aVar2.f73124l;
            StackTraceElement[] stackTrace = new Throwable().getStackTrace();
            q7.a aVar3 = this.f73148a;
            strA = bVar.a(d8.a.b(stackTrace, aVar3.f73117e, aVar3.f73118f));
        } else {
            strA = null;
        }
        if (this.f73148a.f73127o != null) {
            b bVar2 = new b(i11, str2, strA2, strA, str);
            for (a8.a aVar4 : this.f73148a.f73127o) {
                bVar2 = aVar4.a(bVar2);
                if (bVar2 == null) {
                    return;
                }
                if (bVar2.f73144b == null || bVar2.f73145c == null) {
                    b8.b.e().c("Interceptor " + aVar4 + " should not remove the tag or message of a log, if you don't want to print this log, just return a null when intercept.");
                    return;
                }
            }
            i11 = bVar2.f73143a;
            str2 = bVar2.f73144b;
            strA2 = bVar2.f73146d;
            strA = bVar2.f73147e;
            str = bVar2.f73145c;
        }
        e8.c cVar = this.f73149b;
        q7.a aVar5 = this.f73148a;
        if (aVar5.f73119g) {
            string = aVar5.f73125m.a(new String[]{strA2, strA, str});
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strA2 != null ? strA2 + b8.c.f16248a : "");
            sb2.append(strA != null ? strA + b8.c.f16248a : "");
            sb2.append(str);
            string = sb2.toString();
        }
        cVar.a(i11, str2, string);
    }

    public void a(String str) {
        g(3, str);
    }

    public void b(Object[] objArr) {
        h(3, objArr);
    }

    public void c(String str) {
        g(6, str);
    }

    public void d(Object[] objArr) {
        h(6, objArr);
    }

    public void e(String str) {
        g(4, str);
    }

    public void f(Object[] objArr) {
        h(4, objArr);
    }

    void g(int i11, String str) {
        if (i11 < this.f73148a.f73113a) {
            return;
        }
        if (str == null) {
            str = "";
        }
        i(i11, str);
    }

    public void j(Object[] objArr) {
        h(2, objArr);
    }

    public void k(Object[] objArr) {
        h(5, objArr);
    }
}
