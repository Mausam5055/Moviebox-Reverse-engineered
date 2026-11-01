package com.bykv.vk.openvk.preload.geckox.utils;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public class c implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile c f20758a;

    public static c a() {
        if (f20758a == null) {
            synchronized (c.class) {
                try {
                    if (f20758a == null) {
                        f20758a = new c();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f20758a;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        com.bykv.vk.openvk.preload.geckox.b.t().execute(runnable);
    }
}
