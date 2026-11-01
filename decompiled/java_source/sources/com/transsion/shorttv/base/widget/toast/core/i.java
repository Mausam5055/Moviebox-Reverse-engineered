package com.transsion.shorttv.base.widget.toast.core;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class i implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Activity f52993a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ToastImpl f52994b;

    public i(Activity activity) {
        this.f52993a = activity;
    }

    public final Activity a() {
        return this.f52993a;
    }

    public final void b(ToastImpl toastImpl) {
        this.f52994b = toastImpl;
        Activity activity = this.f52993a;
        if (activity == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            Intrinsics.e(activity);
            activity.registerActivityLifecycleCallbacks(this);
        } else {
            Intrinsics.e(activity);
            activity.getApplication().registerActivityLifecycleCallbacks(this);
        }
    }

    public final void c() {
        this.f52994b = null;
        Activity activity = this.f52993a;
        if (activity == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            Intrinsics.e(activity);
            activity.unregisterActivityLifecycleCallbacks(this);
        } else {
            Intrinsics.e(activity);
            activity.getApplication().unregisterActivityLifecycleCallbacks(this);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.h(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.h(activity, "activity");
        if (this.f52993a != activity) {
            return;
        }
        ToastImpl toastImpl = this.f52994b;
        if (toastImpl != null) {
            Intrinsics.e(toastImpl);
            toastImpl.e();
        }
        c();
        this.f52993a = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        ToastImpl toastImpl;
        Intrinsics.h(activity, "activity");
        if (this.f52993a == activity && (toastImpl = this.f52994b) != null) {
            Intrinsics.e(toastImpl);
            toastImpl.e();
        }
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
