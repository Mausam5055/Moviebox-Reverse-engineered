package com.bytedance.sdk.component.vS.Sj.Jcg;

import android.os.Handler;
import android.os.HandlerThread;
import com.bytedance.sdk.component.vS.Sj.Dq;
import com.bytedance.sdk.component.vS.Sj.HiB;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    private static volatile HandlerThread Sj = null;
    private static int TKC = 3000;
    private static volatile Handler sP;

    static {
        TKC();
    }

    public static Handler Sj() {
        if (Sj == null || !Sj.isAlive()) {
            synchronized (Sj.class) {
                try {
                    if (Sj == null || !Sj.isAlive()) {
                        TKC();
                        sP = new Handler(Sj.getLooper());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } else if (sP == null) {
            synchronized (Sj.class) {
                try {
                    if (sP == null) {
                        sP = new Handler(Sj.getLooper());
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
        return sP;
    }

    private static void TKC() {
        HandlerThread handlerThreadSj;
        HiB hiBUvD = Dq.Jcg().uvD();
        if (hiBUvD != null && (handlerThreadSj = hiBUvD.Sj("csj_ad_log", 10)) != null) {
            Sj = handlerThreadSj;
            return;
        }
        HandlerThread handlerThread = new HandlerThread("csj_ad_log", 10);
        Sj = handlerThread;
        handlerThread.start();
    }

    public static int sP() {
        if (TKC <= 0) {
            TKC = AuthApiStatusCodes.AUTH_API_INVALID_CREDENTIALS;
        }
        return TKC;
    }
}
