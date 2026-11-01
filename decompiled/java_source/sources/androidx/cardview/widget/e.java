package androidx.cardview.widget;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
abstract class e extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final double f2238a = Math.cos(Math.toRadians(45.0d));

    static float a(float f11, float f12, boolean z10) {
        return z10 ? (float) (((double) f11) + ((1.0d - f2238a) * ((double) f12))) : f11;
    }

    static float b(float f11, float f12, boolean z10) {
        return z10 ? (float) (((double) (f11 * 1.5f)) + ((1.0d - f2238a) * ((double) f12))) : f11 * 1.5f;
    }
}
