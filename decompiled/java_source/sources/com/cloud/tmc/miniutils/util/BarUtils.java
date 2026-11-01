package com.cloud.tmc.miniutils.util;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.drawerlayout.widget.DrawerLayout;

/* JADX INFO: loaded from: classes3.dex */
public final class BarUtils {
    private static final int KEY_OFFSET = -123;
    private static final String TAG_OFFSET = "TAG_OFFSET";
    private static final String TAG_STATUS_BAR = "TAG_STATUS_BAR";

    private BarUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static void addMarginTopEqualStatusBarHeight(@NonNull View view) {
        view.setTag(TAG_OFFSET);
        Object tag = view.getTag(KEY_OFFSET);
        if (tag == null || !((Boolean) tag).booleanValue()) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            marginLayoutParams.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin + getStatusBarHeight(), marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
            view.setTag(KEY_OFFSET, Boolean.TRUE);
        }
    }

    private static void addMarginTopEqualStatusBarHeight(@NonNull Window window) {
        View viewFindViewWithTag = window.getDecorView().findViewWithTag(TAG_OFFSET);
        if (viewFindViewWithTag == null) {
            return;
        }
        addMarginTopEqualStatusBarHeight(viewFindViewWithTag);
    }

    private static View applyStatusBarColor(@NonNull Activity activity, int i11, boolean z10) {
        return applyStatusBarColor(activity.getWindow(), i11, z10);
    }

    private static View applyStatusBarColor(@NonNull Window window, int i11, boolean z10) {
        ViewGroup viewGroup = z10 ? (ViewGroup) window.getDecorView() : (ViewGroup) window.findViewById(R.id.content);
        View viewFindViewWithTag = viewGroup.findViewWithTag(TAG_STATUS_BAR);
        if (viewFindViewWithTag == null) {
            View viewCreateStatusBarView = createStatusBarView(window.getContext(), i11);
            viewGroup.addView(viewCreateStatusBarView);
            return viewCreateStatusBarView;
        }
        if (viewFindViewWithTag.getVisibility() == 8) {
            viewFindViewWithTag.setVisibility(0);
        }
        viewFindViewWithTag.setBackgroundColor(i11);
        return viewFindViewWithTag;
    }

    private static View createStatusBarView(@NonNull Context context, int i11) {
        View view = new View(context);
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, getStatusBarHeight()));
        view.setBackgroundColor(i11);
        view.setTag(TAG_STATUS_BAR);
        return view;
    }

    public static int getActionBarHeight() {
        TypedValue typedValue = new TypedValue();
        if (Utils.getApp().getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true)) {
            return TypedValue.complexToDimensionPixelSize(typedValue.data, Utils.getApp().getResources().getDisplayMetrics());
        }
        return 0;
    }

    public static int getNavBarColor(@NonNull Activity activity) {
        return getNavBarColor(activity.getWindow());
    }

    public static int getNavBarColor(@NonNull Window window) {
        return window.getNavigationBarColor();
    }

    public static int getNavBarHeight() {
        Resources resources = Utils.getApp().getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier != 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private static String getResNameById(int i11) {
        try {
            return Utils.getApp().getResources().getResourceEntryName(i11);
        } catch (Exception unused) {
            return "";
        }
    }

    public static int getStatusBarHeight() {
        Resources resources = Utils.getApp().getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", "android"));
    }

    private static void hideStatusBarView(@NonNull Activity activity) {
        hideStatusBarView(activity.getWindow());
    }

    private static void hideStatusBarView(@NonNull Window window) {
        View viewFindViewWithTag = ((ViewGroup) window.getDecorView()).findViewWithTag(TAG_STATUS_BAR);
        if (viewFindViewWithTag == null) {
            return;
        }
        viewFindViewWithTag.setVisibility(8);
    }

    public static boolean isNavBarLightMode(@NonNull Activity activity) {
        return isNavBarLightMode(activity.getWindow());
    }

    public static boolean isNavBarLightMode(@NonNull Window window) {
        return Build.VERSION.SDK_INT >= 26 && (window.getDecorView().getSystemUiVisibility() & 16) != 0;
    }

    public static boolean isNavBarVisible(@NonNull Activity activity) {
        return isNavBarVisible(activity.getWindow());
    }

    public static boolean isNavBarVisible(@NonNull Window window) {
        boolean z10;
        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
        int childCount = viewGroup.getChildCount();
        int i11 = 0;
        while (true) {
            if (i11 >= childCount) {
                z10 = false;
                break;
            }
            View childAt = viewGroup.getChildAt(i11);
            int id2 = childAt.getId();
            if (id2 != -1 && "navigationBarBackground".equals(getResNameById(id2)) && childAt.getVisibility() == 0) {
                z10 = true;
                break;
            }
            i11++;
        }
        if (z10) {
            return (viewGroup.getSystemUiVisibility() & 2) == 0;
        }
        return z10;
    }

    public static boolean isStatusBarLightMode(@NonNull Activity activity) {
        return isStatusBarLightMode(activity.getWindow());
    }

    public static boolean isStatusBarLightMode(@NonNull Window window) {
        return (window.getDecorView().getSystemUiVisibility() & 8192) != 0;
    }

    public static boolean isStatusBarVisible(@NonNull Activity activity) {
        return (activity.getWindow().getAttributes().flags & 1024) == 0;
    }

    public static boolean isSupportNavBar() {
        WindowManager windowManager = (WindowManager) Utils.getApp().getSystemService("window");
        if (windowManager == null) {
            return false;
        }
        Display defaultDisplay = windowManager.getDefaultDisplay();
        Point point = new Point();
        Point point2 = new Point();
        defaultDisplay.getSize(point);
        defaultDisplay.getRealSize(point2);
        return (point2.y == point.y && point2.x == point.x) ? false : true;
    }

    public static void setNavBarColor(@NonNull Activity activity, int i11) {
        setNavBarColor(activity.getWindow(), i11);
    }

    public static void setNavBarColor(@NonNull Window window, int i11) {
        window.addFlags(Integer.MIN_VALUE);
        window.setNavigationBarColor(i11);
    }

    public static void setNavBarLightMode(@NonNull Activity activity, boolean z10) {
        setNavBarLightMode(activity.getWindow(), z10);
    }

    public static void setNavBarLightMode(@NonNull Window window, boolean z10) {
        if (Build.VERSION.SDK_INT >= 26) {
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(z10 ? systemUiVisibility | 16 : systemUiVisibility & (-17));
        }
    }

    public static void setNavBarVisibility(@NonNull Activity activity, boolean z10) {
        setNavBarVisibility(activity.getWindow(), z10);
    }

    public static void setNavBarVisibility(@NonNull Window window, boolean z10) {
        ViewGroup viewGroup = (ViewGroup) window.getDecorView();
        int childCount = viewGroup.getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = viewGroup.getChildAt(i11);
            int id2 = childAt.getId();
            if (id2 != -1 && "navigationBarBackground".equals(getResNameById(id2))) {
                childAt.setVisibility(z10 ? 0 : 4);
            }
        }
        if (z10) {
            viewGroup.setSystemUiVisibility(viewGroup.getSystemUiVisibility() & (-4611));
        } else {
            viewGroup.setSystemUiVisibility(viewGroup.getSystemUiVisibility() | 4610);
        }
    }

    public static View setStatusBarColor(@NonNull Activity activity, int i11) {
        return setStatusBarColor(activity, i11, false);
    }

    public static View setStatusBarColor(@NonNull Activity activity, int i11, boolean z10) {
        transparentStatusBar(activity);
        return applyStatusBarColor(activity, i11, z10);
    }

    public static View setStatusBarColor(@NonNull Window window, int i11) {
        return setStatusBarColor(window, i11, false);
    }

    public static View setStatusBarColor(@NonNull Window window, int i11, boolean z10) {
        transparentStatusBar(window);
        return applyStatusBarColor(window, i11, z10);
    }

    public static void setStatusBarColor(@NonNull View view, int i11) {
        Activity activityByContext = UtilsBridge.getActivityByContext(view.getContext());
        if (activityByContext == null) {
            return;
        }
        transparentStatusBar(activityByContext);
        view.setVisibility(0);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = getStatusBarHeight();
        view.setBackgroundColor(i11);
    }

    public static void setStatusBarColor4Drawer(@NonNull DrawerLayout drawerLayout, @NonNull View view, int i11) {
        setStatusBarColor4Drawer(drawerLayout, view, i11, false);
    }

    public static void setStatusBarColor4Drawer(@NonNull DrawerLayout drawerLayout, @NonNull View view, int i11, boolean z10) {
        Activity activityByContext = UtilsBridge.getActivityByContext(view.getContext());
        if (activityByContext == null) {
            return;
        }
        transparentStatusBar(activityByContext);
        drawerLayout.setFitsSystemWindows(false);
        setStatusBarColor(view, i11);
        int childCount = drawerLayout.getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            drawerLayout.getChildAt(i12).setFitsSystemWindows(false);
        }
        if (z10) {
            hideStatusBarView(activityByContext);
        } else {
            setStatusBarColor(activityByContext, i11, false);
        }
    }

    public static void setStatusBarCustom(@NonNull View view) {
        Activity activityByContext = UtilsBridge.getActivityByContext(view.getContext());
        if (activityByContext == null) {
            return;
        }
        transparentStatusBar(activityByContext);
        view.setVisibility(0);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            view.setLayoutParams(new ViewGroup.LayoutParams(-1, getStatusBarHeight()));
        } else {
            layoutParams.width = -1;
            layoutParams.height = getStatusBarHeight();
        }
    }

    public static void setStatusBarLightMode(@NonNull Activity activity, boolean z10) {
        setStatusBarLightMode(activity.getWindow(), z10);
    }

    public static void setStatusBarLightMode(@NonNull Window window, boolean z10) {
        View decorView = window.getDecorView();
        int systemUiVisibility = decorView.getSystemUiVisibility();
        decorView.setSystemUiVisibility(z10 ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
    }

    public static void setStatusBarVisibility(@NonNull Activity activity, boolean z10) {
        setStatusBarVisibility(activity.getWindow(), z10);
    }

    public static void setStatusBarVisibility(@NonNull Window window, boolean z10) {
        if (z10) {
            window.clearFlags(1024);
            showStatusBarView(window);
            addMarginTopEqualStatusBarHeight(window);
        } else {
            window.addFlags(1024);
            hideStatusBarView(window);
            subtractMarginTopEqualStatusBarHeight(window);
        }
    }

    private static void showStatusBarView(@NonNull Window window) {
        View viewFindViewWithTag = ((ViewGroup) window.getDecorView()).findViewWithTag(TAG_STATUS_BAR);
        if (viewFindViewWithTag == null) {
            return;
        }
        viewFindViewWithTag.setVisibility(0);
    }

    public static void subtractMarginTopEqualStatusBarHeight(@NonNull View view) {
        Object tag = view.getTag(KEY_OFFSET);
        if (tag == null || !((Boolean) tag).booleanValue()) {
            return;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        marginLayoutParams.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin - getStatusBarHeight(), marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
        view.setTag(KEY_OFFSET, Boolean.FALSE);
    }

    private static void subtractMarginTopEqualStatusBarHeight(@NonNull Window window) {
        View viewFindViewWithTag = window.getDecorView().findViewWithTag(TAG_OFFSET);
        if (viewFindViewWithTag == null) {
            return;
        }
        subtractMarginTopEqualStatusBarHeight(viewFindViewWithTag);
    }

    public static void transparentStatusBar(@NonNull Activity activity) {
        transparentStatusBar(activity.getWindow());
    }

    public static void transparentStatusBar(@NonNull Window window) {
        window.clearFlags(67108864);
        window.addFlags(Integer.MIN_VALUE);
        window.getDecorView().setSystemUiVisibility(window.getDecorView().getSystemUiVisibility() | 1280);
        window.setStatusBarColor(0);
    }
}
