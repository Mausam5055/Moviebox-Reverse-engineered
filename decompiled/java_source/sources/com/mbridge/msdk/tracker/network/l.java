package com.mbridge.msdk.tracker.network;

/* JADX INFO: loaded from: classes5.dex */
public class l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile l f38582b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private u f38583a;

    private l() {
    }

    public static l a() {
        if (f38582b == null) {
            synchronized (l.class) {
                try {
                    if (f38582b == null) {
                        f38582b = new l();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f38582b;
    }

    public u b() {
        if (this.f38583a == null) {
            u uVarA = com.mbridge.msdk.tracker.network.toolbox.o.a(new com.mbridge.msdk.tracker.network.toolbox.b(new com.mbridge.msdk.tracker.network.toolbox.m()), null, 10, new com.mbridge.msdk.tracker.network.toolbox.l());
            this.f38583a = uVarA;
            uVarA.b();
        }
        return this.f38583a;
    }
}
