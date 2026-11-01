package com.transsion.shorttv_pugc.base.locale;

import android.R;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import java.util.Iterator;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class e implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final a f53792d = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SparseArray f53793a = new SparseArray(4);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f53794b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Integer f53795c;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Activity f53796a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Locale f53797b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Locale f53798c;

        public b(Activity activity) {
            Intrinsics.h(activity, "activity");
            this.f53796a = activity;
        }

        public final Activity a() {
            return this.f53796a;
        }

        public final Locale b() {
            return this.f53798c;
        }

        public final Locale c() {
            return this.f53797b;
        }

        public final void d(Locale locale) {
            this.f53798c = locale;
        }

        public final void e(Locale locale) {
            this.f53797b = locale;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void a(View view) {
        if (view instanceof ft.a) {
            ((ft.a) view).changeLocal();
        } else if (view instanceof ViewGroup) {
            Iterator f67431a = ViewGroupKt.getChildren((ViewGroup) view).getF67431a();
            while (f67431a.hasNext()) {
                a((View) f67431a.next());
            }
        }
    }

    private final void b(Activity activity) {
        lg.a.C0828a.f(lg.a.f68839a, "LocaleManagerCB", "notifyActivityChangedLocale()-> activity = " + activity + " , waitChangedCount = " + this.f53794b, false, 4, null);
        if (this.f53794b <= 0) {
            return;
        }
        b bVar = (b) this.f53793a.get(System.identityHashCode(activity));
        if ((bVar != null ? bVar.c() : null) == null) {
            return;
        }
        this.f53794b--;
        boolean z10 = TextUtils.getLayoutDirectionFromLocale(bVar.b()) == TextUtils.getLayoutDirectionFromLocale(bVar.c());
        bVar.d(bVar.c());
        bVar.e(null);
        if (z10) {
            return;
        }
        d(activity);
    }

    private final void c() {
        Integer num = this.f53795c;
        if (num == null) {
            return;
        }
        SparseArray sparseArray = this.f53793a;
        Intrinsics.e(num);
        b bVar = (b) sparseArray.get(num.intValue());
        if (bVar == null) {
            return;
        }
        b(bVar.a());
    }

    private final void d(Activity activity) {
        activity.finish();
        Intent intent = activity.getIntent();
        intent.putExtra("extra_language_activity_restart", true);
        activity.startActivity(intent);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0049  */
    public final void e(Locale locale) {
        int i11;
        if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
            throw new UnsupportedOperationException();
        }
        int size = this.f53793a.size();
        boolean z10 = false;
        if (size <= 0) {
            this.f53794b = 0;
            return;
        }
        int i12 = this.f53794b;
        int i13 = 0;
        while (i13 < size) {
            b bVar = (b) this.f53793a.valueAt(i13);
            lg.a.C0828a c0828a = lg.a.f68839a;
            lg.a.C0828a.f(c0828a, "LocaleManagerCB", "setLocaleChanged()-> localeState = " + bVar, false, 4, null);
            if (bVar == null) {
                i11 = size;
            } else {
                Activity activityA = bVar.a();
                boolean z11 = (activityA.isFinishing() || activityA.isDestroyed()) ? true : z10;
                boolean z12 = z11;
                lg.a.C0828a.f(c0828a, "LocaleManagerCB", "setLocaleChanged()-> activityFinished = " + z11, false, 4, null);
                if (z12) {
                    i11 = size;
                } else {
                    Locale localeB = bVar.b();
                    Intrinsics.e(localeB);
                    String language = localeB.getLanguage();
                    Intrinsics.e(locale);
                    String language2 = locale.getLanguage();
                    Locale localeC = bVar.c();
                    boolean z13 = TextUtils.getLayoutDirectionFromLocale(localeB) != TextUtils.getLayoutDirectionFromLocale(locale) ? z10 : true;
                    i11 = size;
                    lg.a.C0828a.f(c0828a, "LocaleManagerCB", "setLocaleChanged()-> locale = " + locale + " , activityLocale = " + localeB + " , expectLocale = " + localeC + " , isSameDirection = " + z13, false, 4, null);
                    if (Intrinsics.c(language, language2)) {
                        bVar.e(null);
                        if (localeC != null) {
                            i12--;
                            lg.a.C0828a.f(c0828a, "LocaleManagerCB", "setLocaleChanged()-> waitChangedCount--", false, 4, null);
                        }
                    } else {
                        bVar.e(locale);
                        if (localeC == null) {
                            i12++;
                            lg.a.C0828a.f(c0828a, "LocaleManagerCB", "setLocaleChanged()-> waitChangedCount++", false, 4, null);
                        }
                        if (z13) {
                            Configuration configuration = activityA.getResources().getConfiguration();
                            Intrinsics.g(configuration, "getConfiguration(...)");
                            Resources resources = activityA.getResources();
                            Intrinsics.g(resources, "getResources(...)");
                            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                            Intrinsics.g(displayMetrics, "getDisplayMetrics(...)");
                            bVar.d(locale);
                            bVar.e(null);
                            configuration.setLocale(locale);
                            resources.updateConfiguration(configuration, displayMetrics);
                            View viewFindViewById = activityA.getWindow().getDecorView().findViewById(R.id.content);
                            if (viewFindViewById != null) {
                                a(viewFindViewById);
                            }
                        }
                    }
                }
            }
            i13++;
            size = i11;
            z10 = false;
        }
        this.f53794b = i12;
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        Intrinsics.h(activity, "activity");
        int iIdentityHashCode = System.identityHashCode(activity);
        b bVar = new b(activity);
        bVar.d(d.f53781f.d(activity));
        lg.a.C0828a.f(lg.a.f68839a, "LocaleManagerCB", "onActivityCreated()-> " + activity + " , curLocale = " + bVar.b(), false, 4, null);
        this.f53793a.put(iIdentityHashCode, bVar);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.h(activity, "activity");
        int iIdentityHashCode = System.identityHashCode(activity);
        b bVar = (b) this.f53793a.get(iIdentityHashCode);
        if ((bVar != null ? bVar.c() : null) != null) {
            bVar.e(null);
            this.f53794b--;
        }
        this.f53793a.remove(iIdentityHashCode);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        Intrinsics.h(activity, "activity");
        int iIdentityHashCode = System.identityHashCode(activity);
        Integer num = this.f53795c;
        if (num == null || num == null || iIdentityHashCode != num.intValue()) {
            return;
        }
        this.f53795c = null;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        Intrinsics.h(activity, "activity");
        lg.a.C0828a.f(lg.a.f68839a, "LocaleManagerCB", "onActivityResumed()-> " + activity, false, 4, null);
        this.f53795c = Integer.valueOf(System.identityHashCode(activity));
        b(activity);
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
