package androidx.compose.foundation;

import android.content.Context;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public static final f0 a(androidx.compose.runtime.i iVar, int i11) {
        f0 f0Var;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(-1476348564, i11, -1, "androidx.compose.foundation.rememberOverscrollEffect (AndroidOverscroll.android.kt:63)");
        }
        Context context = (Context) iVar.l(AndroidCompositionLocals_androidKt.g());
        e0 e0Var = (e0) iVar.l(OverscrollConfiguration_androidKt.a());
        if (e0Var != null) {
            iVar.P(1586021609);
            boolean zO = iVar.O(context) | iVar.O(e0Var);
            Object objY = iVar.y();
            if (zO || objY == androidx.compose.runtime.i.f3736a.a()) {
                objY = new AndroidEdgeEffectOverscrollEffect(context, e0Var);
                iVar.p(objY);
            }
            f0Var = (AndroidEdgeEffectOverscrollEffect) objY;
            iVar.K();
        } else {
            iVar.P(1586120933);
            iVar.K();
            f0Var = d0.f2621a;
        }
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return f0Var;
    }
}
