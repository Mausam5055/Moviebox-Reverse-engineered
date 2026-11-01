package com.bykv.vk.openvk.preload.geckox.utils;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public class f implements Executor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile f f20760a;

    public static f a() {
        if (f20760a == null) {
            synchronized (f.class) {
                try {
                    if (f20760a == null) {
                        f20760a = new f();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f20760a;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        com.bykv.vk.openvk.preload.geckox.b.t().execute(runnable);
    }
}
