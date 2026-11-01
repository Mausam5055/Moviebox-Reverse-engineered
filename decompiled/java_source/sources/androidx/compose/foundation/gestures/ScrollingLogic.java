package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.f0;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import o0.z;

/* JADX INFO: loaded from: classes.dex */
public final class ScrollingLogic {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private o f2693a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f0 f2694b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private g f2695c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Orientation f2696d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f2697e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private NestedScrollDispatcher f2698f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f2699g = androidx.compose.ui.input.nestedscroll.e.f4939a.b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private k f2700h = ScrollableKt.f2686b;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final a f2701i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Function1 f2702j = new Function1<y.g, y.g>() { // from class: androidx.compose.foundation.gestures.ScrollingLogic$performScrollForOverscroll$1
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            return y.g.d(m36invokeMKHz9U(((y.g) obj).v()));
        }

        /* JADX INFO: renamed from: invoke-MK-Hz9U, reason: not valid java name */
        public final long m36invokeMKHz9U(long j11) {
            k kVar = this.this$0.f2700h;
            ScrollingLogic scrollingLogic = this.this$0;
            return scrollingLogic.s(kVar, j11, scrollingLogic.f2699g);
        }
    };

    public static final class a implements h {
        a() {
        }

        @Override // androidx.compose.foundation.gestures.h
        public long a(long j11, int i11) {
            ScrollingLogic.this.f2699g = i11;
            f0 f0Var = ScrollingLogic.this.f2694b;
            if (f0Var != null && ScrollingLogic.this.o()) {
                return f0Var.c(j11, ScrollingLogic.this.f2699g, ScrollingLogic.this.f2702j);
            }
            return ScrollingLogic.this.s(ScrollingLogic.this.f2700h, j11, i11);
        }

        @Override // androidx.compose.foundation.gestures.h
        public long b(long j11, int i11) {
            return ScrollingLogic.this.s(ScrollingLogic.this.f2700h, j11, i11);
        }
    }

    public ScrollingLogic(o oVar, f0 f0Var, g gVar, Orientation orientation, boolean z10, NestedScrollDispatcher nestedScrollDispatcher) {
        this.f2693a = oVar;
        this.f2694b = f0Var;
        this.f2695c = gVar;
        this.f2696d = orientation;
        this.f2697e = z10;
        this.f2698f = nestedScrollDispatcher;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long D(long j11, float f11) {
        return this.f2696d == Orientation.Horizontal ? z.e(j11, f11, 0.0f, 2, null) : z.e(j11, 0.0f, f11, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean o() {
        return this.f2693a.d() || this.f2693a.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long s(k kVar, long j11, int i11) {
        long jD = this.f2698f.d(j11, i11);
        long jQ = y.g.q(j11, jD);
        long jU = u(B(kVar.a(A(u(x(jQ))))));
        return y.g.r(y.g.r(jD, jU), this.f2698f.b(jU, y.g.q(jQ, jU), i11));
    }

    private final long y(long j11) {
        return this.f2696d == Orientation.Horizontal ? z.e(j11, 0.0f, 0.0f, 1, null) : z.e(j11, 0.0f, 0.0f, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float z(long j11) {
        return this.f2696d == Orientation.Horizontal ? z.h(j11) : z.i(j11);
    }

    public final float A(long j11) {
        return this.f2696d == Orientation.Horizontal ? y.g.m(j11) : y.g.n(j11);
    }

    public final long B(float f11) {
        if (f11 == 0.0f) {
            return y.g.f78470b.c();
        }
        return this.f2696d == Orientation.Horizontal ? y.h.a(f11, 0.0f) : y.h.a(0.0f, f11);
    }

    public final boolean C(o oVar, Orientation orientation, f0 f0Var, boolean z10, g gVar, NestedScrollDispatcher nestedScrollDispatcher) {
        boolean z11;
        boolean z12 = true;
        if (Intrinsics.c(this.f2693a, oVar)) {
            z11 = false;
        } else {
            this.f2693a = oVar;
            z11 = true;
        }
        this.f2694b = f0Var;
        if (this.f2696d != orientation) {
            this.f2696d = orientation;
            z11 = true;
        }
        if (this.f2697e != z10) {
            this.f2697e = z10;
        } else {
            z12 = z11;
        }
        this.f2695c = gVar;
        this.f2698f = nestedScrollDispatcher;
        return z12;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object n(long j11, Continuation continuation) throws Throwable {
        ScrollingLogic$doFlingAnimation$1 scrollingLogic$doFlingAnimation$1;
        Ref.LongRef longRef;
        if (continuation instanceof ScrollingLogic$doFlingAnimation$1) {
            scrollingLogic$doFlingAnimation$1 = (ScrollingLogic$doFlingAnimation$1) continuation;
            int i11 = scrollingLogic$doFlingAnimation$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                scrollingLogic$doFlingAnimation$1.label = i11 - Integer.MIN_VALUE;
            } else {
                scrollingLogic$doFlingAnimation$1 = new ScrollingLogic$doFlingAnimation$1(this, continuation);
            }
        } else {
            scrollingLogic$doFlingAnimation$1 = new ScrollingLogic$doFlingAnimation$1(this, continuation);
        }
        Object obj = scrollingLogic$doFlingAnimation$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = scrollingLogic$doFlingAnimation$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            Ref.LongRef longRef2 = new Ref.LongRef();
            longRef2.element = j11;
            MutatePriority mutatePriority = MutatePriority.Default;
            Function2 scrollingLogic$doFlingAnimation$2 = new ScrollingLogic$doFlingAnimation$2(this, longRef2, j11, null);
            scrollingLogic$doFlingAnimation$1.L$0 = longRef2;
            scrollingLogic$doFlingAnimation$1.label = 1;
            if (v(mutatePriority, scrollingLogic$doFlingAnimation$2, scrollingLogic$doFlingAnimation$1) == objF) {
                return objF;
            }
            longRef = longRef2;
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            longRef = (Ref.LongRef) scrollingLogic$doFlingAnimation$1.L$0;
            ResultKt.b(obj);
        }
        return z.b(longRef.element);
    }

    public final boolean p() {
        return this.f2696d == Orientation.Vertical;
    }

    public final Object q(long j11, Continuation continuation) {
        long jY = y(j11);
        ScrollingLogic$onDragStopped$performFling$1 scrollingLogic$onDragStopped$performFling$1 = new ScrollingLogic$onDragStopped$performFling$1(this, null);
        f0 f0Var = this.f2694b;
        if (f0Var == null || !o()) {
            Object objInvoke = scrollingLogic$onDragStopped$performFling$1.invoke(z.b(jY), continuation);
            return objInvoke == IntrinsicsKt.f() ? objInvoke : Unit.f67061a;
        }
        Object objD = f0Var.d(jY, scrollingLogic$onDragStopped$performFling$1, continuation);
        return objD == IntrinsicsKt.f() ? objD : Unit.f67061a;
    }

    public final long r(long j11) {
        return this.f2693a.a() ? y.g.f78470b.c() : B(t(this.f2693a.e(t(A(j11)))));
    }

    public final float t(float f11) {
        return this.f2697e ? f11 * (-1) : f11;
    }

    public final long u(long j11) {
        return this.f2697e ? y.g.s(j11, -1.0f) : j11;
    }

    public final Object v(MutatePriority mutatePriority, Function2 function2, Continuation continuation) {
        Object objC = this.f2693a.c(mutatePriority, new ScrollingLogic$scroll$2(this, function2, null), continuation);
        return objC == IntrinsicsKt.f() ? objC : Unit.f67061a;
    }

    public final boolean w() {
        if (!this.f2693a.a()) {
            f0 f0Var = this.f2694b;
            if (!(f0Var != null ? f0Var.a() : false)) {
                return false;
            }
        }
        return true;
    }

    public final long x(long j11) {
        return this.f2696d == Orientation.Horizontal ? y.g.g(j11, 0.0f, 0.0f, 1, null) : y.g.g(j11, 0.0f, 0.0f, 2, null);
    }
}
