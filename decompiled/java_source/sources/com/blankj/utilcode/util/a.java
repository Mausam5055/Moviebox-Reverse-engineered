package com.blankj.utilcode.util;

import android.app.Activity;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    public static List a() {
        return e0.h();
    }

    public static Activity b() {
        return e0.u();
    }

    public static boolean c(Activity activity) {
        return (activity == null || activity.isFinishing() || activity.isDestroyed()) ? false : true;
    }
}
