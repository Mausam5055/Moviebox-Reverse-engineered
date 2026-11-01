package com.bytedance.sdk.component.Dq;

import com.cloud.tmc.ad.utils.CommonLogUtil;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class vS extends HiB {
    private static volatile ThreadPoolExecutor Dq;
    private static volatile ThreadPoolExecutor HiB;
    private static volatile ThreadPoolExecutor Jcg;
    private static volatile ThreadPoolExecutor TEQ;
    private static volatile ScheduledExecutorService Ym;
    public static TKC sP;
    private static volatile ThreadPoolExecutor uA;
    private static volatile ThreadPoolExecutor vS;
    public static final int Sj = Runtime.getRuntime().availableProcessors();
    public static int TKC = 120;
    public static boolean EjP = true;

    public static RejectedExecutionHandler Dq() {
        return new RejectedExecutionHandler() { // from class: com.bytedance.sdk.component.Dq.vS.1
            @Override // java.util.concurrent.RejectedExecutionHandler
            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            }
        };
    }

    public static ExecutorService EjP() {
        if (Dq == null) {
            synchronized (vS.class) {
                try {
                    if (Dq == null) {
                        Sj Sj2 = new Sj.C0210Sj().Sj("log").sP(10).Sj(4).Sj(20L).Sj(TimeUnit.SECONDS).Sj(new PriorityBlockingQueue()).Sj(Dq()).Sj(HiB.Sj().createThreadFactory(10, "log")).Sj();
                        Dq = Sj2;
                        Sj2.allowCoreThreadTimeOut(true);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Dq;
    }

    public static void EjP(Dq dq2) {
        if (TEQ == null) {
            HiB();
        }
        if (dq2 == null || TEQ == null) {
            return;
        }
        TEQ.execute(dq2);
    }

    public static ExecutorService HiB() {
        if (TEQ == null) {
            synchronized (vS.class) {
                try {
                    if (TEQ == null) {
                        Sj Sj2 = new Sj.C0210Sj().Sj("aidl").sP(10).Sj(2).Sj(30L).Sj(TimeUnit.SECONDS).Sj(new PriorityBlockingQueue()).Sj(Dq()).Sj(HiB.Sj().createThreadFactory(10, "aidl")).Sj();
                        TEQ = Sj2;
                        Sj2.allowCoreThreadTimeOut(true);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return TEQ;
    }

    public static void HiB(Dq dq2) {
        if (Jcg == null) {
            sP(5);
        }
        if (dq2 == null || Jcg == null) {
            return;
        }
        Jcg.execute(dq2);
    }

    public static boolean Jcg() {
        return EjP;
    }

    public static ExecutorService Sj(int i11) {
        if (vS == null) {
            synchronized (vS.class) {
                try {
                    if (vS == null) {
                        Sj Sj2 = new Sj.C0210Sj().Sj("io").Sj(2).sP(i11).Sj(20L).Sj(TimeUnit.SECONDS).Sj(new LinkedBlockingQueue()).Sj(Dq()).Sj(HiB.Sj().createThreadFactory(i11, "io")).Sj();
                        vS = Sj2;
                        Sj2.allowCoreThreadTimeOut(true);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return vS;
    }

    public static void Sj(Dq dq2) {
        if (HiB == null) {
            sP();
        }
        if (dq2 == null || HiB == null) {
            return;
        }
        HiB.execute(dq2);
    }

    public static void Sj(Dq dq2, int i11) {
        sP(dq2);
    }

    public static void Sj(Dq dq2, int i11, int i12) {
        if (vS == null) {
            Sj(i12);
        }
        if (dq2 == null || vS == null) {
            return;
        }
        dq2.setPriority(i11);
        vS.execute(dq2);
    }

    public static void Sj(TKC tkc) {
        sP = tkc;
    }

    public static void Sj(boolean z10) {
        EjP = z10;
    }

    public static ExecutorService TEQ() {
        if (uA == null) {
            synchronized (vS.class) {
                try {
                    if (uA == null) {
                        Sj Sj2 = new Sj.C0210Sj().Sj("computation").Sj(3).sP(10).Sj(20L).Sj(TimeUnit.SECONDS).Sj(new PriorityBlockingQueue()).Sj(Dq()).Sj(HiB.Sj().createThreadFactory(10, "computation")).Sj();
                        uA = Sj2;
                        Sj2.allowCoreThreadTimeOut(true);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return uA;
    }

    public static ExecutorService TKC() {
        return Sj(10);
    }

    public static void TKC(int i11) {
        TKC = i11;
    }

    public static void TKC(Dq dq2) {
        if (Dq == null) {
            EjP();
        }
        if (dq2 == null || Dq == null) {
            return;
        }
        Dq.execute(dq2);
    }

    public static void TKC(Dq dq2, int i11) {
        if (dq2 != null) {
            dq2.setPriority(i11);
        }
        EjP(dq2);
    }

    public static ExecutorService sP() {
        if (HiB == null) {
            synchronized (vS.class) {
                try {
                    if (HiB == null) {
                        HiB = new Sj.C0210Sj().Sj("init").Sj(0).sP(10).Sj(5L).Sj(TimeUnit.SECONDS).Sj(new SynchronousQueue()).Sj(Dq()).Sj(HiB.Sj().createThreadFactory(10, "init")).Sj();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return HiB;
    }

    public static ExecutorService sP(int i11) {
        if (Jcg == null) {
            synchronized (vS.class) {
                try {
                    if (Jcg == null) {
                        Sj Sj2 = new Sj.C0210Sj().Sj(CommonLogUtil.TAG_AD).Sj(2).sP(i11).Sj(20L).Sj(TimeUnit.SECONDS).Sj(new LinkedBlockingQueue()).Sj(Dq()).Sj(HiB.Sj().createThreadFactory(i11, CommonLogUtil.TAG_AD)).Sj();
                        Jcg = Sj2;
                        Sj2.allowCoreThreadTimeOut(true);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Jcg;
    }

    public static void sP(Dq dq2) {
        if (vS == null) {
            TKC();
        }
        if (vS != null) {
            vS.execute(dq2);
        }
    }

    public static void sP(Dq dq2, int i11) {
        if (dq2 != null) {
            dq2.setPriority(i11);
        }
        TKC(dq2);
    }

    public static TKC uA() {
        return sP;
    }

    public static ScheduledExecutorService vS() {
        if (Ym == null) {
            synchronized (vS.class) {
                try {
                    if (Ym == null) {
                        Ym = Executors.newSingleThreadScheduledExecutor(HiB.Sj().createThreadFactory(5, "scheduled"));
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Ym;
    }
}
