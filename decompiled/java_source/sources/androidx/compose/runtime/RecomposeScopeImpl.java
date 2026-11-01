package androidx.compose.runtime;

import androidx.collection.ScatterSet;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class RecomposeScopeImpl implements g2, u1 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f3625h = new a(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f3626i = 8;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private w1 f3628b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f3629c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Function2 f3630d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f3631e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private androidx.collection.k0 f3632f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private androidx.collection.n0 f3633g;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(m2 m2Var, List list, w1 w1Var) {
            if (list.isEmpty()) {
                return;
            }
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                Object objY0 = m2Var.Y0((c) list.get(i11), 0);
                RecomposeScopeImpl recomposeScopeImpl = objY0 instanceof RecomposeScopeImpl ? (RecomposeScopeImpl) objY0 : null;
                if (recomposeScopeImpl != null) {
                    recomposeScopeImpl.e(w1Var);
                }
            }
        }
    }

    public RecomposeScopeImpl(w1 w1Var) {
        this.f3628b = w1Var;
    }

    private final void F(boolean z10) {
        if (z10) {
            this.f3627a |= 32;
        } else {
            this.f3627a &= -33;
        }
    }

    private final void G(boolean z10) {
        if (z10) {
            this.f3627a |= 16;
        } else {
            this.f3627a &= -17;
        }
    }

    private final boolean f(z zVar, androidx.collection.n0 n0Var) {
        Intrinsics.f(zVar, "null cannot be cast to non-null type androidx.compose.runtime.DerivedState<kotlin.Any?>");
        q2 policy = zVar.getPolicy();
        if (policy == null) {
            policy = r2.j();
        }
        return !policy.b(zVar.b().a(), n0Var.b(zVar));
    }

    private final boolean o() {
        return (this.f3627a & 32) != 0;
    }

    public final void A(c cVar) {
        this.f3629c = cVar;
    }

    public final void B(boolean z10) {
        if (z10) {
            this.f3627a |= 2;
        } else {
            this.f3627a &= -3;
        }
    }

    public final void C(boolean z10) {
        if (z10) {
            this.f3627a |= 4;
        } else {
            this.f3627a &= -5;
        }
    }

    public final void D(boolean z10) {
        if (z10) {
            this.f3627a |= 64;
        } else {
            this.f3627a &= -65;
        }
    }

    public final void E(boolean z10) {
        if (z10) {
            this.f3627a |= 8;
        } else {
            this.f3627a &= -9;
        }
    }

    public final void H(boolean z10) {
        if (z10) {
            this.f3627a |= 1;
        } else {
            this.f3627a &= -2;
        }
    }

    public final void I(int i11) {
        this.f3631e = i11;
        G(false);
    }

    @Override // androidx.compose.runtime.g2
    public void a(Function2 function2) {
        this.f3630d = function2;
    }

    public final void e(w1 w1Var) {
        this.f3628b = w1Var;
    }

    public final void g(i iVar) {
        Unit unit;
        Function2 function2 = this.f3630d;
        if (function2 != null) {
            function2.invoke(iVar, 1);
            unit = Unit.f67061a;
        } else {
            unit = null;
        }
        if (unit == null) {
            throw new IllegalStateException("Invalid restart scope");
        }
    }

    public final Function1 h(final int i11) {
        final androidx.collection.k0 k0Var = this.f3632f;
        if (k0Var == null || p()) {
            return null;
        }
        Object[] objArr = k0Var.f2315b;
        int[] iArr = k0Var.f2316c;
        long[] jArr = k0Var.f2314a;
        int length = jArr.length - 2;
        if (length < 0) {
            return null;
        }
        int i12 = 0;
        while (true) {
            long j11 = jArr[i12];
            if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i13 = 8 - ((~(i12 - length)) >>> 31);
                for (int i14 = 0; i14 < i13; i14++) {
                    if ((255 & j11) < 128) {
                        int i15 = (i12 << 3) + i14;
                        Object obj = objArr[i15];
                        if (iArr[i15] != i11) {
                            return new Function1<l, Unit>() { // from class: androidx.compose.runtime.RecomposeScopeImpl$end$1$2
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                                    invoke((l) obj2);
                                    return Unit.f67061a;
                                }

                                public final void invoke(l lVar) {
                                    int i16;
                                    if (this.this$0.f3631e != i11 || !Intrinsics.c(k0Var, this.this$0.f3632f) || !(lVar instanceof o)) {
                                        return;
                                    }
                                    androidx.collection.k0 k0Var2 = k0Var;
                                    int i17 = i11;
                                    RecomposeScopeImpl recomposeScopeImpl = this.this$0;
                                    long[] jArr2 = k0Var2.f2314a;
                                    int length2 = jArr2.length - 2;
                                    if (length2 < 0) {
                                        return;
                                    }
                                    int i18 = 0;
                                    while (true) {
                                        long j12 = jArr2[i18];
                                        if ((((~j12) << 7) & j12 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i19 = 8;
                                            int i20 = 8 - ((~(i18 - length2)) >>> 31);
                                            int i21 = 0;
                                            while (i21 < i20) {
                                                if ((255 & j12) < 128) {
                                                    int i22 = (i18 << 3) + i21;
                                                    Object obj2 = k0Var2.f2315b[i22];
                                                    boolean z10 = k0Var2.f2316c[i22] != i17;
                                                    if (z10) {
                                                        o oVar = (o) lVar;
                                                        oVar.J(obj2, recomposeScopeImpl);
                                                        if (obj2 instanceof z) {
                                                            oVar.I((z) obj2);
                                                            androidx.collection.n0 n0Var = recomposeScopeImpl.f3633g;
                                                            if (n0Var != null) {
                                                                n0Var.o(obj2);
                                                            }
                                                        }
                                                    }
                                                    if (z10) {
                                                        k0Var2.p(i22);
                                                    }
                                                    i16 = 8;
                                                } else {
                                                    i16 = i19;
                                                }
                                                j12 >>= i16;
                                                i21++;
                                                i19 = i16;
                                            }
                                            if (i20 != i19) {
                                                return;
                                            }
                                        }
                                        if (i18 == length2) {
                                            return;
                                        } else {
                                            i18++;
                                        }
                                    }
                                }
                            };
                        }
                    }
                    j11 >>= 8;
                }
                if (i13 != 8) {
                    return null;
                }
            }
            if (i12 == length) {
                return null;
            }
            i12++;
        }
    }

    public final c i() {
        return this.f3629c;
    }

    @Override // androidx.compose.runtime.u1
    public void invalidate() {
        w1 w1Var = this.f3628b;
        if (w1Var != null) {
            w1Var.k(this, null);
        }
    }

    public final boolean j() {
        return this.f3630d != null;
    }

    public final boolean k() {
        return (this.f3627a & 2) != 0;
    }

    public final boolean l() {
        return (this.f3627a & 4) != 0;
    }

    public final boolean m() {
        return (this.f3627a & 64) != 0;
    }

    public final boolean n() {
        return (this.f3627a & 8) != 0;
    }

    public final boolean p() {
        return (this.f3627a & 16) != 0;
    }

    public final boolean q() {
        return (this.f3627a & 1) != 0;
    }

    public final boolean r() {
        if (this.f3628b == null) {
            return false;
        }
        c cVar = this.f3629c;
        return cVar != null ? cVar.b() : false;
    }

    public final InvalidationResult s(Object obj) {
        InvalidationResult invalidationResultK;
        w1 w1Var = this.f3628b;
        return (w1Var == null || (invalidationResultK = w1Var.k(this, obj)) == null) ? InvalidationResult.IGNORED : invalidationResultK;
    }

    public final boolean t() {
        return this.f3633g != null;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x006c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x006e A[LOOP:0: B:18:0x002f->B:32:0x006e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:38:0x0071 A[SYNTHETIC] */
    public final boolean u(Object obj) {
        androidx.collection.n0 n0Var;
        if (obj == null || (n0Var = this.f3633g) == null) {
            return true;
        }
        if (obj instanceof z) {
            return f((z) obj, n0Var);
        }
        if (!(obj instanceof ScatterSet)) {
            return true;
        }
        ScatterSet scatterSet = (ScatterSet) obj;
        if (scatterSet.e()) {
            Object[] objArr = scatterSet.f2247b;
            long[] jArr = scatterSet.f2246a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i11 = 0;
                while (true) {
                    long j11 = jArr[i11];
                    if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i12 = 8 - ((~(i11 - length)) >>> 31);
                        for (int i13 = 0; i13 < i12; i13++) {
                            if ((255 & j11) < 128) {
                                Object obj2 = objArr[(i11 << 3) + i13];
                                if (!(obj2 instanceof z) || f((z) obj2, n0Var)) {
                                    return true;
                                }
                            }
                            j11 >>= 8;
                        }
                        if (i12 == 8) {
                            if (i11 != length) {
                                i11++;
                            }
                        }
                    } else if (i11 != length) {
                        i11++;
                    }
                }
            }
        }
        return false;
    }

    public final void v(z zVar, Object obj) {
        androidx.collection.n0 n0Var = this.f3633g;
        if (n0Var == null) {
            n0Var = new androidx.collection.n0(0, 1, null);
            this.f3633g = n0Var;
        }
        n0Var.r(zVar, obj);
    }

    public final boolean w(Object obj) {
        if (o()) {
            return false;
        }
        androidx.collection.k0 k0Var = this.f3632f;
        if (k0Var == null) {
            k0Var = new androidx.collection.k0(0, 1, null);
            this.f3632f = k0Var;
        }
        return k0Var.o(obj, this.f3631e, -1) == this.f3631e;
    }

    public final void x() {
        w1 w1Var = this.f3628b;
        if (w1Var != null) {
            w1Var.h(this);
        }
        this.f3628b = null;
        this.f3632f = null;
        this.f3633g = null;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0053 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:23:0x0055 A[LOOP:0: B:10:0x001b->B:23:0x0055, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:31:0x0058 A[EDGE_INSN: B:31:0x0058->B:24:0x0058 BREAK  A[LOOP:0: B:10:0x001b->B:23:0x0055], SYNTHETIC] */
    public final void y() {
        androidx.collection.k0 k0Var;
        w1 w1Var = this.f3628b;
        if (w1Var == null || (k0Var = this.f3632f) == null) {
            return;
        }
        F(true);
        try {
            Object[] objArr = k0Var.f2315b;
            int[] iArr = k0Var.f2316c;
            long[] jArr = k0Var.f2314a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i11 = 0;
                while (true) {
                    long j11 = jArr[i11];
                    if ((((~j11) << 7) & j11 & (-9187201950435737472L)) == -9187201950435737472L) {
                        if (i11 != length) {
                            break;
                            break;
                        }
                        i11++;
                    } else {
                        int i12 = 8 - ((~(i11 - length)) >>> 31);
                        for (int i13 = 0; i13 < i12; i13++) {
                            if ((255 & j11) < 128) {
                                int i14 = (i11 << 3) + i13;
                                Object obj = objArr[i14];
                                int i15 = iArr[i14];
                                w1Var.a(obj);
                            }
                            j11 >>= 8;
                        }
                        if (i12 != 8) {
                            break;
                        } else if (i11 != length) {
                            break;
                        } else {
                            i11++;
                        }
                    }
                }
            }
        } finally {
            F(false);
        }
    }

    public final void z() {
        G(true);
    }
}
