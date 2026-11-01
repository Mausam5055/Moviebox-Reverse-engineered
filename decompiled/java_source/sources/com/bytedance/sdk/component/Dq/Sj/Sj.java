package com.bytedance.sdk.component.Dq.Sj;

import android.os.Handler;
import com.bytedance.sdk.component.utils.Dq;
import com.bytedance.sdk.component.utils.LqL;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    private final EjP<sP> Sj;
    private Handler sP;

    /* JADX INFO: renamed from: com.bytedance.sdk.component.Dq.Sj.Sj$Sj, reason: collision with other inner class name */
    private static class C0211Sj {
        private static final Sj Sj = new Sj();
    }

    private Sj() {
        this.Sj = EjP.Sj(2);
    }

    public static Sj Sj() {
        return C0211Sj.Sj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(final Handler handler, final Handler handler2) {
        if (!handler.getLooper().getQueue().isIdle()) {
            handler2.postDelayed(new Runnable() { // from class: com.bytedance.sdk.component.Dq.Sj.Sj.1
                @Override // java.lang.Runnable
                public void run() {
                    Sj.this.Sj(handler, handler2);
                }
            }, 1000L);
        } else {
            handler.removeCallbacksAndMessages(null);
            handler.getLooper().quit();
        }
    }

    private sP sP(LqL.Sj sj2, String str) {
        return new sP(Dq.Sj(str), sj2);
    }

    public LqL Sj(LqL.Sj sj2, final String str) {
        sP sPVar = (sP) this.Sj.Sj();
        if (sPVar == null) {
            return sP(sj2, str);
        }
        sPVar.Sj(sj2);
        sPVar.post(new Runnable() { // from class: com.bytedance.sdk.component.Dq.Sj.Sj.2
            @Override // java.lang.Runnable
            public void run() {
                Thread.currentThread().setName(str);
            }
        });
        return sPVar;
    }

    public LqL Sj(String str) {
        return Sj((LqL.Sj) null, str);
    }

    public boolean Sj(LqL lqL) {
        if (!(lqL instanceof sP)) {
            return false;
        }
        sP sPVar = (sP) lqL;
        if (this.Sj.Sj(sPVar)) {
            return true;
        }
        sPVar.sP();
        return true;
    }

    public Handler sP() {
        if (this.sP == null) {
            synchronized (Sj.class) {
                try {
                    if (this.sP == null) {
                        this.sP = Sj("csj_io_handler");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.sP;
    }
}
