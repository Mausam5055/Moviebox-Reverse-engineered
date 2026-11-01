package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.unit.LayoutDirection;

/* JADX INFO: loaded from: classes.dex */
public abstract class g {
    public static final androidx.compose.ui.f b(androidx.compose.ui.f fVar, h hVar, e eVar, boolean z10, LayoutDirection layoutDirection, Orientation orientation, boolean z11, androidx.compose.runtime.i iVar, int i11) {
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(1331498025, i11, -1, "androidx.compose.foundation.lazy.layout.lazyLayoutBeyondBoundsModifier (LazyLayoutBeyondBoundsModifierLocal.kt:51)");
        }
        if (z11) {
            iVar.P(-1890632411);
            boolean z12 = ((((i11 & 112) ^ 48) > 32 && iVar.O(hVar)) || (i11 & 48) == 32) | ((((i11 & 896) ^ 384) > 256 && iVar.O(eVar)) || (i11 & 384) == 256) | ((((i11 & 7168) ^ 3072) > 2048 && iVar.a(z10)) || (i11 & 3072) == 2048) | ((((57344 & i11) ^ 24576) > 16384 && iVar.O(layoutDirection)) || (i11 & 24576) == 16384) | ((((458752 & i11) ^ 196608) > 131072 && iVar.O(orientation)) || (i11 & 196608) == 131072);
            Object objY = iVar.y();
            if (z12 || objY == androidx.compose.runtime.i.f3736a.a()) {
                objY = new f(hVar, eVar, z10, layoutDirection, orientation);
                iVar.p(objY);
            }
            fVar = fVar.e((f) objY);
            iVar.K();
        } else {
            iVar.P(-1890658823);
            iVar.K();
        }
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void c() {
        throw new IllegalStateException("Lazy list does not support beyond bounds layout for the specified direction");
    }
}
