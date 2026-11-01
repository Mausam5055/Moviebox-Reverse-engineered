package com.transsion.shorttv_pugc.base.activity;

import android.app.Activity;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public abstract class e {
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

    public static final void c(String tag, Activity activity) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(activity, "activity");
        lg.a.f68839a.p(tag, new String[]{activity.getLocalClassName() + " onPause"}, true);
    }

    public static /* synthetic */ void d(String str, Activity activity, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = "CommonInfo";
        }
        c(str, activity);
    }

    public static final void e(String tag, Activity activity) {
        Intrinsics.h(tag, "tag");
        Intrinsics.h(activity, "activity");
        lg.a.f68839a.p(tag, new String[]{activity.getLocalClassName() + " onResume"}, true);
    }

    public static /* synthetic */ void f(String str, Activity activity, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            str = "CommonInfo";
        }
        e(str, activity);
    }
}
