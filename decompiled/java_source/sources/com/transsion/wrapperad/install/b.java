package com.transsion.wrapperad.install;

import android.app.Application;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import androidx.p009lifecycle.e;
import androidx.p009lifecycle.f;
import androidx.p009lifecycle.g0;
import androidx.p009lifecycle.u;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f58175a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Context f58176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static AppChangeReceiver f58177c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f58178d;

    private b() {
    }

    private final String a() {
        String simpleName = b.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final void c() {
        if (f58178d) {
            return;
        }
        f58177c = new AppChangeReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addDataScheme("package");
        Context context = null;
        if (Build.VERSION.SDK_INT >= 33) {
            Context context2 = f58176b;
            if (context2 == null) {
                Intrinsics.z("appContext");
            } else {
                context = context2;
            }
            context.registerReceiver(f58177c, intentFilter, 4);
        } else {
            Context context3 = f58176b;
            if (context3 == null) {
                Intrinsics.z("appContext");
            } else {
                context = context3;
            }
            context.registerReceiver(f58177c, intentFilter);
        }
        f58178d = true;
    }

    private final void d() {
        if (f58178d) {
            AppChangeReceiver appChangeReceiver = f58177c;
            if (appChangeReceiver != null) {
                try {
                    Context context = f58176b;
                    if (context == null) {
                        Intrinsics.z("appContext");
                        context = null;
                    }
                    context.unregisterReceiver(appChangeReceiver);
                } catch (IllegalArgumentException unused) {
                }
            }
            f58177c = null;
            f58178d = false;
        }
    }

    public final void b(Application application) {
        Intrinsics.h(application, "application");
        f58176b = application.getApplicationContext();
        g0.f9592i.a().getLifecycle().a(this);
        a.f58174a.a(a() + " --> init() --> 初始化成功");
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onCreate(u uVar) {
        e.a(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onDestroy(u uVar) {
        e.b(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onPause(u uVar) {
        e.c(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public /* synthetic */ void onResume(u uVar) {
        e.d(this, uVar);
    }

    @Override // androidx.p009lifecycle.f
    public void onStart(u owner) {
        Intrinsics.h(owner, "owner");
        d();
        c();
    }

    @Override // androidx.p009lifecycle.f
    public void onStop(u owner) {
        Intrinsics.h(owner, "owner");
        d();
    }
}
