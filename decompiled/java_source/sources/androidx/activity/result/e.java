package androidx.activity.result;

import f.g;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f923c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f925e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f926f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private g.f f921a = g.c.f62116a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f922b = f.e.f62111b.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private g.b f924d = g.b.a.f62114a;

    public static final class a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f929c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f931e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f932f;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private g.f f927a = g.c.f62116a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f928b = f.e.f62111b.a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private g.b f930d = g.b.a.f62114a;

        public final e a() {
            e eVar = new e();
            eVar.k(this.f927a);
            eVar.j(this.f928b);
            eVar.l(this.f929c);
            eVar.i(this.f930d);
            eVar.h(this.f931e);
            eVar.g(this.f932f);
            return eVar;
        }

        public final a b(g.b defaultTab) {
            Intrinsics.h(defaultTab, "defaultTab");
            this.f930d = defaultTab;
            return this;
        }

        public final a c(int i11) {
            this.f928b = i11;
            return this;
        }

        public final a d(g.f mediaType) {
            Intrinsics.h(mediaType, "mediaType");
            this.f927a = mediaType;
            return this;
        }

        public final a e(boolean z10) {
            this.f929c = z10;
            return this;
        }
    }

    public final long a() {
        return this.f926f;
    }

    public final g.b b() {
        return this.f924d;
    }

    public final int c() {
        return this.f922b;
    }

    public final g.f d() {
        return this.f921a;
    }

    public final boolean e() {
        return this.f925e;
    }

    public final boolean f() {
        return this.f923c;
    }

    public final void g(long j11) {
        this.f926f = j11;
    }

    public final void h(boolean z10) {
        this.f925e = z10;
    }

    public final void i(g.b bVar) {
        Intrinsics.h(bVar, "<set-?>");
        this.f924d = bVar;
    }

    public final void j(int i11) {
        this.f922b = i11;
    }

    public final void k(g.f fVar) {
        Intrinsics.h(fVar, "<set-?>");
        this.f921a = fVar;
    }

    public final void l(boolean z10) {
        this.f923c = z10;
    }
}
