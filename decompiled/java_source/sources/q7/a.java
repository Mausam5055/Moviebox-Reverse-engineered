package q7;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f73113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f73114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f73115c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f73116d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f73117e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f73118f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f73119g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final u7.b f73120h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final x7.b f73121i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final w7.b f73122j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final z7.b f73123k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final y7.b f73124l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final t7.a f73125m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Map f73126n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final List f73127o;

    /* JADX INFO: renamed from: q7.a$a, reason: collision with other inner class name */
    public static class C0892a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f73128a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f73129b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f73130c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f73131d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f73132e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f73133f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f73134g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private u7.b f73135h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private x7.b f73136i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private w7.b f73137j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private z7.b f73138k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private y7.b f73139l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private t7.a f73140m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private Map f73141n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private List f73142o;

        public C0892a() {
            this.f73128a = Integer.MIN_VALUE;
            this.f73129b = "X-LOG";
        }

        public C0892a(a aVar) {
            this.f73128a = Integer.MIN_VALUE;
            this.f73129b = "X-LOG";
            this.f73128a = aVar.f73113a;
            this.f73129b = aVar.f73114b;
            this.f73130c = aVar.f73115c;
            this.f73131d = aVar.f73116d;
            this.f73132e = aVar.f73117e;
            this.f73133f = aVar.f73118f;
            this.f73134g = aVar.f73119g;
            this.f73135h = aVar.f73120h;
            this.f73136i = aVar.f73121i;
            this.f73137j = aVar.f73122j;
            this.f73138k = aVar.f73123k;
            this.f73139l = aVar.f73124l;
            this.f73140m = aVar.f73125m;
            if (aVar.f73126n != null) {
                this.f73141n = new HashMap(aVar.f73126n);
            }
            if (aVar.f73127o != null) {
                this.f73142o = new ArrayList(aVar.f73127o);
            }
        }

        private void y() {
            if (this.f73135h == null) {
                this.f73135h = b8.a.h();
            }
            if (this.f73136i == null) {
                this.f73136i = b8.a.n();
            }
            if (this.f73137j == null) {
                this.f73137j = b8.a.l();
            }
            if (this.f73138k == null) {
                this.f73138k = b8.a.k();
            }
            if (this.f73139l == null) {
                this.f73139l = b8.a.j();
            }
            if (this.f73140m == null) {
                this.f73140m = b8.a.c();
            }
            if (this.f73141n == null) {
                this.f73141n = new HashMap(b8.a.a());
            }
        }

        public C0892a A(u7.b bVar) {
            this.f73135h = bVar;
            return this;
        }

        public C0892a B(int i11) {
            this.f73128a = i11;
            return this;
        }

        C0892a C(Map map) {
            this.f73141n = map;
            return this;
        }

        public C0892a D(y7.b bVar) {
            this.f73139l = bVar;
            return this;
        }

        public C0892a E(String str) {
            this.f73129b = str;
            return this;
        }

        public C0892a F(z7.b bVar) {
            this.f73138k = bVar;
            return this;
        }

        public C0892a G(w7.b bVar) {
            this.f73137j = bVar;
            return this;
        }

        public C0892a H(x7.b bVar) {
            this.f73136i = bVar;
            return this;
        }

        public C0892a p(a8.a aVar) {
            if (this.f73142o == null) {
                this.f73142o = new ArrayList();
            }
            this.f73142o.add(aVar);
            return this;
        }

        public C0892a q(t7.a aVar) {
            this.f73140m = aVar;
            return this;
        }

        public a r() {
            y();
            return new a(this);
        }

        public C0892a s() {
            this.f73134g = false;
            return this;
        }

        public C0892a t() {
            this.f73131d = false;
            this.f73132e = null;
            this.f73133f = 0;
            return this;
        }

        public C0892a u() {
            this.f73130c = false;
            return this;
        }

        public C0892a v() {
            this.f73134g = true;
            return this;
        }

        public C0892a w(String str, int i11) {
            this.f73131d = true;
            this.f73132e = str;
            this.f73133f = i11;
            return this;
        }

        public C0892a x() {
            this.f73130c = true;
            return this;
        }

        C0892a z(List list) {
            this.f73142o = list;
            return this;
        }
    }

    a(C0892a c0892a) {
        this.f73113a = c0892a.f73128a;
        this.f73114b = c0892a.f73129b;
        this.f73115c = c0892a.f73130c;
        this.f73116d = c0892a.f73131d;
        this.f73117e = c0892a.f73132e;
        this.f73118f = c0892a.f73133f;
        this.f73119g = c0892a.f73134g;
        this.f73120h = c0892a.f73135h;
        this.f73121i = c0892a.f73136i;
        this.f73122j = c0892a.f73137j;
        this.f73123k = c0892a.f73138k;
        this.f73124l = c0892a.f73139l;
        this.f73125m = c0892a.f73140m;
        this.f73126n = c0892a.f73141n;
        this.f73127o = c0892a.f73142o;
    }
}
