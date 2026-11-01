package androidx.compose.foundation;

import androidx.compose.ui.graphics.a5;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.k4;
import androidx.compose.ui.graphics.l4;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v4;
import androidx.compose.ui.node.u0;
import androidx.compose.ui.node.v0;
import androidx.compose.ui.unit.LayoutDirection;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
final class BackgroundNode extends androidx.compose.ui.f.c implements androidx.compose.ui.node.n, u0 {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private long f2548n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private j1 f2549o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f2550p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private a5 f2551q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f2552r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private LayoutDirection f2553s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private k4 f2554t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private a5 f2555u;

    private BackgroundNode(long j11, j1 j1Var, float f11, a5 a5Var) {
        this.f2548n = j11;
        this.f2549o = j1Var;
        this.f2550p = f11;
        this.f2551q = a5Var;
        this.f2552r = y.m.f78491b.a();
    }

    public /* synthetic */ BackgroundNode(long j11, j1 j1Var, float f11, a5 a5Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(j11, j1Var, f11, a5Var);
    }

    private final void D1(z.c cVar) {
        k4 k4VarF1 = F1(cVar);
        if (!u1.m(this.f2548n, u1.f4658b.e())) {
            l4.c(cVar, k4VarF1, this.f2548n, (60 & 4) != 0 ? 1.0f : 0.0f, (60 & 8) != 0 ? z.l.f79114a : null, (60 & 16) != 0 ? null : null, (60 & 32) != 0 ? z.g.f79110o1.a() : 0);
        }
        j1 j1Var = this.f2549o;
        if (j1Var != null) {
            l4.b(cVar, k4VarF1, j1Var, this.f2550p, null, null, 0, 56, null);
        }
    }

    private final void E1(z.c cVar) {
        if (!u1.m(this.f2548n, u1.f4658b.e())) {
            z.f.j(cVar, this.f2548n, 0L, 0L, 0.0f, null, null, 0, 126, null);
        }
        j1 j1Var = this.f2549o;
        if (j1Var != null) {
            z.f.i(cVar, j1Var, 0L, 0L, this.f2550p, null, null, 0, Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v9, types: [T, androidx.compose.ui.graphics.k4, java.lang.Object] */
    private final k4 F1(final z.c cVar) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        if (y.m.f(cVar.i(), this.f2552r) && cVar.getLayoutDirection() == this.f2553s && Intrinsics.c(this.f2555u, this.f2551q)) {
            ?? r11 = this.f2554t;
            Intrinsics.e(r11);
            objectRef.element = r11;
        } else {
            v0.a(this, new Function0<Unit>() { // from class: androidx.compose.foundation.BackgroundNode$getOutline$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m20invoke();
                    return Unit.f67061a;
                }

                /* JADX WARN: Type inference failed for: r1v2, types: [T, androidx.compose.ui.graphics.k4] */
                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m20invoke() {
                    objectRef.element = this.G1().a(cVar.i(), cVar.getLayoutDirection(), cVar);
                }
            });
        }
        this.f2554t = (k4) objectRef.element;
        this.f2552r = cVar.i();
        this.f2553s = cVar.getLayoutDirection();
        this.f2555u = this.f2551q;
        T t11 = objectRef.element;
        Intrinsics.e(t11);
        return (k4) t11;
    }

    public final void A0(a5 a5Var) {
        this.f2551q = a5Var;
    }

    public final a5 G1() {
        return this.f2551q;
    }

    public final void H1(j1 j1Var) {
        this.f2549o = j1Var;
    }

    public final void I1(long j11) {
        this.f2548n = j11;
    }

    @Override // androidx.compose.ui.node.u0
    public void Z() {
        this.f2552r = y.m.f78491b.a();
        this.f2553s = null;
        this.f2554t = null;
        this.f2555u = null;
        androidx.compose.ui.node.o.a(this);
    }

    @Override // androidx.compose.ui.node.n
    public void n(z.c cVar) {
        if (this.f2551q == v4.a()) {
            E1(cVar);
        } else {
            D1(cVar);
        }
        cVar.Y0();
    }

    public final void setAlpha(float f11) {
        this.f2550p = f11;
    }

    @Override // androidx.compose.ui.node.n
    public /* synthetic */ void w0() {
        androidx.compose.ui.node.m.a(this);
    }
}
