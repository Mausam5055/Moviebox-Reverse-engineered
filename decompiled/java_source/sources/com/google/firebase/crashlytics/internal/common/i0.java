package com.google.firebase.crashlytics.internal.common;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
class i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f31188a;

    i0() {
    }

    private static String b(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        return installerPackageName == null ? "" : installerPackageName;
    }

    synchronized String a(Context context) {
        try {
            if (this.f31188a == null) {
                this.f31188a = b(context);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return "".equals(this.f31188a) ? null : this.f31188a;
    }
}
