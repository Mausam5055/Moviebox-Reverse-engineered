package com.mbridge.msdk.foundation.same;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile b f35355b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Boolean f35356a = null;

    private b() {
    }

    public static b b() {
        if (f35355b == null) {
            synchronized (b.class) {
                try {
                    if (f35355b == null) {
                        f35355b = new b();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f35355b;
    }

    public Boolean a() {
        return this.f35356a;
    }
}
