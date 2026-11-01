package androidx.compose.ui.graphics;

import android.graphics.ColorFilter;
import android.graphics.PorterDuffColorFilter;
import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public abstract class i0 {
    public static final ColorFilter a(long j11, int i11) {
        return Build.VERSION.SDK_INT >= 29 ? i1.f4451a.a(j11, i11) : new PorterDuffColorFilter(w1.j(j11), f0.c(i11));
    }

    public static final ColorFilter b(v1 v1Var) {
        return v1Var.a();
    }
}
