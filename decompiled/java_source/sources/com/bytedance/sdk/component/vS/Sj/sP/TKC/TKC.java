package com.bytedance.sdk.component.vS.Sj.sP.TKC;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.bytedance.sdk.component.vS.Sj.Dq;
import com.bytedance.sdk.component.vS.Sj.HiB;
import com.bytedance.sdk.component.vS.Sj.Sj.EjP;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TKC extends HandlerThread implements Handler.Callback {
    private static int RiZ = 200;
    private static int dNu = 10;
    private volatile long Dq;
    private com.bytedance.sdk.component.vS.Sj.sP.TKC EjP;
    private volatile Handler Fmk;
    private final PriorityBlockingQueue<com.bytedance.sdk.component.vS.Sj.EjP.Sj> HiB;
    private volatile long Jcg;
    protected EjP Sj;
    private final long TEQ;
    private final Object TKC;
    private long TzV;
    private final long Ym;
    private final AtomicInteger Zq;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private final AtomicInteger f20928aa;

    /* JADX INFO: renamed from: dx, reason: collision with root package name */
    private final int f20929dx;
    private volatile boolean sP;
    private final int sU;
    private final List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> sef;
    private final AtomicInteger uA;
    private final AtomicInteger uvD;
    private volatile int vS;
    private final int zR;

    public TKC(PriorityBlockingQueue<com.bytedance.sdk.component.vS.Sj.EjP.Sj> priorityBlockingQueue) {
        super("csj_log");
        this.sP = true;
        this.TKC = new Object();
        this.Jcg = 0L;
        this.Dq = 0L;
        this.uA = new AtomicInteger(0);
        this.TEQ = 5000L;
        this.Ym = 5000000000L;
        this.f20928aa = new AtomicInteger(0);
        this.sef = new ArrayList();
        this.Zq = new AtomicInteger(0);
        this.uvD = new AtomicInteger(0);
        this.TzV = 60000L;
        this.sU = 1;
        this.f20929dx = 2;
        this.zR = 3;
        this.HiB = priorityBlockingQueue;
        this.Sj = new com.bytedance.sdk.component.vS.Sj.Sj.sP();
        if (com.bytedance.sdk.component.vS.Sj.sP.sP()) {
            return;
        }
        long jZq = Dq.Jcg().uvD().Zq();
        if (jZq > 0) {
            this.TzV = jZq;
        }
    }

    private boolean Dq() {
        if (com.bytedance.sdk.component.vS.Sj.sP.EjP.Sj.sP) {
            return this.vS == 4 || this.vS == 7 || this.vS == 6 || this.vS == 5 || this.vS == 2;
        }
        return false;
    }

    private void EjP() {
        if (!isAlive()) {
            com.bytedance.sdk.component.vS.Sj.sP.EjP.Sj.EjP();
        } else {
            if (Sj()) {
                return;
            }
            TKC(6);
        }
    }

    private boolean EjP(int i11) {
        if (i11 < 4 || this.f20928aa.get() != 0) {
            return false;
        }
        com.bytedance.sdk.component.vS.Sj.sP.EjP ejP = com.bytedance.sdk.component.vS.Sj.sP.EjP.Sj;
        return (ejP.sP || ejP.TKC) ? false : true;
    }

    private void HiB() {
        while (Sj()) {
            try {
                com.bytedance.sdk.component.vS.Sj.sP.Sj.Sj sj2 = com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP;
                com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(sj2.Dq(), 1);
                com.bytedance.sdk.component.vS.Sj.EjP.Sj sjPoll = this.HiB.poll(this.TzV, TimeUnit.MILLISECONDS);
                int size = this.HiB.size();
                if (sjPoll instanceof com.bytedance.sdk.component.vS.Sj.EjP.sP) {
                    Sj(sjPoll, size);
                } else if (sjPoll == null) {
                    int iIncrementAndGet = this.uA.incrementAndGet();
                    com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(sj2.HpB(), 1);
                    if (EjP(iIncrementAndGet)) {
                        vS();
                        return;
                    } else if (iIncrementAndGet < 4) {
                        this.vS = 1;
                        sP((com.bytedance.sdk.component.vS.Sj.EjP.Sj) null);
                    }
                } else {
                    Sj(sjPoll);
                    sP(sjPoll);
                }
            } catch (Throwable th2) {
                th2.getMessage();
                com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.xD(), 1);
            }
        }
    }

    private void HiB(int i11) {
        if (Sj()) {
            com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.Sj(), 1);
            return;
        }
        if (this.Fmk == null) {
            return;
        }
        com.bytedance.sdk.component.vS.Sj.sP.Sj.Sj sj2 = com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP;
        com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(sj2.TKC(), 1);
        if (this.Fmk.hasMessages(1)) {
            return;
        }
        if (i11 == 1) {
            com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(sj2.vS(), 1);
        } else if (i11 == 2) {
            com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(sj2.EjP(), 1);
        } else if (i11 == 3) {
            com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(sj2.HiB(), 1);
        }
        this.Fmk.sendEmptyMessage(1);
    }

    private void Jcg() {
        if (this.HiB.size() >= 100) {
            for (int i11 = 0; i11 < 100; i11++) {
                com.bytedance.sdk.component.vS.Sj.EjP.Sj sjPoll = this.HiB.poll();
                if (!(sjPoll instanceof com.bytedance.sdk.component.vS.Sj.EjP.sP) && sjPoll != null) {
                    Sj(sjPoll);
                }
            }
        }
    }

    public static void Sj(int i11) {
        dNu = i11;
    }

    /* JADX WARN: Code duplicated, block: B:32:0x006a A[Catch: all -> 0x0040, TryCatch #0 {all -> 0x0040, blocks: (B:5:0x0005, B:8:0x000b, B:55:0x00e4, B:57:0x00e8, B:58:0x00ed, B:18:0x0030, B:20:0x003e, B:24:0x0043, B:26:0x0050, B:28:0x0052, B:30:0x0060, B:31:0x0065, B:32:0x006a, B:34:0x0070, B:36:0x0074, B:38:0x0080, B:39:0x0085, B:41:0x008d, B:42:0x0092, B:43:0x00af, B:45:0x00bd, B:47:0x00bf, B:49:0x00cc, B:51:0x00ce, B:53:0x00dc, B:54:0x00e1, B:61:0x00f4), top: B:65:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:36:0x0074 A[Catch: all -> 0x0040, TryCatch #0 {all -> 0x0040, blocks: (B:5:0x0005, B:8:0x000b, B:55:0x00e4, B:57:0x00e8, B:58:0x00ed, B:18:0x0030, B:20:0x003e, B:24:0x0043, B:26:0x0050, B:28:0x0052, B:30:0x0060, B:31:0x0065, B:32:0x006a, B:34:0x0070, B:36:0x0074, B:38:0x0080, B:39:0x0085, B:41:0x008d, B:42:0x0092, B:43:0x00af, B:45:0x00bd, B:47:0x00bf, B:49:0x00cc, B:51:0x00ce, B:53:0x00dc, B:54:0x00e1, B:61:0x00f4), top: B:65:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x0080 A[Catch: all -> 0x0040, TryCatch #0 {all -> 0x0040, blocks: (B:5:0x0005, B:8:0x000b, B:55:0x00e4, B:57:0x00e8, B:58:0x00ed, B:18:0x0030, B:20:0x003e, B:24:0x0043, B:26:0x0050, B:28:0x0052, B:30:0x0060, B:31:0x0065, B:32:0x006a, B:34:0x0070, B:36:0x0074, B:38:0x0080, B:39:0x0085, B:41:0x008d, B:42:0x0092, B:43:0x00af, B:45:0x00bd, B:47:0x00bf, B:49:0x00cc, B:51:0x00ce, B:53:0x00dc, B:54:0x00e1, B:61:0x00f4), top: B:65:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:41:0x008d A[Catch: all -> 0x0040, TryCatch #0 {all -> 0x0040, blocks: (B:5:0x0005, B:8:0x000b, B:55:0x00e4, B:57:0x00e8, B:58:0x00ed, B:18:0x0030, B:20:0x003e, B:24:0x0043, B:26:0x0050, B:28:0x0052, B:30:0x0060, B:31:0x0065, B:32:0x006a, B:34:0x0070, B:36:0x0074, B:38:0x0080, B:39:0x0085, B:41:0x008d, B:42:0x0092, B:43:0x00af, B:45:0x00bd, B:47:0x00bf, B:49:0x00cc, B:51:0x00ce, B:53:0x00dc, B:54:0x00e1, B:61:0x00f4), top: B:65:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00af A[Catch: all -> 0x0040, TryCatch #0 {all -> 0x0040, blocks: (B:5:0x0005, B:8:0x000b, B:55:0x00e4, B:57:0x00e8, B:58:0x00ed, B:18:0x0030, B:20:0x003e, B:24:0x0043, B:26:0x0050, B:28:0x0052, B:30:0x0060, B:31:0x0065, B:32:0x006a, B:34:0x0070, B:36:0x0074, B:38:0x0080, B:39:0x0085, B:41:0x008d, B:42:0x0092, B:43:0x00af, B:45:0x00bd, B:47:0x00bf, B:49:0x00cc, B:51:0x00ce, B:53:0x00dc, B:54:0x00e1, B:61:0x00f4), top: B:65:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00bd A[Catch: all -> 0x0040, DONT_GENERATE, TryCatch #0 {all -> 0x0040, blocks: (B:5:0x0005, B:8:0x000b, B:55:0x00e4, B:57:0x00e8, B:58:0x00ed, B:18:0x0030, B:20:0x003e, B:24:0x0043, B:26:0x0050, B:28:0x0052, B:30:0x0060, B:31:0x0065, B:32:0x006a, B:34:0x0070, B:36:0x0074, B:38:0x0080, B:39:0x0085, B:41:0x008d, B:42:0x0092, B:43:0x00af, B:45:0x00bd, B:47:0x00bf, B:49:0x00cc, B:51:0x00ce, B:53:0x00dc, B:54:0x00e1, B:61:0x00f4), top: B:65:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00bf A[Catch: all -> 0x0040, TryCatch #0 {all -> 0x0040, blocks: (B:5:0x0005, B:8:0x000b, B:55:0x00e4, B:57:0x00e8, B:58:0x00ed, B:18:0x0030, B:20:0x003e, B:24:0x0043, B:26:0x0050, B:28:0x0052, B:30:0x0060, B:31:0x0065, B:32:0x006a, B:34:0x0070, B:36:0x0074, B:38:0x0080, B:39:0x0085, B:41:0x008d, B:42:0x0092, B:43:0x00af, B:45:0x00bd, B:47:0x00bf, B:49:0x00cc, B:51:0x00ce, B:53:0x00dc, B:54:0x00e1, B:61:0x00f4), top: B:65:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00cc A[Catch: all -> 0x0040, DONT_GENERATE, TryCatch #0 {all -> 0x0040, blocks: (B:5:0x0005, B:8:0x000b, B:55:0x00e4, B:57:0x00e8, B:58:0x00ed, B:18:0x0030, B:20:0x003e, B:24:0x0043, B:26:0x0050, B:28:0x0052, B:30:0x0060, B:31:0x0065, B:32:0x006a, B:34:0x0070, B:36:0x0074, B:38:0x0080, B:39:0x0085, B:41:0x008d, B:42:0x0092, B:43:0x00af, B:45:0x00bd, B:47:0x00bf, B:49:0x00cc, B:51:0x00ce, B:53:0x00dc, B:54:0x00e1, B:61:0x00f4), top: B:65:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00ce A[Catch: all -> 0x0040, TryCatch #0 {all -> 0x0040, blocks: (B:5:0x0005, B:8:0x000b, B:55:0x00e4, B:57:0x00e8, B:58:0x00ed, B:18:0x0030, B:20:0x003e, B:24:0x0043, B:26:0x0050, B:28:0x0052, B:30:0x0060, B:31:0x0065, B:32:0x006a, B:34:0x0070, B:36:0x0074, B:38:0x0080, B:39:0x0085, B:41:0x008d, B:42:0x0092, B:43:0x00af, B:45:0x00bd, B:47:0x00bf, B:49:0x00cc, B:51:0x00ce, B:53:0x00dc, B:54:0x00e1, B:61:0x00f4), top: B:65:0x0005 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00dc A[Catch: all -> 0x0040, TryCatch #0 {all -> 0x0040, blocks: (B:5:0x0005, B:8:0x000b, B:55:0x00e4, B:57:0x00e8, B:58:0x00ed, B:18:0x0030, B:20:0x003e, B:24:0x0043, B:26:0x0050, B:28:0x0052, B:30:0x0060, B:31:0x0065, B:32:0x006a, B:34:0x0070, B:36:0x0074, B:38:0x0080, B:39:0x0085, B:41:0x008d, B:42:0x0092, B:43:0x00af, B:45:0x00bd, B:47:0x00bf, B:49:0x00cc, B:51:0x00ce, B:53:0x00dc, B:54:0x00e1, B:61:0x00f4), top: B:65:0x0005 }] */
    private void Sj(int i11, List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list, long j11) {
        com.bytedance.sdk.component.vS.Sj.sP.EjP ejP;
        synchronized (this.TKC) {
            if (list != null) {
                try {
                    if (this.Fmk != null) {
                        com.bytedance.sdk.component.vS.Sj.TKC.Sj.Sj(i11, list, j11);
                        this.Sj.Sj(i11, list);
                        Dq.Jcg().uvD();
                        if (i11 == -2) {
                            com.bytedance.sdk.component.vS.Sj.sP.EjP ejP2 = com.bytedance.sdk.component.vS.Sj.sP.EjP.Sj;
                            ejP2.sP = false;
                            ejP2.TKC = true;
                            if (this.Fmk.hasMessages(3)) {
                                return;
                            }
                            if (System.currentTimeMillis() - this.Dq < MBInterstitialActivity.WEB_LOAD_TIME) {
                                return;
                            }
                            this.Dq = System.currentTimeMillis();
                            if (this.Fmk.hasMessages(2)) {
                                this.Fmk.removeMessages(2);
                            }
                            Sj(3, MBInterstitialActivity.WEB_LOAD_TIME);
                        } else if (i11 == -1) {
                            ejP = com.bytedance.sdk.component.vS.Sj.sP.EjP.Sj;
                            if (ejP.sP || ejP.TKC) {
                                ejP.sP = false;
                                ejP.TKC = false;
                                if (this.Fmk.hasMessages(2)) {
                                    this.Fmk.removeMessages(2);
                                }
                                if (this.Fmk.hasMessages(3)) {
                                    this.Fmk.removeMessages(3);
                                }
                                this.Dq = 0L;
                                this.Jcg = 0L;
                                this.Zq.set(0);
                                this.uvD.set(0);
                                com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.Fm(), 1);
                                TKC(2);
                            }
                        } else if (i11 == 0) {
                            com.bytedance.sdk.component.vS.Sj.sP.EjP ejP3 = com.bytedance.sdk.component.vS.Sj.sP.EjP.Sj;
                            ejP3.sP = false;
                            ejP3.TKC = true;
                            if (this.Fmk.hasMessages(3)) {
                                return;
                            }
                            if (System.currentTimeMillis() - this.Dq < MBInterstitialActivity.WEB_LOAD_TIME) {
                                return;
                            }
                            this.Dq = System.currentTimeMillis();
                            if (this.Fmk.hasMessages(2)) {
                                this.Fmk.removeMessages(2);
                            }
                            Sj(3, MBInterstitialActivity.WEB_LOAD_TIME);
                        } else if (i11 == 200) {
                            ejP = com.bytedance.sdk.component.vS.Sj.sP.EjP.Sj;
                            if (ejP.sP) {
                                ejP.sP = false;
                                ejP.TKC = false;
                                if (this.Fmk.hasMessages(2)) {
                                    this.Fmk.removeMessages(2);
                                }
                                if (this.Fmk.hasMessages(3)) {
                                    this.Fmk.removeMessages(3);
                                }
                                this.Dq = 0L;
                                this.Jcg = 0L;
                                this.Zq.set(0);
                                this.uvD.set(0);
                                com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.Fm(), 1);
                                TKC(2);
                            } else {
                                ejP.sP = false;
                                ejP.TKC = false;
                                if (this.Fmk.hasMessages(2)) {
                                    this.Fmk.removeMessages(2);
                                }
                                if (this.Fmk.hasMessages(3)) {
                                    this.Fmk.removeMessages(3);
                                }
                                this.Dq = 0L;
                                this.Jcg = 0L;
                                this.Zq.set(0);
                                this.uvD.set(0);
                                com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.Fm(), 1);
                                TKC(2);
                            }
                        } else if (i11 == 509) {
                            com.bytedance.sdk.component.vS.Sj.sP.EjP ejP4 = com.bytedance.sdk.component.vS.Sj.sP.EjP.Sj;
                            ejP4.sP = true;
                            ejP4.TKC = false;
                            if (this.Fmk.hasMessages(2)) {
                                return;
                            }
                            if (System.currentTimeMillis() - this.Jcg < 30000) {
                                return;
                            }
                            this.Jcg = System.currentTimeMillis();
                            if (this.Fmk.hasMessages(3)) {
                                this.Fmk.removeMessages(3);
                            }
                            Sj(2, 30000L);
                        }
                        if (this.vS == 2) {
                            this.TKC.notify();
                        }
                        this.HiB.size();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private void Sj(com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2) {
        this.uA.set(0);
        com.bytedance.sdk.component.vS.Sj.sP.EjP ejP = com.bytedance.sdk.component.vS.Sj.sP.EjP.Sj;
        if (ejP.sP) {
            this.vS = 5;
        } else if (ejP.TKC) {
            this.vS = 7;
        } else {
            this.vS = 4;
        }
        com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.dwU(), 1);
        this.Sj.Sj(sj2, this.vS);
        com.bytedance.sdk.component.vS.Sj.TKC.Sj.Jcg(sj2);
    }

    private void Sj(com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2, int i11) {
        this.uA.set(0);
        if (i11 == 0) {
            this.vS = ((com.bytedance.sdk.component.vS.Sj.EjP.sP) sj2).Ym();
            if (this.vS != 6) {
                com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.Ei(), 1);
                sP(sj2);
                return;
            }
            return;
        }
        com.bytedance.sdk.component.vS.Sj.EjP.sP sPVar = (com.bytedance.sdk.component.vS.Sj.EjP.sP) sj2;
        if (sPVar.Ym() == 1) {
            this.vS = 1;
            sP(sj2);
        } else if (sPVar.Ym() == 2) {
            Jcg();
            this.vS = 2;
            sP(sj2);
        }
    }

    private void Sj(sP sPVar, List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list) {
        if (sPVar == null || !sPVar.Sj) {
            return;
        }
        List<Object> listSj = com.bytedance.sdk.component.vS.Sj.sP.Sj();
        if (list == null || listSj == null || listSj.size() == 0) {
            return;
        }
        for (com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2 : list) {
            if (sj2.HiB() == 1) {
                com.bytedance.sdk.component.vS.Sj.TKC.Sj.Sj(sj2);
                com.bytedance.sdk.component.vS.Sj.TKC.Sj.HiB(sj2);
                Iterator<Object> it = listSj.iterator();
                while (it.hasNext()) {
                    it.next();
                }
            }
        }
    }

    private void Sj(String str) {
        if (this.Fmk.hasMessages(11)) {
            this.Fmk.removeMessages(11);
        }
        if (this.sef.size() != 0) {
            ArrayList arrayList = new ArrayList(this.sef);
            this.sef.clear();
            Sj((List<com.bytedance.sdk.component.vS.Sj.EjP.Sj>) arrayList, false, "before_".concat(String.valueOf(str)));
            TEQ();
            arrayList.size();
        }
    }

    private void Sj(List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list) {
        if (list.size() == 0) {
            uA();
            return;
        }
        com.bytedance.sdk.component.vS.Sj.TKC.Sj.Sj(list, this.HiB.size());
        if (list.size() > 1 || com.bytedance.sdk.component.vS.Sj.TKC.Sj.TKC()) {
            Sj(list, "batchRead");
            return;
        }
        com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2 = list.get(0);
        if (sj2 != null) {
            if (sj2.HiB() == 1) {
                Sj(list, "highPriority");
                return;
            }
            if (sj2.EjP() == 0 && sj2.HiB() == 2) {
                if (sj2.sP() == 3) {
                    Sj(list, "version_v3");
                    return;
                } else {
                    sP(list);
                    return;
                }
            }
            if (sj2.EjP() == 1) {
                Sj(list, "stats");
            } else if (sj2.EjP() == 3) {
                Sj(list, "adType_v3");
            } else if (sj2.EjP() == 2) {
                Sj(list, OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER);
            }
        }
    }

    private void Sj(List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list, String str) {
        Sj(str);
        Sj(list, false, str);
        TEQ();
    }

    private void Sj(final List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list, final boolean z10, final long j11) {
        HiB hiBUvD = Dq.Jcg().uvD();
        if (hiBUvD != null) {
            Executor executorHiB = hiBUvD.HiB();
            if (list.get(0).HiB() == 1) {
                executorHiB = hiBUvD.EjP();
            }
            if (executorHiB == null) {
                return;
            }
            this.f20928aa.incrementAndGet();
            executorHiB.execute(new com.bytedance.sdk.component.vS.Sj.HiB.HiB("csj_log_upload") { // from class: com.bytedance.sdk.component.vS.Sj.sP.TKC.TKC.1
                @Override // java.lang.Runnable
                public void run() {
                    TKC tkc = TKC.this;
                    tkc.Sj((List<com.bytedance.sdk.component.vS.Sj.EjP.Sj>) list, z10, j11, tkc.vS);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list, boolean z10, long j11, int i11) {
        sP sPVarSj;
        try {
            com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2 = list.get(0);
            com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.aNB(), 1);
            if (sj2.EjP() == 0) {
                sPVarSj = Dq.HiB().Sj(list);
                Sj(sPVarSj, list);
                if (sPVarSj != null) {
                    com.bytedance.sdk.component.vS.Sj.TKC.Sj.Sj(list, sPVarSj.EjP);
                }
            } else {
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONArray jSONArray = new JSONArray();
                    Iterator<com.bytedance.sdk.component.vS.Sj.EjP.Sj> it = list.iterator();
                    while (it.hasNext()) {
                        jSONArray.put(it.next().Jcg());
                    }
                    jSONObject.put("stats_list", jSONArray);
                } catch (Exception e11) {
                    e11.getMessage();
                }
                sPVarSj = Dq.HiB().Sj(jSONObject);
            }
            sP sPVar = sPVarSj;
            this.f20928aa.decrementAndGet();
            Sj(z10, sPVar, list, j11);
        } catch (Throwable th2) {
            th2.getMessage();
            com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.xD(), 1);
            this.f20928aa.decrementAndGet();
        }
    }

    private void Sj(List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list, boolean z10, String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        com.bytedance.sdk.component.vS.Sj.TKC.Sj.Sj(list, this.vS, str);
        com.bytedance.sdk.component.vS.Sj.sP.TKC tkcDq = Dq.Jcg().Dq();
        this.EjP = tkcDq;
        if (tkcDq != null) {
            sP(list, z10, jCurrentTimeMillis);
        } else {
            Sj(list, z10, jCurrentTimeMillis);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(boolean z10, sP sPVar, List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list, long j11) {
        if (z10 || sPVar == null) {
            return;
        }
        int i11 = sPVar.sP;
        int i12 = -2;
        if (sPVar.HiB) {
            i11 = -1;
        } else if (i11 < 0) {
            i11 = -2;
        }
        if (i11 == 510 || i11 == 511) {
            i11 = -2;
        }
        if (sPVar.Sj || ((i11 < 500 || i11 >= 509) && i11 <= 513)) {
            i12 = i11;
        }
        if (list != null) {
            list.size();
            this.f20928aa.get();
        }
        Sj(i12, list, j11);
    }

    private void TEQ() {
        if (this.Fmk.hasMessages(11)) {
            uA();
        } else {
            HiB(1);
        }
        com.bytedance.sdk.component.vS.Sj.sP.Sj.Sj sj2 = com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP;
        com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(sj2.sP(), 1);
        if (this.vS != 2) {
            return;
        }
        com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(sj2.Jcg(), 1);
        synchronized (this.TKC) {
            try {
                try {
                    long jNanoTime = System.nanoTime();
                    this.TKC.wait(5000L);
                    long jNanoTime2 = System.nanoTime() - jNanoTime;
                    com.bytedance.sdk.component.vS.Sj.sP.EjP ejP = com.bytedance.sdk.component.vS.Sj.sP.EjP.Sj;
                    if (!ejP.sP) {
                        boolean z10 = ejP.TKC;
                    }
                    if (jNanoTime2 < 5000000000L && 5000000000L - jNanoTime2 >= 50000000) {
                        if (!ejP.sP && !ejP.TKC) {
                            com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(sj2.Wjd(), 1);
                            TKC(2);
                            return;
                        }
                        com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(sj2.Ym(), 1);
                        return;
                    }
                    com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(sj2.TEQ(), 1);
                } catch (InterruptedException e11) {
                    e11.getMessage();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void TKC() {
        EjP();
        com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.FPG(), 1);
        TKC(1);
    }

    private void sP() {
        long jDNu = Dq.Jcg().dNu();
        if (jDNu <= 0) {
            return;
        }
        this.Sj.Sj(Integer.MAX_VALUE, jDNu);
    }

    public static void sP(int i11) {
        RiZ = i11;
    }

    private void sP(com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2) {
        List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> listSj;
        if (com.bytedance.sdk.component.vS.Sj.TKC.Sj.sP() && Dq.Jcg().Sj()) {
            return;
        }
        int i11 = 0;
        if (Dq()) {
            com.bytedance.sdk.component.vS.Sj.TKC.Sj.Sj(this.vS);
            com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.aa(), 1);
            if (this.HiB.size() != 0) {
                return;
            }
            if (this.Fmk.hasMessages(2)) {
                Sj(false);
                return;
            }
            com.bytedance.sdk.component.vS.Sj.sP.EjP.Sj.sP = false;
            this.Dq = 0L;
            this.Jcg = 0L;
            this.Zq.set(0);
            this.uvD.set(0);
        }
        do {
            boolean zSj = Sj(this.vS, com.bytedance.sdk.component.vS.Sj.sP.EjP.Sj.sP);
            com.bytedance.sdk.component.vS.Sj.TKC.Sj.Sj(zSj, this.vS, sj2);
            com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.Fmk(), 1);
            if (!zSj || (listSj = this.Sj.Sj(this.vS, -1, null)) == null) {
                uA();
            } else {
                listSj.size();
                Sj(listSj);
            }
            i11++;
            if (!zSj) {
                return;
            }
        } while (i11 <= 6);
    }

    private void sP(List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list) {
        this.sef.addAll(list);
        this.sef.size();
        HiB hiBUvD = Dq.Jcg().uvD();
        if (hiBUvD != null && hiBUvD.aa() != null) {
            dNu = hiBUvD.aa().sP();
        }
        if (this.sef.size() >= dNu) {
            if (this.Fmk.hasMessages(11)) {
                this.Fmk.removeMessages(11);
            }
            ArrayList arrayList = new ArrayList(this.sef);
            this.sef.clear();
            Sj((List<com.bytedance.sdk.component.vS.Sj.EjP.Sj>) arrayList, false, "max_size_dispatch");
            TEQ();
            return;
        }
        if (this.HiB.size() != 0) {
            this.sef.size();
            return;
        }
        Sj(false);
        if (this.Fmk.hasMessages(11)) {
            this.Fmk.removeMessages(11);
        }
        if (this.Fmk.hasMessages(1)) {
            this.Fmk.removeMessages(1);
        }
        long jSj = RiZ;
        if (hiBUvD != null && hiBUvD.aa() != null) {
            jSj = hiBUvD.aa().Sj();
        }
        this.Fmk.sendEmptyMessageDelayed(11, jSj);
    }

    private void sP(List<com.bytedance.sdk.component.vS.Sj.EjP.Sj> list, final boolean z10, final long j11) {
        this.f20928aa.incrementAndGet();
        com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.aNB(), 1);
        try {
            HashMap map = new HashMap();
            Iterator<com.bytedance.sdk.component.vS.Sj.EjP.Sj> it = list.iterator();
            while (it.hasNext()) {
                com.bytedance.sdk.component.vS.Sj.EjP.Sj next = it.next();
                int iTEQ = next == null ? 0 : next.TEQ();
                if (map.get(Integer.valueOf(iTEQ)) == null) {
                    map.put(Integer.valueOf(iTEQ), new ArrayList());
                }
                ((List) map.get(Integer.valueOf(iTEQ))).add(next);
            }
            for (Integer num : map.keySet()) {
                if (num.intValue() == 0 || Dq.Jcg().TKC() == null || Dq.Jcg().TKC().get(num) == null) {
                    this.EjP.Sj(list, new com.bytedance.sdk.component.vS.Sj.sP.sP() { // from class: com.bytedance.sdk.component.vS.Sj.sP.TKC.TKC.2
                        @Override // com.bytedance.sdk.component.vS.Sj.sP.sP
                        public void Sj(List<Sj> list2) {
                            try {
                                TKC.this.f20928aa.decrementAndGet();
                                if (list2 == null || list2.size() == 0) {
                                    return;
                                }
                                int size = list2.size();
                                for (int i11 = 0; i11 < size; i11++) {
                                    Sj sj2 = list2.get(i11);
                                    if (sj2 != null) {
                                        TKC.this.Sj(z10, sj2.Sj(), sj2.sP(), j11);
                                    }
                                }
                            } catch (Exception unused) {
                            }
                        }
                    });
                } else {
                    Dq.Jcg().TKC().get(num).Sj(list, new com.bytedance.sdk.component.vS.Sj.sP.sP() { // from class: com.bytedance.sdk.component.vS.Sj.sP.TKC.TKC.3
                        @Override // com.bytedance.sdk.component.vS.Sj.sP.sP
                        public void Sj(List<Sj> list2) {
                            try {
                                TKC.this.f20928aa.decrementAndGet();
                                if (list2 == null || list2.size() == 0) {
                                    return;
                                }
                                int size = list2.size();
                                for (int i11 = 0; i11 < size; i11++) {
                                    Sj sj2 = list2.get(i11);
                                    if (sj2 != null) {
                                        TKC.this.Sj(z10, sj2.Sj(), sj2.sP(), j11);
                                    }
                                }
                            } catch (Exception unused) {
                            }
                        }
                    });
                }
            }
        } catch (Exception e11) {
            e11.getMessage();
            com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.xD(), 1);
            this.f20928aa.decrementAndGet();
        }
    }

    private void uA() {
        try {
            if (this.HiB.size() == 0 && this.Fmk.hasMessages(11) && Sj()) {
                Sj(false);
            }
        } catch (Exception e11) {
            e11.getMessage();
        }
    }

    private void vS() {
        com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.zR(), 1);
        Sj(false);
        com.bytedance.sdk.component.vS.Sj.sP.EjP.Sj.TKC();
    }

    public void Sj(int i11, long j11) {
        if (this.Fmk == null) {
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = i11;
        if (i11 == 2) {
            this.Fmk.sendMessageDelayed(messageObtain, ((long) (((this.Zq.incrementAndGet() - 1) % 4) + 1)) * j11);
        } else if (i11 == 3) {
            this.Fmk.sendMessageDelayed(messageObtain, ((long) (((this.uvD.incrementAndGet() - 1) % 4) + 1)) * j11);
        }
    }

    public void Sj(com.bytedance.sdk.component.vS.Sj.EjP.Sj sj2, boolean z10) {
        if (sj2 == null) {
            return;
        }
        sj2.EjP();
        if (!z10) {
            this.HiB.add(sj2);
            HiB(2);
        } else if (this.Fmk != null) {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(sj2);
            Sj((List<com.bytedance.sdk.component.vS.Sj.EjP.Sj>) arrayList, true, "ignore_result_dispatch");
        }
    }

    public void Sj(boolean z10) {
        this.sP = z10;
    }

    public boolean Sj() {
        return this.sP;
    }

    public boolean Sj(int i11, boolean z10) {
        HiB hiBUvD = Dq.Jcg().uvD();
        if (hiBUvD == null || !hiBUvD.Sj(Dq.Jcg().vS())) {
            return false;
        }
        return this.Sj.Sj(i11, z10);
    }

    public void TKC(int i11) {
        try {
            boolean zSj = Sj(i11, com.bytedance.sdk.component.vS.Sj.sP.EjP.Sj.sP);
            if (i11 == 6 || zSj) {
                com.bytedance.sdk.component.vS.Sj.EjP.sP sPVar = new com.bytedance.sdk.component.vS.Sj.EjP.sP();
                sPVar.sP(i11);
                this.HiB.add(sPVar);
                HiB(3);
            }
        } catch (Throwable th2) {
            th2.getMessage();
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i11 = message.what;
        try {
            if (i11 == 1) {
                com.bytedance.sdk.component.vS.Sj.TKC.sP.Sj(com.bytedance.sdk.component.vS.Sj.sP.EjP.EjP.uA(), 1);
                sP();
                Sj(true);
                HiB();
            } else {
                if (i11 != 2 && i11 != 3) {
                    if (i11 == 11) {
                        ArrayList arrayList = new ArrayList(this.sef);
                        this.sef.clear();
                        Sj((List<com.bytedance.sdk.component.vS.Sj.EjP.Sj>) arrayList, false, "timeout_dispatch");
                        TEQ();
                    }
                    return true;
                }
                TKC();
            }
        } catch (Throwable th2) {
            th2.getMessage();
        }
        return true;
    }

    @Override // android.os.HandlerThread
    protected void onLooperPrepared() {
        super.onLooperPrepared();
        this.Fmk = new Handler(getLooper(), this);
        com.bytedance.sdk.component.vS.Sj.sP.EjP.Sj.Sj(this.Fmk);
        this.Fmk.sendEmptyMessage(1);
    }
}
