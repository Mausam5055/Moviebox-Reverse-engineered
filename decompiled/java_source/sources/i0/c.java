package i0;

import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.compose.ui.graphics.e4;
import androidx.compose.ui.graphics.q0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c {
    public static final e4 a(e4.a aVar, Resources resources, int i11) {
        Drawable drawable = resources.getDrawable(i11, null);
        Intrinsics.f(drawable, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
        return q0.c(((BitmapDrawable) drawable).getBitmap());
    }
}
