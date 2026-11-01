package androidx.compose.foundation;

import android.content.Context;
import android.os.Build;
import android.widget.EdgeEffect;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.r2;
import androidx.compose.ui.graphics.w1;
import androidx.compose.ui.input.pointer.l0;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.z0;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidEdgeEffectOverscrollEffect implements f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private y.g f2535a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final p f2536b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i1 f2537c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2538d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f2539e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f2540f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private androidx.compose.ui.input.pointer.v f2541g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final androidx.compose.ui.f f2542h;

    public AndroidEdgeEffectOverscrollEffect(Context context, e0 e0Var) {
        androidx.compose.ui.f hVar;
        p pVar = new p(context, w1.j(e0Var.b()));
        this.f2536b = pVar;
        Unit unit = Unit.f67061a;
        this.f2537c = r2.e(unit, r2.g());
        this.f2538d = true;
        this.f2540f = y.m.f78491b.b();
        androidx.compose.ui.f fVarC = l0.c(androidx.compose.ui.f.f4178a, unit, new AndroidEdgeEffectOverscrollEffect$effectModifier$1(this, null));
        if (Build.VERSION.SDK_INT >= 31) {
            hVar = new n(this, pVar, InspectableValueKt.b() ? new Function1<z0, Unit>() { // from class: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$special$$inlined$debugInspectorInfo$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((z0) obj);
                    return Unit.f67061a;
                }

                public final void invoke(z0 z0Var) {
                    z0Var.b("overscroll");
                    z0Var.c(this.this$0);
                }
            } : InspectableValueKt.a());
        } else {
            hVar = new h(this, pVar, e0Var, InspectableValueKt.b() ? new Function1<z0, Unit>() { // from class: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$special$$inlined$debugInspectorInfo$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    invoke((z0) obj);
                    return Unit.f67061a;
                }

                public final void invoke(z0 z0Var) {
                    z0Var.b("overscroll");
                    z0Var.c(this.this$0);
                }
            } : InspectableValueKt.a());
        }
        this.f2542h = fVarC.e(hVar);
    }

    private final void h() {
        boolean zIsFinished;
        p pVar = this.f2536b;
        EdgeEffect edgeEffect = pVar.f3150d;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = edgeEffect.isFinished();
        } else {
            zIsFinished = false;
        }
        EdgeEffect edgeEffect2 = pVar.f3151e;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished = edgeEffect2.isFinished() || zIsFinished;
        }
        EdgeEffect edgeEffect3 = pVar.f3152f;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished = edgeEffect3.isFinished() || zIsFinished;
        }
        EdgeEffect edgeEffect4 = pVar.f3153g;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished = edgeEffect4.isFinished() || zIsFinished;
        }
        if (zIsFinished) {
            k();
        }
    }

    private final float l(long j11) {
        float fM = y.g.m(i());
        float fN = y.g.n(j11) / y.m.g(this.f2540f);
        EdgeEffect edgeEffectF = this.f2536b.f();
        o oVar = o.f3146a;
        return oVar.b(edgeEffectF) == 0.0f ? (-oVar.d(edgeEffectF, -fN, 1 - fM)) * y.m.g(this.f2540f) : y.g.n(j11);
    }

    private final float m(long j11) {
        float fN = y.g.n(i());
        float fM = y.g.m(j11) / y.m.i(this.f2540f);
        EdgeEffect edgeEffectH = this.f2536b.h();
        o oVar = o.f3146a;
        return oVar.b(edgeEffectH) == 0.0f ? oVar.d(edgeEffectH, fM, 1 - fN) * y.m.i(this.f2540f) : y.g.m(j11);
    }

    private final float n(long j11) {
        float fN = y.g.n(i());
        float fM = y.g.m(j11) / y.m.i(this.f2540f);
        EdgeEffect edgeEffectJ = this.f2536b.j();
        o oVar = o.f3146a;
        return oVar.b(edgeEffectJ) == 0.0f ? (-oVar.d(edgeEffectJ, -fM, fN)) * y.m.i(this.f2540f) : y.g.m(j11);
    }

    private final float o(long j11) {
        float fM = y.g.m(i());
        float fN = y.g.n(j11) / y.m.g(this.f2540f);
        EdgeEffect edgeEffectL = this.f2536b.l();
        o oVar = o.f3146a;
        return oVar.b(edgeEffectL) == 0.0f ? oVar.d(edgeEffectL, fN, fM) * y.m.g(this.f2540f) : y.g.n(j11);
    }

    private final boolean p(long j11) {
        boolean z10;
        boolean z11 = true;
        if (!this.f2536b.r() || y.g.m(j11) >= 0.0f) {
            z10 = false;
        } else {
            o.f3146a.e(this.f2536b.h(), y.g.m(j11));
            z10 = !this.f2536b.r();
        }
        if (this.f2536b.u() && y.g.m(j11) > 0.0f) {
            o.f3146a.e(this.f2536b.j(), y.g.m(j11));
            z10 = z10 || !this.f2536b.u();
        }
        if (this.f2536b.y() && y.g.n(j11) < 0.0f) {
            o.f3146a.e(this.f2536b.l(), y.g.n(j11));
            z10 = z10 || !this.f2536b.y();
        }
        if (!this.f2536b.o() || y.g.n(j11) <= 0.0f) {
            return z10;
        }
        o.f3146a.e(this.f2536b.f(), y.g.n(j11));
        if (!z10 && this.f2536b.o()) {
            z11 = false;
        }
        return z11;
    }

    private final boolean q() {
        boolean z10;
        if (this.f2536b.t()) {
            m(y.g.f78470b.c());
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f2536b.w()) {
            n(y.g.f78470b.c());
            z10 = true;
        }
        if (this.f2536b.A()) {
            o(y.g.f78470b.c());
            z10 = true;
        }
        if (!this.f2536b.q()) {
            return z10;
        }
        l(y.g.f78470b.c());
        return true;
    }

    @Override // androidx.compose.foundation.f0
    public boolean a() {
        p pVar = this.f2536b;
        EdgeEffect edgeEffect = pVar.f3150d;
        if (edgeEffect != null && o.f3146a.b(edgeEffect) != 0.0f) {
            return true;
        }
        EdgeEffect edgeEffect2 = pVar.f3151e;
        if (edgeEffect2 != null && o.f3146a.b(edgeEffect2) != 0.0f) {
            return true;
        }
        EdgeEffect edgeEffect3 = pVar.f3152f;
        if (edgeEffect3 != null && o.f3146a.b(edgeEffect3) != 0.0f) {
            return true;
        }
        EdgeEffect edgeEffect4 = pVar.f3153g;
        return (edgeEffect4 == null || o.f3146a.b(edgeEffect4) == 0.0f) ? false : true;
    }

    @Override // androidx.compose.foundation.f0
    public androidx.compose.ui.f b() {
        return this.f2542h;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002a  */
    /* JADX WARN: Code duplicated, block: B:50:0x0107  */
    /* JADX WARN: Code duplicated, block: B:52:0x010c  */
    /* JADX WARN: Code duplicated, block: B:54:0x0114  */
    /* JADX WARN: Code duplicated, block: B:55:0x0118  */
    /* JADX WARN: Code duplicated, block: B:57:0x011b A[ADDED_TO_REGION] */
    @Override // androidx.compose.foundation.f0
    public long c(long j11, int i11, Function1 function1) {
        float fL;
        boolean z10;
        boolean z11;
        if (y.m.k(this.f2540f)) {
            return ((y.g) function1.invoke(y.g.d(j11))).v();
        }
        boolean z12 = true;
        if (!this.f2539e) {
            q();
            this.f2539e = true;
        }
        float fN = 0.0f;
        if (y.g.n(j11) == 0.0f) {
            fL = 0.0f;
        } else if (this.f2536b.A()) {
            fL = o(j11);
            if (!this.f2536b.A()) {
                this.f2536b.l().onRelease();
            }
        } else if (this.f2536b.q()) {
            fL = l(j11);
            if (!this.f2536b.q()) {
                this.f2536b.f().onRelease();
            }
        } else {
            fL = 0.0f;
        }
        if (y.g.m(j11) != 0.0f) {
            if (this.f2536b.t()) {
                fN = m(j11);
                if (!this.f2536b.t()) {
                    this.f2536b.h().onRelease();
                }
            } else if (this.f2536b.w()) {
                fN = n(j11);
                if (!this.f2536b.w()) {
                    this.f2536b.j().onRelease();
                }
            }
        }
        long jA = y.h.a(fN, fL);
        if (!y.g.j(jA, y.g.f78470b.c())) {
            k();
        }
        long jQ = y.g.q(j11, jA);
        long jV = ((y.g) function1.invoke(y.g.d(jQ))).v();
        long jQ2 = y.g.q(jQ, jV);
        boolean z13 = false;
        if (androidx.compose.ui.input.nestedscroll.e.d(i11, androidx.compose.ui.input.nestedscroll.e.f4939a.b())) {
            if (y.g.m(jQ2) > 0.5f) {
                m(jQ2);
            } else {
                if (y.g.m(jQ2) < -0.5f) {
                    n(jQ2);
                } else {
                    z10 = false;
                }
                if (y.g.n(jQ2) > 0.5f) {
                    o(jQ2);
                } else {
                    if (y.g.n(jQ2) < -0.5f) {
                        l(jQ2);
                    } else {
                        z11 = false;
                    }
                    if (!z10 && !z11) {
                        z12 = false;
                    }
                    z13 = z12;
                }
                z11 = true;
                if (!z10) {
                    z12 = false;
                }
                z13 = z12;
            }
            z10 = true;
            if (y.g.n(jQ2) > 0.5f) {
                o(jQ2);
            } else {
                if (y.g.n(jQ2) < -0.5f) {
                    l(jQ2);
                } else {
                    z11 = false;
                }
                if (!z10) {
                    z12 = false;
                }
                z13 = z12;
            }
            z11 = true;
            if (!z10) {
                z12 = false;
            }
            z13 = z12;
        }
        if (p(j11) || z13) {
            k();
        }
        return y.g.r(jA, jV);
    }

    /* JADX WARN: Code duplicated, block: B:54:0x013d  */
    /* JADX WARN: Code duplicated, block: B:55:0x0151  */
    /* JADX WARN: Code duplicated, block: B:57:0x0159  */
    /* JADX WARN: Code duplicated, block: B:60:0x0175  */
    /* JADX WARN: Code duplicated, block: B:61:0x0189  */
    /* JADX WARN: Code duplicated, block: B:63:0x0191  */
    /* JADX WARN: Code duplicated, block: B:66:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.compose.foundation.f0
    public Object d(long j11, Function2 function2, Continuation continuation) throws Throwable {
        AndroidEdgeEffectOverscrollEffect$applyToFling$1 androidEdgeEffectOverscrollEffect$applyToFling$1;
        float fH;
        float fI;
        long jK;
        AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect;
        long jK2;
        if (continuation instanceof AndroidEdgeEffectOverscrollEffect$applyToFling$1) {
            androidEdgeEffectOverscrollEffect$applyToFling$1 = (AndroidEdgeEffectOverscrollEffect$applyToFling$1) continuation;
            int i11 = androidEdgeEffectOverscrollEffect$applyToFling$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                androidEdgeEffectOverscrollEffect$applyToFling$1.label = i11 - Integer.MIN_VALUE;
            } else {
                androidEdgeEffectOverscrollEffect$applyToFling$1 = new AndroidEdgeEffectOverscrollEffect$applyToFling$1(this, continuation);
            }
        } else {
            androidEdgeEffectOverscrollEffect$applyToFling$1 = new AndroidEdgeEffectOverscrollEffect$applyToFling$1(this, continuation);
        }
        Object objInvoke = androidEdgeEffectOverscrollEffect$applyToFling$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = androidEdgeEffectOverscrollEffect$applyToFling$1.label;
        if (i12 != 0) {
            if (i12 == 1) {
                ResultKt.b(objInvoke);
                return Unit.f67061a;
            }
            if (i12 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            jK = androidEdgeEffectOverscrollEffect$applyToFling$1.J$0;
            androidEdgeEffectOverscrollEffect = (AndroidEdgeEffectOverscrollEffect) androidEdgeEffectOverscrollEffect$applyToFling$1.L$0;
            ResultKt.b(objInvoke);
            jK2 = o0.z.k(jK, ((o0.z) objInvoke).n());
            androidEdgeEffectOverscrollEffect.f2539e = false;
            if (o0.z.h(jK2) > 0.0f) {
                o.f3146a.c(androidEdgeEffectOverscrollEffect.f2536b.h(), MathKt.d(o0.z.h(jK2)));
            } else if (o0.z.h(jK2) < 0.0f) {
                o.f3146a.c(androidEdgeEffectOverscrollEffect.f2536b.j(), -MathKt.d(o0.z.h(jK2)));
            }
            if (o0.z.i(jK2) > 0.0f) {
                o.f3146a.c(androidEdgeEffectOverscrollEffect.f2536b.l(), MathKt.d(o0.z.i(jK2)));
            } else if (o0.z.i(jK2) < 0.0f) {
                o.f3146a.c(androidEdgeEffectOverscrollEffect.f2536b.f(), -MathKt.d(o0.z.i(jK2)));
            }
            if (!o0.z.g(jK2, o0.z.f70637b.a())) {
                androidEdgeEffectOverscrollEffect.k();
            }
            androidEdgeEffectOverscrollEffect.h();
            return Unit.f67061a;
        }
        ResultKt.b(objInvoke);
        if (y.m.k(this.f2540f)) {
            Object objB = o0.z.b(j11);
            androidEdgeEffectOverscrollEffect$applyToFling$1.label = 1;
            if (function2.invoke(objB, androidEdgeEffectOverscrollEffect$applyToFling$1) == objF) {
                return objF;
            }
            return Unit.f67061a;
        }
        if (o0.z.h(j11) > 0.0f && this.f2536b.t()) {
            o.f3146a.c(this.f2536b.h(), MathKt.d(o0.z.h(j11)));
            fH = o0.z.h(j11);
        } else if (o0.z.h(j11) >= 0.0f || !this.f2536b.w()) {
            fH = 0.0f;
        } else {
            o.f3146a.c(this.f2536b.j(), -MathKt.d(o0.z.h(j11)));
            fH = o0.z.h(j11);
        }
        if (o0.z.i(j11) > 0.0f && this.f2536b.A()) {
            o.f3146a.c(this.f2536b.l(), MathKt.d(o0.z.i(j11)));
            fI = o0.z.i(j11);
        } else if (o0.z.i(j11) >= 0.0f || !this.f2536b.q()) {
            fI = 0.0f;
        } else {
            o.f3146a.c(this.f2536b.f(), -MathKt.d(o0.z.i(j11)));
            fI = o0.z.i(j11);
        }
        long jA = o0.a0.a(fH, fI);
        if (!o0.z.g(jA, o0.z.f70637b.a())) {
            k();
        }
        jK = o0.z.k(j11, jA);
        Object objB2 = o0.z.b(jK);
        androidEdgeEffectOverscrollEffect$applyToFling$1.L$0 = this;
        androidEdgeEffectOverscrollEffect$applyToFling$1.J$0 = jK;
        androidEdgeEffectOverscrollEffect$applyToFling$1.label = 2;
        objInvoke = function2.invoke(objB2, androidEdgeEffectOverscrollEffect$applyToFling$1);
        if (objInvoke == objF) {
            return objF;
        }
        androidEdgeEffectOverscrollEffect = this;
        jK2 = o0.z.k(jK, ((o0.z) objInvoke).n());
        androidEdgeEffectOverscrollEffect.f2539e = false;
        if (o0.z.h(jK2) > 0.0f) {
            o.f3146a.c(androidEdgeEffectOverscrollEffect.f2536b.h(), MathKt.d(o0.z.h(jK2)));
        } else if (o0.z.h(jK2) < 0.0f) {
            o.f3146a.c(androidEdgeEffectOverscrollEffect.f2536b.j(), -MathKt.d(o0.z.h(jK2)));
        }
        if (o0.z.i(jK2) > 0.0f) {
            o.f3146a.c(androidEdgeEffectOverscrollEffect.f2536b.l(), MathKt.d(o0.z.i(jK2)));
        } else if (o0.z.i(jK2) < 0.0f) {
            o.f3146a.c(androidEdgeEffectOverscrollEffect.f2536b.f(), -MathKt.d(o0.z.i(jK2)));
        }
        if (!o0.z.g(jK2, o0.z.f70637b.a())) {
            androidEdgeEffectOverscrollEffect.k();
        }
        androidEdgeEffectOverscrollEffect.h();
        return Unit.f67061a;
    }

    public final long i() {
        y.g gVar = this.f2535a;
        long jV = gVar != null ? gVar.v() : y.n.b(this.f2540f);
        return y.h.a(y.g.m(jV) / y.m.i(this.f2540f), y.g.n(jV) / y.m.g(this.f2540f));
    }

    public final i1 j() {
        return this.f2537c;
    }

    public final void k() {
        if (this.f2538d) {
            this.f2537c.setValue(Unit.f67061a);
        }
    }

    public final void r(long j11) {
        boolean zF = y.m.f(this.f2540f, y.m.f78491b.b());
        boolean zF2 = y.m.f(j11, this.f2540f);
        this.f2540f = j11;
        if (!zF2) {
            this.f2536b.B(o0.u.a(MathKt.d(y.m.i(j11)), MathKt.d(y.m.g(j11))));
        }
        if (zF || zF2) {
            return;
        }
        k();
        h();
    }
}
