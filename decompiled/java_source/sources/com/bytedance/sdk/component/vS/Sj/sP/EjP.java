package com.bytedance.sdk.component.vS.Sj.sP;

import android.os.Handler;
import android.os.Looper;
import com.bytedance.sdk.component.vS.Sj.Dq;
import com.bytedance.sdk.component.vS.Sj.HiB;
import java.util.Comparator;
import java.util.concurrent.Executor;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
public class EjP {
    private volatile Handler TEQ;
    private final Comparator<com.bytedance.sdk.component.vS.Sj.EjP.Sj> Ym;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private final PriorityBlockingQueue<com.bytedance.sdk.component.vS.Sj.EjP.Sj> f20921aa;
    private volatile com.bytedance.sdk.component.vS.Sj.sP.TKC.TKC uA;
    public static final EjP Sj = new EjP();
    public static final com.bytedance.sdk.component.vS.Sj.sP.Sj.Sj EjP = new com.bytedance.sdk.component.vS.Sj.sP.Sj.Sj();
    public static final AtomicLong HiB = new AtomicLong(0);
    public static final AtomicLong vS = new AtomicLong(0);
    public static final long Jcg = System.currentTimeMillis();
    public static long Dq = 0;
    public volatile boolean sP = false;
    public volatile boolean TKC = false;

    private EjP() {
        Comparator<com.bytedance.sdk.component.vS.Sj.EjP.Sj> comparator = new Comparator<com.bytedance.sdk.component.vS.Sj.EjP.Sj>() { // from class: com.bytedance.sdk.component.vS.Sj.sP.EjP.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
            public int compare(com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2, com.bytedance.sdk.component.vS.Sj.EjP.Sj sj3) {
                return EjP.this.Sj(sj2, sj3);
            }
        };
        this.Ym = comparator;
        this.f20921aa = new PriorityBlockingQueue<>(8, comparator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int Sj(com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2, com.bytedance.sdk.component.vS.Sj.EjP.Sj sj3) {
        long jSj;
        long jSP;
        long jSP2;
        long jSj2;
        if (sj2 == null) {
            return sj3 == null ? 0 : -1;
        }
        if (sj3 == null) {
            return 1;
        }
        if (sj2.HiB() != sj3.HiB()) {
            return sj2.HiB() - sj3.HiB();
        }
        if (sj2.Sj() != null) {
            jSj = sj2.Sj().Sj();
            jSP = sj2.Sj().sP();
        } else {
            jSj = 0;
            jSP = 0;
        }
        if (sj3.Sj() != null) {
            jSj2 = sj3.Sj().Sj();
            jSP2 = sj3.Sj().sP();
        } else {
            jSP2 = 0;
            jSj2 = 0;
        }
        if (jSj == 0 || jSj2 == 0) {
            return 0;
        }
        long j11 = jSj - jSj2;
        if (Math.abs(j11) > 2147483647L) {
            return 0;
        }
        if (j11 != 0) {
            return (int) j11;
        }
        if (jSP == 0 || jSP2 == 0) {
            return 0;
        }
        return (int) (jSP - jSP2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(HiB hiB, long j11) {
        com.bytedance.sdk.component.vS.Sj.sP.TKC.TKC tkc = this.uA;
        if (hiB == null || tkc == null) {
            return;
        }
        com.bytedance.sdk.component.vS.Sj.sP.Sj.Sj sj2 = EjP;
        tkc.Sj(hiB.Sj(sj2.sP(j11)), true);
        sj2.xhi();
    }

    private void Sj(final HiB hiB, com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2) {
        if (hiB != null) {
            try {
                if (hiB.Jcg()) {
                    final long jSP = (sj2 == null || sj2.Sj() == null) ? 0L : sj2.Sj().sP();
                    if (jSP == 1) {
                        Dq = System.currentTimeMillis();
                    }
                    AtomicLong atomicLongGY = EjP.gY();
                    com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(atomicLongGY, 1);
                    if (atomicLongGY.get() == 200) {
                        if (Looper.getMainLooper() != Looper.myLooper()) {
                            Sj(hiB, jSP);
                            return;
                        }
                        Executor executorEjP = hiB.EjP();
                        if (executorEjP == null) {
                            executorEjP = hiB.HiB();
                        }
                        if (executorEjP != null) {
                            executorEjP.execute(new com.bytedance.sdk.component.vS.Sj.HiB.HiB("report") { // from class: com.bytedance.sdk.component.vS.Sj.sP.EjP.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    EjP.this.Sj(hiB, jSP);
                                }
                            });
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public boolean EjP() {
        try {
            if (this.uA != null || com.bytedance.sdk.component.vS.Sj.sP.sP()) {
                return false;
            }
            synchronized (this) {
                if (this.uA != null) {
                    return false;
                }
                this.uA = new com.bytedance.sdk.component.vS.Sj.sP.TKC.TKC(this.f20921aa);
                this.uA.start();
                return true;
            }
        } catch (Throwable th2) {
            th2.getMessage();
            return false;
        }
    }

    public void HiB() {
        com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(EjP.Mts(), 1);
        final com.bytedance.sdk.component.vS.Sj.sP.TKC.TKC tkc = this.uA;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            if (tkc != null) {
                tkc.TKC(2);
                return;
            }
            return;
        }
        HiB hiBUvD = Dq.Jcg().uvD();
        if (hiBUvD != null) {
            Executor executorEjP = hiBUvD.EjP();
            if (executorEjP == null) {
                executorEjP = hiBUvD.HiB();
            }
            if (executorEjP != null) {
                executorEjP.execute(new com.bytedance.sdk.component.vS.Sj.HiB.HiB("flush") { // from class: com.bytedance.sdk.component.vS.Sj.sP.EjP.3
                    @Override // java.lang.Runnable
                    public void run() {
                        com.bytedance.sdk.component.vS.Sj.sP.TKC.TKC tkc2 = tkc;
                        if (tkc2 != null) {
                            tkc2.TKC(2);
                        }
                    }
                });
            }
        }
    }

    public PriorityBlockingQueue<com.bytedance.sdk.component.vS.Sj.EjP.Sj> Sj() {
        return this.f20921aa;
    }

    public void Sj(Handler handler) {
        this.TEQ = handler;
    }

    public void Sj(com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2, int i11) {
        EjP();
        HiB hiBUvD = Dq.Jcg().uvD();
        com.bytedance.sdk.component.vS.Sj.sP.TKC.TKC tkc = this.uA;
        if (tkc != null) {
            Sj(hiBUvD, sj2);
            tkc.Sj(sj2, sj2.HiB() == 4);
        }
    }

    public void TKC() {
        if (this.uA == null || !this.uA.isAlive()) {
            return;
        }
        synchronized (this) {
            try {
                if (this.uA != null && this.uA.isAlive()) {
                    if (this.TEQ != null) {
                        this.TEQ.removeCallbacksAndMessages(null);
                    }
                    this.uA.Sj(false);
                    this.uA.quitSafely();
                    this.uA = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void sP() {
        EjP();
        HiB();
    }
}
