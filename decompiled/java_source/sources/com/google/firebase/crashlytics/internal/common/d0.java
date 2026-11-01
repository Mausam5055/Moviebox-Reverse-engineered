package com.google.firebase.crashlytics.internal.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SharedPreferences f31158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.firebase.f f31159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f31160c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TaskCompletionSource f31161d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f31162e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f31163f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Boolean f31164g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final TaskCompletionSource f31165h;

    public d0(com.google.firebase.f fVar) {
        Object obj = new Object();
        this.f31160c = obj;
        this.f31161d = new TaskCompletionSource();
        this.f31162e = false;
        this.f31163f = false;
        this.f31165h = new TaskCompletionSource();
        Context contextK = fVar.k();
        this.f31159b = fVar;
        this.f31158a = CommonUtils.q(contextK);
        Boolean boolB = b();
        this.f31164g = boolB == null ? a(contextK) : boolB;
        synchronized (obj) {
            try {
                if (d()) {
                    this.f31161d.trySetResult(null);
                    this.f31162e = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private Boolean a(Context context) {
        Boolean boolG = g(context);
        if (boolG == null) {
            this.f31163f = false;
            return null;
        }
        this.f31163f = true;
        return Boolean.valueOf(Boolean.TRUE.equals(boolG));
    }

    private Boolean b() {
        if (!this.f31158a.contains("firebase_crashlytics_collection_enabled")) {
            return null;
        }
        this.f31163f = false;
        return Boolean.valueOf(this.f31158a.getBoolean("firebase_crashlytics_collection_enabled", true));
    }

    private boolean e() {
        try {
            return this.f31159b.t();
        } catch (IllegalStateException unused) {
            return false;
        }
    }

    private void f(boolean z10) {
        String str;
        String str2 = z10 ? "ENABLED" : "DISABLED";
        if (this.f31164g == null) {
            str = "global Firebase setting";
        } else {
            str = this.f31163f ? "firebase_crashlytics_collection_enabled manifest flag" : "API";
        }
        ob.g.f().b(String.format("Crashlytics automatic data collection %s by %s.", str2, str));
    }

    private static Boolean g(Context context) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_crashlytics_collection_enabled")) {
                return null;
            }
            return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_crashlytics_collection_enabled"));
        } catch (PackageManager.NameNotFoundException e11) {
            ob.g.f().e("Could not read data collection permission from manifest", e11);
            return null;
        }
    }

    private static void i(SharedPreferences sharedPreferences, Boolean bool) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        if (bool != null) {
            editorEdit.putBoolean("firebase_crashlytics_collection_enabled", bool.booleanValue());
        } else {
            editorEdit.remove("firebase_crashlytics_collection_enabled");
        }
        editorEdit.apply();
    }

    public void c(boolean z10) {
        if (!z10) {
            throw new IllegalStateException("An invalid data collection token was used.");
        }
        this.f31165h.trySetResult(null);
    }

    public synchronized boolean d() {
        boolean zBooleanValue;
        try {
            Boolean bool = this.f31164g;
            zBooleanValue = bool != null ? bool.booleanValue() : e();
            f(zBooleanValue);
        } catch (Throwable th2) {
            throw th2;
        }
        return zBooleanValue;
    }

    public synchronized void h(Boolean bool) {
        if (bool != null) {
            try {
                this.f31163f = false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.f31164g = bool != null ? bool : a(this.f31159b.k());
        i(this.f31158a, bool);
        synchronized (this.f31160c) {
            try {
                if (d()) {
                    if (!this.f31162e) {
                        this.f31161d.trySetResult(null);
                        this.f31162e = true;
                    }
                } else if (this.f31162e) {
                    this.f31161d = new TaskCompletionSource();
                    this.f31162e = false;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public Task j() {
        Task task;
        synchronized (this.f31160c) {
            task = this.f31161d.getTask();
        }
        return task;
    }

    public Task k() {
        return com.google.firebase.crashlytics.internal.concurrency.b.c(this.f31165h.getTask(), j());
    }
}
