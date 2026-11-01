package vr;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.support.v4.media.session.c;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f77441a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final CopyOnWriteArrayList f77442b = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Lazy f77443c = LazyKt.b(new Function0() { // from class: vr.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return b.b();
        }
    });

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f77444d;

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CopyOnWriteArrayList b() {
        return new CopyOnWriteArrayList();
    }

    private final void c(boolean z10, Activity activity) {
        yg.b.f79009a.j(Boolean.valueOf(z10));
        Iterator it = f().iterator();
        if (it.hasNext()) {
            c.a(it.next());
            throw null;
        }
    }

    private final void d() {
        try {
            Iterator it = f77442b.iterator();
            Intrinsics.g(it, "iterator(...)");
            while (it.hasNext()) {
                Activity activity = (Activity) it.next();
                try {
                    if (activity.isDestroyed() || activity.isFinishing()) {
                        it.remove();
                    }
                } catch (Exception unused) {
                    it.remove();
                }
            }
        } catch (Exception unused2) {
        }
    }

    private final List f() {
        return (List) f77443c.getValue();
    }

    public final List e() {
        return f77442b;
    }

    public final Activity g() {
        return h(0);
    }

    public final Activity h(int i11) {
        CopyOnWriteArrayList copyOnWriteArrayList = f77442b;
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

    public final void i(int i11, Activity activity) {
        Intrinsics.h(activity, "activity");
        try {
            CopyOnWriteArrayList copyOnWriteArrayList = f77442b;
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

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.h(activity, "activity");
        Log.e("yy", "onActivityCreated  activity:" + activity);
        f77442b.add(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.h(activity, "activity");
        Log.e("yy", "onActivityDestroyed  activity:" + activity);
        try {
            f77442b.remove(activity);
        } catch (Exception unused) {
            Iterator it = f77442b.iterator();
            Intrinsics.g(it, "iterator(...)");
            while (it.hasNext()) {
                if (it.next() == activity) {
                    it.remove();
                    break;
                }
            }
        }
        d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        Intrinsics.h(activity, "activity");
        Log.e("yy", "onActivityPaused  activity:" + activity);
        if (f77442b.size() > 5) {
            d();
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
        Log.e("yy", "onActivityStarted  activity:" + activity);
        int i11 = f77444d + 1;
        f77444d = i11;
        if (i11 == 1) {
            c(false, activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Intrinsics.h(activity, "activity");
        Log.e("yy", "onActivityStopped  activity:" + activity);
        int i11 = f77444d + (-1);
        f77444d = i11;
        if (i11 == 0) {
            c(true, activity);
        }
    }
}
