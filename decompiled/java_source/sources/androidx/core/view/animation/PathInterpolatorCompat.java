package androidx.core.view.animation;

import android.graphics.Path;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;

/* JADX INFO: loaded from: classes.dex */
public final class PathInterpolatorCompat {

    static class a {
        static Interpolator a(float f11, float f12) {
            return new PathInterpolator(f11, f12);
        }

        static Interpolator b(float f11, float f12, float f13, float f14) {
            return new PathInterpolator(f11, f12, f13, f14);
        }

        static Interpolator c(Path path) {
            return new PathInterpolator(path);
        }
    }

    private PathInterpolatorCompat() {
    }

    public static Interpolator create(float f11, float f12) {
        return a.a(f11, f12);
    }

    public static Interpolator create(float f11, float f12, float f13, float f14) {
        return a.b(f11, f12, f13, f14);
    }

    public static Interpolator create(Path path) {
        return a.c(path);
    }
}
