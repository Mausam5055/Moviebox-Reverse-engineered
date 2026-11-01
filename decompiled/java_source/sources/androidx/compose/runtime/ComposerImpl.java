package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ComposerImpl implements i {
    private int B;
    private int C;
    private boolean D;
    private final c E;
    private final z2 F;
    private boolean G;
    private boolean H;
    private i2 I;
    private j2 J;
    private m2 K;
    private boolean L;
    private n1 M;
    private s.a N;
    private final s.b O;
    private androidx.compose.runtime.c P;
    private s.c Q;
    private boolean R;
    private int S;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f3562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m f3563c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j2 f3564d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Set f3565e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private s.a f3566f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private s.a f3567g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final y f3568h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Pending f3570j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f3571k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f3572l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f3573m;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int[] f3575o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private androidx.collection.c0 f3576p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f3577q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f3578r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f3579s;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private androidx.compose.runtime.collection.a f3583w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f3584x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f3586z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final z2 f3569i = new z2();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final m0 f3574n = new m0();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final List f3580t = new ArrayList();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final m0 f3581u = new m0();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private n1 f3582v = androidx.compose.runtime.internal.e.a();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final m0 f3585y = new m0();
    private int A = -1;

    private static final class a implements e2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final b f3587a;

        public a(b bVar) {
            this.f3587a = bVar;
        }

        public final b a() {
            return this.f3587a;
        }

        @Override // androidx.compose.runtime.b2
        public void onAbandoned() {
            this.f3587a.s();
        }

        @Override // androidx.compose.runtime.b2
        public void onForgotten() {
            this.f3587a.s();
        }

        @Override // androidx.compose.runtime.b2
        public void onRemembered() {
        }
    }

    private final class b extends m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f3588a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f3589b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final boolean f3590c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final u f3591d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Set f3592e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final Set f3593f = new LinkedHashSet();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final i1 f3594g = r2.e(androidx.compose.runtime.internal.e.a(), r2.h());

        public b(int i11, boolean z10, boolean z11, u uVar) {
            this.f3588a = i11;
            this.f3589b = z10;
            this.f3590c = z11;
            this.f3591d = uVar;
        }

        private final n1 u() {
            return (n1) this.f3594g.getValue();
        }

        private final void v(n1 n1Var) {
            this.f3594g.setValue(n1Var);
        }

        @Override // androidx.compose.runtime.m
        public void a(y yVar, Function2 function2) {
            ComposerImpl.this.f3563c.a(yVar, function2);
        }

        @Override // androidx.compose.runtime.m
        public void b() {
            ComposerImpl.this.B--;
        }

        @Override // androidx.compose.runtime.m
        public boolean c() {
            return ComposerImpl.this.f3563c.c();
        }

        @Override // androidx.compose.runtime.m
        public boolean d() {
            return this.f3589b;
        }

        @Override // androidx.compose.runtime.m
        public boolean e() {
            return this.f3590c;
        }

        @Override // androidx.compose.runtime.m
        public n1 f() {
            return u();
        }

        @Override // androidx.compose.runtime.m
        public int g() {
            return this.f3588a;
        }

        @Override // androidx.compose.runtime.m
        public CoroutineContext h() {
            return ComposerImpl.this.f3563c.h();
        }

        @Override // androidx.compose.runtime.m
        public u i() {
            return this.f3591d;
        }

        @Override // androidx.compose.runtime.m
        public void j(y0 y0Var) {
            ComposerImpl.this.f3563c.j(y0Var);
        }

        @Override // androidx.compose.runtime.m
        public void k(y yVar) {
            ComposerImpl.this.f3563c.k(ComposerImpl.this.A0());
            ComposerImpl.this.f3563c.k(yVar);
        }

        @Override // androidx.compose.runtime.m
        public x0 l(y0 y0Var) {
            return ComposerImpl.this.f3563c.l(y0Var);
        }

        @Override // androidx.compose.runtime.m
        public void m(Set set) {
            Set hashSet = this.f3592e;
            if (hashSet == null) {
                hashSet = new HashSet();
                this.f3592e = hashSet;
            }
            hashSet.add(set);
        }

        @Override // androidx.compose.runtime.m
        public void n(i iVar) {
            Intrinsics.f(iVar, "null cannot be cast to non-null type androidx.compose.runtime.ComposerImpl");
            super.n((ComposerImpl) iVar);
            this.f3593f.add(iVar);
        }

        @Override // androidx.compose.runtime.m
        public void o(y yVar) {
            ComposerImpl.this.f3563c.o(yVar);
        }

        @Override // androidx.compose.runtime.m
        public void p() {
            ComposerImpl.this.B++;
        }

        @Override // androidx.compose.runtime.m
        public void q(i iVar) {
            Set<Set> set = this.f3592e;
            if (set != null) {
                for (Set set2 : set) {
                    Intrinsics.f(iVar, "null cannot be cast to non-null type androidx.compose.runtime.ComposerImpl");
                    set2.remove(((ComposerImpl) iVar).f3564d);
                }
            }
            TypeIntrinsics.a(this.f3593f).remove(iVar);
        }

        @Override // androidx.compose.runtime.m
        public void r(y yVar) {
            ComposerImpl.this.f3563c.r(yVar);
        }

        public final void s() {
            if (this.f3593f.isEmpty()) {
                return;
            }
            Set set = this.f3592e;
            if (set != null) {
                for (ComposerImpl composerImpl : this.f3593f) {
                    Iterator it = set.iterator();
                    while (it.hasNext()) {
                        ((Set) it.next()).remove(composerImpl.f3564d);
                    }
                }
            }
            this.f3593f.clear();
        }

        public final Set t() {
            return this.f3593f;
        }

        public final void w(n1 n1Var) {
            v(n1Var);
        }
    }

    public static final class c implements a0 {
        c() {
        }

        @Override // androidx.compose.runtime.a0
        public void a(z zVar) {
            ComposerImpl.this.B--;
        }

        @Override // androidx.compose.runtime.a0
        public void b(z zVar) {
            ComposerImpl.this.B++;
        }
    }

    public ComposerImpl(f fVar, m mVar, j2 j2Var, Set set, s.a aVar, s.a aVar2, y yVar) {
        this.f3562b = fVar;
        this.f3563c = mVar;
        this.f3564d = j2Var;
        this.f3565e = set;
        this.f3566f = aVar;
        this.f3567g = aVar2;
        this.f3568h = yVar;
        this.D = mVar.e() || mVar.c();
        this.E = new c();
        this.F = new z2();
        i2 i2VarW = j2Var.w();
        i2VarW.d();
        this.I = i2VarW;
        j2 j2Var2 = new j2();
        if (mVar.e()) {
            j2Var2.j();
        }
        if (mVar.c()) {
            j2Var2.h();
        }
        this.J = j2Var2;
        m2 m2VarX = j2Var2.x();
        m2VarX.L(true);
        this.K = m2VarX;
        this.O = new s.b(this, this.f3566f);
        i2 i2VarW2 = this.J.w();
        try {
            androidx.compose.runtime.c cVarA = i2VarW2.a(0);
            i2VarW2.d();
            this.P = cVarA;
            this.Q = new s.c();
        } catch (Throwable th2) {
            i2VarW2.d();
            throw th2;
        }
    }

    private final Object D0(i2 i2Var) {
        return i2Var.L(i2Var.u());
    }

    private final int F0(i2 i2Var, int i11) {
        Object objZ;
        if (i2Var.G(i11)) {
            Object objD = i2Var.D(i11);
            if (objD != null) {
                return objD instanceof Enum ? ((Enum) objD).ordinal() : objD.hashCode();
            }
            return 0;
        }
        int iC = i2Var.C(i11);
        if (iC == 207 && (objZ = i2Var.z(i11)) != null && !Intrinsics.c(objZ, i.f3736a.a())) {
            iC = objZ.hashCode();
        }
        return iC;
    }

    private final void G0(List list) throws Throwable {
        s.b bVar;
        s.a aVar;
        i2 i2Var;
        int[] iArr;
        androidx.compose.runtime.collection.a aVar2;
        s.a aVar3;
        s.b bVar2;
        i2 i2Var2;
        int i11 = 1;
        s.b bVar3 = this.O;
        s.a aVar4 = this.f3567g;
        s.a aVarN = bVar3.n();
        try {
            bVar3.R(aVar4);
            this.O.P();
            int size = list.size();
            int i12 = 0;
            int i13 = 0;
            while (i13 < size) {
                try {
                    Pair pair = (Pair) list.get(i13);
                    final y0 y0Var = (y0) pair.component1();
                    y0 y0Var2 = (y0) pair.component2();
                    androidx.compose.runtime.c cVarA = y0Var.a();
                    int iC = y0Var.g().c(cVarA);
                    androidx.compose.runtime.internal.c cVar = new androidx.compose.runtime.internal.c(i12, i11, null);
                    this.O.e(cVar, cVarA);
                    if (y0Var2 == null) {
                        if (Intrinsics.c(y0Var.g(), this.J)) {
                            i0();
                        }
                        final i2 i2VarW = y0Var.g().w();
                        try {
                            i2VarW.Q(iC);
                            this.O.y(iC);
                            final s.a aVar5 = new s.a();
                            i2Var2 = i2VarW;
                            try {
                                T0(this, null, null, null, null, new Function0<Unit>() { // from class: androidx.compose.runtime.ComposerImpl$insertMovableContentGuarded$1$1$1$1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(0);
                                    }

                                    @Override // kotlin.jvm.functions.Function0
                                    public /* bridge */ /* synthetic */ Object invoke() {
                                        m81invoke();
                                        return Unit.f67061a;
                                    }

                                    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                                    public final void m81invoke() {
                                        s.b bVar4 = this.this$0.O;
                                        s.a aVar6 = aVar5;
                                        ComposerImpl composerImpl = this.this$0;
                                        i2 i2Var3 = i2VarW;
                                        y0 y0Var3 = y0Var;
                                        s.a aVarN2 = bVar4.n();
                                        try {
                                            bVar4.R(aVar6);
                                            i2 i2VarE0 = composerImpl.E0();
                                            int[] iArr2 = composerImpl.f3575o;
                                            androidx.compose.runtime.collection.a aVar7 = composerImpl.f3583w;
                                            composerImpl.f3575o = null;
                                            composerImpl.f3583w = null;
                                            try {
                                                composerImpl.d1(i2Var3);
                                                s.b bVar5 = composerImpl.O;
                                                boolean zO = bVar5.o();
                                                try {
                                                    bVar5.S(false);
                                                    y0Var3.c();
                                                    composerImpl.J0(null, y0Var3.e(), y0Var3.f(), true);
                                                    bVar5.S(zO);
                                                    Unit unit = Unit.f67061a;
                                                    composerImpl.d1(i2VarE0);
                                                    composerImpl.f3575o = iArr2;
                                                    composerImpl.f3583w = aVar7;
                                                    bVar4.R(aVarN2);
                                                } catch (Throwable th2) {
                                                    bVar5.S(zO);
                                                    throw th2;
                                                }
                                            } catch (Throwable th3) {
                                                composerImpl.d1(i2VarE0);
                                                composerImpl.f3575o = iArr2;
                                                composerImpl.f3583w = aVar7;
                                                throw th3;
                                            }
                                        } catch (Throwable th4) {
                                            bVar4.R(aVarN2);
                                            throw th4;
                                        }
                                    }
                                }, 15, null);
                                this.O.r(aVar5, cVar);
                                Unit unit = Unit.f67061a;
                                i2Var2.d();
                            } catch (Throwable th2) {
                                th = th2;
                                i2Var2.d();
                                throw th;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            i2Var2 = i2VarW;
                        }
                    } else {
                        x0 x0VarL = this.f3563c.l(y0Var2);
                        j2 j2VarG = y0Var2.g();
                        androidx.compose.runtime.c cVarA2 = y0Var2.a();
                        List listP = k.p(j2VarG, cVarA2);
                        if (!listP.isEmpty()) {
                            this.O.b(listP, cVar);
                            if (Intrinsics.c(y0Var.g(), this.f3564d)) {
                                int iC2 = this.f3564d.c(cVarA);
                                q1(iC2, v1(iC2) + listP.size());
                            }
                        }
                        this.O.c(x0VarL, this.f3563c, y0Var2, y0Var);
                        i2 i2VarW2 = j2VarG.w();
                        try {
                            i2 i2VarE0 = E0();
                            int[] iArr2 = this.f3575o;
                            androidx.compose.runtime.collection.a aVar6 = this.f3583w;
                            this.f3575o = null;
                            this.f3583w = null;
                            try {
                                d1(i2VarW2);
                                int iC3 = j2VarG.c(cVarA2);
                                i2VarW2.Q(iC3);
                                this.O.y(iC3);
                                s.a aVar7 = new s.a();
                                s.b bVar4 = this.O;
                                s.a aVarN2 = bVar4.n();
                                try {
                                    bVar4.R(aVar7);
                                    s.b bVar5 = this.O;
                                    boolean zO = bVar5.o();
                                    try {
                                        bVar5.S(false);
                                        y yVarB = y0Var2.b();
                                        y yVarB2 = y0Var.b();
                                        Integer numValueOf = Integer.valueOf(i2VarW2.k());
                                        aVar2 = aVar6;
                                        aVar3 = aVarN2;
                                        iArr = iArr2;
                                        i2Var = i2VarW2;
                                        bVar2 = bVar4;
                                        try {
                                            S0(yVarB, yVarB2, numValueOf, y0Var2.d(), new Function0<Unit>() { // from class: androidx.compose.runtime.ComposerImpl$insertMovableContentGuarded$1$1$2$1$1$1$1
                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                {
                                                    super(0);
                                                }

                                                @Override // kotlin.jvm.functions.Function0
                                                public /* bridge */ /* synthetic */ Object invoke() {
                                                    m82invoke();
                                                    return Unit.f67061a;
                                                }

                                                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                                                public final void m82invoke() {
                                                    ComposerImpl composerImpl = this.this$0;
                                                    y0Var.c();
                                                    composerImpl.J0(null, y0Var.e(), y0Var.f(), true);
                                                }
                                            });
                                            try {
                                                bVar5.S(zO);
                                                try {
                                                    bVar2.R(aVar3);
                                                    this.O.r(aVar7, cVar);
                                                    Unit unit2 = Unit.f67061a;
                                                    try {
                                                        d1(i2VarE0);
                                                        this.f3575o = iArr;
                                                        this.f3583w = aVar2;
                                                        i2Var.d();
                                                    } catch (Throwable th4) {
                                                        th = th4;
                                                        i2Var.d();
                                                        throw th;
                                                    }
                                                } catch (Throwable th5) {
                                                    th = th5;
                                                    d1(i2VarE0);
                                                    this.f3575o = iArr;
                                                    this.f3583w = aVar2;
                                                    throw th;
                                                }
                                            } catch (Throwable th6) {
                                                th = th6;
                                                bVar2.R(aVar3);
                                                throw th;
                                            }
                                        } catch (Throwable th7) {
                                            th = th7;
                                            bVar5.S(zO);
                                            throw th;
                                        }
                                    } catch (Throwable th8) {
                                        th = th8;
                                        iArr = iArr2;
                                        i2Var = i2VarW2;
                                        aVar2 = aVar6;
                                        bVar2 = bVar4;
                                        aVar3 = aVarN2;
                                    }
                                } catch (Throwable th9) {
                                    th = th9;
                                    iArr = iArr2;
                                    i2Var = i2VarW2;
                                    aVar2 = aVar6;
                                    aVar3 = aVarN2;
                                    bVar2 = bVar4;
                                }
                            } catch (Throwable th10) {
                                th = th10;
                                iArr = iArr2;
                                i2Var = i2VarW2;
                                aVar2 = aVar6;
                            }
                        } catch (Throwable th11) {
                            th = th11;
                            i2Var = i2VarW2;
                        }
                    }
                    try {
                        this.O.U();
                        i11 = 1;
                        i13++;
                        size = size;
                        aVarN = aVarN;
                        bVar3 = bVar3;
                        i12 = 0;
                    } catch (Throwable th12) {
                        th = th12;
                        aVar = aVarN;
                        bVar = bVar3;
                        bVar.R(aVar);
                        throw th;
                    }
                } catch (Throwable th13) {
                    th = th13;
                    bVar3 = bVar3;
                    aVarN = aVarN;
                }
            }
            s.b bVar6 = bVar3;
            s.a aVar8 = aVarN;
            this.O.h();
            this.O.y(0);
            bVar6.R(aVar8);
        } catch (Throwable th14) {
            th = th14;
            bVar = bVar3;
            aVar = aVarN;
        }
    }

    private final int I0(int i11) {
        return (-2) - i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J0(final w0 w0Var, n1 n1Var, final Object obj, boolean z10) {
        k1(126665345, w0Var);
        t1(obj);
        int iL = L();
        try {
            this.S = 126665345;
            boolean z11 = false;
            if (e()) {
                m2.t0(this.K, 0, 1, null);
            }
            if (!e() && !Intrinsics.c(this.I.l(), n1Var)) {
                z11 = true;
            }
            if (z11) {
                X0(n1Var);
            }
            h1(Sdk$SDKError.Reason.AD_CONSUMED_VALUE, k.y(), k0.f3793a.a(), n1Var);
            this.M = null;
            if (!e() || z10) {
                boolean z12 = this.f3584x;
                this.f3584x = z11;
                androidx.compose.runtime.b.d(this, androidx.compose.runtime.internal.b.b(316014703, true, new Function2<i, Integer, Unit>(w0Var, obj) { // from class: androidx.compose.runtime.ComposerImpl$invokeMovableContentLambda$1
                    final /* synthetic */ w0 $content;
                    final /* synthetic */ Object $parameter;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                        this.$parameter = obj;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Object invoke(Object obj2, Object obj3) {
                        invoke((i) obj2, ((Number) obj3).intValue());
                        return Unit.f67061a;
                    }

                    public final void invoke(i iVar, int i11) {
                        if ((i11 & 3) == 2 && iVar.h()) {
                            iVar.G();
                        } else {
                            if (k.H()) {
                                k.Q(316014703, i11, -1, "androidx.compose.runtime.ComposerImpl.invokeMovableContentLambda.<anonymous> (Composer.kt:3293)");
                            }
                            throw null;
                        }
                    }
                }));
                this.f3584x = z12;
            } else {
                this.L = true;
                m2 m2Var = this.K;
                this.f3563c.j(new y0(w0Var, obj, A0(), this.J, m2Var.E(m2Var.E0(m2Var.c0())), CollectionsKt.l(), j0()));
            }
        } finally {
            q0();
            this.M = null;
            this.S = iL;
            r0();
        }
    }

    private final Object N0(i2 i2Var, int i11) {
        return i2Var.L(i11);
    }

    private final int O0(int i11, int i12, int i13, int i14) {
        int iP = this.I.P(i12);
        while (iP != i13 && !this.I.J(iP)) {
            iP = this.I.P(iP);
        }
        if (this.I.J(iP)) {
            i14 = 0;
        }
        if (iP == i12) {
            return i14;
        }
        int iV1 = (v1(iP) - this.I.N(i12)) + i14;
        loop1: while (i14 < iV1 && iP != i11) {
            iP++;
            while (iP < i11) {
                int iE = this.I.E(iP) + iP;
                if (i11 >= iE) {
                    i14 += this.I.J(iP) ? 1 : v1(iP);
                    iP = iE;
                }
            }
            break loop1;
        }
        return i14;
    }

    private final int Q0(int i11) {
        int iP = this.I.P(i11) + 1;
        int i12 = 0;
        while (iP < i11) {
            if (!this.I.G(iP)) {
                i12++;
            }
            iP += this.I.E(iP);
        }
        return i12;
    }

    private final void R() {
        e0();
        this.f3569i.a();
        this.f3574n.a();
        this.f3581u.a();
        this.f3585y.a();
        this.f3583w = null;
        this.Q.a();
        this.S = 0;
        this.B = 0;
        this.f3579s = false;
        this.R = false;
        this.f3586z = false;
        this.G = false;
        this.f3578r = false;
        this.A = -1;
        if (!this.I.i()) {
            this.I.d();
        }
        if (this.K.Z()) {
            return;
        }
        y0();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003f A[Catch: all -> 0x0026, TRY_LEAVE, TryCatch #0 {all -> 0x0026, blocks: (B:3:0x0005, B:5:0x0010, B:7:0x0022, B:11:0x002c, B:10:0x0028, B:14:0x0033, B:16:0x0039, B:18:0x003f), top: B:23:0x0005 }] */
    private final Object S0(y yVar, y yVar2, Integer num, List list, Function0 function0) {
        Object objInvoke;
        boolean z10 = this.G;
        int i11 = this.f3571k;
        try {
            this.G = true;
            this.f3571k = 0;
            int size = list.size();
            for (int i12 = 0; i12 < size; i12++) {
                Pair pair = (Pair) list.get(i12);
                RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) pair.component1();
                Object objComponent2 = pair.component2();
                if (objComponent2 != null) {
                    o1(recomposeScopeImpl, objComponent2);
                } else {
                    o1(recomposeScopeImpl, null);
                }
            }
            if (yVar == null) {
                objInvoke = function0.invoke();
            } else {
                objInvoke = yVar.g(yVar2, num != null ? num.intValue() : -1, function0);
                if (objInvoke == null) {
                    objInvoke = function0.invoke();
                }
            }
            return objInvoke;
        } finally {
            this.G = z10;
            this.f3571k = i11;
        }
    }

    static /* synthetic */ Object T0(ComposerImpl composerImpl, y yVar, y yVar2, Integer num, List list, Function0 function0, int i11, Object obj) {
        y yVar3 = (i11 & 1) != 0 ? null : yVar;
        y yVar4 = (i11 & 2) != 0 ? null : yVar2;
        Integer num2 = (i11 & 4) != 0 ? null : num;
        if ((i11 & 8) != 0) {
            list = CollectionsKt.l();
        }
        return composerImpl.S0(yVar3, yVar4, num2, list, function0);
    }

    private final void U0() {
        boolean z10 = this.G;
        this.G = true;
        int iU = this.I.u();
        int iE = this.I.E(iU) + iU;
        int i11 = this.f3571k;
        int iL = L();
        int i12 = this.f3572l;
        int i13 = this.f3573m;
        o0 o0VarX = k.x(this.f3580t, this.I.k(), iE);
        boolean z11 = false;
        int i14 = iU;
        while (o0VarX != null) {
            int iB = o0VarX.b();
            k.M(this.f3580t, iB);
            if (o0VarX.d()) {
                this.I.Q(iB);
                int iK = this.I.k();
                Y0(i14, iK, iU);
                this.f3571k = O0(iB, iK, iU, i11);
                this.f3573m = Q0(iK);
                int iP = this.I.P(iK);
                this.S = h0(iP, Q0(iP), iU, iL);
                this.M = null;
                o0VarX.c().g(this);
                this.M = null;
                this.I.R(iU);
                i14 = iK;
                z11 = true;
            } else {
                this.F.h(o0VarX.c());
                o0VarX.c().y();
                this.F.g();
            }
            o0VarX = k.x(this.f3580t, this.I.k(), iE);
        }
        if (z11) {
            Y0(i14, iU, iU);
            this.I.T();
            int iV1 = v1(iU);
            this.f3571k = i11 + iV1;
            this.f3572l = i12 + iV1;
            this.f3573m = i13;
        } else {
            g1();
        }
        this.S = iL;
        this.G = z10;
    }

    private final void V0() {
        b1(this.I.k());
        this.O.N();
    }

    private final void W0(androidx.compose.runtime.c cVar) {
        if (this.Q.e()) {
            this.O.s(cVar, this.J);
        } else {
            this.O.t(cVar, this.J, this.Q);
            this.Q = new s.c();
        }
    }

    private final void X0(n1 n1Var) {
        androidx.compose.runtime.collection.a aVar = this.f3583w;
        if (aVar == null) {
            aVar = new androidx.compose.runtime.collection.a(0, 1, null);
            this.f3583w = aVar;
        }
        aVar.b(this.I.k(), n1Var);
    }

    private final void Y0(int i11, int i12, int i13) {
        i2 i2Var = this.I;
        int iJ = k.J(i2Var, i11, i12, i13);
        while (i11 > 0 && i11 != iJ) {
            if (i2Var.J(i11)) {
                this.O.z();
            }
            i11 = i2Var.P(i11);
        }
        o0(i12, iJ);
    }

    private final androidx.compose.runtime.c Z0() {
        int i11;
        int i12;
        if (e()) {
            if (!k.G(this.K)) {
                return null;
            }
            int iA0 = this.K.a0() - 1;
            int iE0 = this.K.E0(iA0);
            while (true) {
                int i13 = iE0;
                i12 = iA0;
                iA0 = i13;
                if (iA0 == this.K.c0() || iA0 < 0) {
                    break;
                }
                iE0 = this.K.E0(iA0);
            }
            return this.K.E(i12);
        }
        if (!k.F(this.I)) {
            return null;
        }
        int iK = this.I.k() - 1;
        int iP = this.I.P(iK);
        while (true) {
            int i14 = iP;
            i11 = iK;
            iK = i14;
            if (iK == this.I.u() || iK < 0) {
                break;
            }
            iP = this.I.P(iK);
        }
        return this.I.a(i11);
    }

    private final void a1() {
        if (this.f3564d.l()) {
            s.a aVar = new s.a();
            this.N = aVar;
            i2 i2VarW = this.f3564d.w();
            try {
                this.I = i2VarW;
                s.b bVar = this.O;
                s.a aVarN = bVar.n();
                try {
                    bVar.R(aVar);
                    b1(0);
                    this.O.L();
                    bVar.R(aVarN);
                    Unit unit = Unit.f67061a;
                    i2VarW.d();
                } catch (Throwable th2) {
                    bVar.R(aVarN);
                    throw th2;
                }
            } catch (Throwable th3) {
                i2VarW.d();
                throw th3;
            }
        }
    }

    private final void b1(int i11) {
        c1(this, i11, false, 0);
        this.O.i();
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0069  */
    private final void c0() {
        RecomposeScopeImpl recomposeScopeImpl;
        boolean z10;
        if (e()) {
            y yVarA0 = A0();
            Intrinsics.f(yVarA0, "null cannot be cast to non-null type androidx.compose.runtime.CompositionImpl");
            RecomposeScopeImpl recomposeScopeImpl2 = new RecomposeScopeImpl((o) yVarA0);
            this.F.h(recomposeScopeImpl2);
            u1(recomposeScopeImpl2);
            recomposeScopeImpl2.I(this.C);
            return;
        }
        o0 o0VarM = k.M(this.f3580t, this.I.u());
        Object objK = this.I.K();
        if (Intrinsics.c(objK, i.f3736a.a())) {
            y yVarA1 = A0();
            Intrinsics.f(yVarA1, "null cannot be cast to non-null type androidx.compose.runtime.CompositionImpl");
            recomposeScopeImpl = new RecomposeScopeImpl((o) yVarA1);
            u1(recomposeScopeImpl);
        } else {
            Intrinsics.f(objK, "null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeImpl");
            recomposeScopeImpl = (RecomposeScopeImpl) objK;
        }
        if (o0VarM == null) {
            boolean zM = recomposeScopeImpl.m();
            if (zM) {
                recomposeScopeImpl.D(false);
            }
            z10 = zM;
        }
        recomposeScopeImpl.E(z10);
        this.F.h(recomposeScopeImpl);
        recomposeScopeImpl.I(this.C);
    }

    private static final int c1(ComposerImpl composerImpl, int i11, boolean z10, int i12) {
        i2 i2Var = composerImpl.I;
        if (i2Var.F(i11)) {
            int iC = i2Var.C(i11);
            Object objD = i2Var.D(i11);
            if (iC != 206 || !Intrinsics.c(objD, k.D())) {
                if (i2Var.J(i11)) {
                    return 1;
                }
                return i2Var.N(i11);
            }
            Object objB = i2Var.B(i11, 0);
            a aVar = objB instanceof a ? (a) objB : null;
            if (aVar != null) {
                for (ComposerImpl composerImpl2 : aVar.a().t()) {
                    composerImpl2.a1();
                    composerImpl.f3563c.o(composerImpl2.A0());
                }
            }
            return i2Var.N(i11);
        }
        if (!i2Var.e(i11)) {
            if (i2Var.J(i11)) {
                return 1;
            }
            return i2Var.N(i11);
        }
        int iE = i2Var.E(i11) + i11;
        int iC1 = 0;
        for (int iE2 = i11 + 1; iE2 < iE; iE2 += i2Var.E(iE2)) {
            boolean zJ = i2Var.J(iE2);
            if (zJ) {
                composerImpl.O.i();
                composerImpl.O.v(i2Var.L(iE2));
            }
            iC1 += c1(composerImpl, iE2, zJ || z10, zJ ? 0 : i12 + iC1);
            if (zJ) {
                composerImpl.O.i();
                composerImpl.O.z();
            }
        }
        if (i2Var.J(i11)) {
            return 1;
        }
        return iC1;
    }

    private final void e0() {
        this.f3570j = null;
        this.f3571k = 0;
        this.f3572l = 0;
        this.S = 0;
        this.f3579s = false;
        this.O.Q();
        this.F.a();
        f0();
    }

    private final void f0() {
        this.f3575o = null;
        this.f3576p = null;
    }

    private final void f1() {
        this.f3572l += this.I.S();
    }

    private final void g1() {
        this.f3572l = this.I.v();
        this.I.T();
    }

    private final int h0(int i11, int i12, int i13, int i14) {
        if (i11 == i13) {
            return i14;
        }
        int iF0 = F0(this.I, i11);
        if (iF0 == 126665345) {
            return iF0;
        }
        int iP = this.I.P(i11);
        if (iP != i13) {
            i14 = h0(iP, Q0(iP), i13, i14);
        }
        if (this.I.G(i11)) {
            i12 = 0;
        }
        return Integer.rotateLeft(Integer.rotateLeft(i14, 3) ^ iF0, 3) ^ i12;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0068  */
    /* JADX WARN: Code duplicated, block: B:22:0x0076  */
    /* JADX WARN: Code duplicated, block: B:23:0x0078  */
    /* JADX WARN: Code duplicated, block: B:26:0x0081  */
    /* JADX WARN: Code duplicated, block: B:28:0x008e  */
    /* JADX WARN: Code duplicated, block: B:29:0x009a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x009c  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:34:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:36:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:40:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:43:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:52:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:58:0x010d  */
    /* JADX WARN: Code duplicated, block: B:61:0x0120  */
    /* JADX WARN: Code duplicated, block: B:68:0x0161  */
    /* JADX WARN: Code duplicated, block: B:70:0x017a  */
    /* JADX WARN: Code duplicated, block: B:71:0x0186 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x0188  */
    /* JADX WARN: Code duplicated, block: B:74:0x018c  */
    /* JADX WARN: Code duplicated, block: B:76:0x0196  */
    /* JADX WARN: Code duplicated, block: B:78:0x019a  */
    /* JADX WARN: Code duplicated, block: B:83:0x01d7  */
    private final void h1(int i11, Object obj, int i12, Object obj2) {
        int iRotateLeft;
        k0.a aVar;
        boolean z10;
        Pending pending;
        boolean z11;
        Pending pending2;
        int iA0;
        Pending pending3;
        Object objA = obj;
        x1();
        int i13 = this.f3573m;
        if (objA == null) {
            if (obj2 == null || i11 != 207 || Intrinsics.c(obj2, i.f3736a.a())) {
                iRotateLeft = i13 ^ Integer.rotateLeft(Integer.rotateLeft(L(), 3) ^ i11, 3);
            } else {
                this.S = i13 ^ Integer.rotateLeft(obj2.hashCode() ^ Integer.rotateLeft(L(), 3), 3);
            }
            if (objA == null) {
                this.f3573m++;
            }
            aVar = k0.f3793a;
            if (i12 != aVar.a()) {
                z10 = true;
            } else {
                z10 = false;
            }
            pending = null;
            if (e()) {
                this.I.c();
                iA0 = this.K.a0();
                if (z10) {
                    this.K.j1(i11, i.f3736a.a());
                } else if (obj2 != null) {
                    m2 m2Var = this.K;
                    if (objA == null) {
                        objA = i.f3736a.a();
                    }
                    m2Var.f1(i11, objA, obj2);
                } else {
                    m2 m2Var2 = this.K;
                    if (objA == null) {
                        objA = i.f3736a.a();
                    }
                    m2Var2.h1(i11, objA);
                }
                pending3 = this.f3570j;
                if (pending3 != null) {
                    q0 q0Var = new q0(i11, -1, I0(iA0), -1, 0);
                    pending3.i(q0Var, this.f3571k - pending3.e());
                    pending3.h(q0Var);
                }
                v0(z10, null);
                return;
            }
            if (i12 != aVar.b() && this.f3586z) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (this.f3570j == null) {
                int iN = this.I.n();
                if (z11 && iN == i11 && Intrinsics.c(obj, this.I.o())) {
                    l1(z10, obj2);
                } else {
                    this.f3570j = new Pending(this.I.h(), this.f3571k);
                }
            }
            pending2 = this.f3570j;
            if (pending2 != null) {
                q0 q0VarD = pending2.d(i11, obj);
                if (!z11 || q0VarD == null) {
                    this.I.c();
                    this.R = true;
                    this.M = null;
                    u0();
                    this.K.I();
                    int iA1 = this.K.a0();
                    if (z10) {
                        this.K.j1(i11, i.f3736a.a());
                    } else if (obj2 != null) {
                        m2 m2Var3 = this.K;
                        if (objA == null) {
                            objA = i.f3736a.a();
                        }
                        m2Var3.f1(i11, objA, obj2);
                    } else {
                        m2 m2Var4 = this.K;
                        if (objA == null) {
                            objA = i.f3736a.a();
                        }
                        m2Var4.h1(i11, objA);
                    }
                    this.P = this.K.E(iA1);
                    q0 q0Var2 = new q0(i11, -1, I0(iA1), -1, 0);
                    pending2.i(q0Var2, this.f3571k - pending2.e());
                    pending2.h(q0Var2);
                    pending = new Pending(new ArrayList(), z10 ? 0 : this.f3571k);
                } else {
                    pending2.h(q0VarD);
                    int iB = q0VarD.b();
                    this.f3571k = pending2.g(q0VarD) + pending2.e();
                    int iM = pending2.m(q0VarD);
                    int iA = iM - pending2.a();
                    pending2.k(iM, pending2.a());
                    this.O.x(iB);
                    this.I.Q(iB);
                    if (iA > 0) {
                        this.O.u(iA);
                    }
                    l1(z10, obj2);
                }
            }
            v0(z10, pending);
        }
        iRotateLeft = Integer.rotateLeft((objA instanceof Enum ? ((Enum) objA).ordinal() : obj.hashCode()) ^ Integer.rotateLeft(L(), 3), 3);
        this.S = iRotateLeft;
        if (objA == null) {
            this.f3573m++;
        }
        aVar = k0.f3793a;
        if (i12 != aVar.a()) {
            z10 = true;
        } else {
            z10 = false;
        }
        pending = null;
        if (e()) {
            this.I.c();
            iA0 = this.K.a0();
            if (z10) {
                this.K.j1(i11, i.f3736a.a());
            } else if (obj2 != null) {
                m2 m2Var5 = this.K;
                if (objA == null) {
                    objA = i.f3736a.a();
                }
                m2Var5.f1(i11, objA, obj2);
            } else {
                m2 m2Var6 = this.K;
                if (objA == null) {
                    objA = i.f3736a.a();
                }
                m2Var6.h1(i11, objA);
            }
            pending3 = this.f3570j;
            if (pending3 != null) {
                q0 q0Var3 = new q0(i11, -1, I0(iA0), -1, 0);
                pending3.i(q0Var3, this.f3571k - pending3.e());
                pending3.h(q0Var3);
            }
            v0(z10, null);
            return;
        }
        if (i12 != aVar.b()) {
            z11 = false;
        } else {
            z11 = true;
        }
        if (this.f3570j == null) {
            int iN2 = this.I.n();
            if (z11) {
                this.f3570j = new Pending(this.I.h(), this.f3571k);
            } else {
                this.f3570j = new Pending(this.I.h(), this.f3571k);
            }
        }
        pending2 = this.f3570j;
        if (pending2 != null) {
            q0 q0VarD2 = pending2.d(i11, obj);
            if (z11) {
                this.I.c();
                this.R = true;
                this.M = null;
                u0();
                this.K.I();
                int iA2 = this.K.a0();
                if (z10) {
                    this.K.j1(i11, i.f3736a.a());
                } else if (obj2 != null) {
                    m2 m2Var7 = this.K;
                    if (objA == null) {
                        objA = i.f3736a.a();
                    }
                    m2Var7.f1(i11, objA, obj2);
                } else {
                    m2 m2Var8 = this.K;
                    if (objA == null) {
                        objA = i.f3736a.a();
                    }
                    m2Var8.h1(i11, objA);
                }
                this.P = this.K.E(iA2);
                q0 q0Var4 = new q0(i11, -1, I0(iA2), -1, 0);
                pending2.i(q0Var4, this.f3571k - pending2.e());
                pending2.h(q0Var4);
                pending = new Pending(new ArrayList(), z10 ? 0 : this.f3571k);
            } else {
                this.I.c();
                this.R = true;
                this.M = null;
                u0();
                this.K.I();
                int iA3 = this.K.a0();
                if (z10) {
                    this.K.j1(i11, i.f3736a.a());
                } else if (obj2 != null) {
                    m2 m2Var9 = this.K;
                    if (objA == null) {
                        objA = i.f3736a.a();
                    }
                    m2Var9.f1(i11, objA, obj2);
                } else {
                    m2 m2Var10 = this.K;
                    if (objA == null) {
                        objA = i.f3736a.a();
                    }
                    m2Var10.h1(i11, objA);
                }
                this.P = this.K.E(iA3);
                q0 q0Var5 = new q0(i11, -1, I0(iA3), -1, 0);
                pending2.i(q0Var5, this.f3571k - pending2.e());
                pending2.h(q0Var5);
                pending = new Pending(new ArrayList(), z10 ? 0 : this.f3571k);
            }
        }
        v0(z10, pending);
    }

    private final void i0() {
        k.O(this.K.Z());
        y0();
    }

    private final void i1(int i11) {
        h1(i11, null, k0.f3793a.a(), null);
    }

    private final n1 j0() {
        n1 n1Var = this.M;
        return n1Var != null ? n1Var : k0(this.I.u());
    }

    private final void j1(int i11, Object obj) {
        h1(i11, obj, k0.f3793a.a(), null);
    }

    private final n1 k0(int i11) {
        n1 n1Var;
        if (e() && this.L) {
            int iC0 = this.K.c0();
            while (iC0 > 0) {
                if (this.K.i0(iC0) == 202 && Intrinsics.c(this.K.j0(iC0), k.y())) {
                    Object objG0 = this.K.g0(iC0);
                    Intrinsics.f(objG0, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap");
                    n1 n1Var2 = (n1) objG0;
                    this.M = n1Var2;
                    return n1Var2;
                }
                iC0 = this.K.E0(iC0);
            }
        }
        if (this.I.x() > 0) {
            while (i11 > 0) {
                if (this.I.C(i11) == 202 && Intrinsics.c(this.I.D(i11), k.y())) {
                    androidx.compose.runtime.collection.a aVar = this.f3583w;
                    if (aVar == null || (n1Var = (n1) aVar.a(i11)) == null) {
                        Object objZ = this.I.z(i11);
                        Intrinsics.f(objZ, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap");
                        n1Var = (n1) objZ;
                    }
                    this.M = n1Var;
                    return n1Var;
                }
                i11 = this.I.P(i11);
            }
        }
        n1 n1Var3 = this.f3582v;
        this.M = n1Var3;
        return n1Var3;
    }

    private final void l1(boolean z10, Object obj) {
        if (z10) {
            this.I.V();
            return;
        }
        if (obj != null && this.I.l() != obj) {
            this.O.X(obj);
        }
        this.I.U();
    }

    private final void n0(androidx.compose.runtime.collection.e eVar, Function2 function2) {
        long[] jArr;
        int i11;
        int i12;
        if (this.G) {
            k.r("Reentrant composition is not supported");
        }
        Object objA = e3.f3694a.a("Compose:recompose");
        try {
            this.C = SnapshotKt.H().f();
            this.f3583w = null;
            androidx.collection.n0 n0VarD = eVar.d();
            Object[] objArr = n0VarD.f2345b;
            Object[] objArr2 = n0VarD.f2346c;
            long[] jArr2 = n0VarD.f2344a;
            int length = jArr2.length - 2;
            if (length >= 0) {
                int i13 = 0;
                while (true) {
                    long j11 = jArr2[i13];
                    if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i14 = 8;
                        int i15 = 8 - ((~(i13 - length)) >>> 31);
                        int i16 = 0;
                        while (i16 < i15) {
                            if ((j11 & 255) < 128) {
                                int i17 = (i13 << 3) + i16;
                                Object obj = objArr[i17];
                                Object obj2 = objArr2[i17];
                                Intrinsics.f(obj, "null cannot be cast to non-null type androidx.compose.runtime.RecomposeScopeImpl");
                                androidx.compose.runtime.c cVarI = ((RecomposeScopeImpl) obj).i();
                                if (cVarI != null) {
                                    int iA = cVarI.a();
                                    List list = this.f3580t;
                                    RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj;
                                    if (obj2 == f2.f3732a) {
                                        obj2 = null;
                                    }
                                    list.add(new o0(recomposeScopeImpl, iA, obj2));
                                }
                                i12 = 8;
                            } else {
                                jArr2 = jArr2;
                                i12 = i14;
                            }
                            j11 >>= i12;
                            i16++;
                            i14 = i12;
                            jArr2 = jArr2;
                        }
                        jArr = jArr2;
                        i11 = 1;
                        if (i15 != i14) {
                            break;
                        }
                    } else {
                        jArr = jArr2;
                        i11 = 1;
                    }
                    if (i13 == length) {
                        break;
                    }
                    i13 += i11;
                    jArr2 = jArr;
                }
            }
            CollectionsKt.A(this.f3580t, k.f3792g);
            this.f3571k = 0;
            this.G = true;
            try {
                n1();
                Object objL0 = L0();
                if (objL0 != function2 && function2 != null) {
                    u1(function2);
                }
                c cVar = this.E;
                androidx.compose.runtime.collection.b bVarA = r2.a();
                try {
                    bVarA.b(cVar);
                    if (function2 != null) {
                        j1(200, k.z());
                        androidx.compose.runtime.b.d(this, function2);
                        q0();
                    } else if ((!this.f3578r && !this.f3584x) || objL0 == null || Intrinsics.c(objL0, i.f3736a.a())) {
                        e1();
                    } else {
                        j1(200, k.z());
                        androidx.compose.runtime.b.d(this, (Function2) TypeIntrinsics.e(objL0, 2));
                        q0();
                    }
                    bVarA.v(bVarA.n() - 1);
                    t0();
                    this.G = false;
                    this.f3580t.clear();
                    i0();
                    Unit unit = Unit.f67061a;
                    e3.f3694a.b(objA);
                } catch (Throwable th2) {
                    bVarA.v(bVarA.n() - 1);
                    throw th2;
                }
            } catch (Throwable th3) {
                this.G = false;
                this.f3580t.clear();
                R();
                i0();
                throw th3;
            }
        } catch (Throwable th4) {
            e3.f3694a.b(objA);
            throw th4;
        }
    }

    private final void n1() {
        this.f3573m = 0;
        this.I = this.f3564d.w();
        i1(100);
        this.f3563c.p();
        this.f3582v = this.f3563c.f();
        this.f3585y.j(k.o(this.f3584x));
        this.f3584x = O(this.f3582v);
        this.M = null;
        if (!this.f3577q) {
            this.f3577q = this.f3563c.d();
        }
        if (!this.D) {
            this.D = this.f3563c.e();
        }
        Set set = (Set) t.b(this.f3582v, InspectionTablesKt.a());
        if (set != null) {
            set.add(this.f3564d);
            this.f3563c.m(set);
        }
        i1(this.f3563c.g());
    }

    private final void o0(int i11, int i12) {
        if (i11 <= 0 || i11 == i12) {
            return;
        }
        o0(this.I.P(i11), i12);
        if (this.I.J(i11)) {
            this.O.v(N0(this.I, i11));
        }
    }

    private final void p0(boolean z10) {
        int iOrdinal;
        Set set;
        int iOrdinal2;
        int iG = this.f3574n.g() - 1;
        if (e()) {
            int iC0 = this.K.c0();
            int iI0 = this.K.i0(iC0);
            Object objJ0 = this.K.j0(iC0);
            Object objG0 = this.K.g0(iC0);
            if (objJ0 != null) {
                iOrdinal2 = (objJ0 instanceof Enum ? ((Enum) objJ0).ordinal() : objJ0.hashCode()) ^ Integer.rotateRight(L(), 3);
            } else if (objG0 == null || iI0 != 207 || Intrinsics.c(objG0, i.f3736a.a())) {
                iOrdinal2 = Integer.rotateRight(iG ^ L(), 3) ^ iI0;
            } else {
                this.S = Integer.rotateRight(Integer.rotateRight(iG ^ L(), 3) ^ objG0.hashCode(), 3);
            }
            this.S = Integer.rotateRight(iOrdinal2, 3);
        } else {
            int iU = this.I.u();
            int iC = this.I.C(iU);
            Object objD = this.I.D(iU);
            Object objZ = this.I.z(iU);
            if (objD != null) {
                iOrdinal = (objD instanceof Enum ? ((Enum) objD).ordinal() : objD.hashCode()) ^ Integer.rotateRight(L(), 3);
            } else if (objZ == null || iC != 207 || Intrinsics.c(objZ, i.f3736a.a())) {
                iOrdinal = Integer.rotateRight(iG ^ L(), 3) ^ iC;
            } else {
                this.S = Integer.rotateRight(Integer.rotateRight(iG ^ L(), 3) ^ objZ.hashCode(), 3);
            }
            this.S = Integer.rotateRight(iOrdinal, 3);
        }
        int i11 = this.f3572l;
        Pending pending = this.f3570j;
        if (pending != null && pending.b().size() > 0) {
            List listB = pending.b();
            List listF = pending.f();
            Set setE = androidx.compose.runtime.snapshots.a.e(listF);
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int size = listF.size();
            int size2 = listB.size();
            int i12 = 0;
            int i13 = 0;
            int iO = 0;
            while (i12 < size2) {
                q0 q0Var = (q0) listB.get(i12);
                if (setE.contains(q0Var)) {
                    set = setE;
                    if (!linkedHashSet.contains(q0Var)) {
                        if (i13 < size) {
                            q0 q0Var2 = (q0) listF.get(i13);
                            if (q0Var2 != q0Var) {
                                int iG2 = pending.g(q0Var2);
                                linkedHashSet.add(q0Var2);
                                if (iG2 != iO) {
                                    int iO2 = pending.o(q0Var2);
                                    this.O.w(pending.e() + iG2, iO + pending.e(), iO2);
                                    pending.j(iG2, iO, iO2);
                                }
                            } else {
                                i12++;
                            }
                            i13++;
                            iO += pending.o(q0Var2);
                            setE = set;
                            listF = listF;
                        }
                    }
                    setE = set;
                } else {
                    this.O.O(pending.g(q0Var) + pending.e(), q0Var.c());
                    pending.n(q0Var.b(), 0);
                    this.O.x(q0Var.b());
                    this.I.Q(q0Var.b());
                    V0();
                    this.I.S();
                    set = setE;
                    k.N(this.f3580t, q0Var.b(), q0Var.b() + this.I.E(q0Var.b()));
                }
                i12++;
                setE = set;
            }
            this.O.i();
            if (listB.size() > 0) {
                this.O.x(this.I.m());
                this.I.T();
            }
        }
        int i14 = this.f3571k;
        while (!this.I.H()) {
            int iK = this.I.k();
            V0();
            this.O.O(i14, this.I.S());
            k.N(this.f3580t, iK, this.I.k());
        }
        boolean zE = e();
        if (zE) {
            if (z10) {
                this.Q.c();
                i11 = 1;
            }
            this.I.f();
            int iC1 = this.K.c0();
            this.K.T();
            if (!this.I.t()) {
                int iI1 = I0(iC1);
                this.K.U();
                this.K.L(true);
                W0(this.P);
                this.R = false;
                if (!this.f3564d.isEmpty()) {
                    q1(iI1, 0);
                    r1(iI1, i11);
                }
            }
        } else {
            if (z10) {
                this.O.z();
            }
            int iW = this.I.w();
            if (iW > 0) {
                this.O.V(iW);
            }
            this.O.g();
            int iU2 = this.I.u();
            if (i11 != v1(iU2)) {
                r1(iU2, i11);
            }
            if (z10) {
                i11 = 1;
            }
            this.I.g();
            this.O.i();
        }
        w0(i11, zE);
    }

    private final void q0() {
        p0(false);
    }

    private final void q1(int i11, int i12) {
        if (v1(i11) != i12) {
            if (i11 < 0) {
                androidx.collection.c0 c0Var = this.f3576p;
                if (c0Var == null) {
                    c0Var = new androidx.collection.c0(0, 1, null);
                    this.f3576p = c0Var;
                }
                c0Var.q(i11, i12);
                return;
            }
            int[] iArr = this.f3575o;
            if (iArr == null) {
                iArr = new int[this.I.x()];
                ArraysKt.y(iArr, -1, 0, 0, 6, null);
                this.f3575o = iArr;
            }
            iArr[i11] = i12;
        }
    }

    private final void r1(int i11, int i12) {
        int iV1 = v1(i11);
        if (iV1 != i12) {
            int i13 = i12 - iV1;
            int iB = this.f3569i.b() - 1;
            while (i11 != -1) {
                int iV2 = v1(i11) + i13;
                q1(i11, iV2);
                for (int i14 = iB; -1 < i14; i14--) {
                    Pending pending = (Pending) this.f3569i.f(i14);
                    if (pending != null && pending.n(i11, iV2)) {
                        iB = i14 - 1;
                        break;
                    }
                }
                if (i11 < 0) {
                    i11 = this.I.u();
                } else if (this.I.J(i11)) {
                    return;
                } else {
                    i11 = this.I.P(i11);
                }
            }
        }
    }

    private final n1 s1(n1 n1Var, n1 n1Var2) {
        n1.a aVarBuilder = n1Var.builder();
        aVarBuilder.putAll(n1Var2);
        n1 n1VarBuild = aVarBuilder.build();
        j1(Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE, k.C());
        t1(n1VarBuild);
        t1(n1Var2);
        q0();
        return n1VarBuild;
    }

    private final void t0() {
        q0();
        this.f3563c.b();
        q0();
        this.O.j();
        x0();
        this.I.d();
        this.f3578r = false;
        this.f3584x = k.n(this.f3585y.i());
    }

    private final void t1(Object obj) {
        L0();
        u1(obj);
    }

    private final void u0() {
        if (this.K.Z()) {
            m2 m2VarX = this.J.x();
            this.K = m2VarX;
            m2VarX.W0();
            this.L = false;
            this.M = null;
        }
    }

    private final void v0(boolean z10, Pending pending) {
        this.f3569i.h(this.f3570j);
        this.f3570j = pending;
        this.f3574n.j(this.f3572l);
        this.f3574n.j(this.f3573m);
        this.f3574n.j(this.f3571k);
        if (z10) {
            this.f3571k = 0;
        }
        this.f3572l = 0;
        this.f3573m = 0;
    }

    private final int v1(int i11) {
        int i12;
        if (i11 >= 0) {
            int[] iArr = this.f3575o;
            return (iArr == null || (i12 = iArr[i11]) < 0) ? this.I.N(i11) : i12;
        }
        androidx.collection.c0 c0Var = this.f3576p;
        if (c0Var == null || !c0Var.a(i11)) {
            return 0;
        }
        return c0Var.c(i11);
    }

    private final void w0(int i11, boolean z10) {
        Pending pending = (Pending) this.f3569i.g();
        if (pending != null && !z10) {
            pending.l(pending.a() + 1);
        }
        this.f3570j = pending;
        this.f3571k = this.f3574n.i() + i11;
        this.f3573m = this.f3574n.i();
        this.f3572l = this.f3574n.i() + i11;
    }

    private final void w1() {
        if (!this.f3579s) {
            k.r("A call to createNode(), emitNode() or useNode() expected was not expected");
        }
        this.f3579s = false;
    }

    private final void x0() {
        this.O.m();
        if (!this.f3569i.c()) {
            k.r("Start/end imbalance");
        }
        e0();
    }

    private final void x1() {
        if (this.f3579s) {
            k.r("A call to createNode(), emitNode() or useNode() expected");
        }
    }

    private final void y0() {
        j2 j2Var = new j2();
        if (this.D) {
            j2Var.j();
        }
        if (this.f3563c.c()) {
            j2Var.h();
        }
        this.J = j2Var;
        m2 m2VarX = j2Var.x();
        m2VarX.L(true);
        this.K = m2VarX;
    }

    @Override // androidx.compose.runtime.i
    public boolean A(Object obj) {
        if (L0() == obj) {
            return false;
        }
        u1(obj);
        return true;
    }

    public y A0() {
        return this.f3568h;
    }

    @Override // androidx.compose.runtime.i
    public void B() {
        h1(-127, null, k0.f3793a.a(), null);
    }

    public final RecomposeScopeImpl B0() {
        z2 z2Var = this.F;
        if (this.B == 0 && z2Var.d()) {
            return (RecomposeScopeImpl) z2Var.e();
        }
        return null;
    }

    @Override // androidx.compose.runtime.i
    public void C() {
        h1(Sdk$SDKError.Reason.INVALID_METRICS_ENDPOINT_VALUE, null, k0.f3793a.c(), null);
        this.f3579s = true;
    }

    public final s.a C0() {
        return this.N;
    }

    @Override // androidx.compose.runtime.i
    public void D(t1 t1Var) {
        g3 g3Var;
        n1 n1VarJ0 = j0();
        j1(201, k.B());
        Object objY = y();
        if (Intrinsics.c(objY, i.f3736a.a())) {
            g3Var = null;
        } else {
            Intrinsics.f(objY, "null cannot be cast to non-null type androidx.compose.runtime.ValueHolder<kotlin.Any?>");
            g3Var = (g3) objY;
        }
        q qVarB = t1Var.b();
        Intrinsics.f(qVarB, "null cannot be cast to non-null type androidx.compose.runtime.CompositionLocal<kotlin.Any?>");
        Intrinsics.f(t1Var, "null cannot be cast to non-null type androidx.compose.runtime.ProvidedValue<kotlin.Any?>");
        g3 g3VarB = qVarB.b(t1Var, g3Var);
        boolean zC = Intrinsics.c(g3VarB, g3Var);
        if (!zC) {
            p(g3VarB);
        }
        boolean z10 = true;
        boolean z11 = false;
        if (e()) {
            if (t1Var.a() || !t.a(n1VarJ0, qVarB)) {
                n1VarJ0 = n1VarJ0.b(qVarB, g3VarB);
            }
            this.L = true;
        } else {
            i2 i2Var = this.I;
            Object objZ = i2Var.z(i2Var.k());
            Intrinsics.f(objZ, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap");
            n1 n1Var = (n1) objZ;
            n1VarJ0 = (!(h() && zC) && (t1Var.a() || !t.a(n1VarJ0, qVarB))) ? n1VarJ0.b(qVarB, g3VarB) : n1Var;
            if (!this.f3586z && n1Var == n1VarJ0) {
                z10 = false;
            }
            z11 = z10;
        }
        if (z11 && !e()) {
            X0(n1VarJ0);
        }
        this.f3585y.j(k.o(this.f3584x));
        this.f3584x = z11;
        this.M = n1VarJ0;
        h1(Sdk$SDKError.Reason.AD_CONSUMED_VALUE, k.y(), k0.f3793a.a(), n1VarJ0);
    }

    @Override // androidx.compose.runtime.i
    public void E(int i11, Object obj) {
        if (!e() && this.I.n() == i11 && !Intrinsics.c(this.I.l(), obj) && this.A < 0) {
            this.A = this.I.k();
            this.f3586z = true;
        }
        h1(i11, null, k0.f3793a.a(), obj);
    }

    public final i2 E0() {
        return this.I;
    }

    @Override // androidx.compose.runtime.i
    public void F(Function0 function0) {
        w1();
        if (!e()) {
            k.r("createNode() can only be called when inserting");
        }
        int iE = this.f3574n.e();
        m2 m2Var = this.K;
        androidx.compose.runtime.c cVarE = m2Var.E(m2Var.c0());
        this.f3572l++;
        this.Q.b(function0, iE, cVarE);
    }

    @Override // androidx.compose.runtime.i
    public void G() {
        if (!(this.f3572l == 0)) {
            k.r("No nodes can be emitted before calling skipAndEndGroup");
        }
        RecomposeScopeImpl recomposeScopeImplB0 = B0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.z();
        }
        if (this.f3580t.isEmpty()) {
            g1();
        } else {
            U0();
        }
    }

    @Override // androidx.compose.runtime.i
    public void H() {
        q0();
        q0();
        this.f3584x = k.n(this.f3585y.i());
        this.M = null;
    }

    public void H0(List list) {
        try {
            G0(list);
            e0();
        } catch (Throwable th2) {
            R();
            throw th2;
        }
    }

    @Override // androidx.compose.runtime.i
    public boolean I() {
        if (!h() || this.f3584x) {
            return true;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = B0();
        return recomposeScopeImplB0 != null && recomposeScopeImplB0.l();
    }

    @Override // androidx.compose.runtime.i
    public void J(u1 u1Var) {
        RecomposeScopeImpl recomposeScopeImpl = u1Var instanceof RecomposeScopeImpl ? (RecomposeScopeImpl) u1Var : null;
        if (recomposeScopeImpl == null) {
            return;
        }
        recomposeScopeImpl.H(true);
    }

    @Override // androidx.compose.runtime.i
    public void K() {
        q0();
    }

    public final boolean K0() {
        return this.G;
    }

    @Override // androidx.compose.runtime.i
    public int L() {
        return this.S;
    }

    public final Object L0() {
        if (e()) {
            x1();
            return i.f3736a.a();
        }
        Object objK = this.I.K();
        return (!this.f3586z || (objK instanceof e2)) ? objK : i.f3736a.a();
    }

    @Override // androidx.compose.runtime.i
    public m M() {
        j1(Sdk$SDKError.Reason.AD_ALREADY_FAILED_VALUE, k.D());
        if (e()) {
            m2.t0(this.K, 0, 1, null);
        }
        Object objL0 = L0();
        a aVar = objL0 instanceof a ? (a) objL0 : null;
        if (aVar == null) {
            int iL = L();
            boolean z10 = this.f3577q;
            boolean z11 = this.D;
            y yVarA0 = A0();
            o oVar = yVarA0 instanceof o ? (o) yVarA0 : null;
            aVar = new a(new b(iL, z10, z11, oVar != null ? oVar.E() : null));
            u1(aVar);
        }
        aVar.a().w(j0());
        q0();
        return aVar.a();
    }

    public final Object M0() {
        if (e()) {
            x1();
            return i.f3736a.a();
        }
        Object objK = this.I.K();
        if (!this.f3586z || (objK instanceof e2)) {
            return objK instanceof c2 ? ((c2) objK).b() : objK;
        }
        return i.f3736a.a();
    }

    @Override // androidx.compose.runtime.i
    public void N() {
        q0();
    }

    @Override // androidx.compose.runtime.i
    public boolean O(Object obj) {
        if (Intrinsics.c(L0(), obj)) {
            return false;
        }
        u1(obj);
        return true;
    }

    @Override // androidx.compose.runtime.i
    public void P(int i11) {
        if (this.f3570j != null) {
            h1(i11, null, k0.f3793a.a(), null);
            return;
        }
        x1();
        this.S = this.f3573m ^ Integer.rotateLeft(Integer.rotateLeft(L(), 3) ^ i11, 3);
        this.f3573m++;
        i2 i2Var = this.I;
        if (e()) {
            i2Var.c();
            this.K.h1(i11, i.f3736a.a());
            v0(false, null);
            return;
        }
        if (i2Var.n() == i11 && !i2Var.s()) {
            i2Var.U();
            v0(false, null);
            return;
        }
        if (!i2Var.H()) {
            int i12 = this.f3571k;
            int iK = i2Var.k();
            V0();
            this.O.O(i12, i2Var.S());
            k.N(this.f3580t, iK, i2Var.k());
        }
        i2Var.c();
        this.R = true;
        this.M = null;
        u0();
        m2 m2Var = this.K;
        m2Var.I();
        int iA0 = m2Var.a0();
        m2Var.h1(i11, i.f3736a.a());
        this.P = m2Var.E(iA0);
        v0(false, null);
    }

    public final void P0(Function0 function0) {
        if (this.G) {
            k.r("Preparing a composition while composing is not supported");
        }
        this.G = true;
        try {
            function0.invoke();
        } finally {
            this.G = false;
        }
    }

    @Override // androidx.compose.runtime.i
    public void Q(t1[] t1VarArr) {
        n1 n1VarS1;
        n1 n1VarJ0 = j0();
        j1(201, k.B());
        boolean z10 = true;
        boolean z11 = false;
        if (e()) {
            n1VarS1 = s1(n1VarJ0, t.d(t1VarArr, n1VarJ0, null, 4, null));
            this.L = true;
        } else {
            Object objA = this.I.A(0);
            Intrinsics.f(objA, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap");
            n1 n1Var = (n1) objA;
            Object objA2 = this.I.A(1);
            Intrinsics.f(objA2, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap");
            n1 n1Var2 = (n1) objA2;
            n1 n1VarC = t.c(t1VarArr, n1VarJ0, n1Var2);
            if (h() && !this.f3586z && Intrinsics.c(n1Var2, n1VarC)) {
                f1();
                n1VarS1 = n1Var;
            } else {
                n1VarS1 = s1(n1VarJ0, n1VarC);
                if (!this.f3586z && Intrinsics.c(n1VarS1, n1Var)) {
                    z10 = false;
                }
                z11 = z10;
            }
        }
        if (z11 && !e()) {
            X0(n1VarS1);
        }
        this.f3585y.j(k.o(this.f3584x));
        this.f3584x = z11;
        this.M = n1VarS1;
        h1(Sdk$SDKError.Reason.AD_CONSUMED_VALUE, k.y(), k0.f3793a.a(), n1VarS1);
    }

    public final boolean R0(androidx.compose.runtime.collection.e eVar) {
        if (!this.f3566f.c()) {
            k.r("Expected applyChanges() to have been called");
        }
        if (eVar.e() <= 0 && this.f3580t.isEmpty() && !this.f3578r) {
            return false;
        }
        n0(eVar, null);
        return this.f3566f.d();
    }

    @Override // androidx.compose.runtime.i
    public boolean a(boolean z10) {
        Object objL0 = L0();
        if ((objL0 instanceof Boolean) && z10 == ((Boolean) objL0).booleanValue()) {
            return false;
        }
        u1(Boolean.valueOf(z10));
        return true;
    }

    @Override // androidx.compose.runtime.i
    public boolean b(float f11) {
        Object objL0 = L0();
        if ((objL0 instanceof Float) && f11 == ((Number) objL0).floatValue()) {
            return false;
        }
        u1(Float.valueOf(f11));
        return true;
    }

    @Override // androidx.compose.runtime.i
    public boolean c(int i11) {
        Object objL0 = L0();
        if ((objL0 instanceof Integer) && i11 == ((Number) objL0).intValue()) {
            return false;
        }
        u1(Integer.valueOf(i11));
        return true;
    }

    @Override // androidx.compose.runtime.i
    public boolean d(long j11) {
        Object objL0 = L0();
        if ((objL0 instanceof Long) && j11 == ((Number) objL0).longValue()) {
            return false;
        }
        u1(Long.valueOf(j11));
        return true;
    }

    public final void d0() {
        this.f3583w = null;
    }

    public final void d1(i2 i2Var) {
        this.I = i2Var;
    }

    @Override // androidx.compose.runtime.i
    public boolean e() {
        return this.R;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0086  */
    /* JADX WARN: Code duplicated, block: B:28:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:30:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:32:0x00d0  */
    public void e1() {
        int iRotateLeft;
        int iHashCode;
        int iRotateRight;
        if (this.f3580t.isEmpty()) {
            f1();
            return;
        }
        i2 i2Var = this.I;
        int iN = i2Var.n();
        Object objO = i2Var.o();
        Object objL = i2Var.l();
        int i11 = this.f3573m;
        if (objO == null) {
            if (objL == null || iN != 207 || Intrinsics.c(objL, i.f3736a.a())) {
                iRotateLeft = Integer.rotateLeft(Integer.rotateLeft(L(), 3) ^ iN, 3) ^ i11;
            } else {
                this.S = Integer.rotateLeft(objL.hashCode() ^ Integer.rotateLeft(L(), 3), 3) ^ i11;
            }
            l1(i2Var.I(), null);
            U0();
            i2Var.g();
            if (objO != null) {
                if (objO instanceof Enum) {
                    iHashCode = ((Enum) objO).ordinal();
                } else {
                    iHashCode = objO.hashCode();
                }
                iRotateRight = iHashCode ^ Integer.rotateRight(L(), 3);
            } else {
                if (objL == null && iN == 207 && !Intrinsics.c(objL, i.f3736a.a())) {
                    this.S = Integer.rotateRight(objL.hashCode() ^ Integer.rotateRight(L() ^ i11, 3), 3);
                    return;
                }
                iRotateRight = Integer.rotateRight(L() ^ i11, 3) ^ iN;
            }
            this.S = Integer.rotateRight(iRotateRight, 3);
        }
        iRotateLeft = Integer.rotateLeft((objO instanceof Enum ? ((Enum) objO).ordinal() : objO.hashCode()) ^ Integer.rotateLeft(L(), 3), 3);
        this.S = iRotateLeft;
        l1(i2Var.I(), null);
        U0();
        i2Var.g();
        if (objO != null) {
            if (objL == null) {
            }
            iRotateRight = Integer.rotateRight(L() ^ i11, 3) ^ iN;
        } else {
            if (objO instanceof Enum) {
                iHashCode = ((Enum) objO).ordinal();
            } else {
                iHashCode = objO.hashCode();
            }
            iRotateRight = iHashCode ^ Integer.rotateRight(L(), 3);
        }
        this.S = Integer.rotateRight(iRotateRight, 3);
    }

    @Override // androidx.compose.runtime.i
    public void f(boolean z10) {
        if (!(this.f3572l == 0)) {
            k.r("No nodes can be emitted before calling dactivateToEndGroup");
        }
        if (e()) {
            return;
        }
        if (!z10) {
            g1();
            return;
        }
        int iK = this.I.k();
        int iJ = this.I.j();
        this.O.d();
        k.N(this.f3580t, iK, iJ);
        this.I.T();
    }

    @Override // androidx.compose.runtime.i
    public i g(int i11) {
        P(i11);
        c0();
        return this;
    }

    public final void g0(androidx.compose.runtime.collection.e eVar, Function2 function2) {
        if (!this.f3566f.c()) {
            k.r("Expected applyChanges() to have been called");
        }
        n0(eVar, function2);
    }

    @Override // androidx.compose.runtime.i
    public boolean h() {
        RecomposeScopeImpl recomposeScopeImplB0;
        return (e() || this.f3586z || this.f3584x || (recomposeScopeImplB0 = B0()) == null || recomposeScopeImplB0.n() || this.f3578r) ? false : true;
    }

    @Override // androidx.compose.runtime.i
    public f i() {
        return this.f3562b;
    }

    @Override // androidx.compose.runtime.i
    public g2 j() {
        androidx.compose.runtime.c cVarA;
        Function1 function1H;
        RecomposeScopeImpl recomposeScopeImpl = null;
        RecomposeScopeImpl recomposeScopeImpl2 = this.F.d() ? (RecomposeScopeImpl) this.F.g() : null;
        if (recomposeScopeImpl2 != null) {
            recomposeScopeImpl2.E(false);
        }
        if (recomposeScopeImpl2 != null && (function1H = recomposeScopeImpl2.h(this.C)) != null) {
            this.O.f(function1H, A0());
        }
        if (recomposeScopeImpl2 != null && !recomposeScopeImpl2.p() && (recomposeScopeImpl2.q() || this.f3577q)) {
            if (recomposeScopeImpl2.i() == null) {
                if (e()) {
                    m2 m2Var = this.K;
                    cVarA = m2Var.E(m2Var.c0());
                } else {
                    i2 i2Var = this.I;
                    cVarA = i2Var.a(i2Var.u());
                }
                recomposeScopeImpl2.A(cVarA);
            }
            recomposeScopeImpl2.C(false);
            recomposeScopeImpl = recomposeScopeImpl2;
        }
        p0(false);
        return recomposeScopeImpl;
    }

    @Override // androidx.compose.runtime.i
    public void k(Object obj, Function2 function2) {
        if (e()) {
            this.Q.f(obj, function2);
        } else {
            this.O.Y(obj, function2);
        }
    }

    public void k1(int i11, Object obj) {
        h1(i11, obj, k0.f3793a.a(), null);
    }

    @Override // androidx.compose.runtime.i
    public Object l(q qVar) {
        return t.b(j0(), qVar);
    }

    public final void l0() {
        this.F.a();
        this.f3580t.clear();
        this.f3566f.a();
        this.f3583w = null;
    }

    @Override // androidx.compose.runtime.i
    public CoroutineContext m() {
        return this.f3563c.h();
    }

    public final void m0() {
        Object objA = e3.f3694a.a("Compose:Composer.dispose");
        try {
            this.f3563c.q(this);
            l0();
            i().clear();
            this.H = true;
            Unit unit = Unit.f67061a;
        } finally {
            e3.f3694a.b(objA);
        }
    }

    public final void m1() {
        this.A = 100;
        this.f3586z = true;
    }

    @Override // androidx.compose.runtime.i
    public s n() {
        return j0();
    }

    @Override // androidx.compose.runtime.i
    public void o() {
        w1();
        if (e()) {
            k.r("useNode() called while inserting");
        }
        Object objD0 = D0(this.I);
        this.O.v(objD0);
        if (this.f3586z && (objD0 instanceof h)) {
            this.O.a0(objD0);
        }
    }

    public final boolean o1(RecomposeScopeImpl recomposeScopeImpl, Object obj) {
        androidx.compose.runtime.c cVarI = recomposeScopeImpl.i();
        if (cVarI == null) {
            return false;
        }
        int iD = cVarI.d(this.I.y());
        if (!this.G || iD < this.I.k()) {
            return false;
        }
        k.E(this.f3580t, iD, recomposeScopeImpl, obj);
        return true;
    }

    @Override // androidx.compose.runtime.i
    public void p(Object obj) {
        p1(obj);
    }

    public final void p1(Object obj) {
        if (obj instanceof b2) {
            if (e()) {
                this.O.M((b2) obj);
            }
            this.f3565e.add(obj);
            obj = new c2((b2) obj, Z0());
        }
        u1(obj);
    }

    @Override // androidx.compose.runtime.i
    public void q() {
        q0();
        q0();
        this.f3584x = k.n(this.f3585y.i());
        this.M = null;
    }

    @Override // androidx.compose.runtime.i
    public void r() {
        p0(true);
    }

    public void r0() {
        q0();
    }

    @Override // androidx.compose.runtime.i
    public void s() {
        q0();
        RecomposeScopeImpl recomposeScopeImplB0 = B0();
        if (recomposeScopeImplB0 == null || !recomposeScopeImplB0.q()) {
            return;
        }
        recomposeScopeImplB0.B(true);
    }

    public final void s0() {
        if (!(!this.G && this.A == 100)) {
            o1.a("Cannot disable reuse from root if it was caused by other groups");
        }
        this.A = -1;
        this.f3586z = false;
    }

    @Override // androidx.compose.runtime.i
    public void t(Function0 function0) {
        this.O.T(function0);
    }

    @Override // androidx.compose.runtime.i
    public void u() {
        this.f3577q = true;
        this.D = true;
        this.f3564d.j();
        this.J.j();
        this.K.v1();
    }

    public final void u1(Object obj) {
        if (e()) {
            this.K.m1(obj);
            return;
        }
        if (!this.I.r()) {
            s.b bVar = this.O;
            i2 i2Var = this.I;
            bVar.a(i2Var.a(i2Var.u()), obj);
            return;
        }
        int iQ = this.I.q() - 1;
        if (!this.O.p()) {
            this.O.Z(obj, iQ);
            return;
        }
        s.b bVar2 = this.O;
        i2 i2Var2 = this.I;
        bVar2.W(obj, i2Var2.a(i2Var2.u()), iQ);
    }

    @Override // androidx.compose.runtime.i
    public u1 v() {
        return B0();
    }

    @Override // androidx.compose.runtime.i
    public void w() {
        if (this.f3586z && this.I.u() == this.A) {
            this.A = -1;
            this.f3586z = false;
        }
        p0(false);
    }

    @Override // androidx.compose.runtime.i
    public void x(int i11) {
        h1(i11, null, k0.f3793a.a(), null);
    }

    @Override // androidx.compose.runtime.i
    public Object y() {
        return M0();
    }

    @Override // androidx.compose.runtime.i
    public androidx.compose.runtime.tooling.a z() {
        return this.f3564d;
    }

    public final boolean z0() {
        return this.B > 0;
    }
}
