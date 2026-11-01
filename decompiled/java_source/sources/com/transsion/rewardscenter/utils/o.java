package com.transsion.rewardscenter.utils;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Context f51312b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o f51311a = new o();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f51313c = 8;

    private o() {
    }

    public final boolean a(Context context, String packageName) {
        Intrinsics.h(context, "context");
        Intrinsics.h(packageName, "packageName");
        if (f51312b == null) {
            b(context);
        }
        try {
            Context context2 = f51312b;
            if (context2 == null) {
                Intrinsics.z("applicationContext");
                context2 = null;
            }
            return context2.getPackageManager().getApplicationInfo(packageName, 0) != null;
        } catch (Exception unused) {
            return false;
        }
    }

    public final void b(Context context) {
        Intrinsics.h(context, "context");
        f51312b = context.getApplicationContext();
    }
}
