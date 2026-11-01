package androidx.compose.material;

import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.x1;
import androidx.compose.ui.node.u0;
import androidx.compose.ui.node.v0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
final class DelegatingThemeAwareRippleNode extends androidx.compose.ui.node.i implements androidx.compose.ui.node.d, u0 {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final p.g f3350p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final boolean f3351q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final float f3352r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final x1 f3353s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private androidx.compose.ui.node.f f3354t;

    static final class a implements x1 {
        a() {
        }

        @Override // androidx.compose.ui.graphics.x1
        public final long a() {
            long jA = DelegatingThemeAwareRippleNode.this.f3353s.a();
            if (jA != 16) {
                return jA;
            }
            g gVar = (g) androidx.compose.ui.node.e.a(DelegatingThemeAwareRippleNode.this, RippleKt.d());
            return (gVar == null || gVar.a() == 16) ? h.f3412a.b(((u1) androidx.compose.ui.node.e.a(DelegatingThemeAwareRippleNode.this, ContentColorKt.a())).u(), ((b) androidx.compose.ui.node.e.a(DelegatingThemeAwareRippleNode.this, ColorsKt.c())).m()) : gVar.a();
        }
    }

    private DelegatingThemeAwareRippleNode(p.g gVar, boolean z10, float f11, x1 x1Var) {
        this.f3350p = gVar;
        this.f3351q = z10;
        this.f3352r = f11;
        this.f3353s = x1Var;
    }

    public /* synthetic */ DelegatingThemeAwareRippleNode(p.g gVar, boolean z10, float f11, x1 x1Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(gVar, z10, f11, x1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N1() {
        this.f3354t = D1(androidx.compose.material.ripple.h.c(this.f3350p, this.f3351q, this.f3352r, new a(), new Function0<androidx.compose.material.ripple.c>() { // from class: androidx.compose.material.DelegatingThemeAwareRippleNode$attachNewRipple$calculateRippleAlpha$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final androidx.compose.material.ripple.c invoke() {
                androidx.compose.material.ripple.c cVarB;
                g gVar = (g) androidx.compose.ui.node.e.a(this.this$0, RippleKt.d());
                return (gVar == null || (cVarB = gVar.b()) == null) ? h.f3412a.a(((u1) androidx.compose.ui.node.e.a(this.this$0, ContentColorKt.a())).u(), ((b) androidx.compose.ui.node.e.a(this.this$0, ColorsKt.c())).m()) : cVarB;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O1() {
        androidx.compose.ui.node.f fVar = this.f3354t;
        if (fVar != null) {
            G1(fVar);
        }
    }

    private final void P1() {
        v0.a(this, new Function0<Unit>() { // from class: androidx.compose.material.DelegatingThemeAwareRippleNode$updateConfiguration$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Object invoke() {
                m74invoke();
                return Unit.f67061a;
            }

            /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
            public final void m74invoke() {
                if (((g) androidx.compose.ui.node.e.a(this.this$0, RippleKt.d())) == null) {
                    this.this$0.O1();
                } else if (this.this$0.f3354t == null) {
                    this.this$0.N1();
                }
            }
        });
    }

    @Override // androidx.compose.ui.node.u0
    public void Z() {
        P1();
    }

    @Override // androidx.compose.ui.f.c
    public void n1() {
        P1();
    }
}
