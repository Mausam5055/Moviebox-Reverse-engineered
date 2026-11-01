package androidx.compose.material.ripple;

import androidx.compose.foundation.x;
import androidx.compose.foundation.y;
import androidx.compose.runtime.a3;
import androidx.compose.runtime.g0;
import androidx.compose.runtime.r2;
import androidx.compose.ui.graphics.u1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class Ripple implements x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f3442a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f3443b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a3 f3444c;

    private Ripple(boolean z10, float f11, a3 a3Var) {
        this.f3442a = z10;
        this.f3443b = f11;
        this.f3444c = a3Var;
    }

    public /* synthetic */ Ripple(boolean z10, float f11, a3 a3Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, f11, a3Var);
    }

    @Override // androidx.compose.foundation.x
    public final y a(p.g gVar, androidx.compose.runtime.i iVar, int i11) {
        long jA;
        iVar.P(988743187);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(988743187, i11, -1, "androidx.compose.material.ripple.Ripple.rememberUpdatedInstance (Ripple.kt:196)");
        }
        i iVar2 = (i) iVar.l(RippleThemeKt.d());
        if (((u1) this.f3444c.getValue()).u() != 16) {
            iVar.P(-303571590);
            iVar.K();
            jA = ((u1) this.f3444c.getValue()).u();
        } else {
            iVar.P(-303521246);
            jA = iVar2.a(iVar, 0);
            iVar.K();
        }
        a3 a3VarI = r2.i(u1.g(jA), iVar, 0);
        a3 a3VarI2 = r2.i(iVar2.b(iVar, 0), iVar, 0);
        int i12 = i11 & 14;
        RippleIndicationInstance rippleIndicationInstanceC = c(gVar, this.f3442a, this.f3443b, a3VarI, a3VarI2, iVar, i12 | ((i11 << 12) & 458752));
        boolean zA = iVar.A(rippleIndicationInstanceC) | (((i12 ^ 6) > 4 && iVar.O(gVar)) || (i11 & 6) == 4);
        Object objY = iVar.y();
        if (zA || objY == androidx.compose.runtime.i.f3736a.a()) {
            objY = new Ripple$rememberUpdatedInstance$1$1(gVar, rippleIndicationInstanceC, null);
            iVar.p(objY);
        }
        g0.c(rippleIndicationInstanceC, gVar, (Function2) objY, iVar, (i11 << 3) & 112);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        iVar.K();
        return rippleIndicationInstanceC;
    }

    public abstract RippleIndicationInstance c(p.g gVar, boolean z10, float f11, a3 a3Var, a3 a3Var2, androidx.compose.runtime.i iVar, int i11);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Ripple)) {
            return false;
        }
        Ripple ripple = (Ripple) obj;
        return this.f3442a == ripple.f3442a && o0.i.i(this.f3443b, ripple.f3443b) && Intrinsics.c(this.f3444c, ripple.f3444c);
    }

    public int hashCode() {
        return (((androidx.compose.foundation.e.a(this.f3442a) * 31) + o0.i.j(this.f3443b)) * 31) + this.f3444c.hashCode();
    }
}
