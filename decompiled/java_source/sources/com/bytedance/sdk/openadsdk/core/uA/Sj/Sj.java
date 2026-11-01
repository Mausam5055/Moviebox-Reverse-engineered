package com.bytedance.sdk.openadsdk.core.uA.Sj;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* JADX INFO: loaded from: classes3.dex */
public class Sj implements Application.ActivityLifecycleCallbacks {
    private static volatile Sj Sj;
    private final sP sP;

    private Sj(Application application) {
        this.sP = sP.Sj(application);
    }

    public static Sj Sj(Application application) {
        if (Sj == null) {
            synchronized (Sj.class) {
                try {
                    if (Sj == null) {
                        Sj = new Sj(application);
                        application.registerActivityLifecycleCallbacks(Sj);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    public String Sj(String str, long j11, int i11) {
        sP sPVar = this.sP;
        return sPVar != null ? sPVar.Sj(str, j11, i11) : "null";
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
    public void onActivityPostResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        sP sPVar = this.sP;
        if (sPVar != null) {
            sPVar.Sj(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        sP sPVar = this.sP;
        if (sPVar != null) {
            sPVar.sP(activity);
        }
    }
}
