package com.bytedance.sdk.openadsdk.core.TEQ.sP;

import android.content.Context;
import android.view.View;
import com.bytedance.adsdk.ugeno.core.sef;
import com.bytedance.sdk.component.adexpress.sP.Dq;
import com.bytedance.sdk.component.adexpress.sP.Fmk;
import com.bytedance.sdk.component.adexpress.sP.TEQ;
import com.bytedance.sdk.component.adexpress.sP.Zq;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class Jcg implements TEQ {
    private ScheduledFuture<?> EjP;
    private AtomicBoolean HiB = new AtomicBoolean(false);
    private Context Sj;
    private Fmk TKC;
    private com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC sP;

    private class Sj implements Runnable {
        TEQ.Sj Sj;
        private int TKC;

        Sj(int i11, TEQ.Sj sj2) {
            this.TKC = i11;
            this.Sj = sj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.TKC == 1) {
                Jcg.this.sP.Sj(true);
                Jcg.this.Sj(this.Sj, Sdk$SDKError.Reason.TPAT_RETRY_FAILED_VALUE, "real time out" + Jcg.this.TKC.vS());
            }
        }
    }

    public Jcg(Context context, com.bytedance.sdk.openadsdk.core.TEQ.HiB.TKC tkc, Dq dq2, Fmk fmk) {
        this.Sj = context;
        this.sP = tkc;
        this.TKC = fmk;
        this.sP.Sj(dq2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(TEQ.Sj sj2, int i11, String str) {
        Zq zqSP;
        if (sj2.TKC() || this.HiB.get()) {
            return;
        }
        sP();
        sef sefVar = new sef();
        sefVar.Sj(i11);
        sefVar.Sj(str);
        ((com.bytedance.sdk.openadsdk.core.TEQ.HiB.Sj) this.TKC).fF().Sj(sefVar);
        if (sj2.sP(this)) {
            sj2.Sj(this);
        } else {
            if (sj2.TKC() || (zqSP = sj2.sP()) == null) {
                return;
            }
            sj2.Sj(true);
            zqSP.a_(i11);
        }
        this.HiB.getAndSet(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP() {
        try {
            ScheduledFuture<?> scheduledFuture = this.EjP;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            this.EjP.cancel(false);
            this.EjP = null;
        } catch (Throwable th2) {
            sU.sP("RenderInterceptor", "remove ugen time out task fail", th2.getMessage());
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.TEQ
    public void Sj() {
    }

    @Override // com.bytedance.sdk.component.adexpress.sP.TEQ
    public boolean Sj(final TEQ.Sj sj2) {
        int iVS = this.TKC.vS();
        if (iVS < 0) {
            Sj(sj2, Sdk$SDKError.Reason.TPAT_RETRY_FAILED_VALUE, "time is ".concat(String.valueOf(iVS)));
        } else {
            this.EjP = JcM.Sj().schedule(new Sj(1, sj2), iVS, TimeUnit.MILLISECONDS);
            this.sP.Sj(new com.bytedance.sdk.component.adexpress.sP.Jcg() { // from class: com.bytedance.sdk.openadsdk.core.TEQ.sP.Jcg.1
                @Override // com.bytedance.sdk.component.adexpress.sP.Jcg
                public void Sj(int i11, String str) {
                    Jcg.this.Sj(sj2, i11, str);
                }

                @Override // com.bytedance.sdk.component.adexpress.sP.Jcg
                public void Sj(View view, com.bytedance.sdk.component.adexpress.sP.sef sefVar) {
                    Jcg.this.sP();
                    if (sj2.TKC()) {
                        return;
                    }
                    sef sefVar2 = new sef();
                    sefVar2.Sj(0);
                    ((com.bytedance.sdk.openadsdk.core.TEQ.HiB.Sj) Jcg.this.TKC).fF().Sj(sefVar2);
                    Jcg.this.TKC.HiB().TEQ();
                    Zq zqSP = sj2.sP();
                    if (zqSP == null) {
                        return;
                    }
                    zqSP.Sj(Jcg.this.sP, sefVar);
                    sj2.Sj(true);
                }
            });
        }
        return true;
    }
}
