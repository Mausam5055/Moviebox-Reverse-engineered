package com.bytedance.sdk.component.sP.Sj.Sj.Sj;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class HiB extends com.bytedance.sdk.component.sP.Sj.EjP {
    private ExecutorService Sj;
    private List<com.bytedance.sdk.component.sP.Sj.sP> sP = new CopyOnWriteArrayList();
    private List<com.bytedance.sdk.component.sP.Sj.sP> TKC = new CopyOnWriteArrayList();
    private AtomicInteger EjP = new AtomicInteger(64);

    public HiB() {
        if (this.Sj == null) {
            this.Sj = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 20L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactory() { // from class: com.bytedance.sdk.component.sP.Sj.Sj.Sj.HiB.1
                @Override // java.util.concurrent.ThreadFactory
                public Thread newThread(Runnable runnable) {
                    Thread thread = new Thread(runnable, "systemHttp Dispatcher");
                    thread.setDaemon(false);
                    thread.setPriority(10);
                    return thread;
                }
            });
        }
    }

    @Override // com.bytedance.sdk.component.sP.Sj.EjP
    public List<com.bytedance.sdk.component.sP.Sj.sP> EjP() {
        return this.TKC;
    }

    @Override // com.bytedance.sdk.component.sP.Sj.EjP
    public int Sj() {
        return this.EjP.get();
    }

    @Override // com.bytedance.sdk.component.sP.Sj.EjP
    public void Sj(int i11) {
        this.EjP.set(i11);
    }

    @Override // com.bytedance.sdk.component.sP.Sj.EjP
    public List<com.bytedance.sdk.component.sP.Sj.sP> TKC() {
        return this.sP;
    }

    @Override // com.bytedance.sdk.component.sP.Sj.EjP
    public ExecutorService sP() {
        return this.Sj;
    }
}
