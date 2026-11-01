package com.pgl.ssdk;

import android.os.HandlerThread;

/* JADX INFO: loaded from: classes5.dex */
public class x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a1<y0> f40228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b1 f40229b;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final x0 f40230a = new x0();
    }

    private x0() {
        this.f40228a = a1.a(2);
    }

    public static x0 a() {
        return b.f40230a;
    }

    private y0 a(b1.a aVar, String str) {
        try {
            HandlerThread handlerThread = new HandlerThread(str);
            handlerThread.start();
            return new y0(handlerThread, aVar);
        } catch (Throwable unused) {
            return null;
        }
    }

    public b1 a(String str) {
        return b(null, str);
    }

    public b1 b() {
        if (this.f40229b == null) {
            synchronized (x0.class) {
                try {
                    if (this.f40229b == null) {
                        this.f40229b = a("ssdk_net_handler");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f40229b;
    }

    public b1 b(b1.a aVar, String str) {
        y0 y0Var = (y0) this.f40228a.a();
        if (y0Var == null) {
            return a(aVar, str);
        }
        y0Var.a(aVar);
        y0Var.a(str);
        return y0Var;
    }

    public b1 c() {
        if (this.f40229b == null) {
            synchronized (x0.class) {
                try {
                    if (this.f40229b == null) {
                        this.f40229b = a("ssdk_handler");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f40229b;
    }
}
