package com.tn.lib.widget.toast.core;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C0589a f41459b = new C0589a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f41460a;

    /* JADX INFO: renamed from: com.tn.lib.widget.toast.core.a$a, reason: collision with other inner class name */
    public static final class C0589a {
        private C0589a() {
        }

        public /* synthetic */ C0589a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a(Application application) {
            Intrinsics.h(application, "application");
            a aVar = new a();
            application.registerActivityLifecycleCallbacks(aVar);
            return aVar;
        }
    }

    public final Activity a() {
        return this.f41460a;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.h(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.h(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        Intrinsics.h(activity, "activity");
        if (this.f41460a != activity) {
            return;
        }
        this.f41460a = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        Intrinsics.h(activity, "activity");
        this.f41460a = activity;
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
