package com.bytedance.sdk.openadsdk.core;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.view.ViewConfiguration;
import androidx.annotation.Nullable;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
public class dNu {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile Context Sj = null;
    private static int TKC = -1;
    private static volatile RiZ<com.bytedance.sdk.openadsdk.EjP.Sj> sP;

    private static class Sj {

        @SuppressLint({"StaticFieldLeak"})
        private static volatile Application Sj;

        static {
            try {
                Object objSP = sP();
                Sj = (Application) objSP.getClass().getMethod("getApplication", null).invoke(objSP, null);
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.sU.Sj("MyApplication", "application get failed", th2);
            }
        }

        @Nullable
        public static Application Sj() {
            return Sj;
        }

        private static Object sP() {
            try {
                Method method = Class.forName(ProcessUtils.ACTIVITY_THREAD).getMethod(ProcessUtils.CURRENT_ACTIVITY_THREAD, null);
                method.setAccessible(true);
                return method.invoke(null, null);
            } catch (Throwable th2) {
                com.bytedance.sdk.component.utils.sU.Sj("MyApplication", "ActivityThread get error, maybe api level <= 4.2.2", th2);
                return null;
            }
        }
    }

    public static com.bytedance.sdk.openadsdk.core.settings.vS EjP() {
        return com.bytedance.sdk.openadsdk.core.settings.Fmk.gq();
    }

    public static com.bytedance.sdk.openadsdk.Zq.TKC.sP HiB() {
        return !com.bytedance.sdk.openadsdk.core.settings.uA.Sj() ? com.bytedance.sdk.openadsdk.Zq.TKC.TKC.Sj() : com.bytedance.sdk.openadsdk.EjP.Sj.EjP.Sj();
    }

    public static Context Sj() {
        if (Sj == null) {
            sP(null);
        }
        return Sj;
    }

    public static Context Sj(Context context) {
        if (context == null) {
            context = Sj();
        }
        if (context instanceof Application) {
            return context;
        }
        if (context != null) {
            return context.getApplicationContext();
        }
        return null;
    }

    public static RiZ<com.bytedance.sdk.openadsdk.EjP.Sj> TKC() {
        if (sP == null) {
            synchronized (dNu.class) {
                try {
                    if (sP == null) {
                        sP = new sU(Sj);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return sP;
    }

    public static int sP() {
        Context contextSj;
        if (TKC < 0 && (contextSj = Sj()) != null) {
            TKC = ViewConfiguration.get(contextSj).getScaledTouchSlop();
        }
        return TKC;
    }

    public static void sP(Context context) {
        if (Sj == null) {
            synchronized (dNu.class) {
                try {
                    if (Sj == null) {
                        if (context != null) {
                            Sj = context;
                            Context applicationContext = context.getApplicationContext();
                            if (applicationContext != null) {
                                Sj = applicationContext;
                            }
                            return;
                        }
                        try {
                            Application applicationSj = Sj.Sj();
                            if (applicationSj != null) {
                                Sj = applicationSj;
                            }
                        } catch (Throwable unused) {
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }
}
