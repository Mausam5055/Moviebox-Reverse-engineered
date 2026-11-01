package com.bytedance.sdk.component.utils;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class dx {
    private static String Sj;

    private static String Sj() {
        if (Build.VERSION.SDK_INT < 28) {
            return null;
        }
        try {
            return Application.getProcessName();
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean Sj(Context context) {
        if (context == null || context.getApplicationContext() == null) {
            return false;
        }
        return TextUtils.equals(context.getApplicationContext().getPackageName(), sP(context));
    }

    private static String sP() {
        try {
            Method declaredMethod = Class.forName(ProcessUtils.ACTIVITY_THREAD, false, Application.class.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
            declaredMethod.setAccessible(true);
            Object objInvoke = declaredMethod.invoke(null, null);
            if (objInvoke instanceof String) {
                return (String) objInvoke;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String sP(Context context) {
        if (!TextUtils.isEmpty(Sj)) {
            return Sj;
        }
        String strSj = Sj();
        Sj = strSj;
        if (!TextUtils.isEmpty(strSj)) {
            return Sj;
        }
        String strSP = sP();
        Sj = strSP;
        return !TextUtils.isEmpty(strSP) ? Sj : Sj;
    }
}
