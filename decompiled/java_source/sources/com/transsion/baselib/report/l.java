package com.transsion.baselib.report;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.util.Log;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import com.transsion.mb.config.manager.ConfigBean;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class l implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f43359a = new l();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final CopyOnWriteArrayList f43360b = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f43361c = LazyKt.b(new Function0() { // from class: com.transsion.baselib.report.k
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return l.i();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f43362d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f43363e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static int f43364f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Boolean f43365g;

    /* JADX INFO: loaded from: classes5.dex */
    public interface a {
        void onBackgroundStatusChange(boolean z10);
    }

    private l() {
    }

    private final void c(Activity activity) {
        int i11 = f43362d + 1;
        f43362d = i11;
        if (i11 == 1) {
            j(false, activity);
        }
        Log.e("yy", "onActivityStarted  activity:" + activity + "  resumedActivityCount " + f43362d);
    }

    static /* synthetic */ void d(l lVar, Activity activity, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            activity = null;
        }
        lVar.c(activity);
    }

    private final void e(Activity activity) {
        int i11 = f43362d - 1;
        f43362d = i11;
        if (i11 == 0) {
            j(true, activity);
            f43363e = System.currentTimeMillis();
        }
        Log.e("yy", "onActivityStopped  activity:" + activity + " resumedActivityCount " + f43362d);
    }

    static /* synthetic */ void f(l lVar, Activity activity, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            activity = null;
        }
        lVar.e(activity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CopyOnWriteArrayList i() {
        return new CopyOnWriteArrayList();
    }

    private final void j(boolean z10, Activity activity) {
        h.f43348a.f(z10);
        yg.b.f79009a.j(Boolean.valueOf(z10));
        Iterator it = n().iterator();
        while (it.hasNext()) {
            ((a) it.next()).onBackgroundStatusChange(z10);
        }
    }

    private final void k() {
        try {
            Iterator it = f43360b.iterator();
            Intrinsics.g(it, "iterator(...)");
            int i11 = 0;
            while (it.hasNext()) {
                Activity activity = (Activity) it.next();
                try {
                    if (activity.isDestroyed() || activity.isFinishing()) {
                        lg.a.f68839a.c("RoomActivityLifecycleCallbacks", "cleanup destroyed activity: " + activity.getClass().getSimpleName(), true);
                        it.remove();
                        i11++;
                    }
                } catch (Exception e11) {
                    lg.a.f68839a.x("RoomActivityLifecycleCallbacks", "check activity state failed, remove it: " + e11.getMessage(), true);
                    it.remove();
                }
            }
            if (i11 > 0) {
                lg.a.f68839a.c("RoomActivityLifecycleCallbacks", "cleaned " + i11 + " destroyed activities", true);
            }
        } catch (Exception e12) {
            lg.a.f68839a.i("RoomActivityLifecycleCallbacks", "cleanupDestroyedActivities failed: " + e12.getMessage(), true);
        }
    }

    private final List n() {
        return (List) f43361c.getValue();
    }

    public final int b() {
        return f43360b.size();
    }

    public final boolean g(a listener) {
        Intrinsics.h(listener, "listener");
        if (n().contains(listener)) {
            return false;
        }
        return n().add(listener);
    }

    public final void h() {
        d(this, null, 1, null);
    }

    public final void l() {
        CopyOnWriteArrayList copyOnWriteArrayList = f43360b;
        if (copyOnWriteArrayList.isEmpty()) {
            return;
        }
        Iterator it = copyOnWriteArrayList.iterator();
        Intrinsics.g(it, "iterator(...)");
        while (it.hasNext()) {
            Activity activity = (Activity) it.next();
            if (!activity.isFinishing() && !activity.isDestroyed()) {
                try {
                    activity.finish();
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
        f43360b.clear();
    }

    public final List m() {
        return f43360b;
    }

    public final Activity o() {
        return p(0);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.h(activity, "activity");
        Log.e("yy", "onActivityCreated  activity:" + activity);
        if (activity instanceof f) {
            return;
        }
        f43360b.add(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.h(activity, "activity");
        Log.e("yy", "onActivityDestroyed  activity:" + activity);
        if (activity instanceof f) {
            return;
        }
        try {
            f43360b.remove(activity);
        } catch (Exception e11) {
            lg.a.f68839a.i("RoomActivityLifecycleCallbacks", "remove activity from stack failed: " + e11.getMessage(), true);
            Iterator it = f43360b.iterator();
            Intrinsics.g(it, "iterator(...)");
            while (it.hasNext()) {
                if (it.next() == activity) {
                    it.remove();
                    break;
                }
            }
        }
        k();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        Intrinsics.h(activity, "activity");
        Log.e("yy", "onActivityPaused  activity:" + activity);
        if (f43360b.size() > 10) {
            k();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        Intrinsics.h(activity, "activity");
        Log.e("yy", "onActivityResumed  activity:" + activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        Intrinsics.h(activity, "activity");
        if (activity instanceof f) {
            return;
        }
        c(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Intrinsics.h(activity, "activity");
        if (activity instanceof f) {
            return;
        }
        e(activity);
    }

    public final Activity p(int i11) {
        CopyOnWriteArrayList copyOnWriteArrayList = f43360b;
        if (copyOnWriteArrayList.isEmpty()) {
            return null;
        }
        int size = copyOnWriteArrayList.size();
        int i12 = (size - 1) - i11;
        if (i12 < 0 || i12 >= size) {
            return null;
        }
        return (Activity) copyOnWriteArrayList.get(i12);
    }

    public final boolean q() {
        return f43362d == 0;
    }

    public final boolean r() {
        int i11 = f43364f;
        if (i11 == 1) {
            return true;
        }
        if (i11 != 2) {
            return q();
        }
        return false;
    }

    public final boolean s() {
        return com.transsion.baselib.report.launch.b.f43370a.b().getLong("record_latest_foreground_time", 0L) == 0;
    }

    public final void t(String str) {
        if (Intrinsics.c(str, "android.intent.action.SCREEN_OFF")) {
            if (f43364f == 0) {
                f43364f = System.currentTimeMillis() - f43363e >= 1000 ? q() : false ? 1 : 2;
            }
        } else if (Intrinsics.c(str, "android.intent.action.USER_PRESENT")) {
            f43364f = 0;
        }
    }

    public final boolean u(a listener) {
        Intrinsics.h(listener, "listener");
        return n().remove(listener);
    }

    public final void v() {
        f(this, null, 1, null);
    }

    public final boolean w() {
        String value;
        Long lX;
        Boolean bool = f43365g;
        if (bool != null) {
            return Intrinsics.c(bool, Boolean.TRUE);
        }
        long j11 = com.transsion.baselib.report.launch.b.f43370a.b().getLong("record_latest_foreground_time", 0L);
        ConfigBean configBeanC = sm.f.f75407c.a().c("pull_notification_deadline", true);
        long jLongValue = (configBeanC == null || (value = configBeanC.getValue()) == null || (lX = StringsKt.x(value)) == null) ? 0L : lX.longValue();
        long jCurrentTimeMillis = (System.currentTimeMillis() - j11) / ((long) TimeConstants.DAY);
        lg.a.C0828a.f(lg.a.f68839a, "Report", "latestForegroundTime=" + j11 + " sleepDays=" + jCurrentTimeMillis + " notificationDeadlineDays=" + jLongValue, false, 4, null);
        Boolean boolValueOf = Boolean.valueOf(j11 > 0 && jCurrentTimeMillis > jLongValue);
        f43365g = boolValueOf;
        return Intrinsics.c(boolValueOf, Boolean.TRUE);
    }

    public final void x(int i11, Activity activity) {
        Intrinsics.h(activity, "activity");
        try {
            CopyOnWriteArrayList copyOnWriteArrayList = f43360b;
            ArrayList arrayList = new ArrayList();
            for (Object obj : copyOnWriteArrayList) {
                if (Intrinsics.c(((Activity) obj).getClass(), activity.getClass())) {
                    arrayList.add(obj);
                }
            }
            int size = arrayList.size() - i11;
            if (size <= 0) {
                return;
            }
            for (int i12 = 0; i12 < size; i12++) {
                ((Activity) arrayList.get(i12)).finish();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }
}
