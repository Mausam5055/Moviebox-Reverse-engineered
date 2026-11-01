package oa;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TimeInterpolator f70918a = new LinearInterpolator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final TimeInterpolator f70919b = new o1.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final TimeInterpolator f70920c = new o1.a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final TimeInterpolator f70921d = new o1.c();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final TimeInterpolator f70922e = new DecelerateInterpolator();

    public static float a(float f11, float f12, float f13) {
        return f11 + (f13 * (f12 - f11));
    }

    public static float b(float f11, float f12, float f13, float f14, float f15) {
        if (f15 <= f13) {
            return f11;
        }
        return f15 >= f14 ? f12 : a(f11, f12, (f15 - f13) / (f14 - f13));
    }

    public static int c(int i11, int i12, float f11) {
        return i11 + Math.round(f11 * (i12 - i11));
    }
}
