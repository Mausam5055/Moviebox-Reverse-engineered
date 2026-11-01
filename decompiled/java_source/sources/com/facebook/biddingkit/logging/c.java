package com.facebook.biddingkit.logging;

import android.os.Process;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes3.dex */
class c implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f24122a;

    public c(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f24122a = uncaughtExceptionHandler;
    }

    private void a(Thread thread, Throwable th2) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f24122a;
        if (uncaughtExceptionHandler != null) {
            uncaughtExceptionHandler.uncaughtException(thread, th2);
        } else {
            c();
        }
    }

    static void b() {
        Thread.setDefaultUncaughtExceptionHandler(new c(Thread.getDefaultUncaughtExceptionHandler()));
    }

    private static void c() {
        try {
            Process.killProcess(Process.myPid());
        } catch (Throwable unused) {
        }
        try {
            System.exit(10);
        } catch (Throwable unused2) {
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th2) {
        try {
            String strA = g.a(th2);
            if (!TextUtils.isEmpty(strA) && strA.contains("com.facebook.biddingkit")) {
                b.c("CrashReportHandler", strA);
            }
        } catch (Exception unused) {
        }
        a(thread, th2);
    }
}
