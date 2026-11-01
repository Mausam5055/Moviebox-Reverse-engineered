package androidx.compose.material.ripple;

import android.view.View;
import android.view.ViewGroup;
import androidx.compose.runtime.a3;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
public final class b extends Ripple {
    private b(boolean z10, float f11, a3 a3Var) {
        super(z10, f11, a3Var, null);
    }

    public /* synthetic */ b(boolean z10, float f11, a3 a3Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(z10, f11, a3Var);
    }

    @Override // androidx.compose.material.ripple.Ripple
    public RippleIndicationInstance c(p.g gVar, boolean z10, float f11, a3 a3Var, a3 a3Var2, androidx.compose.runtime.i iVar, int i11) {
        iVar.P(331259447);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(331259447, i11, -1, "androidx.compose.material.ripple.PlatformRipple.rememberUpdatedRippleInstance (Ripple.android.kt:92)");
        }
        ViewGroup viewGroupE = j.e((View) iVar.l(AndroidCompositionLocals_androidKt.j()));
        boolean zO = ((((i11 & 14) ^ 6) > 4 && iVar.O(gVar)) || (i11 & 6) == 4) | ((((458752 & i11) ^ 196608) > 131072 && iVar.O(this)) || (i11 & 196608) == 131072) | iVar.O(viewGroupE);
        Object objY = iVar.y();
        if (zO || objY == androidx.compose.runtime.i.f3736a.a()) {
            objY = new AndroidRippleIndicationInstance(z10, f11, a3Var, a3Var2, viewGroupE, null);
            iVar.p(objY);
        }
        AndroidRippleIndicationInstance androidRippleIndicationInstance = (AndroidRippleIndicationInstance) objY;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        iVar.K();
        return androidRippleIndicationInstance;
    }
}
