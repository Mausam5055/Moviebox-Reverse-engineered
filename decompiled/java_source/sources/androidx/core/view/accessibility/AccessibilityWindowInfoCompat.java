package androidx.core.view.accessibility;

import android.graphics.Rect;
import android.graphics.Region;
import android.os.Build;
import android.os.LocaleList;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;

/* JADX INFO: loaded from: classes.dex */
public class AccessibilityWindowInfoCompat {
    public static final int TYPE_ACCESSIBILITY_OVERLAY = 4;
    public static final int TYPE_APPLICATION = 1;
    public static final int TYPE_INPUT_METHOD = 2;
    public static final int TYPE_MAGNIFICATION_OVERLAY = 6;
    public static final int TYPE_SPLIT_SCREEN_DIVIDER = 5;
    public static final int TYPE_SYSTEM = 3;
    private static final int UNDEFINED = -1;
    private final Object mInfo;

    private static class a {
        static void a(AccessibilityWindowInfo accessibilityWindowInfo, Rect rect) {
            accessibilityWindowInfo.getBoundsInScreen(rect);
        }

        static AccessibilityWindowInfo b(AccessibilityWindowInfo accessibilityWindowInfo, int i11) {
            return accessibilityWindowInfo.getChild(i11);
        }

        static int c(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getChildCount();
        }

        static int d(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getId();
        }

        static int e(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getLayer();
        }

        static AccessibilityWindowInfo f(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getParent();
        }

        static AccessibilityNodeInfo g(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getRoot();
        }

        static int h(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getType();
        }

        static boolean i(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.isAccessibilityFocused();
        }

        static boolean j(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.isActive();
        }

        static boolean k(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.isFocused();
        }

        static AccessibilityWindowInfo l() {
            return AccessibilityWindowInfo.obtain();
        }

        static AccessibilityWindowInfo m(AccessibilityWindowInfo accessibilityWindowInfo) {
            return AccessibilityWindowInfo.obtain(accessibilityWindowInfo);
        }
    }

    private static class b {
        static AccessibilityNodeInfo a(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getAnchor();
        }

        static CharSequence b(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getTitle();
        }
    }

    private static class c {
        static boolean a(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.isInPictureInPictureMode();
        }
    }

    private static class d {
        static AccessibilityWindowInfo a() {
            return new AccessibilityWindowInfo();
        }
    }

    private static class e {
        static int a(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getDisplayId();
        }

        static void b(AccessibilityWindowInfo accessibilityWindowInfo, Region region) {
            accessibilityWindowInfo.getRegionInScreen(region);
        }

        public static AccessibilityNodeInfoCompat c(Object obj, int i11) {
            return AccessibilityNodeInfoCompat.wrapNonNullInstance(((AccessibilityWindowInfo) obj).getRoot(i11));
        }
    }

    private static class f {
        static LocaleList a(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getLocales();
        }

        public static long b(AccessibilityWindowInfo accessibilityWindowInfo) {
            return accessibilityWindowInfo.getTransitionTimeMillis();
        }
    }

    public AccessibilityWindowInfoCompat() {
        if (Build.VERSION.SDK_INT >= 30) {
            this.mInfo = d.a();
        } else {
            this.mInfo = null;
        }
    }

    private AccessibilityWindowInfoCompat(Object obj) {
        this.mInfo = obj;
    }

    public static AccessibilityWindowInfoCompat obtain() {
        return wrapNonNullInstance(a.l());
    }

    public static AccessibilityWindowInfoCompat obtain(AccessibilityWindowInfoCompat accessibilityWindowInfoCompat) {
        if (accessibilityWindowInfoCompat == null) {
            return null;
        }
        return wrapNonNullInstance(a.m((AccessibilityWindowInfo) accessibilityWindowInfoCompat.mInfo));
    }

    private static String typeToString(int i11) {
        if (i11 == 1) {
            return "TYPE_APPLICATION";
        }
        if (i11 == 2) {
            return "TYPE_INPUT_METHOD";
        }
        if (i11 != 3) {
            return i11 != 4 ? "<UNKNOWN>" : "TYPE_ACCESSIBILITY_OVERLAY";
        }
        return "TYPE_SYSTEM";
    }

    static AccessibilityWindowInfoCompat wrapNonNullInstance(Object obj) {
        if (obj != null) {
            return new AccessibilityWindowInfoCompat(obj);
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AccessibilityWindowInfoCompat)) {
            return false;
        }
        AccessibilityWindowInfoCompat accessibilityWindowInfoCompat = (AccessibilityWindowInfoCompat) obj;
        Object obj2 = this.mInfo;
        if (obj2 == null) {
            return accessibilityWindowInfoCompat.mInfo == null;
        }
        return obj2.equals(accessibilityWindowInfoCompat.mInfo);
    }

    public AccessibilityNodeInfoCompat getAnchor() {
        if (Build.VERSION.SDK_INT >= 24) {
            return AccessibilityNodeInfoCompat.wrapNonNullInstance(b.a((AccessibilityWindowInfo) this.mInfo));
        }
        return null;
    }

    public void getBoundsInScreen(Rect rect) {
        a.a((AccessibilityWindowInfo) this.mInfo, rect);
    }

    public AccessibilityWindowInfoCompat getChild(int i11) {
        return wrapNonNullInstance(a.b((AccessibilityWindowInfo) this.mInfo, i11));
    }

    public int getChildCount() {
        return a.c((AccessibilityWindowInfo) this.mInfo);
    }

    public int getDisplayId() {
        if (Build.VERSION.SDK_INT >= 33) {
            return e.a((AccessibilityWindowInfo) this.mInfo);
        }
        return 0;
    }

    public int getId() {
        return a.d((AccessibilityWindowInfo) this.mInfo);
    }

    public int getLayer() {
        return a.e((AccessibilityWindowInfo) this.mInfo);
    }

    public androidx.core.os.i getLocales() {
        return Build.VERSION.SDK_INT >= 34 ? androidx.core.os.i.j(f.a((AccessibilityWindowInfo) this.mInfo)) : androidx.core.os.i.e();
    }

    public AccessibilityWindowInfoCompat getParent() {
        return wrapNonNullInstance(a.f((AccessibilityWindowInfo) this.mInfo));
    }

    public void getRegionInScreen(Region region) {
        if (Build.VERSION.SDK_INT >= 33) {
            e.b((AccessibilityWindowInfo) this.mInfo, region);
            return;
        }
        Rect rect = new Rect();
        a.a((AccessibilityWindowInfo) this.mInfo, rect);
        region.set(rect);
    }

    public AccessibilityNodeInfoCompat getRoot() {
        return AccessibilityNodeInfoCompat.wrapNonNullInstance(a.g((AccessibilityWindowInfo) this.mInfo));
    }

    public AccessibilityNodeInfoCompat getRoot(int i11) {
        return Build.VERSION.SDK_INT >= 33 ? e.c(this.mInfo, i11) : getRoot();
    }

    public CharSequence getTitle() {
        if (Build.VERSION.SDK_INT >= 24) {
            return b.b((AccessibilityWindowInfo) this.mInfo);
        }
        return null;
    }

    public long getTransitionTimeMillis() {
        if (Build.VERSION.SDK_INT >= 34) {
            return f.b((AccessibilityWindowInfo) this.mInfo);
        }
        return 0L;
    }

    public int getType() {
        return a.h((AccessibilityWindowInfo) this.mInfo);
    }

    public int hashCode() {
        Object obj = this.mInfo;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public boolean isAccessibilityFocused() {
        return a.i((AccessibilityWindowInfo) this.mInfo);
    }

    public boolean isActive() {
        return a.j((AccessibilityWindowInfo) this.mInfo);
    }

    public boolean isFocused() {
        return a.k((AccessibilityWindowInfo) this.mInfo);
    }

    public boolean isInPictureInPictureMode() {
        if (Build.VERSION.SDK_INT >= 26) {
            return c.a((AccessibilityWindowInfo) this.mInfo);
        }
        return false;
    }

    @Deprecated
    public void recycle() {
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        Rect rect = new Rect();
        getBoundsInScreen(rect);
        sb2.append("AccessibilityWindowInfo[");
        sb2.append("id=");
        sb2.append(getId());
        sb2.append(", type=");
        sb2.append(typeToString(getType()));
        sb2.append(", layer=");
        sb2.append(getLayer());
        sb2.append(", bounds=");
        sb2.append(rect);
        sb2.append(", focused=");
        sb2.append(isFocused());
        sb2.append(", active=");
        sb2.append(isActive());
        sb2.append(", hasParent=");
        sb2.append(getParent() != null);
        sb2.append(", hasChildren=");
        sb2.append(getChildCount() > 0);
        sb2.append(", transitionTime=");
        sb2.append(getTransitionTimeMillis());
        sb2.append(", locales=");
        sb2.append(getLocales());
        sb2.append(']');
        return sb2.toString();
    }

    public AccessibilityWindowInfo unwrap() {
        return (AccessibilityWindowInfo) this.mInfo;
    }
}
