package androidx.compose.foundation.lazy;

import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.animation.core.s0;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.lazy.layout.AwaitFirstLayoutModifier;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.foundation.lazy.layout.d0;
import androidx.compose.foundation.lazy.layout.e0;
import androidx.compose.foundation.lazy.layout.x;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.r2;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.u2;
import androidx.compose.ui.layout.h0;
import androidx.compose.ui.layout.i0;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.ranges.IntRange;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes.dex */
public final class LazyListState implements androidx.compose.foundation.gestures.o {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final a f2906y = new a(null);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final androidx.compose.runtime.saveable.d f2907z = ListSaverKt.a(new Function2<androidx.compose.runtime.saveable.e, LazyListState, List<? extends Integer>>() { // from class: androidx.compose.foundation.lazy.LazyListState$Companion$Saver$1
        @Override // kotlin.jvm.functions.Function2
        public final List<Integer> invoke(androidx.compose.runtime.saveable.e eVar, LazyListState lazyListState) {
            return CollectionsKt.o(Integer.valueOf(lazyListState.o()), Integer.valueOf(lazyListState.p()));
        }
    }, new Function1<List<? extends Integer>, LazyListState>() { // from class: androidx.compose.foundation.lazy.LazyListState$Companion$Saver$2
        @Override // kotlin.jvm.functions.Function1
        public final LazyListState invoke(List<Integer> list) {
            return new LazyListState(list.get(0).intValue(), list.get(1).intValue());
        }
    });

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r f2908a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2909b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private m f2910c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final v f2911d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e f2912e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final i1 f2913f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final p.i f2914g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f2915h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final androidx.compose.foundation.gestures.o f2916i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f2917j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f2918k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private h0 f2919l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final i0 f2920m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final AwaitFirstLayoutModifier f2921n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final LazyLayoutItemAnimator f2922o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final androidx.compose.foundation.lazy.layout.e f2923p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final x f2924q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final p f2925r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final androidx.compose.foundation.lazy.layout.w f2926s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final i1 f2927t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final i1 f2928u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final i1 f2929v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final i1 f2930w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private androidx.compose.animation.core.i f2931x;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final androidx.compose.runtime.saveable.d a() {
            return LazyListState.f2907z;
        }
    }

    public static final class b implements p {
        b() {
        }

        @Override // androidx.compose.foundation.lazy.p
        public x.b a(int i11) {
            androidx.compose.runtime.snapshots.j.a aVar = androidx.compose.runtime.snapshots.j.f4004e;
            LazyListState lazyListState = LazyListState.this;
            androidx.compose.runtime.snapshots.j jVarD = aVar.d();
            Function1 function1H = jVarD != null ? jVarD.h() : null;
            androidx.compose.runtime.snapshots.j jVarF = aVar.f(jVarD);
            try {
                return LazyListState.this.z().e(i11, ((m) lazyListState.f2913f.getValue()).k());
            } finally {
                aVar.m(jVarD, jVarF, function1H);
            }
        }
    }

    public static final class c implements i0 {
        c() {
        }

        @Override // androidx.compose.ui.f
        public /* synthetic */ Object b(Object obj, Function2 function2) {
            return androidx.compose.ui.g.b(this, obj, function2);
        }

        @Override // androidx.compose.ui.f
        public /* synthetic */ boolean c(Function1 function1) {
            return androidx.compose.ui.g.a(this, function1);
        }

        @Override // androidx.compose.ui.layout.i0
        public void d(h0 h0Var) {
            LazyListState.this.f2919l = h0Var;
        }

        @Override // androidx.compose.ui.f
        public /* synthetic */ androidx.compose.ui.f e(androidx.compose.ui.f fVar) {
            return androidx.compose.ui.e.a(this, fVar);
        }
    }

    public LazyListState() {
        this(0, 0, null, 7, null);
    }

    public LazyListState(int i11, int i12) {
        this(i11, i12, s.b(0, 1, null));
    }

    public LazyListState(final int i11, int i12, r rVar) {
        this.f2908a = rVar;
        v vVar = new v(i11, i12);
        this.f2911d = vVar;
        this.f2912e = new e(this);
        this.f2913f = r2.e(LazyListStateKt.f2935b, r2.g());
        this.f2914g = p.h.a();
        this.f2916i = androidx.compose.foundation.gestures.p.a(new Function1<Float, Float>() { // from class: androidx.compose.foundation.lazy.LazyListState$scrollableState$1
            {
                super(1);
            }

            public final Float invoke(float f11) {
                return Float.valueOf(-this.this$0.F(-f11));
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return invoke(((Number) obj).floatValue());
            }
        });
        this.f2918k = true;
        this.f2920m = new c();
        this.f2921n = new AwaitFirstLayoutModifier();
        this.f2922o = new LazyLayoutItemAnimator();
        this.f2923p = new androidx.compose.foundation.lazy.layout.e();
        this.f2924q = new x(rVar.c(), new Function1<d0, Unit>() { // from class: androidx.compose.foundation.lazy.LazyListState$prefetchState$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((d0) obj);
                return Unit.f67061a;
            }

            public final void invoke(d0 d0Var) {
                r rVar2 = this.this$0.f2908a;
                int i13 = i11;
                androidx.compose.runtime.snapshots.j.a aVar = androidx.compose.runtime.snapshots.j.f4004e;
                androidx.compose.runtime.snapshots.j jVarD = aVar.d();
                aVar.m(jVarD, aVar.f(jVarD), jVarD != null ? jVarD.h() : null);
                rVar2.a(d0Var, i13);
            }
        });
        this.f2925r = new b();
        this.f2926s = new androidx.compose.foundation.lazy.layout.w();
        vVar.b();
        this.f2927t = e0.c(null, 1, null);
        Boolean bool = Boolean.FALSE;
        this.f2928u = u2.c(bool, null, 2, null);
        this.f2929v = u2.c(bool, null, 2, null);
        this.f2930w = e0.c(null, 1, null);
        s0 s0VarB = VectorConvertersKt.b(FloatCompanionObject.f67281a);
        Float fValueOf = Float.valueOf(0.0f);
        this.f2931x = androidx.compose.animation.core.j.b(s0VarB, fValueOf, fValueOf, (56 & 8) != 0 ? Long.MIN_VALUE : 0L, (56 & 16) != 0 ? Long.MIN_VALUE : 0L, (56 & 32) != 0 ? false : false);
    }

    public /* synthetic */ LazyListState(int i11, int i12, r rVar, int i13, DefaultConstructorMarker defaultConstructorMarker) {
        this((i13 & 1) != 0 ? 0 : i11, (i13 & 2) != 0 ? 0 : i12, (i13 & 4) != 0 ? s.b(0, 1, null) : rVar);
    }

    private final void E(float f11, l lVar) {
        if (this.f2918k) {
            this.f2908a.b(this.f2925r, f11, lVar);
        }
    }

    public static /* synthetic */ Object H(LazyListState lazyListState, int i11, int i12, Continuation continuation, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i12 = 0;
        }
        return lazyListState.G(i11, i12, continuation);
    }

    private void I(boolean z10) {
        this.f2929v.setValue(Boolean.valueOf(z10));
    }

    private void J(boolean z10) {
        this.f2928u.setValue(Boolean.valueOf(z10));
    }

    private final void L(float f11, o0.e eVar, n0 n0Var) {
        if (f11 <= eVar.E0(LazyListStateKt.f2934a)) {
            return;
        }
        androidx.compose.runtime.snapshots.j.a aVar = androidx.compose.runtime.snapshots.j.f4004e;
        androidx.compose.runtime.snapshots.j jVarD = aVar.d();
        Function1 function1H = jVarD != null ? jVarD.h() : null;
        androidx.compose.runtime.snapshots.j jVarF = aVar.f(jVarD);
        try {
            float fFloatValue = ((Number) this.f2931x.getValue()).floatValue();
            if (this.f2931x.h()) {
                this.f2931x = androidx.compose.animation.core.j.g(this.f2931x, fFloatValue - f11, 0.0f, 0L, 0L, false, 30, null);
                kotlinx.coroutines.k.d(n0Var, null, null, new LazyListState$updateScrollDeltaForPostLookahead$2$1(this, null), 3, null);
            } else {
                this.f2931x = new androidx.compose.animation.core.i(VectorConvertersKt.b(FloatCompanionObject.f67281a), Float.valueOf(-f11), null, 0L, 0L, false, 60, null);
                kotlinx.coroutines.k.d(n0Var, null, null, new LazyListState$updateScrollDeltaForPostLookahead$2$2(this, null), 3, null);
            }
        } finally {
            aVar.m(jVarD, jVarF, function1H);
        }
    }

    public static /* synthetic */ void l(LazyListState lazyListState, m mVar, boolean z10, boolean z11, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            z11 = false;
        }
        lazyListState.k(mVar, z10, z11);
    }

    public final h0 A() {
        return this.f2919l;
    }

    public final i0 B() {
        return this.f2920m;
    }

    public final float C() {
        return ((Number) this.f2931x.getValue()).floatValue();
    }

    public final float D() {
        return this.f2915h;
    }

    public final float F(float f11) {
        if ((f11 < 0.0f && !d()) || (f11 > 0.0f && !b())) {
            return 0.0f;
        }
        if (Math.abs(this.f2915h) > 0.5f) {
            throw new IllegalStateException(("entered drag with non-zero pending scroll: " + this.f2915h).toString());
        }
        float f12 = this.f2915h + f11;
        this.f2915h = f12;
        if (Math.abs(f12) > 0.5f) {
            m mVar = (m) this.f2913f.getValue();
            float f13 = this.f2915h;
            int iRound = Math.round(f13);
            m mVar2 = this.f2910c;
            boolean zR = mVar.r(iRound, !this.f2909b);
            if (zR && mVar2 != null) {
                zR = mVar2.r(iRound, true);
            }
            if (zR) {
                k(mVar, this.f2909b, true);
                e0.d(this.f2930w);
                E(f13 - this.f2915h, mVar);
            } else {
                h0 h0Var = this.f2919l;
                if (h0Var != null) {
                    h0Var.d();
                }
                E(f13 - this.f2915h, t());
            }
        }
        if (Math.abs(this.f2915h) <= 0.5f) {
            return f11;
        }
        float f14 = f11 - this.f2915h;
        this.f2915h = 0.0f;
        return f14;
    }

    public final Object G(int i11, int i12, Continuation continuation) {
        Object objC = androidx.compose.foundation.gestures.n.c(this, null, new LazyListState$scrollToItem$2(this, i11, i12, null), continuation, 1, null);
        return objC == IntrinsicsKt.f() ? objC : Unit.f67061a;
    }

    public final void K(int i11, int i12, boolean z10) {
        if (this.f2911d.a() != i11 || this.f2911d.c() != i12) {
            this.f2922o.n();
        }
        this.f2911d.d(i11, i12);
        if (!z10) {
            e0.d(this.f2927t);
            return;
        }
        h0 h0Var = this.f2919l;
        if (h0Var != null) {
            h0Var.d();
        }
    }

    public final int M(k kVar, int i11) {
        return this.f2911d.j(kVar, i11);
    }

    @Override // androidx.compose.foundation.gestures.o
    public boolean a() {
        return this.f2916i.a();
    }

    @Override // androidx.compose.foundation.gestures.o
    public boolean b() {
        return ((Boolean) this.f2929v.getValue()).booleanValue();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.foundation.gestures.o
    public Object c(MutatePriority mutatePriority, Function2 function2, Continuation continuation) throws Throwable {
        LazyListState$scroll$1 lazyListState$scroll$1;
        LazyListState lazyListState;
        if (continuation instanceof LazyListState$scroll$1) {
            lazyListState$scroll$1 = (LazyListState$scroll$1) continuation;
            int i11 = lazyListState$scroll$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                lazyListState$scroll$1.label = i11 - Integer.MIN_VALUE;
            } else {
                lazyListState$scroll$1 = new LazyListState$scroll$1(this, continuation);
            }
        } else {
            lazyListState$scroll$1 = new LazyListState$scroll$1(this, continuation);
        }
        Object obj = lazyListState$scroll$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = lazyListState$scroll$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                function2 = (Function2) lazyListState$scroll$1.L$2;
                mutatePriority = (MutatePriority) lazyListState$scroll$1.L$1;
                lazyListState = (LazyListState) lazyListState$scroll$1.L$0;
                ResultKt.b(obj);
            } else {
                if (i12 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        AwaitFirstLayoutModifier awaitFirstLayoutModifier = this.f2921n;
        lazyListState$scroll$1.L$0 = this;
        lazyListState$scroll$1.L$1 = mutatePriority;
        lazyListState$scroll$1.L$2 = function2;
        lazyListState$scroll$1.label = 1;
        if (awaitFirstLayoutModifier.a(lazyListState$scroll$1) == objF) {
            return objF;
        }
        lazyListState = this;
        androidx.compose.foundation.gestures.o oVar = lazyListState.f2916i;
        lazyListState$scroll$1.L$0 = null;
        lazyListState$scroll$1.L$1 = null;
        lazyListState$scroll$1.L$2 = null;
        lazyListState$scroll$1.label = 2;
        if (oVar.c(mutatePriority, function2, lazyListState$scroll$1) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }

    @Override // androidx.compose.foundation.gestures.o
    public boolean d() {
        return ((Boolean) this.f2928u.getValue()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.o
    public float e(float f11) {
        return this.f2916i.e(f11);
    }

    public final void k(m mVar, boolean z10, boolean z11) {
        if (!z10 && this.f2909b) {
            this.f2910c = mVar;
            return;
        }
        if (z10) {
            this.f2909b = true;
        }
        I(mVar.i());
        J(mVar.j());
        this.f2915h -= mVar.l();
        this.f2913f.setValue(mVar);
        if (z11) {
            this.f2911d.i(mVar.p());
        } else {
            this.f2911d.h(mVar);
            if (this.f2918k) {
                this.f2908a.d(this.f2925r, mVar);
            }
        }
        if (z10) {
            L(mVar.q(), mVar.n(), mVar.m());
        }
        this.f2917j++;
    }

    public final AwaitFirstLayoutModifier m() {
        return this.f2921n;
    }

    public final androidx.compose.foundation.lazy.layout.e n() {
        return this.f2923p;
    }

    public final int o() {
        return this.f2911d.a();
    }

    public final int p() {
        return this.f2911d.c();
    }

    public final boolean q() {
        return this.f2909b;
    }

    public final p.i r() {
        return this.f2914g;
    }

    public final LazyLayoutItemAnimator s() {
        return this.f2922o;
    }

    public final l t() {
        return (l) this.f2913f.getValue();
    }

    public final i1 u() {
        return this.f2927t;
    }

    public final IntRange v() {
        return (IntRange) this.f2911d.b().getValue();
    }

    public final androidx.compose.foundation.lazy.layout.w w() {
        return this.f2926s;
    }

    public final i1 x() {
        return this.f2930w;
    }

    public final m y() {
        return this.f2910c;
    }

    public final x z() {
        return this.f2924q;
    }
}
