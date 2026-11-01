package com.bytedance.sdk.component.HiB.Sj;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class Sj implements ThreadFactory {
    private final ThreadGroup Sj;
    private final AtomicInteger sP = new AtomicInteger(1);

    public Sj(String str) {
        this.Sj = new ThreadGroup("tt_img_".concat(String.valueOf(str)));
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.Sj, runnable, "tt_img_" + this.sP.getAndIncrement());
        if (thread.isDaemon()) {
            thread.setDaemon(false);
        }
        return thread;
    }
}
