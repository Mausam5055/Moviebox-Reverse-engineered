package com.bytedance.sdk.component.adexpress.Sj.sP;

import android.text.TextUtils;
import com.bytedance.sdk.component.utils.dx;
import java.io.File;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
public class HiB extends TKC {
    private static File Sj;
    private static volatile HiB sP;
    private AtomicBoolean TKC = new AtomicBoolean(true);
    private AtomicBoolean EjP = new AtomicBoolean(false);
    private boolean HiB = false;
    private AtomicBoolean vS = new AtomicBoolean(false);
    private AtomicInteger Jcg = new AtomicInteger(0);
    private AtomicLong Dq = new AtomicLong();

    private HiB() {
        TEQ();
    }

    public static File Dq() {
        if (Sj == null) {
            try {
                File file = new File(new File(EjP.Sj(), "tt_tmpl_pkg"), "template");
                file.mkdirs();
                Sj = file;
            } catch (Throwable unused) {
            }
        }
        return Sj;
    }

    private void TEQ() {
        com.bytedance.sdk.component.adexpress.EjP.EjP.sP(new com.bytedance.sdk.component.Dq.Dq("init") { // from class: com.bytedance.sdk.component.adexpress.Sj.sP.HiB.1
            @Override // java.lang.Runnable
            public void run() {
                Dq.Sj();
                HiB.this.TKC.set(false);
                HiB.this.EjP();
                HiB.this.Jcg();
                if (com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC() == null || !dx.Sj(com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC().sP()) || com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC() == null) {
                    return;
                }
                com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC().EjP();
            }
        }, 10);
    }

    private void Ym() {
        if (this.Jcg.getAndSet(0) <= 0 || System.currentTimeMillis() - this.Dq.get() <= 600000) {
            return;
        }
        Jcg();
    }

    public static HiB sP() {
        if (sP == null) {
            synchronized (HiB.class) {
                try {
                    if (sP == null) {
                        sP = new HiB();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return sP;
    }

    public void EjP() {
        com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sjSP = Dq.sP();
        if (sjSP == null || !sjSP.Dq()) {
            return;
        }
        boolean zSj = Sj(sjSP);
        if (!zSj) {
            Dq.EjP();
        }
        this.HiB = zSj;
    }

    public boolean HiB() {
        return this.HiB;
    }

    public void Jcg() {
        Sj(false);
    }

    @Override // com.bytedance.sdk.component.adexpress.Sj.sP.TKC
    public File Sj() {
        return Dq();
    }

    public void Sj(boolean z10) {
        List<com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0217Sj> listSj;
        boolean z11;
        if (this.TKC.get()) {
            return;
        }
        try {
            if (this.EjP.get()) {
                if (z10) {
                    this.Jcg.getAndIncrement();
                    return;
                }
                return;
            }
            boolean z12 = true;
            this.EjP.set(true);
            com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sjHiB = com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC().HiB();
            com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sjSP = Dq.sP();
            if (sjHiB != null && sjHiB.Dq()) {
                if (!Dq.sP(sjHiB)) {
                    this.EjP.set(false);
                    this.Dq.set(System.currentTimeMillis());
                    return;
                }
                if (com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC() != null) {
                    com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().TKC().TKC().post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.Sj.sP.HiB.2
                        @Override // java.lang.Runnable
                        public void run() {
                            com.bytedance.sdk.component.adexpress.HiB.HiB.Sj().sP();
                        }
                    });
                }
                Dq.Sj(sjHiB);
                boolean zSj = (sjHiB.HiB() == null || TextUtils.isEmpty(sjHiB.HiB().Sj())) ? false : Sj(sjHiB.HiB().Sj());
                if (sjHiB.Sj().size() != 0) {
                    listSj = Sj(sjHiB, sjSP);
                    z11 = listSj != null;
                } else {
                    listSj = null;
                    z11 = zSj;
                }
                if (!zSj) {
                    List<com.bytedance.sdk.component.adexpress.Sj.TKC.Sj.C0217Sj> listSP = sP(sjHiB, sjSP);
                    if (listSj == null || listSP == null) {
                        listSj = listSP;
                    } else {
                        listSj.addAll(listSP);
                    }
                    if (listSP == null) {
                        z12 = false;
                    }
                    if (listSP == null) {
                        this.EjP.set(false);
                    }
                    z11 = z12;
                }
                if (z11 && Sj(sjHiB)) {
                    Dq.Sj(sjHiB);
                    Dq.TKC();
                    sP(listSj);
                }
                EjP();
                this.EjP.set(false);
                this.Dq.set(System.currentTimeMillis());
                Ym();
                return;
            }
            this.EjP.set(false);
            Sj(109);
        } catch (Throwable unused) {
        }
    }

    public boolean Sj(com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj2) {
        if (sj2 == null) {
            return false;
        }
        return Sj(sj2.Sj()) || Sj(sj2.HiB()) || Sj(sj2.vS());
    }

    public void TKC() {
        TEQ();
    }

    public void sP(boolean z10) {
        this.vS.set(z10);
    }

    public void uA() {
        this.vS.set(true);
        this.HiB = false;
        this.EjP.set(false);
    }

    public com.bytedance.sdk.component.adexpress.Sj.TKC.Sj vS() {
        return Dq.sP();
    }
}
