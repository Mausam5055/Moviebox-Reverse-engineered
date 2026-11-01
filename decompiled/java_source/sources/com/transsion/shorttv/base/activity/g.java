package com.transsion.shorttv.base.activity;

import android.app.Activity;
import androidx.fragment.app.Fragment;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class g {
    public static final void a(String tag, Activity activity) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(activity, "activity");
        lg.a.f68839a.p(tag, new String[]{activity.getLocalClassName() + " onDestroy"}, true);
    }

    public static /* synthetic */ void b(String str, Activity activity, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = "CommonInfo";
        }
        a(str, activity);
    }

    public static final void c(String tag, Fragment fragment, boolean z10, String other) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(other, "other");
        lg.a.f68839a.p(tag, new String[]{fragment.getClass().getSimpleName() + " hidden=" + z10 + " " + other}, true);
    }

    public static /* synthetic */ void d(String str, Fragment fragment, boolean z10, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = "CommonInfo";
        }
        if ((i11 & 8) != 0) {
            str2 = "";
        }
        c(str, fragment, z10, str2);
    }

    public static final void e(String tag, Activity activity) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(activity, "activity");
        lg.a.f68839a.p(tag, new String[]{activity.getLocalClassName() + " onPause"}, true);
    }

    public static final void f(String tag, Fragment fragment, String other) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(other, "other");
        lg.a.f68839a.p(tag, new String[]{fragment.getClass().getSimpleName() + " onPause " + other}, true);
    }

    public static /* synthetic */ void g(String str, Activity activity, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = "CommonInfo";
        }
        e(str, activity);
    }

    public static /* synthetic */ void h(String str, Fragment fragment, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = "CommonInfo";
        }
        if ((i11 & 4) != 0) {
            str2 = "";
        }
        f(str, fragment, str2);
    }

    public static final void i(String tag, Activity activity) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(activity, "activity");
        lg.a.f68839a.p(tag, new String[]{activity.getLocalClassName() + " onResume"}, true);
    }

    public static final void j(String tag, Fragment fragment, String other) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(other, "other");
        lg.a.f68839a.p(tag, new String[]{fragment.getClass().getSimpleName() + " onResume " + other}, true);
    }

    public static /* synthetic */ void k(String str, Activity activity, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = "CommonInfo";
        }
        i(str, activity);
    }

    public static /* synthetic */ void l(String str, Fragment fragment, String str2, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = "CommonInfo";
        }
        if ((i11 & 4) != 0) {
            str2 = "";
        }
        j(str, fragment, str2);
    }
}
