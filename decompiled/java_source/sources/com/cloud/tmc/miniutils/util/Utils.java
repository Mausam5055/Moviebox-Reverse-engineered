package com.cloud.tmc.miniutils.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.p009lifecycle.Lifecycle;

/* JADX INFO: loaded from: classes3.dex */
public final class Utils {

    @SuppressLint({"StaticFieldLeak"})
    private static Application sApp;

    public static class ActivityLifecycleCallbacks {
        public void onActivityCreated(@NonNull Activity activity) {
        }

        public void onActivityDestroyed(@NonNull Activity activity) {
        }

        public void onActivityPaused(@NonNull Activity activity) {
        }

        public void onActivityResumed(@NonNull Activity activity) {
        }

        public void onActivityStarted(@NonNull Activity activity) {
        }

        public void onActivityStopped(@NonNull Activity activity) {
        }

        public void onLifecycleChanged(@NonNull Activity activity, Lifecycle.Event event) {
        }
    }

    public interface Consumer<T> {
        void accept(T t11);
    }

    public interface Func1<Ret, Par> {
        Ret call(Par par);
    }

    public interface OnAppStatusChangedListener {
        void onBackground(Activity activity);

        void onForeground(Activity activity);
    }

    public interface Supplier<T> {
        T get();
    }

    private Utils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    @Deprecated
    public static Application getApp() {
        Application application = sApp;
        if (application != null) {
            return application;
        }
        init(UtilsBridge.getApplicationByReflect());
        Application application2 = sApp;
        if (application2 != null) {
            return application2;
        }
        throw new NullPointerException("reflect failed.");
    }

    public static void init(Application application) {
        if (application == null) {
            Log.e("Utils", "app is null.");
            return;
        }
        Application application2 = sApp;
        if (application2 == null) {
            sApp = application;
            UtilsBridge.init(application);
        } else {
            if (application2.equals(application)) {
                return;
            }
            UtilsBridge.unInit(sApp);
            sApp = application;
            UtilsBridge.init(application);
        }
    }

    public static void setAppIfNecessary(Application application) {
        if (application != null && sApp == null) {
            init(application);
        }
    }
}
