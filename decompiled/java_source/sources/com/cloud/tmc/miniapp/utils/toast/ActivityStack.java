package com.cloud.tmc.miniapp.utils.toast;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityStack implements Application.ActivityLifecycleCallbacks {
    public static final Companion Companion = new Companion(null);
    private static ActivityStack sInstance;
    private WeakReference<Activity> mForegroundActivity;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ActivityStack getInstance() {
            if (ActivityStack.sInstance == null) {
                synchronized (this) {
                    try {
                        if (ActivityStack.sInstance == null) {
                            ActivityStack.sInstance = new ActivityStack();
                        }
                        Unit unit = Unit.f67061a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            ActivityStack activityStack = ActivityStack.sInstance;
            Intrinsics.e(activityStack);
            return activityStack;
        }
    }

    public final Activity getForegroundActivity() {
        WeakReference<Activity> weakReference = this.mForegroundActivity;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
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
        WeakReference<Activity> weakReference = this.mForegroundActivity;
        if ((weakReference != null ? weakReference.get() : null) != activity) {
            return;
        }
        this.mForegroundActivity = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        Intrinsics.h(activity, "activity");
        this.mForegroundActivity = new WeakReference<>(activity);
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

    public final void register(Application application) {
        if (application == null) {
            return;
        }
        application.unregisterActivityLifecycleCallbacks(this);
        application.registerActivityLifecycleCallbacks(this);
    }
}
