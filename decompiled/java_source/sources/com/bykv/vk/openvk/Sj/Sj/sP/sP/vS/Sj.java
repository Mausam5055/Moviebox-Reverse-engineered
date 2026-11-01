package com.bykv.vk.openvk.Sj.Sj.sP.sP.vS;

import android.text.TextUtils;
import com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC;
import com.bykv.vk.openvk.Sj.Sj.sP.sP.EjP;
import java.util.ArrayList;
import java.util.Queue;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Sj {

    /* JADX INFO: renamed from: com.bykv.vk.openvk.Sj.Sj.sP.sP.vS.Sj$Sj, reason: collision with other inner class name */
    class C0190Sj extends Thread {
        final /* synthetic */ Sj Sj;
        private final Queue<a> EjP = new ArrayBlockingQueue(10);
        private Queue<a> sP = new LinkedBlockingQueue();
        private boolean TKC = true;
        private Queue<a> HiB = new LinkedBlockingQueue();

        /* JADX INFO: renamed from: com.bykv.vk.openvk.Sj.Sj.sP.sP.vS.Sj$Sj$a */
        private class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f20301a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f20302b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String[] f20303c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f20304d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f20305e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public TKC f20306f;

            public a() {
            }
        }

        public C0190Sj(Sj sj2) {
        }

        private a Sj(int i11, TKC tkc) {
            this.EjP.size();
            a aVarPoll = this.EjP.poll();
            if (aVarPoll == null) {
                aVarPoll = new a();
            }
            aVarPoll.f20301a = i11;
            aVarPoll.f20306f = tkc;
            return aVarPoll;
        }

        private void Sj() {
            while (true) {
                a aVarPoll = this.HiB.poll();
                if (aVarPoll == null) {
                    return;
                }
                aVarPoll.f20302b = aVarPoll.f20306f.Fmk();
                aVarPoll.f20303c = new String[]{aVarPoll.f20306f.Fmk()};
                int iSj = aVarPoll.f20306f.Sj();
                if (iSj <= 0) {
                    iSj = aVarPoll.f20306f.TKC();
                }
                aVarPoll.f20304d = iSj;
                aVarPoll.f20305e = aVarPoll.f20306f.sef();
                if (!TextUtils.isEmpty(aVarPoll.f20306f.sef())) {
                    aVarPoll.f20302b = aVarPoll.f20306f.sef();
                }
                aVarPoll.f20306f = null;
                TKC(aVarPoll);
            }
        }

        private void Sj(a aVar) {
            aVar.f20303c = null;
            aVar.f20302b = null;
            aVar.f20301a = -1;
            aVar.f20306f = null;
            this.EjP.offer(aVar);
        }

        private void TKC(a aVar) {
            if (aVar == null) {
                return;
            }
            this.sP.offer(aVar);
            notify();
        }

        private synchronized void sP(a aVar) {
            this.HiB.add(aVar);
            notify();
        }

        public void Sj(TKC tkc) {
            sP(Sj(0, tkc));
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (this.TKC) {
                synchronized (this) {
                    try {
                        if (!this.HiB.isEmpty()) {
                            Sj();
                        }
                        while (!this.sP.isEmpty()) {
                            a aVarPoll = this.sP.poll();
                            if (aVarPoll != null) {
                                int i11 = aVarPoll.f20301a;
                                if (i11 == 0) {
                                    String[] strArr = aVarPoll.f20303c;
                                    if (strArr != null && strArr.length > 0) {
                                        ArrayList arrayList = new ArrayList();
                                        for (String str : aVarPoll.f20303c) {
                                            if (f6.a.r(str)) {
                                                arrayList.add(str);
                                            }
                                        }
                                        EjP.j().h(false, !TextUtils.isEmpty(aVarPoll.f20305e), aVarPoll.f20304d, aVarPoll.f20302b, (String[]) arrayList.toArray(new String[arrayList.size()]));
                                    }
                                } else if (i11 == 1) {
                                    EjP.j().e(aVarPoll.f20302b);
                                } else if (i11 == 2) {
                                    EjP.j().a();
                                } else if (i11 == 3) {
                                    EjP.j().a();
                                    com.bykv.vk.openvk.Sj.Sj.sP.sP.a.a();
                                    com.bykv.vk.openvk.Sj.Sj.sP.sP.a.b();
                                } else if (i11 == 4) {
                                    EjP.j().a();
                                    this.TKC = false;
                                }
                                Sj(aVarPoll);
                            }
                        }
                        try {
                            wait();
                        } catch (InterruptedException unused) {
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }
}
