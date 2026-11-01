package androidx.compose.foundation.layout;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
final class PaddingNode extends androidx.compose.ui.f.c implements androidx.compose.ui.node.x {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f2765n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f2766o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f2767p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f2768q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f2769r;

    private PaddingNode(float f11, float f12, float f13, float f14, boolean z10) {
        this.f2765n = f11;
        this.f2766o = f12;
        this.f2767p = f13;
        this.f2768q = f14;
        this.f2769r = z10;
    }

    public /* synthetic */ PaddingNode(float f11, float f12, float f13, float f14, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(f11, f12, f13, f14, z10);
    }

    public final boolean D1() {
        return this.f2769r;
    }

    public final float E1() {
        return this.f2765n;
    }

    public final float F1() {
        return this.f2766o;
    }

    public final void G1(float f11) {
        this.f2768q = f11;
    }

    public final void H1(float f11) {
        this.f2767p = f11;
    }

    public final void I1(boolean z10) {
        this.f2769r = z10;
    }

    public final void J1(float f11) {
        this.f2765n = f11;
    }

    public final void K1(float f11) {
        this.f2766o = f11;
    }

    @Override // androidx.compose.ui.node.x
    public androidx.compose.ui.layout.v z(final androidx.compose.ui.layout.x xVar, androidx.compose.ui.layout.s sVar, long j11) {
        int iC0 = xVar.c0(this.f2765n) + xVar.c0(this.f2767p);
        int iC1 = xVar.c0(this.f2766o) + xVar.c0(this.f2768q);
        final androidx.compose.ui.layout.g0 g0VarP = sVar.P(o0.c.n(j11, -iC0, -iC1));
        return androidx.compose.ui.layout.w.b(xVar, o0.c.i(j11, g0VarP.u0() + iC0), o0.c.h(j11, g0VarP.l0() + iC1), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.layout.PaddingNode$measure$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((androidx.compose.ui.layout.g0.a) obj);
                return Unit.f67061a;
            }

            public final void invoke(androidx.compose.ui.layout.g0.a aVar) {
                if (this.this$0.D1()) {
                    androidx.compose.ui.layout.g0.a.l(aVar, g0VarP, xVar.c0(this.this$0.E1()), xVar.c0(this.this$0.F1()), 0.0f, 4, null);
                } else {
                    androidx.compose.ui.layout.g0.a.h(aVar, g0VarP, xVar.c0(this.this$0.E1()), xVar.c0(this.this$0.F1()), 0.0f, 4, null);
                }
            }
        }, 4, null);
    }
}
