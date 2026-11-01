package com.apm.insight.runtime;

import android.os.Handler;
import android.os.HandlerThread;

/* JADX INFO: loaded from: classes2.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile p f19826a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile Handler f19827b;

    public static p a() {
        if (f19826a == null) {
            b();
        }
        return f19826a;
    }

    private static HandlerThread b() {
        if (f19826a == null) {
            synchronized (m.class) {
                try {
                    if (f19826a == null) {
                        p pVar = new p("default_npth_thread");
                        f19826a = pVar;
                        pVar.b();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f19826a.c();
    }
}
