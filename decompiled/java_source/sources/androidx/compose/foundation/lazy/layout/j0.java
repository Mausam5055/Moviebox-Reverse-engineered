package androidx.compose.foundation.lazy.layout;

import android.os.Build;
import android.view.View;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final a f3057a;

    public static final class a implements i0 {
        a() {
        }

        @Override // androidx.compose.foundation.lazy.layout.i0
        public void schedulePrefetch(g0 g0Var) {
        }
    }

    static {
        String lowerCase = Build.FINGERPRINT.toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        f3057a = Intrinsics.c(lowerCase, "robolectric") ? new a() : null;
    }

    public static final i0 a(androidx.compose.runtime.i iVar, int i11) {
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.Q(1141871251, i11, -1, "androidx.compose.foundation.lazy.layout.rememberDefaultPrefetchScheduler (PrefetchScheduler.android.kt:32)");
        }
        i0 i0Var = f3057a;
        if (i0Var != null) {
            iVar.P(1213893039);
            iVar.K();
        } else {
            iVar.P(1213931944);
            View view = (View) iVar.l(AndroidCompositionLocals_androidKt.j());
            boolean zO = iVar.O(view);
            Object objY = iVar.y();
            if (zO || objY == androidx.compose.runtime.i.f3736a.a()) {
                objY = new AndroidPrefetchScheduler(view);
                iVar.p(objY);
            }
            i0Var = (AndroidPrefetchScheduler) objY;
            iVar.K();
        }
        if (androidx.compose.runtime.k.H()) {
            androidx.compose.runtime.k.P();
        }
        return i0Var;
    }
}
