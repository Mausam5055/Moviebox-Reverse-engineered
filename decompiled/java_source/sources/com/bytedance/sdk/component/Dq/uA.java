package com.bytedance.sdk.component.Dq;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class uA implements ThreadFactory {
    public static final String THREAD_GROUP_NAME_PRE = "csj_g_";
    public static final String THREAD_NAME_PRE = "csj_";
    public static volatile boolean sCrashHappened;
    private final AtomicInteger EjP;
    protected final ThreadGroup Sj;
    protected int TKC;
    protected final String sP;

    public uA(int i11, String str) {
        this.EjP = new AtomicInteger(1);
        this.TKC = i11;
        this.Sj = new ThreadGroup(THREAD_GROUP_NAME_PRE.concat(String.valueOf(str)));
        this.sP = THREAD_NAME_PRE.concat(String.valueOf(str));
    }

    public uA(String str) {
        this(5, str);
    }

    protected Thread Sj(ThreadGroup threadGroup, Runnable runnable, String str) {
        return new Thread(threadGroup, runnable, str);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        if (sCrashHappened) {
            return null;
        }
        Thread threadSj = Sj(this.Sj, runnable, this.sP + this.EjP.getAndIncrement());
        if (threadSj.isDaemon()) {
            threadSj.setDaemon(false);
        }
        int i11 = this.TKC;
        if (i11 > 10 || i11 <= 0) {
            this.TKC = 5;
        }
        threadSj.setPriority(this.TKC);
        return threadSj;
    }
}
