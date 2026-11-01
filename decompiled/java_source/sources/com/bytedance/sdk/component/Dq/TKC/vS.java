package com.bytedance.sdk.component.Dq.TKC;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class vS extends ThreadPoolExecutor {
    private LinkedHashMap<String, com.bytedance.sdk.component.Dq.TKC.Sj.Sj> Dq;
    private int EjP;
    private int HiB;
    private boolean Jcg;
    private final String Sj;
    private int TKC;
    private int sP;
    private int vS;

    public static class Sj {
        private String Sj = "cache";
        private int sP = 4;
        private int TKC = 100;
        private int EjP = 0;
        private long HiB = 30000;
        private boolean vS = false;
        private TimeUnit Jcg = TimeUnit.MILLISECONDS;
        private int Dq = -1;
        private int uA = 20;
        private boolean TEQ = false;
        private BlockingQueue<Runnable> Ym = new PriorityBlockingQueue();

        /* JADX INFO: renamed from: aa, reason: collision with root package name */
        private ThreadFactory f20852aa = null;

        public Sj EjP(int i11) {
            this.uA = i11;
            return this;
        }

        public Sj HiB(int i11) {
            this.Dq = i11;
            return this;
        }

        public Sj Sj(int i11) {
            this.sP = i11;
            return this;
        }

        public Sj Sj(long j11) {
            this.HiB = j11;
            return this;
        }

        public Sj Sj(String str) {
            this.Sj = str;
            return this;
        }

        public Sj Sj(boolean z10) {
            this.vS = z10;
            return this;
        }

        public vS Sj() {
            if (this.f20852aa == null) {
                this.f20852aa = new EjP(this.Sj);
            }
            if (this.sP < 0) {
                this.sP = 8;
            }
            if (this.sP == 0) {
                this.Ym = new SynchronousQueue();
            }
            if (this.Ym == null) {
                this.Ym = new LinkedBlockingQueue();
            }
            if (this.TKC > 100) {
                this.TKC = 100;
            }
            int i11 = this.TKC;
            int i12 = this.sP;
            if (i11 < i12) {
                this.TKC = i12;
            }
            if (this.uA < 0) {
                this.uA = 20;
            }
            if (this.uA > 100) {
                this.uA = 100;
            }
            return new vS(this);
        }

        public Sj TKC(int i11) {
            this.EjP = i11;
            return this;
        }

        public Sj sP(int i11) {
            this.TKC = i11;
            return this;
        }

        public Sj sP(boolean z10) {
            this.TEQ = z10;
            return this;
        }
    }

    private vS(Sj sj2) {
        super(sj2.sP, Integer.MAX_VALUE, sj2.HiB, sj2.Jcg, (BlockingQueue<Runnable>) sj2.Ym, sj2.f20852aa);
        this.Jcg = false;
        String unused = sj2.Sj;
        int unused2 = sj2.sP;
        int unused3 = sj2.TKC;
        long unused4 = sj2.HiB;
        int unused5 = sj2.EjP;
        int unused6 = sj2.uA;
        boolean unused7 = sj2.TEQ;
        BlockingQueue unused8 = sj2.Ym;
        this.Sj = sj2.Sj;
        this.EjP = sj2.sP;
        this.HiB = sj2.TKC;
        this.vS = sj2.EjP;
        allowCoreThreadTimeOut(sj2.vS);
        this.sP = sj2.Dq;
        this.TKC = sj2.uA;
        this.Jcg = sj2.TEQ;
        if (Jcg()) {
            final int i11 = this.TKC + 4;
            this.Dq = new LinkedHashMap<String, com.bytedance.sdk.component.Dq.TKC.Sj.Sj>(i11, 0.75f, true) { // from class: com.bytedance.sdk.component.Dq.TKC.vS.1
                @Override // java.util.LinkedHashMap
                protected boolean removeEldestEntry(Map.Entry<String, com.bytedance.sdk.component.Dq.TKC.Sj.Sj> entry) {
                    return size() > i11;
                }
            };
        }
    }

    private void EjP() {
        try {
            if (this.EjP != 0 && getCorePoolSize() < this.HiB) {
                int size = getQueue().size();
                if (getActiveCount() < this.EjP || size < this.vS) {
                    return;
                }
                setCorePoolSize(this.HiB);
            }
        } catch (Exception e11) {
            e11.getMessage();
        }
    }

    private void HiB() {
        try {
            if (this.EjP != 0 && getCorePoolSize() > this.EjP && getQueue().size() == 0) {
                setCorePoolSize(this.EjP);
            }
        } catch (Exception e11) {
            e11.getMessage();
        }
    }

    private boolean Jcg() {
        return this.sP > 0;
    }

    private void Sj(sP sPVar) {
        LinkedHashMap<String, com.bytedance.sdk.component.Dq.TKC.Sj.Sj> linkedHashMap = this.Dq;
        if (linkedHashMap != null) {
            com.bytedance.sdk.component.Dq.TKC.Sj.Sj sj2 = linkedHashMap.get(sPVar.sP());
            if (sj2 == null) {
                synchronized (linkedHashMap) {
                    try {
                        sj2 = linkedHashMap.get(sPVar.sP());
                        if (sj2 == null) {
                            sj2 = new com.bytedance.sdk.component.Dq.TKC.Sj.Sj();
                            linkedHashMap.put(sPVar.sP(), sj2);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            sj2.Sj(sPVar);
        }
    }

    private void Sj(Runnable runnable, Throwable th2) {
        try {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                runnable.run();
                return;
            }
            Handler handlerTKC = TKC.TKC();
            if (handlerTKC != null) {
                handlerTKC.post(runnable);
            }
        } catch (Throwable unused) {
        }
    }

    private void vS() {
        if (getCompletedTaskCount() > this.sP) {
            HiB hiBSj = TKC.Sj();
            if (hiBSj != null) {
                hiBSj.Sj(this);
            }
            this.sP = -1;
        }
    }

    public LinkedHashMap<String, com.bytedance.sdk.component.Dq.TKC.Sj.Sj> Sj() {
        return this.Dq;
    }

    public void Sj(Sj sj2) {
        try {
            if (sj2.sP >= 0 && this.EjP != sj2.sP) {
                int i11 = sj2.sP;
                this.EjP = i11;
                setCorePoolSize(i11);
            }
            this.HiB = sj2.TKC;
            this.vS = sj2.EjP;
            allowCoreThreadTimeOut(sj2.vS);
            this.sP = sj2.Dq;
            this.TKC = sj2.uA;
            this.Jcg = sj2.TEQ;
        } catch (Throwable th2) {
            th2.getMessage();
        }
        String unused = sj2.Sj;
        int unused2 = sj2.sP;
        int unused3 = sj2.TKC;
        long unused4 = sj2.HiB;
        int unused5 = sj2.EjP;
        int unused6 = sj2.uA;
        boolean unused7 = sj2.TEQ;
        BlockingQueue unused8 = sj2.Ym;
    }

    public boolean TKC() {
        return this.Jcg;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void afterExecute(Runnable runnable, Throwable th2) {
        boolean z10 = runnable instanceof sP;
        if (z10) {
            ((sP) runnable).TKC(SystemClock.elapsedRealtime());
            try {
                if (Jcg() && this.Dq != null) {
                    Sj((sP) runnable);
                    vS();
                }
            } catch (Exception e11) {
                e11.getMessage();
            }
        }
        super.afterExecute(runnable, th2);
        if (z10) {
            sP sPVar = (sP) runnable;
            sPVar.sP();
            sPVar.Sj();
            sPVar.TKC();
            sPVar.EjP();
            sPVar.HiB();
        }
        HiB();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void beforeExecute(Thread thread, Runnable runnable) {
        if (runnable instanceof sP) {
            ((sP) runnable).sP(SystemClock.elapsedRealtime());
        }
        super.beforeExecute(thread, runnable);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        com.bytedance.sdk.component.Dq.TKC.Sj sjSP;
        if (!(runnable instanceof sP)) {
            runnable = new sP(TmcConstants.ROUTE_UNKNOWN, runnable) { // from class: com.bytedance.sdk.component.Dq.TKC.vS.3
                @Override // java.lang.Runnable
                public void run() {
                    Runnable runnableDq = Dq();
                    if (runnableDq != null) {
                        runnableDq.run();
                    }
                }
            };
        }
        if (!"cache".equals(this.Sj)) {
            String name = Thread.currentThread().getName();
            if (!TextUtils.isEmpty(name) && name.startsWith(EjP.Sj(this.Sj)) && (sjSP = TKC.sP()) != null) {
                sjSP.Sj(this, (sP) runnable);
            }
        }
        ((sP) runnable).Sj(SystemClock.elapsedRealtime());
        try {
            super.execute(runnable);
            EjP();
        } catch (Throwable th2) {
            Sj(runnable, th2);
        }
    }

    public String sP() {
        return this.Sj;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public void shutdown() {
        if ("aidl".equals(this.Sj)) {
            return;
        }
        super.shutdown();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        return "aidl".equals(this.Sj) ? Collections.emptyList() : super.shutdownNow();
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        int iSj;
        String strSP;
        runnable.getClass();
        final RunnableFuture runnableFutureNewTaskFor = newTaskFor(runnable, null);
        if (runnable instanceof sP) {
            sP sPVar = (sP) runnable;
            iSj = sPVar.Sj();
            strSP = sPVar.sP();
        } else {
            iSj = 6;
            strSP = "";
        }
        if (iSj == 0 || TextUtils.isEmpty(strSP)) {
            new RuntimeException();
        }
        execute(new sP(iSj, strSP) { // from class: com.bytedance.sdk.component.Dq.TKC.vS.2
            @Override // java.lang.Runnable
            public void run() {
                runnableFutureNewTaskFor.run();
            }
        });
        return runnableFutureNewTaskFor;
    }
}
