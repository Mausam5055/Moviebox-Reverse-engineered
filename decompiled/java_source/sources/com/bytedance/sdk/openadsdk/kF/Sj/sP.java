package com.bytedance.sdk.openadsdk.kF.Sj;

import android.os.Handler;
import android.os.SystemClock;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.Mts;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class sP {
    private final sU sP;
    private int Sj = TKC.sP;
    private final AtomicBoolean TKC = new AtomicBoolean(false);
    private final AtomicBoolean EjP = new AtomicBoolean(true);
    private final AtomicInteger HiB = new AtomicInteger(0);
    private long vS = 0;
    private long Jcg = 0;
    private final Runnable Dq = new Runnable() { // from class: com.bytedance.sdk.openadsdk.kF.Sj.sP.3
        @Override // java.lang.Runnable
        public void run() {
            sP.this.EjP();
        }
    };

    public sP(sU sUVar) {
        this.sP = sUVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void EjP() {
        if (this.TKC.compareAndSet(false, true)) {
            sP();
            final long jElapsedRealtime = this.Jcg + (SystemClock.elapsedRealtime() - this.vS);
            this.Jcg = jElapsedRealtime;
            JcM.TKC(new Dq("ev_tracker") { // from class: com.bytedance.sdk.openadsdk.kF.Sj.sP.1
                @Override // java.lang.Runnable
                public void run() {
                    String strSj = Mts.Sj(sP.this.sP);
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("ev_wait_time_server", sP.this.sP.Ewp() * 1000);
                        jSONObject.put("ev_wait_time_client", jElapsedRealtime);
                    } catch (JSONException e11) {
                        com.bytedance.sdk.component.utils.sU.sP("EvTracker", e11.getMessage());
                    }
                    com.bytedance.sdk.openadsdk.EjP.TKC.sP(sP.this.sP, strSj, sP.this.sP.Os(), jSONObject);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void HiB() {
        if (this.HiB.get() == 2) {
            this.vS = SystemClock.elapsedRealtime();
            Handler handlerSj = Sj.Sj();
            if (handlerSj != null) {
                handlerSj.postDelayed(this.Dq, ((long) this.Sj) - this.Jcg);
            }
            this.HiB.set(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void vS() {
        if (this.HiB.get() != 1 || this.vS == 0) {
            return;
        }
        Handler handlerSj = Sj.Sj();
        if (handlerSj != null) {
            handlerSj.removeCallbacks(this.Dq);
        }
        this.Jcg += SystemClock.elapsedRealtime() - this.vS;
        this.vS = 0L;
        this.HiB.set(2);
    }

    public void Sj() {
        if (this.HiB.get() != 0) {
            return;
        }
        this.Sj = this.sP.Ewp() * 1000;
        this.HiB.set(1);
        this.vS = SystemClock.elapsedRealtime();
        Handler handlerSj = Sj.Sj();
        if (handlerSj != null) {
            handlerSj.postDelayed(this.Dq, this.Sj);
        }
    }

    public void Sj(final int i11) {
        Handler handlerSj;
        if (this.HiB.get() == 3 || (handlerSj = Sj.Sj()) == null) {
            return;
        }
        handlerSj.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.kF.Sj.sP.2
            @Override // java.lang.Runnable
            public void run() {
                if (i11 == 4 && sP.this.EjP.get()) {
                    sP.this.HiB();
                    return;
                }
                int i12 = i11;
                if (i12 == 8) {
                    sP.this.vS();
                } else if (i12 == 5) {
                    sP.this.EjP();
                }
            }
        });
    }

    public void Sj(boolean z10) {
        this.EjP.set(z10);
    }

    public boolean TKC() {
        return this.HiB.get() == 3;
    }

    public void sP() {
        this.HiB.set(3);
        Handler handlerSj = Sj.Sj();
        if (handlerSj != null) {
            handlerSj.removeCallbacks(this.Dq);
        }
    }
}
