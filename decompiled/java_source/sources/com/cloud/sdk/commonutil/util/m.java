package com.cloud.sdk.commonutil.util;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static WeakReference f23207a = new WeakReference(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f23208b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static b f23209c = null;

    class a implements Application.ActivityLifecycleCallbacks {
        a() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            m.f23207a.clear();
            WeakReference unused = m.f23207a = new WeakReference(activity);
            try {
                if (m.f23209c == null || activity == null) {
                    return;
                }
                m.f23209c.a(activity.getClass().getSimpleName());
            } catch (Throwable unused2) {
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    public interface b {
        void a(String str);
    }

    private static List d() {
        LinkedList linkedList = new LinkedList();
        Activity activity = null;
        try {
            Object objE = e();
            if (objE == null) {
                return linkedList;
            }
            Field declaredField = objE.getClass().getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(objE);
            if (!(obj instanceof Map)) {
                return linkedList;
            }
            for (Object obj2 : ((Map) obj).values()) {
                Class<?> cls = obj2.getClass();
                Field declaredField2 = cls.getDeclaredField("activity");
                declaredField2.setAccessible(true);
                Activity activity2 = (Activity) declaredField2.get(obj2);
                if (activity == null) {
                    Field declaredField3 = cls.getDeclaredField("paused");
                    declaredField3.setAccessible(true);
                    if (declaredField3.getBoolean(obj2)) {
                        linkedList.add(activity2);
                    } else {
                        activity = activity2;
                    }
                } else {
                    linkedList.add(activity2);
                }
            }
        } catch (Exception e11) {
            c.Log().e("LifecycleUtil", "getActivitiesByReflect: " + e11.getMessage());
        }
        if (activity != null) {
            linkedList.addFirst(activity);
        }
        return linkedList;
    }

    private static Object e() {
        Object objF = f();
        return objF != null ? objF : g();
    }

    private static Object f() {
        try {
            Field declaredField = Class.forName(ProcessUtils.ACTIVITY_THREAD).getDeclaredField("sCurrentActivityThread");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception e11) {
            c.Log().e("LifecycleUtil", "getActivityThreadInActivityThreadStaticField: " + e11.getMessage());
            return null;
        }
    }

    private static Object g() {
        try {
            return Class.forName(ProcessUtils.ACTIVITY_THREAD).getMethod(ProcessUtils.CURRENT_ACTIVITY_THREAD, null).invoke(null, null);
        } catch (Exception e11) {
            c.Log().e("LifecycleUtil", "getActivityThreadInActivityThreadStaticMethod: " + e11.getMessage());
            return null;
        }
    }

    public static Activity h() {
        WeakReference weakReference = f23207a;
        Activity activity = weakReference != null ? (Activity) weakReference.get() : null;
        if (i(activity)) {
            c.Log().i("LifecycleUtil", "topActivity = " + activity.getClass().getSimpleName());
            return activity;
        }
        c.Log().i("LifecycleUtil", "getActivitiesByReflect");
        for (Activity activity2 : d()) {
            if (i(activity2)) {
                c.Log().i("LifecycleUtil", "getActivitiesByReflect topActivity = " + activity2.getClass().getSimpleName());
                return activity2;
            }
        }
        c.Log().i("LifecycleUtil", "Did not get topActivity");
        return null;
    }

    private static boolean i(Activity activity) {
        return (activity == null || activity.isFinishing() || activity.isDestroyed()) ? false : true;
    }

    public static void j(Application application) {
        if (application == null || f23208b) {
            return;
        }
        f23208b = true;
        application.registerActivityLifecycleCallbacks(new a());
    }

    public static void k(b bVar) {
        f23209c = bVar;
    }
}
