package androidx.compose.material.ripple;

import android.view.ViewGroup;
import androidx.compose.runtime.a3;
import androidx.compose.runtime.b2;
import androidx.compose.runtime.i1;
import androidx.compose.runtime.u2;
import androidx.compose.ui.graphics.h0;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.u1;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.coroutines.n0;
import y.m;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidRippleIndicationInstance extends RippleIndicationInstance implements b2, e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f3428c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f3429d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a3 f3430e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a3 f3431f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ViewGroup f3432g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private RippleContainer f3433h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final i1 f3434i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final i1 f3435j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f3436k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f3437l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Function0 f3438m;

    private AndroidRippleIndicationInstance(boolean z10, float f11, a3 a3Var, a3 a3Var2, ViewGroup viewGroup) {
        super(z10, a3Var2);
        this.f3428c = z10;
        this.f3429d = f11;
        this.f3430e = a3Var;
        this.f3431f = a3Var2;
        this.f3432g = viewGroup;
        this.f3434i = u2.c(null, null, 2, null);
        this.f3435j = u2.c(Boolean.TRUE, null, 2, null);
        this.f3436k = m.f78491b.b();
        this.f3437l = -1;
        this.f3438m = new Function0<Unit>() { // from class: androidx.compose.material.ripple.AndroidRippleIndicationInstance$onInvalidateRipple$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m76invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m76invoke() {
                AndroidRippleIndicationInstance androidRippleIndicationInstance = this.this$0;
                androidRippleIndicationInstance.l(!androidRippleIndicationInstance.i());
            }
        };
    }

    public /* synthetic */ AndroidRippleIndicationInstance(boolean z10, float f11, a3 a3Var, a3 a3Var2, ViewGroup viewGroup, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, f11, a3Var, a3Var2, viewGroup);
    }

    private final void h() {
        RippleContainer rippleContainer = this.f3433h;
        if (rippleContainer != null) {
            rippleContainer.disposeRippleIfNeeded(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean i() {
        return ((Boolean) this.f3435j.getValue()).booleanValue();
    }

    private final RippleContainer j() {
        RippleContainer rippleContainer = this.f3433h;
        if (rippleContainer != null) {
            Intrinsics.e(rippleContainer);
            return rippleContainer;
        }
        RippleContainer rippleContainerC = j.c(this.f3432g);
        this.f3433h = rippleContainerC;
        Intrinsics.e(rippleContainerC);
        return rippleContainerC;
    }

    private final RippleHostView k() {
        return (RippleHostView) this.f3434i.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(boolean z10) {
        this.f3435j.setValue(Boolean.valueOf(z10));
    }

    private final void m(RippleHostView rippleHostView) {
        this.f3434i.setValue(rippleHostView);
    }

    @Override // androidx.compose.foundation.y
    public void a(z.c cVar) {
        this.f3436k = cVar.i();
        this.f3437l = Float.isNaN(this.f3429d) ? MathKt.d(d.a(cVar, this.f3428c, cVar.i())) : cVar.c0(this.f3429d);
        long jU = ((u1) this.f3430e.getValue()).u();
        float fD = ((c) this.f3431f.getValue()).d();
        cVar.Y0();
        c(cVar, this.f3429d, jU);
        m1 m1VarE = cVar.H0().e();
        i();
        RippleHostView rippleHostViewK = k();
        if (rippleHostViewK != null) {
            rippleHostViewK.m79setRippleProperties07v42R4(cVar.i(), jU, fD);
            rippleHostViewK.draw(h0.d(m1VarE));
        }
    }

    @Override // androidx.compose.material.ripple.RippleIndicationInstance
    public void b(p.k.b bVar, n0 n0Var) {
        RippleHostView rippleHostView = j().getRippleHostView(this);
        rippleHostView.m78addRippleKOepWvA(bVar, this.f3428c, this.f3436k, this.f3437l, ((u1) this.f3430e.getValue()).u(), ((c) this.f3431f.getValue()).d(), this.f3438m);
        m(rippleHostView);
    }

    @Override // androidx.compose.material.ripple.RippleIndicationInstance
    public void d(p.k.b bVar) {
        RippleHostView rippleHostViewK = k();
        if (rippleHostViewK != null) {
            rippleHostViewK.removeRipple();
        }
    }

    @Override // androidx.compose.runtime.b2
    public void onAbandoned() {
        h();
    }

    @Override // androidx.compose.runtime.b2
    public void onForgotten() {
        h();
    }

    @Override // androidx.compose.runtime.b2
    public void onRemembered() {
    }

    @Override // androidx.compose.material.ripple.e
    public void u0() {
        m(null);
    }
}
