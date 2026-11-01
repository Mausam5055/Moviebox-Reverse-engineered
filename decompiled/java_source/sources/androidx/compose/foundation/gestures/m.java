package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.w;
import androidx.compose.foundation.f0;
import androidx.compose.ui.unit.LayoutDirection;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m f2728a = new m();

    private m() {
    }

    public final g a(androidx.compose.runtime.i iVar, int i11) {
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(1107739818, i11, -1, "androidx.compose.foundation.gestures.ScrollableDefaults.flingBehavior (Scrollable.kt:570)");
        }
        w wVarB = androidx.compose.animation.h.b(iVar, 0);
        boolean zO = iVar.O(wVarB);
        Object objY = iVar.y();
        if (zO || objY == androidx.compose.runtime.i.f3736a.a()) {
            objY = new DefaultFlingBehavior(wVarB, null, 2, null);
            iVar.p(objY);
        }
        DefaultFlingBehavior defaultFlingBehavior = (DefaultFlingBehavior) objY;
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return defaultFlingBehavior;
    }

    public final f0 b(androidx.compose.runtime.i iVar, int i11) {
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(1809802212, i11, -1, "androidx.compose.foundation.gestures.ScrollableDefaults.overscrollEffect (Scrollable.kt:583)");
        }
        f0 f0VarA = androidx.compose.foundation.a.a(iVar, 0);
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return f0VarA;
    }

    public final boolean c(LayoutDirection layoutDirection, Orientation orientation, boolean z10) {
        return (layoutDirection != LayoutDirection.Rtl || orientation == Orientation.Vertical) ? !z10 : z10;
    }
}
