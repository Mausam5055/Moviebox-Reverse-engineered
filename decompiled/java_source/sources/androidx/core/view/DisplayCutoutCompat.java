package androidx.core.view;

import android.graphics.Insets;
import android.graphics.Path;
import android.graphics.Rect;
import android.os.Build;
import android.view.DisplayCutout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class DisplayCutoutCompat {
    private final DisplayCutout mDisplayCutout;

    static class a {
        static DisplayCutout a(Rect rect, List list) {
            return new DisplayCutout(rect, list);
        }

        static List b(DisplayCutout displayCutout) {
            return displayCutout.getBoundingRects();
        }

        static int c(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetBottom();
        }

        static int d(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetLeft();
        }

        static int e(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetRight();
        }

        static int f(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetTop();
        }
    }

    static class b {
        static DisplayCutout a(Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4) {
            return new DisplayCutout(insets, rect, rect2, rect3, rect4);
        }
    }

    static class c {
        static DisplayCutout a(Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4, Insets insets2) {
            return new DisplayCutout(insets, rect, rect2, rect3, rect4, insets2);
        }

        static Insets b(DisplayCutout displayCutout) {
            return displayCutout.getWaterfallInsets();
        }
    }

    static class d {
        static Path a(DisplayCutout displayCutout) {
            return displayCutout.getCutoutPath();
        }
    }

    static class e {
        static DisplayCutout a(Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4, Insets insets2, Path path) {
            DisplayCutout.Builder waterfallInsets = new DisplayCutout.Builder().setSafeInsets(insets).setWaterfallInsets(insets2);
            if (rect != null) {
                waterfallInsets.setBoundingRectLeft(rect);
            }
            if (rect2 != null) {
                waterfallInsets.setBoundingRectTop(rect2);
            }
            if (rect3 != null) {
                waterfallInsets.setBoundingRectRight(rect3);
            }
            if (rect4 != null) {
                waterfallInsets.setBoundingRectBottom(rect4);
            }
            if (path != null) {
                waterfallInsets.setCutoutPath(path);
            }
            return waterfallInsets.build();
        }
    }

    public DisplayCutoutCompat(Rect rect, List<Rect> list) {
        this(Build.VERSION.SDK_INT >= 28 ? a.a(rect, list) : null);
    }

    private DisplayCutoutCompat(DisplayCutout displayCutout) {
        this.mDisplayCutout = displayCutout;
    }

    public DisplayCutoutCompat(z0.c cVar, Rect rect, Rect rect2, Rect rect3, Rect rect4, z0.c cVar2) {
        this(constructDisplayCutout(cVar, rect, rect2, rect3, rect4, cVar2, null));
    }

    public DisplayCutoutCompat(z0.c cVar, Rect rect, Rect rect2, Rect rect3, Rect rect4, z0.c cVar2, Path path) {
        this(constructDisplayCutout(cVar, rect, rect2, rect3, rect4, cVar2, path));
    }

    private static DisplayCutout constructDisplayCutout(z0.c cVar, Rect rect, Rect rect2, Rect rect3, Rect rect4, z0.c cVar2, Path path) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 33) {
            return e.a(cVar.g(), rect, rect2, rect3, rect4, cVar2.g(), path);
        }
        if (i11 >= 30) {
            return c.a(cVar.g(), rect, rect2, rect3, rect4, cVar2.g());
        }
        if (i11 >= 29) {
            return b.a(cVar.g(), rect, rect2, rect3, rect4);
        }
        if (i11 < 28) {
            return null;
        }
        Rect rect5 = new Rect(cVar.f79125a, cVar.f79126b, cVar.f79127c, cVar.f79128d);
        ArrayList arrayList = new ArrayList();
        if (rect != null) {
            arrayList.add(rect);
        }
        if (rect2 != null) {
            arrayList.add(rect2);
        }
        if (rect3 != null) {
            arrayList.add(rect3);
        }
        if (rect4 != null) {
            arrayList.add(rect4);
        }
        return a.a(rect5, arrayList);
    }

    static DisplayCutoutCompat wrap(DisplayCutout displayCutout) {
        if (displayCutout == null) {
            return null;
        }
        return new DisplayCutoutCompat(displayCutout);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || DisplayCutoutCompat.class != obj.getClass()) {
            return false;
        }
        return androidx.core.util.d.a(this.mDisplayCutout, ((DisplayCutoutCompat) obj).mDisplayCutout);
    }

    public List<Rect> getBoundingRects() {
        return Build.VERSION.SDK_INT >= 28 ? a.b(this.mDisplayCutout) : Collections.emptyList();
    }

    public Path getCutoutPath() {
        if (Build.VERSION.SDK_INT >= 31) {
            return d.a(this.mDisplayCutout);
        }
        return null;
    }

    public int getSafeInsetBottom() {
        if (Build.VERSION.SDK_INT >= 28) {
            return a.c(this.mDisplayCutout);
        }
        return 0;
    }

    public int getSafeInsetLeft() {
        if (Build.VERSION.SDK_INT >= 28) {
            return a.d(this.mDisplayCutout);
        }
        return 0;
    }

    public int getSafeInsetRight() {
        if (Build.VERSION.SDK_INT >= 28) {
            return a.e(this.mDisplayCutout);
        }
        return 0;
    }

    public int getSafeInsetTop() {
        if (Build.VERSION.SDK_INT >= 28) {
            return a.f(this.mDisplayCutout);
        }
        return 0;
    }

    public z0.c getWaterfallInsets() {
        return Build.VERSION.SDK_INT >= 30 ? z0.c.f(c.b(this.mDisplayCutout)) : z0.c.f79124e;
    }

    public int hashCode() {
        DisplayCutout displayCutout = this.mDisplayCutout;
        if (displayCutout == null) {
            return 0;
        }
        return displayCutout.hashCode();
    }

    public String toString() {
        return "DisplayCutoutCompat{" + this.mDisplayCutout + "}";
    }

    DisplayCutout unwrap() {
        return this.mDisplayCutout;
    }
}
