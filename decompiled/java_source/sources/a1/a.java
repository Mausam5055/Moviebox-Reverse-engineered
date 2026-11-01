package a1;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: a1.a$a, reason: collision with other inner class name */
    static class C0000a {
        static void a(Drawable drawable, Resources.Theme theme) {
            drawable.applyTheme(theme);
        }

        static boolean b(Drawable drawable) {
            return drawable.canApplyTheme();
        }

        static ColorFilter c(Drawable drawable) {
            return drawable.getColorFilter();
        }

        static void d(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
        }

        static void e(Drawable drawable, float f11, float f12) {
            drawable.setHotspot(f11, f12);
        }

        static void f(Drawable drawable, int i11, int i12, int i13, int i14) {
            drawable.setHotspotBounds(i11, i12, i13, i14);
        }

        static void g(Drawable drawable, int i11) {
            drawable.setTint(i11);
        }

        static void h(Drawable drawable, ColorStateList colorStateList) {
            drawable.setTintList(colorStateList);
        }

        static void i(Drawable drawable, PorterDuff.Mode mode) {
            drawable.setTintMode(mode);
        }
    }

    static class b {
        static int a(Drawable drawable) {
            return drawable.getLayoutDirection();
        }

        static boolean b(Drawable drawable, int i11) {
            return drawable.setLayoutDirection(i11);
        }
    }

    public static void a(Drawable drawable, Resources.Theme theme) {
        C0000a.a(drawable, theme);
    }

    public static boolean b(Drawable drawable) {
        return C0000a.b(drawable);
    }

    public static void c(Drawable drawable) {
        drawable.clearColorFilter();
    }

    public static int d(Drawable drawable) {
        return drawable.getAlpha();
    }

    public static ColorFilter e(Drawable drawable) {
        return C0000a.c(drawable);
    }

    public static int f(Drawable drawable) {
        return b.a(drawable);
    }

    public static void g(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        C0000a.d(drawable, resources, xmlPullParser, attributeSet, theme);
    }

    public static boolean h(Drawable drawable) {
        return drawable.isAutoMirrored();
    }

    public static void i(Drawable drawable) {
        drawable.jumpToCurrentState();
    }

    public static void j(Drawable drawable, boolean z10) {
        drawable.setAutoMirrored(z10);
    }

    public static void k(Drawable drawable, float f11, float f12) {
        C0000a.e(drawable, f11, f12);
    }

    public static void l(Drawable drawable, int i11, int i12, int i13, int i14) {
        C0000a.f(drawable, i11, i12, i13, i14);
    }

    public static boolean m(Drawable drawable, int i11) {
        return b.b(drawable, i11);
    }

    public static void n(Drawable drawable, int i11) {
        C0000a.g(drawable, i11);
    }

    public static void o(Drawable drawable, ColorStateList colorStateList) {
        C0000a.h(drawable, colorStateList);
    }

    public static void p(Drawable drawable, PorterDuff.Mode mode) {
        C0000a.i(drawable, mode);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Drawable q(Drawable drawable) {
        return drawable instanceof a1.b ? ((a1.b) drawable).a() : drawable;
    }

    public static Drawable r(Drawable drawable) {
        return drawable;
    }
}
