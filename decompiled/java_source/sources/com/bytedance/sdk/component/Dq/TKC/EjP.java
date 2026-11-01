package com.bytedance.sdk.component.Dq.TKC;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class EjP implements ThreadFactory {
    public static volatile boolean TKC;
    private final AtomicInteger EjP = new AtomicInteger(1);
    protected final ThreadGroup Sj;
    protected final String sP;

    public EjP(String str) {
        this.Sj = new ThreadGroup("pag_g_".concat(String.valueOf(str)));
        this.sP = Sj(str);
    }

    public static String Sj(String str) {
        return "pag_".concat(String.valueOf(str));
    }

    protected Thread Sj(ThreadGroup threadGroup, Runnable runnable, String str) {
        return new Thread(threadGroup, runnable, str);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        if (TKC) {
            return null;
        }
        Thread threadSj = Sj(this.Sj, runnable, this.sP + "_" + this.EjP.getAndIncrement());
        if (threadSj.isDaemon()) {
            threadSj.setDaemon(false);
        }
        return threadSj;
    }
}
