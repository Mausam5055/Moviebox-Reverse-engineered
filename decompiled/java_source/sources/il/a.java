package il;

import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import androidx.core.view.GravityCompat;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a {
    public static final GradientDrawable a(String startColor, String endColor, GradientDrawable.Orientation orientation) {
        Intrinsics.h(startColor, "startColor");
        Intrinsics.h(endColor, "endColor");
        Intrinsics.h(orientation, "orientation");
        return b(new int[]{Color.parseColor(startColor), Color.parseColor(endColor)}, orientation);
    }

    public static final GradientDrawable b(int[] colors, GradientDrawable.Orientation orientation) {
        Intrinsics.h(colors, "colors");
        Intrinsics.h(orientation, "orientation");
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setGradientType(0);
        gradientDrawable.setColors(colors);
        gradientDrawable.setOrientation(orientation);
        return gradientDrawable;
    }

    public static /* synthetic */ GradientDrawable c(String str, String str2, GradientDrawable.Orientation orientation, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            orientation = GradientDrawable.Orientation.TOP_BOTTOM;
        }
        return a(str, str2, orientation);
    }

    public static final int d() {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1 ? GravityCompat.END : GravityCompat.START;
    }
}
