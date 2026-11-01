package androidx.compose.material.ripple;

import androidx.compose.animation.core.Animatable;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import androidx.compose.ui.graphics.t1;
import androidx.compose.ui.graphics.u1;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.w;
import kotlinx.coroutines.y;
import y.m;

/* JADX INFO: loaded from: classes.dex */
public final class RippleAnimation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private y.g f3447a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f3448b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f3449c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Float f3450d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private y.g f3451e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Animatable f3452f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Animatable f3453g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Animatable f3454h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final w f3455i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final i1 f3456j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final i1 f3457k;

    private RippleAnimation(y.g gVar, float f11, boolean z10) {
        this.f3447a = gVar;
        this.f3448b = f11;
        this.f3449c = z10;
        this.f3452f = androidx.compose.animation.core.a.b(0.0f, 0.0f, 2, null);
        this.f3453g = androidx.compose.animation.core.a.b(0.0f, 0.0f, 2, null);
        this.f3454h = androidx.compose.animation.core.a.b(0.0f, 0.0f, 2, null);
        this.f3455i = y.a(null);
        Boolean bool = Boolean.FALSE;
        this.f3456j = u2.c(bool, null, 2, null);
        this.f3457k = u2.c(bool, null, 2, null);
    }

    public /* synthetic */ RippleAnimation(y.g gVar, float f11, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(gVar, f11, z10);
    }

    private final Object f(Continuation continuation) {
        Object objE = o0.e(new RippleAnimation$fadeIn$2(this, null), continuation);
        return objE == IntrinsicsKt.f() ? objE : Unit.f67061a;
    }

    private final Object g(Continuation continuation) {
        Object objE = o0.e(new RippleAnimation$fadeOut$2(this, null), continuation);
        return objE == IntrinsicsKt.f() ? objE : Unit.f67061a;
    }

    private final boolean i() {
        return ((Boolean) this.f3457k.getValue()).booleanValue();
    }

    private final boolean j() {
        return ((Boolean) this.f3456j.getValue()).booleanValue();
    }

    private final void k(boolean z10) {
        this.f3457k.setValue(Boolean.valueOf(z10));
    }

    private final void l(boolean z10) {
        this.f3456j.setValue(Boolean.valueOf(z10));
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0071 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(Continuation continuation) throws Throwable {
        RippleAnimation$animate$1 rippleAnimation$animate$1;
        RippleAnimation rippleAnimation;
        if (continuation instanceof RippleAnimation$animate$1) {
            rippleAnimation$animate$1 = (RippleAnimation$animate$1) continuation;
            int i11 = rippleAnimation$animate$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                rippleAnimation$animate$1.label = i11 - Integer.MIN_VALUE;
            } else {
                rippleAnimation$animate$1 = new RippleAnimation$animate$1(this, continuation);
            }
        } else {
            rippleAnimation$animate$1 = new RippleAnimation$animate$1(this, continuation);
        }
        Object obj = rippleAnimation$animate$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = rippleAnimation$animate$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                rippleAnimation = (RippleAnimation) rippleAnimation$animate$1.L$0;
                ResultKt.b(obj);
            } else if (i12 == 2) {
                rippleAnimation = (RippleAnimation) rippleAnimation$animate$1.L$0;
                ResultKt.b(obj);
                rippleAnimation$animate$1.L$0 = null;
                rippleAnimation$animate$1.label = 3;
                if (rippleAnimation.g(rippleAnimation$animate$1) == objF) {
                    return objF;
                }
            } else {
                if (i12 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        rippleAnimation$animate$1.L$0 = this;
        rippleAnimation$animate$1.label = 1;
        if (f(rippleAnimation$animate$1) == objF) {
            return objF;
        }
        rippleAnimation = this;
        rippleAnimation.l(true);
        w wVar = rippleAnimation.f3455i;
        rippleAnimation$animate$1.L$0 = rippleAnimation;
        rippleAnimation$animate$1.label = 2;
        if (wVar.i(rippleAnimation$animate$1) == objF) {
            return objF;
        }
        rippleAnimation$animate$1.L$0 = null;
        rippleAnimation$animate$1.label = 3;
        if (rippleAnimation.g(rippleAnimation$animate$1) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }

    public final void e(z.g gVar, long j11) {
        if (this.f3450d == null) {
            this.f3450d = Float.valueOf(d.b(gVar.i()));
        }
        if (this.f3447a == null) {
            this.f3447a = y.g.d(gVar.O0());
        }
        if (this.f3451e == null) {
            this.f3451e = y.g.d(y.h.a(m.i(gVar.i()) / 2.0f, m.g(gVar.i()) / 2.0f));
        }
        float fFloatValue = (!i() || j()) ? ((Number) this.f3452f.k()).floatValue() : 1.0f;
        Float f11 = this.f3450d;
        Intrinsics.e(f11);
        float fB = q0.b.b(f11.floatValue(), this.f3448b, ((Number) this.f3453g.k()).floatValue());
        y.g gVar2 = this.f3447a;
        Intrinsics.e(gVar2);
        float fM = y.g.m(gVar2.v());
        y.g gVar3 = this.f3451e;
        Intrinsics.e(gVar3);
        float fB2 = q0.b.b(fM, y.g.m(gVar3.v()), ((Number) this.f3454h.k()).floatValue());
        y.g gVar4 = this.f3447a;
        Intrinsics.e(gVar4);
        float fN = y.g.n(gVar4.v());
        y.g gVar5 = this.f3451e;
        Intrinsics.e(gVar5);
        long jA = y.h.a(fB2, q0.b.b(fN, y.g.n(gVar5.v()), ((Number) this.f3454h.k()).floatValue()));
        long jK = u1.k(j11, u1.n(j11) * fFloatValue, 0.0f, 0.0f, 0.0f, 14, null);
        if (!this.f3449c) {
            z.f.d(gVar, jK, fB, jA, 0.0f, null, null, 0, 120, null);
            return;
        }
        float fI = m.i(gVar.i());
        float fG = m.g(gVar.i());
        int iB = t1.f4647a.b();
        z.d dVarH0 = gVar.H0();
        long jI = dVarH0.i();
        dVarH0.e().n();
        try {
            dVarH0.c().a(0.0f, 0.0f, fI, fG, iB);
            z.f.d(gVar, jK, fB, jA, 0.0f, null, null, 0, 120, null);
        } finally {
            dVarH0.e().j();
            dVarH0.f(jI);
        }
    }

    public final void h() {
        k(true);
        this.f3455i.n(Unit.f67061a);
    }
}
