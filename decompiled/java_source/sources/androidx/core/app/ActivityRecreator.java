package androidx.core.app;

import android.app.Activity;
import android.app.Application;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class ActivityRecreator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static final Class f7933a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected static final Field f7934b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected static final Field f7935c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected static final Method f7936d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected static final Method f7937e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected static final Method f7938f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Handler f7939g = new Handler(Looper.getMainLooper());

    private static final class a implements Application.ActivityLifecycleCallbacks {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Object f7940a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Activity f7941b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f7942c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f7943d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f7944e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f7945f = false;

        a(Activity activity) {
            this.f7941b = activity;
            this.f7942c = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f7941b == activity) {
                this.f7941b = null;
                this.f7944e = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (!this.f7944e || this.f7945f || this.f7943d || !ActivityRecreator.h(this.f7940a, this.f7942c, activity)) {
                return;
            }
            this.f7945f = true;
            this.f7940a = null;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.f7941b == activity) {
                this.f7943d = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    static {
        Class clsA = a();
        f7933a = clsA;
        f7934b = b();
        f7935c = f();
        f7936d = d(clsA);
        f7937e = c(clsA);
        f7938f = e(clsA);
    }

    private static Class a() {
        try {
            return Class.forName(ProcessUtils.ACTIVITY_THREAD);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Field b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method c(Class cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method d(Class cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE, String.class);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method e(Class cls) {
        if (g() && cls != null) {
            try {
                Class<?> cls2 = Boolean.TYPE;
                Method declaredMethod = cls.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, Integer.TYPE, cls2, Configuration.class, Configuration.class, cls2, cls2);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private static Field f() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean g() {
        int i11 = Build.VERSION.SDK_INT;
        return i11 == 26 || i11 == 27;
    }

    protected static boolean h(Object obj, int i11, Activity activity) {
        try {
            final Object obj2 = f7935c.get(activity);
            if (obj2 == obj && activity.hashCode() == i11) {
                final Object obj3 = f7934b.get(activity);
                f7939g.postAtFrontOfQueue(new Runnable() { // from class: androidx.core.app.ActivityRecreator.3
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            Method method = ActivityRecreator.f7936d;
                            if (method != null) {
                                method.invoke(obj3, obj2, Boolean.FALSE, "AppCompat recreation");
                            } else {
                                ActivityRecreator.f7937e.invoke(obj3, obj2, Boolean.FALSE);
                            }
                        } catch (RuntimeException e11) {
                            if (e11.getClass() == RuntimeException.class && e11.getMessage() != null && e11.getMessage().startsWith("Unable to stop")) {
                                throw e11;
                            }
                        } catch (Throwable th2) {
                            Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th2);
                        }
                    }
                });
                return true;
            }
            return false;
        } catch (Throwable th2) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th2);
            return false;
        }
    }

    static boolean i(Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        }
        if (g() && f7938f == null) {
            return false;
        }
        if (f7937e == null && f7936d == null) {
            return false;
        }
        try {
            final Object obj2 = f7935c.get(activity);
            if (obj2 == null || (obj = f7934b.get(activity)) == null) {
                return false;
            }
            final Application application = activity.getApplication();
            final a aVar = new a(activity);
            application.registerActivityLifecycleCallbacks(aVar);
            f7939g.post(new Runnable() { // from class: androidx.core.app.ActivityRecreator.1
                @Override // java.lang.Runnable
                public void run() {
                    aVar.f7940a = obj2;
                }
            });
            try {
                if (g()) {
                    Method method = f7938f;
                    Boolean bool = Boolean.FALSE;
                    method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                } else {
                    activity.recreate();
                }
                return true;
            } finally {
                f7939g.post(new Runnable() { // from class: androidx.core.app.ActivityRecreator.2
                    @Override // java.lang.Runnable
                    public void run() {
                        application.unregisterActivityLifecycleCallbacks(aVar);
                    }
                });
            }
        } catch (Throwable unused) {
            return false;
        }
    }
}
