package ya;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;
import android.util.Log;
import android.util.StateSet;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f78956a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f78957b = {R.attr.state_pressed};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f78958c = {R.attr.state_hovered, R.attr.state_focused};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f78959d = {R.attr.state_focused};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f78960e = {R.attr.state_hovered};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int[] f78961f = {R.attr.state_selected, R.attr.state_pressed};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int[] f78962g = {R.attr.state_selected, R.attr.state_hovered, R.attr.state_focused};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int[] f78963h = {R.attr.state_selected, R.attr.state_focused};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int[] f78964i = {R.attr.state_selected, R.attr.state_hovered};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int[] f78965j = {R.attr.state_selected};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int[] f78966k = {R.attr.state_enabled, R.attr.state_pressed};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static final String f78967l = b.class.getSimpleName();

    public static ColorStateList a(ColorStateList colorStateList) {
        if (f78956a) {
            int[] iArr = f78959d;
            return new ColorStateList(new int[][]{f78965j, iArr, StateSet.NOTHING}, new int[]{c(colorStateList, f78961f), c(colorStateList, iArr), c(colorStateList, f78957b)});
        }
        int[] iArr2 = f78961f;
        int[] iArr3 = f78962g;
        int[] iArr4 = f78963h;
        int[] iArr5 = f78964i;
        int[] iArr6 = f78957b;
        int[] iArr7 = f78958c;
        int[] iArr8 = f78959d;
        int[] iArr9 = f78960e;
        return new ColorStateList(new int[][]{iArr2, iArr3, iArr4, iArr5, f78965j, iArr6, iArr7, iArr8, iArr9, StateSet.NOTHING}, new int[]{c(colorStateList, iArr2), c(colorStateList, iArr3), c(colorStateList, iArr4), c(colorStateList, iArr5), 0, c(colorStateList, iArr6), c(colorStateList, iArr7), c(colorStateList, iArr8), c(colorStateList, iArr9), 0});
    }

    private static int b(int i11) {
        return z0.b.p(i11, Math.min(Color.alpha(i11) * 2, 255));
    }

    private static int c(ColorStateList colorStateList, int[] iArr) {
        int colorForState = colorStateList != null ? colorStateList.getColorForState(iArr, colorStateList.getDefaultColor()) : 0;
        return f78956a ? b(colorForState) : colorForState;
    }

    public static ColorStateList d(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return ColorStateList.valueOf(0);
        }
        if (Build.VERSION.SDK_INT <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0 && Color.alpha(colorStateList.getColorForState(f78966k, 0)) != 0) {
            Log.w(f78967l, "Use a non-transparent color for the default color as it will be used to finish ripple animations.");
        }
        return colorStateList;
    }

    public static boolean e(int[] iArr) {
        boolean z10 = false;
        boolean z11 = false;
        for (int i11 : iArr) {
            if (i11 == 16842910) {
                z10 = true;
            } else if (i11 == 16842908 || i11 == 16842919 || i11 == 16843623) {
                z11 = true;
            }
        }
        return z10 && z11;
    }
}
