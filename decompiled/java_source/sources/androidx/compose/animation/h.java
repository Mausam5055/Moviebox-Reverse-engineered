package androidx.compose.animation;

import android.view.ViewConfiguration;
import androidx.compose.animation.core.w;
import androidx.compose.animation.core.y;
import androidx.compose.runtime.i;
import androidx.compose.runtime.k;
import androidx.compose.ui.platform.CompositionLocalsKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final float f2523a = ViewConfiguration.getScrollFriction();

    public static final float a() {
        return f2523a;
    }

    public static final w b(i iVar, int i11) {
        if (k.H()) {
            k.Q(904445851, i11, -1, "androidx.compose.animation.rememberSplineBasedDecay (SplineBasedFloatDecayAnimationSpec.android.kt:40)");
        }
        o0.e eVar = (o0.e) iVar.l(CompositionLocalsKt.c());
        boolean zB = iVar.b(eVar.getDensity());
        Object objY = iVar.y();
        if (zB || objY == i.f3736a.a()) {
            objY = y.a(new g(eVar));
            iVar.p(objY);
        }
        w wVar = (w) objY;
        if (k.H()) {
            k.P();
        }
        return wVar;
    }
}
