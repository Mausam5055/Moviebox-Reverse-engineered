package androidx.compose.ui.text.platform;

import android.text.TextPaint;

/* JADX INFO: loaded from: classes.dex */
public abstract class f {
    public static final void a(TextPaint textPaint, float f11) {
        if (Float.isNaN(f11)) {
            return;
        }
        if (f11 < 0.0f) {
            f11 = 0.0f;
        }
        if (f11 > 1.0f) {
            f11 = 1.0f;
        }
        textPaint.setAlpha(Math.round(f11 * 255));
    }
}
