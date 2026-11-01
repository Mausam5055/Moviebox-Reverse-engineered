package androidx.core.view;

import android.os.Build;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class VelocityTrackerCompat {
    private static Map<VelocityTracker, g0> sFallbackTrackers = Collections.synchronizedMap(new WeakHashMap());

    @Retention(RetentionPolicy.SOURCE)
    public @interface VelocityTrackableMotionEventAxis {
    }

    private static class a {
        static float a(VelocityTracker velocityTracker, int i11) {
            return velocityTracker.getAxisVelocity(i11);
        }

        static float b(VelocityTracker velocityTracker, int i11, int i12) {
            return velocityTracker.getAxisVelocity(i11, i12);
        }

        static boolean c(VelocityTracker velocityTracker, int i11) {
            return velocityTracker.isAxisSupported(i11);
        }
    }

    private VelocityTrackerCompat() {
    }

    public static void addMovement(VelocityTracker velocityTracker, MotionEvent motionEvent) {
        velocityTracker.addMovement(motionEvent);
        if (Build.VERSION.SDK_INT < 34 && motionEvent.getSource() == 4194304) {
            if (!sFallbackTrackers.containsKey(velocityTracker)) {
                sFallbackTrackers.put(velocityTracker, new g0());
            }
            sFallbackTrackers.get(velocityTracker).a(motionEvent);
        }
    }

    public static void clear(VelocityTracker velocityTracker) {
        velocityTracker.clear();
        removeFallbackForTracker(velocityTracker);
    }

    public static void computeCurrentVelocity(VelocityTracker velocityTracker, int i11) {
        computeCurrentVelocity(velocityTracker, i11, Float.MAX_VALUE);
    }

    public static void computeCurrentVelocity(VelocityTracker velocityTracker, int i11, float f11) {
        velocityTracker.computeCurrentVelocity(i11, f11);
        g0 fallbackTrackerOrNull = getFallbackTrackerOrNull(velocityTracker);
        if (fallbackTrackerOrNull != null) {
            fallbackTrackerOrNull.c(i11, f11);
        }
    }

    public static float getAxisVelocity(VelocityTracker velocityTracker, int i11) {
        if (Build.VERSION.SDK_INT >= 34) {
            return a.a(velocityTracker, i11);
        }
        if (i11 == 0) {
            return velocityTracker.getXVelocity();
        }
        if (i11 == 1) {
            return velocityTracker.getYVelocity();
        }
        g0 fallbackTrackerOrNull = getFallbackTrackerOrNull(velocityTracker);
        if (fallbackTrackerOrNull != null) {
            return fallbackTrackerOrNull.d(i11);
        }
        return 0.0f;
    }

    public static float getAxisVelocity(VelocityTracker velocityTracker, int i11, int i12) {
        if (Build.VERSION.SDK_INT >= 34) {
            return a.b(velocityTracker, i11, i12);
        }
        if (i11 == 0) {
            return velocityTracker.getXVelocity(i12);
        }
        if (i11 == 1) {
            return velocityTracker.getYVelocity(i12);
        }
        return 0.0f;
    }

    private static g0 getFallbackTrackerOrNull(VelocityTracker velocityTracker) {
        return sFallbackTrackers.get(velocityTracker);
    }

    @Deprecated
    public static float getXVelocity(VelocityTracker velocityTracker, int i11) {
        return velocityTracker.getXVelocity(i11);
    }

    @Deprecated
    public static float getYVelocity(VelocityTracker velocityTracker, int i11) {
        return velocityTracker.getYVelocity(i11);
    }

    public static boolean isAxisSupported(VelocityTracker velocityTracker, int i11) {
        if (Build.VERSION.SDK_INT >= 34) {
            return a.c(velocityTracker, i11);
        }
        return i11 == 26 || i11 == 0 || i11 == 1;
    }

    public static void recycle(VelocityTracker velocityTracker) {
        velocityTracker.recycle();
        removeFallbackForTracker(velocityTracker);
    }

    private static void removeFallbackForTracker(VelocityTracker velocityTracker) {
        sFallbackTrackers.remove(velocityTracker);
    }
}
