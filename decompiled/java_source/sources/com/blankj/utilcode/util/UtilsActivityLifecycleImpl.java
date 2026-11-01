package com.blankj.utilcode.util;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.Window;
import androidx.p009lifecycle.Lifecycle;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
final class UtilsActivityLifecycleImpl implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final UtilsActivityLifecycleImpl f20074g = new UtilsActivityLifecycleImpl();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Activity f20075h = new Activity();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LinkedList f20076a = new LinkedList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f20077b = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f20078c = new ConcurrentHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f20079d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f20080e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f20081f = false;

    /* JADX INFO: renamed from: com.blankj.utilcode.util.UtilsActivityLifecycleImpl$2, reason: invalid class name */
    /* JADX INFO: loaded from: classes2.dex */
    class AnonymousClass2 implements Runnable {
        final /* synthetic */ Activity val$activity;

        AnonymousClass2(Activity activity) {
            this.val$activity = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            UtilsActivityLifecycleImpl.this.f20078c.remove(this.val$activity);
        }
    }

    UtilsActivityLifecycleImpl() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(Activity activity, Utils.a aVar) {
        List copyOnWriteArrayList = (List) this.f20078c.get(activity);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList();
            this.f20078c.put(activity, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(aVar)) {
            return;
        }
        copyOnWriteArrayList.add(aVar);
    }

    private void g(Activity activity, Lifecycle.Event event) {
        h(activity, event, (List) this.f20078c.get(activity));
        h(activity, event, (List) this.f20078c.get(f20075h));
    }

    private void h(Activity activity, Lifecycle.Event event, List list) {
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Utils.a aVar = (Utils.a) it.next();
            aVar.g(activity, event);
            if (event.equals(Lifecycle.Event.ON_CREATE)) {
                aVar.a(activity);
            } else if (event.equals(Lifecycle.Event.ON_START)) {
                aVar.e(activity);
            } else if (event.equals(Lifecycle.Event.ON_RESUME)) {
                aVar.d(activity);
            } else if (event.equals(Lifecycle.Event.ON_PAUSE)) {
                aVar.c(activity);
            } else if (event.equals(Lifecycle.Event.ON_STOP)) {
                aVar.f(activity);
            } else if (event.equals(Lifecycle.Event.ON_DESTROY)) {
                aVar.b(activity);
            }
        }
        if (event.equals(Lifecycle.Event.ON_DESTROY)) {
            this.f20078c.remove(activity);
        }
    }

    private List i() {
        LinkedList linkedList = new LinkedList();
        Activity activity = null;
        try {
            Object objK = k();
            if (objK == null) {
                return linkedList;
            }
            Field declaredField = objK.getClass().getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(objK);
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
                        linkedList.addFirst(activity2);
                    } else {
                        activity = activity2;
                    }
                } else {
                    linkedList.addFirst(activity2);
                }
            }
        } catch (Exception e11) {
            Log.e("UtilsActivityLifecycle", "getActivitiesByReflect: " + e11.getMessage());
        }
        if (activity != null) {
            linkedList.addFirst(activity);
        }
        return linkedList;
    }

    private Object k() {
        Object objL = l();
        return objL != null ? objL : m();
    }

    private Object l() {
        try {
            Field declaredField = Class.forName(ProcessUtils.ACTIVITY_THREAD).getDeclaredField("sCurrentActivityThread");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception e11) {
            Log.e("UtilsActivityLifecycle", "getActivityThreadInActivityThreadStaticField: " + e11.getMessage());
            return null;
        }
    }

    private Object m() {
        try {
            return Class.forName(ProcessUtils.ACTIVITY_THREAD).getMethod(ProcessUtils.CURRENT_ACTIVITY_THREAD, null).invoke(null, null);
        } catch (Exception e11) {
            Log.e("UtilsActivityLifecycle", "getActivityThreadInActivityThreadStaticMethod: " + e11.getMessage());
            return null;
        }
    }

    private void r(Activity activity, boolean z10) {
        if (this.f20077b.isEmpty()) {
            return;
        }
        Iterator it = this.f20077b.iterator();
        if (it.hasNext()) {
            android.support.v4.media.session.c.a(it.next());
            if (!z10) {
                throw null;
            }
            throw null;
        }
    }

    private void s(final Activity activity, boolean z10) {
        try {
            if (z10) {
                Window window = activity.getWindow();
                window.getDecorView().setTag(-123, Integer.valueOf(window.getAttributes().softInputMode));
                window.setSoftInputMode(3);
            } else {
                final Object tag = activity.getWindow().getDecorView().getTag(-123);
                if (!(tag instanceof Integer)) {
                } else {
                    e0.K(new Runnable() { // from class: com.blankj.utilcode.util.UtilsActivityLifecycleImpl.4
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                Window window2 = activity.getWindow();
                                if (window2 != null) {
                                    window2.setSoftInputMode(((Integer) tag).intValue());
                                }
                            } catch (Exception unused) {
                            }
                        }
                    }, 100L);
                }
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(Activity activity, Utils.a aVar) {
        List list = (List) this.f20078c.get(activity);
        if (list == null || list.isEmpty()) {
            return;
        }
        list.remove(aVar);
    }

    private static void w() {
        if (Build.VERSION.SDK_INT < 26 || !ValueAnimator.areAnimatorsEnabled()) {
            try {
                Field declaredField = ValueAnimator.class.getDeclaredField("sDurationScale");
                declaredField.setAccessible(true);
                if (((Float) declaredField.get(null)).floatValue() == 0.0f) {
                    declaredField.set(null, Float.valueOf(1.0f));
                }
            } catch (IllegalAccessException e11) {
                e11.printStackTrace();
            } catch (NoSuchFieldException e12) {
                e12.printStackTrace();
            }
        }
    }

    private void x(Activity activity) {
        if (!this.f20076a.contains(activity)) {
            this.f20076a.addFirst(activity);
        } else {
            if (((Activity) this.f20076a.getFirst()).equals(activity)) {
                return;
            }
            this.f20076a.remove(activity);
            this.f20076a.addFirst(activity);
        }
    }

    void d(final Activity activity, final Utils.a aVar) {
        if (activity == null || aVar == null) {
            return;
        }
        e0.J(new Runnable() { // from class: com.blankj.utilcode.util.UtilsActivityLifecycleImpl.1
            @Override // java.lang.Runnable
            public void run() {
                UtilsActivityLifecycleImpl.this.f(activity, aVar);
            }
        });
    }

    void e(Utils.a aVar) {
        d(f20075h, aVar);
    }

    List j() {
        if (!this.f20076a.isEmpty()) {
            return new LinkedList(this.f20076a);
        }
        this.f20076a.addAll(i());
        return new LinkedList(this.f20076a);
    }

    Application n() {
        Object objInvoke;
        try {
            Class<?> cls = Class.forName(ProcessUtils.ACTIVITY_THREAD);
            Object objK = k();
            if (objK == null || (objInvoke = cls.getMethod("getApplication", null).invoke(objK, null)) == null) {
                return null;
            }
            return (Application) objInvoke;
        } catch (Exception e11) {
            e11.printStackTrace();
            return null;
        }
    }

    Activity o() {
        for (Activity activity : j()) {
            if (e0.w(activity)) {
                return activity;
            }
        }
        return null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (this.f20076a.size() == 0) {
            r(activity, true);
        }
        LanguageUtils.a(activity);
        w();
        x(activity);
        g(activity, Lifecycle.Event.ON_CREATE);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        this.f20076a.remove(activity);
        e0.f(activity);
        g(activity, Lifecycle.Event.ON_DESTROY);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        g(activity, Lifecycle.Event.ON_PAUSE);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostSaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPrePaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreSaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        x(activity);
        if (this.f20081f) {
            this.f20081f = false;
            r(activity, true);
        }
        s(activity, false);
        g(activity, Lifecycle.Event.ON_RESUME);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        if (!this.f20081f) {
            x(activity);
        }
        int i11 = this.f20080e;
        if (i11 < 0) {
            this.f20080e = i11 + 1;
        } else {
            this.f20079d++;
        }
        g(activity, Lifecycle.Event.ON_START);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (activity.isChangingConfigurations()) {
            this.f20080e--;
        } else {
            int i11 = this.f20079d - 1;
            this.f20079d = i11;
            if (i11 <= 0) {
                this.f20081f = true;
                r(activity, false);
            }
        }
        s(activity, true);
        g(activity, Lifecycle.Event.ON_STOP);
    }

    void p(Application application) {
        application.registerActivityLifecycleCallbacks(this);
    }

    boolean q() {
        return !this.f20081f;
    }

    void t(final Activity activity, final Utils.a aVar) {
        if (activity == null || aVar == null) {
            return;
        }
        e0.J(new Runnable() { // from class: com.blankj.utilcode.util.UtilsActivityLifecycleImpl.3
            @Override // java.lang.Runnable
            public void run() {
                UtilsActivityLifecycleImpl.this.v(activity, aVar);
            }
        });
    }

    void u(Utils.a aVar) {
        t(f20075h, aVar);
    }

    void y(Application application) {
        this.f20076a.clear();
        application.unregisterActivityLifecycleCallbacks(this);
    }
}
