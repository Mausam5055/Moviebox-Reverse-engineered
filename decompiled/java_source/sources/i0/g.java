package i0;

import android.content.Context;
import android.content.res.Resources;
import androidx.compose.runtime.k;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g {
    public static final Resources a(androidx.compose.runtime.i iVar, int i11) {
        if (k.H()) {
            k.Q(1554054999, i11, -1, "androidx.compose.ui.res.resources (Resources.android.kt:33)");
        }
        iVar.l(AndroidCompositionLocals_androidKt.f());
        Resources resources = ((Context) iVar.l(AndroidCompositionLocals_androidKt.g())).getResources();
        if (k.H()) {
            k.P();
        }
        return resources;
    }
}
