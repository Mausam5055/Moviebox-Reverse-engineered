package com.bytedance.sdk.openadsdk.kF.Sj;

import android.os.Handler;
import android.os.HandlerThread;
import com.bytedance.sdk.component.utils.Dq;

/* JADX INFO: loaded from: classes3.dex */
public class Sj {
    private static Handler Sj;
    private static HandlerThread sP;

    public static Handler Sj() {
        try {
            HandlerThread handlerThread = sP;
            if (handlerThread == null || !handlerThread.isAlive()) {
                synchronized (Sj.class) {
                    try {
                        HandlerThread handlerThread2 = sP;
                        if (handlerThread2 == null || !handlerThread2.isAlive()) {
                            sP = Dq.Sj("csj_ev");
                            Sj = new Handler(sP.getLooper());
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            } else if (Sj == null) {
                synchronized (Sj.class) {
                    try {
                        if (Sj == null) {
                            Sj = new Handler(sP.getLooper());
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return Sj;
    }
}
