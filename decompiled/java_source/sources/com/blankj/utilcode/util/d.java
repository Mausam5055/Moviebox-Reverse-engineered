package com.blankj.utilcode.util;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Build;
import android.provider.Settings;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {
    public static int a() {
        Resources system = Resources.getSystem();
        int identifier = system.getIdentifier("navigation_bar_height", "dimen", "android");
        if (identifier != 0) {
            return system.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private static String b(int i11) {
        try {
            return Utils.a().getResources().getResourceEntryName(i11);
        } catch (Exception unused) {
            return "";
        }
    }

    public static int c() {
        Resources system = Resources.getSystem();
        return system.getDimensionPixelSize(system.getIdentifier("status_bar_height", "dimen", "android"));
    }

    public static boolean d(Activity activity) {
        return e(activity.getWindow());
    }

    public static boolean e(Window window) {
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
            if (id2 != -1 && "navigationBarBackground".equals(b(id2)) && childAt.getVisibility() == 0) {
                z10 = true;
                break;
            }
            i11++;
        }
        if (!z10) {
            return z10;
        }
        if (e0.C() && Build.VERSION.SDK_INT < 29) {
            try {
                return Settings.Global.getInt(Utils.a().getContentResolver(), "navigationbar_hide_bar_enabled") == 0;
            } catch (Exception unused) {
            }
        }
        return (viewGroup.getSystemUiVisibility() & 2) == 0;
    }
}
