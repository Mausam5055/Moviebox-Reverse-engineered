package com.blankj.utilcode.util;

import android.app.Activity;
import android.graphics.Point;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes2.dex */
public abstract class y {
    public static int a() {
        WindowManager windowManager = (WindowManager) Utils.a().getSystemService("window");
        if (windowManager == null) {
            return -1;
        }
        Point point = new Point();
        windowManager.getDefaultDisplay().getSize(point);
        return point.y;
    }

    public static int b() {
        WindowManager windowManager = (WindowManager) Utils.a().getSystemService("window");
        if (windowManager == null) {
            return -1;
        }
        Point point = new Point();
        windowManager.getDefaultDisplay().getSize(point);
        return point.x;
    }

    public static int c() {
        WindowManager windowManager = (WindowManager) Utils.a().getSystemService("window");
        if (windowManager == null) {
            return -1;
        }
        Point point = new Point();
        windowManager.getDefaultDisplay().getRealSize(point);
        return point.y;
    }

    public static int d(Activity activity) {
        int rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
        if (rotation == 1) {
            return 90;
        }
        if (rotation != 2) {
            return rotation != 3 ? 0 : 270;
        }
        return 180;
    }

    public static int e() {
        WindowManager windowManager = (WindowManager) Utils.a().getSystemService("window");
        if (windowManager == null) {
            return -1;
        }
        Point point = new Point();
        windowManager.getDefaultDisplay().getRealSize(point);
        return point.x;
    }
}
