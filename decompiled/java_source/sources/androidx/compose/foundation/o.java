package androidx.compose.foundation;

import android.content.Context;
import android.os.Build;
import android.widget.EdgeEffect;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o f3146a = new o();

    private o() {
    }

    public final EdgeEffect a(Context context) {
        return Build.VERSION.SDK_INT >= 31 ? b.f2615a.a(context, null) : new u(context);
    }

    public final float b(EdgeEffect edgeEffect) {
        if (Build.VERSION.SDK_INT >= 31) {
            return b.f2615a.b(edgeEffect);
        }
        return 0.0f;
    }

    public final void c(EdgeEffect edgeEffect, int i11) {
        if (Build.VERSION.SDK_INT >= 31) {
            edgeEffect.onAbsorb(i11);
        } else if (edgeEffect.isFinished()) {
            edgeEffect.onAbsorb(i11);
        }
    }

    public final float d(EdgeEffect edgeEffect, float f11, float f12) {
        if (Build.VERSION.SDK_INT >= 31) {
            return b.f2615a.c(edgeEffect, f11, f12);
        }
        edgeEffect.onPull(f11, f12);
        return f11;
    }

    public final void e(EdgeEffect edgeEffect, float f11) {
        if (edgeEffect instanceof u) {
            ((u) edgeEffect).a(f11);
        } else {
            edgeEffect.onRelease();
        }
    }
}
