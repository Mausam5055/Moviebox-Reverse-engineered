package com.transsion.core.pool;

import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes5.dex */
public class a implements b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile a f44069b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ThreadPoolExecutor f44070a;

    public static a b() {
        if (f44069b == null) {
            synchronized (a.class) {
                try {
                    if (f44069b == null) {
                        f44069b = new a();
                        f44069b.f44070a = TranssionPoolExecutor.c();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return f44069b;
    }

    @Override // com.transsion.core.pool.b
    public void a(Runnable runnable) {
        ThreadPoolExecutor threadPoolExecutor = this.f44070a;
        if (threadPoolExecutor != null) {
            if (threadPoolExecutor.isShutdown()) {
                this.f44070a.prestartAllCoreThreads();
            }
            this.f44070a.execute(runnable);
        }
    }
}
