package com.google.common.util.concurrent;

/* JADX INFO: loaded from: classes4.dex */
abstract class w {
    static boolean a(Throwable th2, Class cls) {
        return cls.isInstance(th2);
    }

    static void b(Throwable th2) {
        com.google.common.base.m.o(th2);
        if (th2 instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
    }
}
