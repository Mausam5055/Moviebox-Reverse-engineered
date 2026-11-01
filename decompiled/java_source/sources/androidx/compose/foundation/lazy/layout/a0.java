package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public abstract class a0 {
    public static final float a(int i11, int i12, boolean z10) {
        return z10 ? b(i11, i12) + 100 : b(i11, i12);
    }

    public static final float b(int i11, int i12) {
        return i12 + (i11 * 500);
    }

    public static final androidx.compose.ui.f c(androidx.compose.ui.f fVar, Function0 function0, z zVar, Orientation orientation, boolean z10, boolean z11, androidx.compose.runtime.i iVar, int i11) {
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(1070136913, i11, -1, "androidx.compose.foundation.lazy.layout.lazyLayoutSemantics (LazyLayoutSemantics.kt:46)");
        }
        androidx.compose.ui.f fVarE = fVar.e(new LazyLayoutSemanticsModifier(function0, zVar, orientation, z10, z11));
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return fVarE;
    }
}
