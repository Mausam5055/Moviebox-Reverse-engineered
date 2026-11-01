package androidx.compose.foundation.layout;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
final class SizeNode extends androidx.compose.ui.f.c implements androidx.compose.ui.node.x {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f2787n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f2788o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f2789p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f2790q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f2791r;

    private SizeNode(float f11, float f12, float f13, float f14, boolean z10) {
        this.f2787n = f11;
        this.f2788o = f12;
        this.f2789p = f13;
        this.f2790q = f14;
        this.f2791r = z10;
    }

    public /* synthetic */ SizeNode(float f11, float f12, float f13, float f14, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(f11, f12, f13, f14, z10);
    }

    private final long D1(o0.e eVar) {
        int iF;
        int iF2;
        float f11 = this.f2789p;
        o0.i.a aVar = o0.i.f70603b;
        int i11 = 0;
        int iF3 = !o0.i.i(f11, aVar.b()) ? RangesKt.f(eVar.c0(this.f2789p), 0) : Integer.MAX_VALUE;
        int iF4 = !o0.i.i(this.f2790q, aVar.b()) ? RangesKt.f(eVar.c0(this.f2790q), 0) : Integer.MAX_VALUE;
        if (o0.i.i(this.f2787n, aVar.b()) || (iF = RangesKt.f(RangesKt.i(eVar.c0(this.f2787n), iF3), 0)) == Integer.MAX_VALUE) {
            iF = 0;
        }
        if (!o0.i.i(this.f2788o, aVar.b()) && (iF2 = RangesKt.f(RangesKt.i(eVar.c0(this.f2788o), iF4), 0)) != Integer.MAX_VALUE) {
            i11 = iF2;
        }
        return o0.c.a(iF, iF3, i11, iF4);
    }

    public final void E1(boolean z10) {
        this.f2791r = z10;
    }

    public final void F1(float f11) {
        this.f2790q = f11;
    }

    public final void G1(float f11) {
        this.f2789p = f11;
    }

    public final void H1(float f11) {
        this.f2788o = f11;
    }

    public final void I1(float f11) {
        this.f2787n = f11;
    }

    @Override // androidx.compose.ui.node.x
    public androidx.compose.ui.layout.v z(androidx.compose.ui.layout.x xVar, androidx.compose.ui.layout.s sVar, long j11) {
        long jA;
        long jD1 = D1(xVar);
        if (this.f2791r) {
            jA = o0.c.g(j11, jD1);
        } else {
            float f11 = this.f2787n;
            o0.i.a aVar = o0.i.f70603b;
            jA = o0.c.a(!o0.i.i(f11, aVar.b()) ? o0.b.n(jD1) : RangesKt.i(o0.b.n(j11), o0.b.l(jD1)), !o0.i.i(this.f2789p, aVar.b()) ? o0.b.l(jD1) : RangesKt.f(o0.b.l(j11), o0.b.n(jD1)), !o0.i.i(this.f2788o, aVar.b()) ? o0.b.m(jD1) : RangesKt.i(o0.b.m(j11), o0.b.k(jD1)), !o0.i.i(this.f2790q, aVar.b()) ? o0.b.k(jD1) : RangesKt.f(o0.b.k(j11), o0.b.m(jD1)));
        }
        final androidx.compose.ui.layout.g0 g0VarP = sVar.P(jA);
        return androidx.compose.ui.layout.w.b(xVar, g0VarP.u0(), g0VarP.l0(), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() { // from class: androidx.compose.foundation.layout.SizeNode$measure$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((androidx.compose.ui.layout.g0.a) obj);
                return Unit.f67061a;
            }

            public final void invoke(androidx.compose.ui.layout.g0.a aVar2) {
                androidx.compose.ui.layout.g0.a.l(aVar2, g0VarP, 0, 0, 0.0f, 4, null);
            }
        }, 4, null);
    }
}
