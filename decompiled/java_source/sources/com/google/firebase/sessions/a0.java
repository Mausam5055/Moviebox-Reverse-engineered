package com.google.firebase.sessions;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class a0 implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a0 f32629a = new a0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f32630b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static SessionLifecycleClient f32631c;

    private a0() {
    }

    public final void a(SessionLifecycleClient sessionLifecycleClient) {
        f32631c = sessionLifecycleClient;
        if (sessionLifecycleClient == null || !f32630b) {
            return;
        }
        f32630b = false;
        sessionLifecycleClient.k();
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
        SessionLifecycleClient sessionLifecycleClient = f32631c;
        if (sessionLifecycleClient != null) {
            sessionLifecycleClient.h();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        Unit unit;
        Intrinsics.h(activity, "activity");
        SessionLifecycleClient sessionLifecycleClient = f32631c;
        if (sessionLifecycleClient != null) {
            sessionLifecycleClient.k();
            unit = Unit.f67061a;
        } else {
            unit = null;
        }
        if (unit == null) {
            f32630b = true;
        }
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
