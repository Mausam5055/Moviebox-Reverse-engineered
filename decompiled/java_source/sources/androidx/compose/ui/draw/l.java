package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.a5;
import androidx.compose.ui.graphics.d4;
import androidx.compose.ui.graphics.v4;

/* JADX INFO: loaded from: classes.dex */
public abstract class l {
    public static final androidx.compose.ui.f a(androidx.compose.ui.f fVar, float f11, a5 a5Var, boolean z10, long j11, long j12) {
        return (o0.i.f(f11, o0.i.g((float) 0)) > 0 || z10) ? fVar.e(new ShadowGraphicsLayerElement(f11, a5Var, z10, j11, j12, null)) : fVar;
    }

    public static /* synthetic */ androidx.compose.ui.f b(androidx.compose.ui.f fVar, float f11, a5 a5Var, boolean z10, long j11, long j12, int i11, Object obj) {
        boolean z11;
        a5 a5VarA = (i11 & 2) != 0 ? v4.a() : a5Var;
        if ((i11 & 4) != 0) {
            z11 = false;
            if (o0.i.f(f11, o0.i.g(0)) > 0) {
                z11 = true;
            }
        } else {
            z11 = z10;
        }
        return a(fVar, f11, a5VarA, z11, (i11 & 8) != 0 ? d4.a() : j11, (i11 & 16) != 0 ? d4.a() : j12);
    }
}
