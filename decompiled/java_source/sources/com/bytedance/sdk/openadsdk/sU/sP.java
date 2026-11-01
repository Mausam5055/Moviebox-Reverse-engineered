package com.bytedance.sdk.openadsdk.sU;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class sP {
    private int EjP;
    private Sj HiB;
    private ScheduledExecutorService Sj = null;
    private long TKC = 0;
    private Dq sP;

    public interface Sj {
    }

    public sP(Dq dq2, int i11) {
        this.sP = dq2;
        this.EjP = i11;
    }

    public void Sj() {
        ScheduledExecutorService scheduledExecutorService = this.Sj;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
        }
    }

    public void Sj(int i11) {
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1);
        this.Sj = scheduledExecutorServiceNewScheduledThreadPool;
        scheduledExecutorServiceNewScheduledThreadPool.scheduleAtFixedRate(new Runnable() { // from class: com.bytedance.sdk.openadsdk.sU.sP.1
            @Override // java.lang.Runnable
            public void run() {
                System.currentTimeMillis();
                long unused = sP.this.TKC;
                if (System.currentTimeMillis() - sP.this.TKC > sP.this.EjP) {
                    sP.this.Sj.shutdown();
                    if (sP.this.sP != null) {
                        sP.this.sP.sP(0, "Automatic detection of stuck");
                    }
                    if (sP.this.HiB != null) {
                        Sj unused2 = sP.this.HiB;
                    }
                }
            }
        }, 0L, i11, TimeUnit.MILLISECONDS);
    }

    public void Sj(long j11) {
        this.TKC = j11;
    }

    public boolean sP() {
        ScheduledExecutorService scheduledExecutorService = this.Sj;
        if (scheduledExecutorService != null) {
            return scheduledExecutorService.isShutdown();
        }
        return true;
    }
}
