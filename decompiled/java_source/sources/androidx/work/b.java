package androidx.work;

import android.os.Build;
import java.util.concurrent.Executor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.m1;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final C0131b f15416v = new C0131b(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f15417a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final CoroutineContext f15418b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f15419c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final androidx.work.a f15420d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final m0 f15421e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final l f15422f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final d0 f15423g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.core.util.a f15424h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.core.util.a f15425i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final androidx.core.util.a f15426j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final androidx.core.util.a f15427k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final String f15428l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final long f15429m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f15430n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f15431o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f15432p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f15433q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f15434r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final boolean f15435s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final boolean f15436t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final f0 f15437u;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Executor f15438a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private CoroutineContext f15439b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private m0 f15440c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private l f15441d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Executor f15442e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private androidx.work.a f15443f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private d0 f15444g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private androidx.core.util.a f15445h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private androidx.core.util.a f15446i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private androidx.core.util.a f15447j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private androidx.core.util.a f15448k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private String f15449l;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f15452o;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private f0 f15457t;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private long f15450m = 600000;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f15451n = 4;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f15453p = Integer.MAX_VALUE;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private int f15454q = 20;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private int f15455r = 8;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private boolean f15456s = true;

        public final b a() {
            return new b(this);
        }

        public final androidx.work.a b() {
            return this.f15443f;
        }

        public final int c() {
            return this.f15455r;
        }

        public final String d() {
            return this.f15449l;
        }

        public final Executor e() {
            return this.f15438a;
        }

        public final androidx.core.util.a f() {
            return this.f15445h;
        }

        public final l g() {
            return this.f15441d;
        }

        public final int h() {
            return this.f15451n;
        }

        public final boolean i() {
            return this.f15456s;
        }

        public final int j() {
            return this.f15453p;
        }

        public final int k() {
            return this.f15454q;
        }

        public final int l() {
            return this.f15452o;
        }

        public final long m() {
            return this.f15450m;
        }

        public final d0 n() {
            return this.f15444g;
        }

        public final androidx.core.util.a o() {
            return this.f15446i;
        }

        public final Executor p() {
            return this.f15442e;
        }

        public final f0 q() {
            return this.f15457t;
        }

        public final CoroutineContext r() {
            return this.f15439b;
        }

        public final androidx.core.util.a s() {
            return this.f15448k;
        }

        public final m0 t() {
            return this.f15440c;
        }

        public final androidx.core.util.a u() {
            return this.f15447j;
        }

        public final a v(String processName) {
            Intrinsics.h(processName, "processName");
            this.f15449l = processName;
            return this;
        }

        public final a w(androidx.core.util.a exceptionHandler) {
            Intrinsics.h(exceptionHandler, "exceptionHandler");
            this.f15445h = exceptionHandler;
            return this;
        }

        public final a x(int i11) {
            this.f15451n = i11;
            return this;
        }
    }

    /* JADX INFO: renamed from: androidx.work.b$b, reason: collision with other inner class name */
    public static final class C0131b {
        private C0131b() {
        }

        public /* synthetic */ C0131b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public interface c {
        b getWorkManagerConfiguration();
    }

    public b(a builder) {
        Intrinsics.h(builder, "builder");
        CoroutineContext coroutineContextR = builder.r();
        Executor executorE = builder.e();
        if (executorE == null) {
            executorE = coroutineContextR != null ? androidx.work.c.d(coroutineContextR) : null;
            if (executorE == null) {
                executorE = androidx.work.c.e(false);
            }
        }
        this.f15417a = executorE;
        if (coroutineContextR == null) {
            coroutineContextR = builder.e() != null ? m1.b(executorE) : y0.a();
        }
        this.f15418b = coroutineContextR;
        this.f15435s = builder.p() == null;
        Executor executorP = builder.p();
        this.f15419c = executorP == null ? androidx.work.c.e(true) : executorP;
        androidx.work.a aVarB = builder.b();
        this.f15420d = aVarB == null ? new e0() : aVarB;
        m0 m0VarT = builder.t();
        this.f15421e = m0VarT == null ? h.f15488a : m0VarT;
        l lVarG = builder.g();
        this.f15422f = lVarG == null ? u.f16056a : lVarG;
        d0 d0VarN = builder.n();
        this.f15423g = d0VarN == null ? new androidx.work.impl.d() : d0VarN;
        this.f15430n = builder.h();
        this.f15431o = builder.l();
        this.f15432p = builder.j();
        this.f15434r = Build.VERSION.SDK_INT == 23 ? builder.k() / 2 : builder.k();
        this.f15424h = builder.f();
        this.f15425i = builder.o();
        this.f15426j = builder.u();
        this.f15427k = builder.s();
        this.f15428l = builder.d();
        this.f15429m = builder.m();
        this.f15433q = builder.c();
        this.f15436t = builder.i();
        f0 f0VarQ = builder.q();
        this.f15437u = f0VarQ == null ? androidx.work.c.f() : f0VarQ;
    }

    public final androidx.work.a a() {
        return this.f15420d;
    }

    public final int b() {
        return this.f15433q;
    }

    public final String c() {
        return this.f15428l;
    }

    public final Executor d() {
        return this.f15417a;
    }

    public final androidx.core.util.a e() {
        return this.f15424h;
    }

    public final l f() {
        return this.f15422f;
    }

    public final int g() {
        return this.f15432p;
    }

    public final int h() {
        return this.f15434r;
    }

    public final int i() {
        return this.f15431o;
    }

    public final int j() {
        return this.f15430n;
    }

    public final d0 k() {
        return this.f15423g;
    }

    public final androidx.core.util.a l() {
        return this.f15425i;
    }

    public final Executor m() {
        return this.f15419c;
    }

    public final f0 n() {
        return this.f15437u;
    }

    public final CoroutineContext o() {
        return this.f15418b;
    }

    public final androidx.core.util.a p() {
        return this.f15427k;
    }

    public final m0 q() {
        return this.f15421e;
    }

    public final androidx.core.util.a r() {
        return this.f15426j;
    }

    public final boolean s() {
        return this.f15436t;
    }
}
