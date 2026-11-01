package com.therouter;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class f implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f40729a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static HashMap f40730b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f40731c;

    private f() {
    }

    public final void a(String key, Function1 function1) {
        Intrinsics.h(key, "key");
        f40730b.put(key, new WeakReference(function1));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        Function1 function1;
        Intrinsics.h(activity, "activity");
        if (!f40731c) {
            f40731c = true;
            yf.f.b();
        }
        WeakReference weakReference = (WeakReference) f40730b.get(activity.getClass().getName());
        if (weakReference == null || (function1 = (Function1) weakReference.get()) == null) {
            return;
        }
        function1.invoke(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.h(activity, "activity");
        f40730b.remove(activity.getClass().getName());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        Intrinsics.h(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        Intrinsics.h(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        Intrinsics.h(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Intrinsics.h(activity, "activity");
    }
}
