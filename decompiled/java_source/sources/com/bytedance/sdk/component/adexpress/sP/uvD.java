package com.bytedance.sdk.component.adexpress.sP;

import android.content.Context;
import android.view.View;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class uvD implements TEQ {
    private Fmk EjP;
    private ScheduledFuture<?> HiB;
    private Context Sj;
    private Dq TKC;
    private com.bytedance.sdk.component.adexpress.HiB.Sj sP;
    private AtomicBoolean vS = new AtomicBoolean(false);

    private class Sj implements Runnable {
        TEQ.Sj Sj;
        private int TKC;

        public Sj(int i11, TEQ.Sj sj2) {
            this.TKC = i11;
            this.Sj = sj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.TKC == 1) {
                uvD.this.sP.Sj(true);
                uvD.this.Sj(this.Sj, 107, null);
            }
        }
    }

    public uvD(Context context, Fmk fmk, com.bytedance.sdk.component.adexpress.HiB.Sj sj2, Dq dq2) {
        this.Sj = context;
        this.EjP = fmk;
        this.TKC = dq2;
        this.sP = sj2;
        sj2.Sj(this.TKC);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(TEQ.Sj sj2, int i11, String str) {
        Zq zqSP;
        if (sj2.TKC() || this.vS.get()) {
            return;
        }
        TKC();
        this.EjP.HiB().Sj(i11, str);
        if (sj2.sP(this)) {
            sj2.Sj(this);
        } else {
            if (sj2.TKC() || (zqSP = sj2.sP()) == null) {
                return;
            }
            sj2.Sj(true);
            zqSP.a_(i11);
        }
        this.vS.getAndSet(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void TKC() {
        try {
            ScheduledFuture<?> scheduledFuture = this.HiB;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            this.HiB.cancel(false);
            this.HiB = null;
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.TEQ
    public void Sj() {
        this.sP.EjP();
        TKC();
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.TEQ
    public boolean Sj(final TEQ.Sj sj2) {
        int iVS = this.EjP.vS();
        if (iVS < 0) {
            Sj(sj2, 107, "time is ".concat(String.valueOf(iVS)));
        } else {
            this.HiB = com.bytedance.sdk.component.adexpress.EjP.EjP.Sj(new Sj(1, sj2), iVS, TimeUnit.MILLISECONDS);
            this.sP.Sj(new Jcg() { // from class: com.bytedance.sdk.component.adexpress.sP.uvD.1
                @Override // com.bytedance.sdk.component.adexpress.sP.Jcg
                public void Sj(int i11, String str) {
                    uvD.this.Sj(sj2, i11, str);
                }

                @Override // com.bytedance.sdk.component.adexpress.sP.Jcg
                public void Sj(View view, sef sefVar) {
                    Zq zqSP;
                    uvD.this.TKC();
                    if (sj2.TKC() || (zqSP = sj2.sP()) == null) {
                        return;
                    }
                    zqSP.Sj(uvD.this.sP, sefVar);
                    sj2.Sj(true);
                }
            });
        }
        return true;
    }

    public com.bytedance.sdk.component.adexpress.HiB.Sj sP() {
        return this.sP;
    }
}
