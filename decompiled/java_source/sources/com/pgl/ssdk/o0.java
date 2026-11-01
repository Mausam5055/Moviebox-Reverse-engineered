package com.pgl.ssdk;

import android.os.Handler;

/* JADX INFO: loaded from: classes5.dex */
public class o0 {
    public static Handler a() {
        return x0.a().b();
    }

    public static void a(Runnable runnable) {
        Handler handlerA;
        if (runnable == null || (handlerA = a()) == null) {
            return;
        }
        handlerA.post(runnable);
    }

    public static Handler b() {
        return x0.a().c();
    }

    public static void b(Runnable runnable) {
        Handler handlerB;
        if (runnable == null || (handlerB = b()) == null) {
            return;
        }
        handlerB.post(runnable);
    }
}
