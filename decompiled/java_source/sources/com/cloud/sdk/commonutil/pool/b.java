package com.cloud.sdk.commonutil.pool;

import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile b f23152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static ThreadPoolExecutor f23153c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ThreadPoolExecutor f23154a;

    public static b b() {
        if (f23152b == null) {
            synchronized (b.class) {
                try {
                    if (f23152b == null) {
                        f23152b = new b();
                        b bVar = f23152b;
                        ThreadPoolExecutor threadPoolExecutorB = f23153c;
                        if (threadPoolExecutorB == null) {
                            threadPoolExecutorB = HSPoolExecutor.b();
                        }
                        bVar.f23154a = threadPoolExecutorB;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f23152b;
    }

    public void a(Runnable runnable) {
        ThreadPoolExecutor threadPoolExecutor = this.f23154a;
        if (threadPoolExecutor != null) {
            if (threadPoolExecutor.isShutdown()) {
                this.f23154a.prestartAllCoreThreads();
            }
            this.f23154a.execute(runnable);
        }
    }
}
