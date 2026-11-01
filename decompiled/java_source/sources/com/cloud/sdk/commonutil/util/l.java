package com.cloud.sdk.commonutil.util;

import android.util.Log;

/* JADX INFO: loaded from: classes3.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f23205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f23206b;

    public static boolean a() {
        if (f23206b) {
            return f23205a;
        }
        boolean z10 = true;
        f23206b = true;
        try {
            String packageName = e.a().getPackageName();
            if (packageName == null) {
                return f23205a;
            }
            c.Log().d("LauncherUtil", "isLauncherHost: packageName = " + packageName);
            if (!packageName.equals("com.transsion.launcher") && !packageName.equals("com.transsion.XOSlauncher")) {
                z10 = false;
            }
            f23205a = z10;
            return z10;
        } catch (Exception e11) {
            c.Log().e("LauncherUtil", "isLauncherHost: " + Log.getStackTraceString(e11));
            return f23205a;
        }
    }
}
