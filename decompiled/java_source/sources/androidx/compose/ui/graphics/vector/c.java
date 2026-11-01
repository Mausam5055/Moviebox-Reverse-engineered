package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.c1;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.u1;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final b f4746k = new b(null);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static int f4747l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4748a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f4749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f4750c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f4751d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f4752e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final j f4753f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f4754g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f4755h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f4756i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f4757j;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f4758a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final float f4759b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final float f4760c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f4761d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final float f4762e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final long f4763f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int f4764g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final boolean f4765h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final ArrayList f4766i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private C0048a f4767j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f4768k;

        /* JADX INFO: renamed from: androidx.compose.ui.graphics.vector.c$a$a, reason: collision with other inner class name */
        private static final class C0048a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private String f4769a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private float f4770b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private float f4771c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private float f4772d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private float f4773e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private float f4774f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private float f4775g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            private float f4776h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            private List f4777i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            private List f4778j;

            public C0048a() {
                this(null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, null, null, 1023, null);
            }

            public C0048a(String str, float f11, float f12, float f13, float f14, float f15, float f16, float f17, List list, List list2) {
                this.f4769a = str;
                this.f4770b = f11;
                this.f4771c = f12;
                this.f4772d = f13;
                this.f4773e = f14;
                this.f4774f = f15;
                this.f4775g = f16;
                this.f4776h = f17;
                this.f4777i = list;
                this.f4778j = list2;
            }

            public /* synthetic */ C0048a(String str, float f11, float f12, float f13, float f14, float f15, float f16, float f17, List list, List list2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
                this((i11 & 1) != 0 ? "" : str, (i11 & 2) != 0 ? 0.0f : f11, (i11 & 4) != 0 ? 0.0f : f12, (i11 & 8) != 0 ? 0.0f : f13, (i11 & 16) != 0 ? 1.0f : f14, (i11 & 32) == 0 ? f15 : 1.0f, (i11 & 64) != 0 ? 0.0f : f16, (i11 & 128) == 0 ? f17 : 0.0f, (i11 & 256) != 0 ? k.d() : list, (i11 & 512) != 0 ? new ArrayList() : list2);
            }

            public final List a() {
                return this.f4778j;
            }

            public final List b() {
                return this.f4777i;
            }

            public final String c() {
                return this.f4769a;
            }

            public final float d() {
                return this.f4771c;
            }

            public final float e() {
                return this.f4772d;
            }

            public final float f() {
                return this.f4770b;
            }

            public final float g() {
                return this.f4773e;
            }

            public final float h() {
                return this.f4774f;
            }

            public final float i() {
                return this.f4775g;
            }

            public final float j() {
                return this.f4776h;
            }
        }

        private a(String str, float f11, float f12, float f13, float f14, long j11, int i11, boolean z10) {
            this.f4758a = str;
            this.f4759b = f11;
            this.f4760c = f12;
            this.f4761d = f13;
            this.f4762e = f14;
            this.f4763f = j11;
            this.f4764g = i11;
            this.f4765h = z10;
            ArrayList arrayList = new ArrayList();
            this.f4766i = arrayList;
            C0048a c0048a = new C0048a(null, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, null, null, 1023, null);
            this.f4767j = c0048a;
            d.f(arrayList, c0048a);
        }

        public /* synthetic */ a(String str, float f11, float f12, float f13, float f14, long j11, int i11, boolean z10, int i12, DefaultConstructorMarker defaultConstructorMarker) {
            this((i12 & 1) != 0 ? "" : str, f11, f12, f13, f14, (i12 & 32) != 0 ? u1.f4658b.e() : j11, (i12 & 64) != 0 ? c1.f4292a.z() : i11, (i12 & 128) != 0 ? false : z10, null);
        }

        public /* synthetic */ a(String str, float f11, float f12, float f13, float f14, long j11, int i11, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, f11, f12, f13, f14, j11, i11, z10);
        }

        private final j d(C0048a c0048a) {
            return new j(c0048a.c(), c0048a.f(), c0048a.d(), c0048a.e(), c0048a.g(), c0048a.h(), c0048a.i(), c0048a.j(), c0048a.b(), c0048a.a());
        }

        private final void g() {
            if (this.f4768k) {
                g0.a.b("ImageVector.Builder is single use, create a new instance to create a new ImageVector");
            }
        }

        private final C0048a h() {
            return (C0048a) d.d(this.f4766i);
        }

        public final a a(String str, float f11, float f12, float f13, float f14, float f15, float f16, float f17, List list) {
            g();
            d.f(this.f4766i, new C0048a(str, f11, f12, f13, f14, f15, f16, f17, list, null, 512, null));
            return this;
        }

        public final a c(List list, int i11, String str, j1 j1Var, float f11, j1 j1Var2, float f12, float f13, int i12, int i13, float f14, float f15, float f16, float f17) {
            g();
            h().a().add(new n(str, list, i11, j1Var, f11, j1Var2, f12, f13, i12, i13, f14, f15, f16, f17, null));
            return this;
        }

        public final c e() {
            g();
            while (this.f4766i.size() > 1) {
                f();
            }
            c cVar = new c(this.f4758a, this.f4759b, this.f4760c, this.f4761d, this.f4762e, d(this.f4767j), this.f4763f, this.f4764g, this.f4765h, 0, 512, null);
            this.f4768k = true;
            return cVar;
        }

        public final a f() {
            g();
            h().a().add(d((C0048a) d.e(this.f4766i)));
            return this;
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            int i11;
            synchronized (this) {
                i11 = c.f4747l;
                c.f4747l = i11 + 1;
            }
            return i11;
        }
    }

    private c(String str, float f11, float f12, float f13, float f14, j jVar, long j11, int i11, boolean z10, int i12) {
        this.f4748a = str;
        this.f4749b = f11;
        this.f4750c = f12;
        this.f4751d = f13;
        this.f4752e = f14;
        this.f4753f = jVar;
        this.f4754g = j11;
        this.f4755h = i11;
        this.f4756i = z10;
        this.f4757j = i12;
    }

    public /* synthetic */ c(String str, float f11, float f12, float f13, float f14, j jVar, long j11, int i11, boolean z10, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, f11, f12, f13, f14, jVar, j11, i11, z10, (i13 & 512) != 0 ? f4746k.a() : i12, null);
    }

    public /* synthetic */ c(String str, float f11, float f12, float f13, float f14, j jVar, long j11, int i11, boolean z10, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, f11, f12, f13, f14, jVar, j11, i11, z10, i12);
    }

    public final boolean c() {
        return this.f4756i;
    }

    public final float d() {
        return this.f4750c;
    }

    public final float e() {
        return this.f4749b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return Intrinsics.c(this.f4748a, cVar.f4748a) && o0.i.i(this.f4749b, cVar.f4749b) && o0.i.i(this.f4750c, cVar.f4750c) && this.f4751d == cVar.f4751d && this.f4752e == cVar.f4752e && Intrinsics.c(this.f4753f, cVar.f4753f) && u1.m(this.f4754g, cVar.f4754g) && c1.E(this.f4755h, cVar.f4755h) && this.f4756i == cVar.f4756i;
    }

    public final int f() {
        return this.f4757j;
    }

    public final String g() {
        return this.f4748a;
    }

    public final j h() {
        return this.f4753f;
    }

    public int hashCode() {
        return (((((((((((((((this.f4748a.hashCode() * 31) + o0.i.j(this.f4749b)) * 31) + o0.i.j(this.f4750c)) * 31) + Float.floatToIntBits(this.f4751d)) * 31) + Float.floatToIntBits(this.f4752e)) * 31) + this.f4753f.hashCode()) * 31) + u1.s(this.f4754g)) * 31) + c1.F(this.f4755h)) * 31) + androidx.compose.foundation.e.a(this.f4756i);
    }

    public final int i() {
        return this.f4755h;
    }

    public final long j() {
        return this.f4754g;
    }

    public final float k() {
        return this.f4752e;
    }

    public final float l() {
        return this.f4751d;
    }
}
