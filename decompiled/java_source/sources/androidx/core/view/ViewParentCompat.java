package androidx.core.view;

import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;

/* JADX INFO: loaded from: classes.dex */
public final class ViewParentCompat {
    private static final String TAG = "ViewParentCompat";
    private static int[] sTempNestedScrollConsumed;

    static class a {
        static boolean a(ViewParent viewParent, View view, float f11, float f12, boolean z10) {
            return viewParent.onNestedFling(view, f11, f12, z10);
        }

        static boolean b(ViewParent viewParent, View view, float f11, float f12) {
            return viewParent.onNestedPreFling(view, f11, f12);
        }

        static void c(ViewParent viewParent, View view, int i11, int i12, int[] iArr) {
            viewParent.onNestedPreScroll(view, i11, i12, iArr);
        }

        static void d(ViewParent viewParent, View view, int i11, int i12, int i13, int i14) {
            viewParent.onNestedScroll(view, i11, i12, i13, i14);
        }

        static void e(ViewParent viewParent, View view, View view2, int i11) {
            viewParent.onNestedScrollAccepted(view, view2, i11);
        }

        static boolean f(ViewParent viewParent, View view, View view2, int i11) {
            return viewParent.onStartNestedScroll(view, view2, i11);
        }

        static void g(ViewParent viewParent, View view) {
            viewParent.onStopNestedScroll(view);
        }
    }

    private ViewParentCompat() {
    }

    private static int[] getTempNestedScrollConsumed() {
        int[] iArr = sTempNestedScrollConsumed;
        if (iArr == null) {
            sTempNestedScrollConsumed = new int[2];
        } else {
            iArr[0] = 0;
            iArr[1] = 0;
        }
        return sTempNestedScrollConsumed;
    }

    @Deprecated
    public static void notifySubtreeAccessibilityStateChanged(ViewParent viewParent, View view, View view2, int i11) {
        viewParent.notifySubtreeAccessibilityStateChanged(view, view2, i11);
    }

    public static boolean onNestedFling(ViewParent viewParent, View view, float f11, float f12, boolean z10) {
        try {
            return a.a(viewParent, view, f11, f12, z10);
        } catch (AbstractMethodError e11) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedFling", e11);
            return false;
        }
    }

    public static boolean onNestedPreFling(ViewParent viewParent, View view, float f11, float f12) {
        try {
            return a.b(viewParent, view, f11, f12);
        } catch (AbstractMethodError e11) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e11);
            return false;
        }
    }

    public static void onNestedPreScroll(ViewParent viewParent, View view, int i11, int i12, int[] iArr) {
        onNestedPreScroll(viewParent, view, i11, i12, iArr, 0);
    }

    public static void onNestedPreScroll(ViewParent viewParent, View view, int i11, int i12, int[] iArr, int i13) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedPreScroll(view, i11, i12, iArr, i13);
            return;
        }
        if (i13 == 0) {
            try {
                a.c(viewParent, view, i11, i12, iArr);
            } catch (AbstractMethodError e11) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e11);
            }
        }
    }

    public static void onNestedScroll(ViewParent viewParent, View view, int i11, int i12, int i13, int i14) {
        onNestedScroll(viewParent, view, i11, i12, i13, i14, 0, getTempNestedScrollConsumed());
    }

    public static void onNestedScroll(ViewParent viewParent, View view, int i11, int i12, int i13, int i14, int i15) {
        onNestedScroll(viewParent, view, i11, i12, i13, i14, i15, getTempNestedScrollConsumed());
    }

    public static void onNestedScroll(ViewParent viewParent, View view, int i11, int i12, int i13, int i14, int i15, int[] iArr) {
        if (viewParent instanceof NestedScrollingParent3) {
            ((NestedScrollingParent3) viewParent).onNestedScroll(view, i11, i12, i13, i14, i15, iArr);
            return;
        }
        iArr[0] = iArr[0] + i13;
        iArr[1] = iArr[1] + i14;
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedScroll(view, i11, i12, i13, i14, i15);
            return;
        }
        if (i15 == 0) {
            try {
                a.d(viewParent, view, i11, i12, i13, i14);
            } catch (AbstractMethodError e11) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e11);
            }
        }
    }

    public static void onNestedScrollAccepted(ViewParent viewParent, View view, View view2, int i11) {
        onNestedScrollAccepted(viewParent, view, view2, i11, 0);
    }

    public static void onNestedScrollAccepted(ViewParent viewParent, View view, View view2, int i11, int i12) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onNestedScrollAccepted(view, view2, i11, i12);
            return;
        }
        if (i12 == 0) {
            try {
                a.e(viewParent, view, view2, i11);
            } catch (AbstractMethodError e11) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onNestedScrollAccepted", e11);
            }
        }
    }

    public static boolean onStartNestedScroll(ViewParent viewParent, View view, View view2, int i11) {
        return onStartNestedScroll(viewParent, view, view2, i11, 0);
    }

    public static boolean onStartNestedScroll(ViewParent viewParent, View view, View view2, int i11, int i12) {
        if (viewParent instanceof NestedScrollingParent2) {
            return ((NestedScrollingParent2) viewParent).onStartNestedScroll(view, view2, i11, i12);
        }
        if (i12 != 0) {
            return false;
        }
        try {
            return a.f(viewParent, view, view2, i11);
        } catch (AbstractMethodError e11) {
            Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onStartNestedScroll", e11);
            return false;
        }
    }

    public static void onStopNestedScroll(ViewParent viewParent, View view) {
        onStopNestedScroll(viewParent, view, 0);
    }

    public static void onStopNestedScroll(ViewParent viewParent, View view, int i11) {
        if (viewParent instanceof NestedScrollingParent2) {
            ((NestedScrollingParent2) viewParent).onStopNestedScroll(view, i11);
            return;
        }
        if (i11 == 0) {
            try {
                a.g(viewParent, view);
            } catch (AbstractMethodError e11) {
                Log.e(TAG, "ViewParent " + viewParent + " does not implement interface method onStopNestedScroll", e11);
            }
        }
    }

    @Deprecated
    public static boolean requestSendAccessibilityEvent(ViewParent viewParent, View view, AccessibilityEvent accessibilityEvent) {
        return viewParent.requestSendAccessibilityEvent(view, accessibilityEvent);
    }
}
