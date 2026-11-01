package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.a4;
import androidx.compose.ui.node.o;
import androidx.compose.ui.node.s0;
import androidx.compose.ui.node.u0;
import androidx.compose.ui.node.v0;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import o0.u;

/* JADX INFO: loaded from: classes.dex */
final class CacheDrawModifierNodeImpl extends androidx.compose.ui.f.c implements b, u0, a {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final c f4144n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f4145o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private k f4146p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Function1 f4147q;

    public CacheDrawModifierNodeImpl(c cVar, Function1 function1) {
        this.f4144n = cVar;
        this.f4147q = function1;
        cVar.z(this);
        cVar.D(new Function0<a4>() { // from class: androidx.compose.ui.draw.CacheDrawModifierNodeImpl.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final a4 invoke() {
                return CacheDrawModifierNodeImpl.this.E1();
            }
        });
    }

    private final h F1(z.c cVar) {
        if (!this.f4145o) {
            final c cVar2 = this.f4144n;
            cVar2.C(null);
            cVar2.B(cVar);
            v0.a(this, new Function0<Unit>() { // from class: androidx.compose.ui.draw.CacheDrawModifierNodeImpl$getOrBuildCachedDrawBlock$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Object invoke() {
                    m102invoke();
                    return Unit.f67061a;
                }

                /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                public final void m102invoke() {
                    this.this$0.D1().invoke(cVar2);
                }
            });
            if (cVar2.n() == null) {
                g0.a.c("DrawResult not defined, did you forget to call onDraw?");
                throw new KotlinNothingValueException();
            }
            this.f4145o = true;
        }
        h hVarN = this.f4144n.n();
        Intrinsics.e(hVarN);
        return hVarN;
    }

    public final Function1 D1() {
        return this.f4147q;
    }

    public final a4 E1() {
        k kVar = this.f4146p;
        if (kVar == null) {
            kVar = new k();
            this.f4146p = kVar;
        }
        if (kVar.c() == null) {
            kVar.e(androidx.compose.ui.node.g.j(this));
        }
        return kVar;
    }

    @Override // androidx.compose.ui.node.u0
    public void Z() {
        o0();
    }

    @Override // androidx.compose.ui.draw.a
    public o0.e getDensity() {
        return androidx.compose.ui.node.g.i(this);
    }

    @Override // androidx.compose.ui.draw.a
    public LayoutDirection getLayoutDirection() {
        return androidx.compose.ui.node.g.l(this);
    }

    @Override // androidx.compose.ui.draw.a
    public long i() {
        return u.d(androidx.compose.ui.node.g.h(this, s0.a(128)).k());
    }

    @Override // androidx.compose.ui.node.n
    public void n(z.c cVar) {
        F1(cVar).a().invoke(cVar);
    }

    @Override // androidx.compose.ui.draw.b
    public void o0() {
        k kVar = this.f4146p;
        if (kVar != null) {
            kVar.d();
        }
        this.f4145o = false;
        this.f4144n.C(null);
        o.a(this);
    }

    @Override // androidx.compose.ui.f.c
    public void o1() {
        super.o1();
        k kVar = this.f4146p;
        if (kVar != null) {
            kVar.d();
        }
    }

    @Override // androidx.compose.ui.node.n
    public void w0() {
        o0();
    }
}
