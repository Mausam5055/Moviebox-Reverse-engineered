package com.iab.omid.library.mmadbridge.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;

/* JADX INFO: loaded from: classes4.dex */
public class d implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f33694a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected boolean f33695b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f33696c;

    public interface a {
        void a(boolean z10);
    }

    private void c(boolean z10) {
        if (this.f33695b != z10) {
            this.f33695b = z10;
            if (this.f33694a) {
                f(z10);
                a aVar = this.f33696c;
                if (aVar != null) {
                    aVar.a(z10);
                }
            }
        }
    }

    private boolean d() {
        return e().importance == 100 || h();
    }

    public void a(Context context) {
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(this);
        }
    }

    public void b(a aVar) {
        this.f33696c = aVar;
    }

    ActivityManager.RunningAppProcessInfo e() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        return runningAppProcessInfo;
    }

    protected void f(boolean z10) {
    }

    public boolean g() {
        return this.f33695b;
    }

    protected boolean h() {
        return false;
    }

    public void i() {
        this.f33694a = true;
        boolean zD = d();
        this.f33695b = zD;
        f(zD);
    }

    public void j() {
        this.f33694a = false;
        this.f33696c = null;
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
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        c(true);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        c(d());
    }
}
