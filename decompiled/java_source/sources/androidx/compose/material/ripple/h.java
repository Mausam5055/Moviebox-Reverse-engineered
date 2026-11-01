package androidx.compose.material.ripple;

import androidx.compose.animation.core.b0;
import androidx.compose.animation.core.r0;
import androidx.compose.foundation.x;
import androidx.compose.runtime.a3;
import androidx.compose.runtime.r2;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.x1;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final r0 f3503a = new r0(15, 0, b0.d(), 2, null);

    public static final androidx.compose.ui.node.f c(p.g gVar, boolean z10, float f11, x1 x1Var, Function0 function0) {
        return j.d(gVar, z10, f11, x1Var, function0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.compose.animation.core.g d(p.f fVar) {
        if (fVar instanceof p.d) {
            return f3503a;
        }
        if (!(fVar instanceof p.b) && !(fVar instanceof p.a.b)) {
            return f3503a;
        }
        return new r0(45, 0, b0.d(), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final androidx.compose.animation.core.g e(p.f fVar) {
        if (!(fVar instanceof p.d) && !(fVar instanceof p.b) && (fVar instanceof p.a.b)) {
            return new r0(150, 0, b0.d(), 2, null);
        }
        return f3503a;
    }

    public static final x f(boolean z10, float f11, long j11, androidx.compose.runtime.i iVar, int i11, int i12) {
        boolean z11 = true;
        if ((i12 & 1) != 0) {
            z10 = true;
        }
        if ((i12 & 2) != 0) {
            f11 = o0.i.f70603b.b();
        }
        if ((i12 & 4) != 0) {
            j11 = u1.f4658b.e();
        }
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(1635163520, i11, -1, "androidx.compose.material.ripple.rememberRipple (Ripple.kt:146)");
        }
        a3 a3VarI = r2.i(u1.g(j11), iVar, (i11 >> 6) & 14);
        boolean z12 = (((i11 & 14) ^ 6) > 4 && iVar.a(z10)) || (i11 & 6) == 4;
        if ((((i11 & 112) ^ 48) <= 32 || !iVar.b(f11)) && (i11 & 48) != 32) {
            z11 = false;
        }
        boolean z13 = z12 | z11;
        Object objY = iVar.y();
        if (z13 || objY == androidx.compose.runtime.i.f3736a.a()) {
            objY = new b(z10, f11, a3VarI, null);
            iVar.p(objY);
        }
        b bVar = (b) objY;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return bVar;
    }
}
