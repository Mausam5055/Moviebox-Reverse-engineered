package com.cloud.hisavana.sdk.common.util;

import android.app.Activity;
import android.os.Build;
import android.view.Window;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;

/* JADX INFO: loaded from: classes3.dex */
public class a {
    public static void a(Activity activity) {
        Window window = activity.getWindow();
        if (window != null) {
            if (Build.VERSION.SDK_INT >= 28 && window.getAttributes() != null) {
                window.getAttributes().layoutInDisplayCutoutMode = 1;
            }
            WindowCompat.setDecorFitsSystemWindows(window, false);
            WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(window, window.getDecorView());
            windowInsetsControllerCompat.hide(WindowInsetsCompat.Type.systemBars());
            windowInsetsControllerCompat.setSystemBarsBehavior(2);
        }
    }
}
