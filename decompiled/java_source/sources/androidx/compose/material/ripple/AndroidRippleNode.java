package androidx.compose.material.ripple;

import android.view.View;
import androidx.compose.ui.graphics.h0;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.x1;
import androidx.compose.ui.node.o;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidRippleNode extends RippleNode implements e {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private RippleContainer f3439y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private RippleHostView f3440z;

    private AndroidRippleNode(p.g gVar, boolean z10, float f11, x1 x1Var, Function0 function0) {
        super(gVar, z10, f11, x1Var, function0, null);
    }

    public /* synthetic */ AndroidRippleNode(p.g gVar, boolean z10, float f11, x1 x1Var, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this(gVar, z10, f11, x1Var, function0);
    }

    private final RippleContainer R1() {
        RippleContainer rippleContainer = this.f3439y;
        if (rippleContainer != null) {
            Intrinsics.e(rippleContainer);
            return rippleContainer;
        }
        RippleContainer rippleContainerC = j.c(j.e((View) androidx.compose.ui.node.e.a(this, AndroidCompositionLocals_androidKt.j())));
        this.f3439y = rippleContainerC;
        Intrinsics.e(rippleContainerC);
        return rippleContainerC;
    }

    private final void S1(RippleHostView rippleHostView) {
        this.f3440z = rippleHostView;
        o.a(this);
    }

    @Override // androidx.compose.material.ripple.RippleNode
    public void I1(p.k.b bVar, long j11, float f11) {
        RippleHostView rippleHostView = R1().getRippleHostView(this);
        rippleHostView.m78addRippleKOepWvA(bVar, K1(), j11, MathKt.d(f11), M1(), ((c) L1().invoke()).d(), new Function0<Unit>() { // from class: androidx.compose.material.ripple.AndroidRippleNode$addRipple$1$1$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m77invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m77invoke() {
                o.a(this.this$0);
            }
        });
        S1(rippleHostView);
    }

    @Override // androidx.compose.material.ripple.RippleNode
    public void J1(z.g gVar) {
        m1 m1VarE = gVar.H0().e();
        RippleHostView rippleHostView = this.f3440z;
        if (rippleHostView != null) {
            rippleHostView.m79setRippleProperties07v42R4(N1(), M1(), ((c) L1().invoke()).d());
            rippleHostView.draw(h0.d(m1VarE));
        }
    }

    @Override // androidx.compose.material.ripple.RippleNode
    public void P1(p.k.b bVar) {
        RippleHostView rippleHostView = this.f3440z;
        if (rippleHostView != null) {
            rippleHostView.removeRipple();
        }
    }

    @Override // androidx.compose.ui.f.c
    public void o1() {
        RippleContainer rippleContainer = this.f3439y;
        if (rippleContainer != null) {
            rippleContainer.disposeRippleIfNeeded(this);
        }
    }

    @Override // androidx.compose.material.ripple.e
    public void u0() {
        S1(null);
    }
}
