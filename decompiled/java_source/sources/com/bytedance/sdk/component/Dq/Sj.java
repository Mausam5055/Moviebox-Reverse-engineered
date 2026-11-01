package com.bytedance.sdk.component.Dq;

import android.os.Looper;
import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
class Sj extends ThreadPoolExecutor {
    private String Sj;

    /* JADX INFO: renamed from: com.bytedance.sdk.component.Dq.Sj$Sj, reason: collision with other inner class name */
    public static class C0210Sj {
        private RejectedExecutionHandler Dq;
        private String Sj = "io";
        private int sP = 1;
        private long TKC = 30;
        private TimeUnit EjP = TimeUnit.SECONDS;
        private int HiB = Integer.MAX_VALUE;
        private BlockingQueue<Runnable> vS = null;
        private ThreadFactory Jcg = null;
        private int uA = 5;

        public C0210Sj Sj(int i11) {
            this.sP = i11;
            return this;
        }

        public C0210Sj Sj(long j11) {
            this.TKC = j11;
            return this;
        }

        public C0210Sj Sj(String str) {
            this.Sj = str;
            return this;
        }

        public C0210Sj Sj(BlockingQueue<Runnable> blockingQueue) {
            this.vS = blockingQueue;
            return this;
        }

        public C0210Sj Sj(RejectedExecutionHandler rejectedExecutionHandler) {
            this.Dq = rejectedExecutionHandler;
            return this;
        }

        public C0210Sj Sj(ThreadFactory threadFactory) {
            this.Jcg = threadFactory;
            return this;
        }

        public C0210Sj Sj(TimeUnit timeUnit) {
            this.EjP = timeUnit;
            return this;
        }

        public Sj Sj() {
            if (this.Jcg == null) {
                this.Jcg = HiB.Sj().createThreadFactory(this.uA, this.Sj);
            }
            if (this.Dq == null) {
                this.Dq = vS.Dq();
            }
            if (this.vS == null) {
                this.vS = new LinkedBlockingQueue();
            }
            return new Sj(this.Sj, this.sP, this.HiB, this.TKC, this.EjP, this.vS, this.Jcg, this.Dq);
        }

        public C0210Sj sP(int i11) {
            this.uA = i11;
            return this;
        }
    }

    public Sj(String str, int i11, int i12, long j11, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i11, i12, j11, timeUnit, blockingQueue, threadFactory, rejectedExecutionHandler);
        this.Sj = str;
    }

    private void Sj(Runnable runnable) {
        try {
            super.execute(runnable);
        } catch (OutOfMemoryError e11) {
            Sj(runnable, e11);
        } catch (Throwable th2) {
            Sj(runnable, th2);
        }
    }

    private void Sj(Runnable runnable, OutOfMemoryError outOfMemoryError) {
        Sj(runnable, (Throwable) outOfMemoryError);
    }

    private void Sj(Runnable runnable, Throwable th2) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            try {
                runnable.run();
            } catch (Throwable unused) {
            }
        }
    }

    private void Sj(BlockingQueue<Runnable> blockingQueue, int i11) {
        if (getCorePoolSize() == i11 || blockingQueue == null || blockingQueue.size() > 0) {
            return;
        }
        try {
            setCorePoolSize(i11);
            getCorePoolSize();
            getMaximumPoolSize();
        } catch (Exception e11) {
            e11.getMessage();
        }
    }

    private void Sj(BlockingQueue<Runnable> blockingQueue, int i11, int i12) {
        if (getCorePoolSize() == i11 || blockingQueue == null || blockingQueue.size() < i12) {
            return;
        }
        try {
            setCorePoolSize(i11);
            getCorePoolSize();
            getMaximumPoolSize();
        } catch (Exception e11) {
            e11.getMessage();
        }
    }

    public String Sj() {
        return this.Sj;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void afterExecute(Runnable runnable, Throwable th2) {
        BlockingQueue<Runnable> queue;
        super.afterExecute(runnable, th2);
        if (!vS.Jcg() || TextUtils.isEmpty(this.Sj) || (queue = getQueue()) == null) {
            return;
        }
        String str = this.Sj;
        str.hashCode();
        switch (str) {
            case "io":
                Sj(queue, 2);
                break;
            case "log":
                Sj(queue, 4);
                break;
            case "aidl":
                Sj(queue, 2);
                break;
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(final Runnable runnable) {
        BlockingQueue<Runnable> queue;
        if (runnable instanceof Dq) {
            Sj(new sP((Dq) runnable, this));
        } else {
            Sj(new sP(new Dq(TmcConstants.ROUTE_UNKNOWN) { // from class: com.bytedance.sdk.component.Dq.Sj.1
                @Override // java.lang.Runnable
                public void run() {
                    runnable.run();
                }
            }, this));
        }
        if (!vS.Jcg() || TextUtils.isEmpty(this.Sj) || (queue = getQueue()) == null) {
            return;
        }
        String str = this.Sj;
        str.hashCode();
        switch (str) {
            case "io":
                Sj(queue, vS.Sj + 2, getCorePoolSize() * 2);
                break;
            case "log":
                Sj(queue, 8, 8);
                break;
            case "aidl":
                Sj(queue, 5, 5);
                break;
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public void shutdown() {
        if ("io".equals(this.Sj) || "aidl".equals(this.Sj)) {
            return;
        }
        super.shutdown();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        return ("io".equals(this.Sj) || "aidl".equals(this.Sj)) ? Collections.emptyList() : super.shutdownNow();
    }
}
