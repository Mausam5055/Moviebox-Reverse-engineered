package com.bytedance.sdk.openadsdk.core;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class sef {
    public static long HiB;
    private static volatile HandlerThread Jcg;
    public static volatile boolean Sj;
    public static AtomicBoolean sP = new AtomicBoolean(false);
    public static long TKC = 0;
    private static volatile int vS = 0;
    public static float EjP = 1.0f;
    private static volatile Handler Dq = null;

    static {
        HandlerThread handlerThread = new HandlerThread("csj_init_handle", 10) { // from class: com.bytedance.sdk.openadsdk.core.sef.1
            boolean Sj = false;

            @Override // java.lang.Thread
            public synchronized void start() {
                if (this.Sj) {
                    return;
                }
                this.Sj = true;
                super.start();
            }
        };
        Jcg = handlerThread;
        handlerThread.start();
        com.bytedance.sdk.component.utils.Dq.Sj(Jcg);
        HiB = System.currentTimeMillis();
    }

    public static void Dq() {
        sP().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.sef.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    com.bytedance.sdk.openadsdk.dNu.TKC.Sj(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.core.sef.4.1
                        @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                        public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                            com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                            sj2.sP("init");
                            return sj2;
                        }
                    });
                } catch (Throwable th2) {
                    com.bytedance.sdk.component.utils.sU.sP("InitHelper", th2.getMessage());
                }
            }
        });
    }

    public static int EjP() {
        return vS;
    }

    public static boolean HiB() {
        return EjP() == 1;
    }

    public static void Jcg() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - TKC <= 10000) {
            return;
        }
        synchronized (sef.class) {
            try {
                if (jElapsedRealtime - TKC <= 10000) {
                    return;
                }
                TKC = jElapsedRealtime;
                com.bytedance.sdk.component.utils.uA.Sj().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.sef.3
                    @Override // java.lang.Runnable
                    public void run() {
                        String strTKC = com.bytedance.sdk.openadsdk.core.settings.Fmk.TKC(dNu.Sj());
                        if (TextUtils.equals(strTKC, com.bytedance.sdk.openadsdk.core.settings.Fmk.EjP)) {
                            return;
                        }
                        com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().Sj(6, true);
                        com.bytedance.sdk.openadsdk.core.settings.Fmk.EjP = strTKC;
                    }
                });
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static long Sj() {
        return HiB;
    }

    public static void Sj(int i11) {
        vS = i11;
    }

    public static void Sj(long j11) {
        HiB = j11;
    }

    public static void Sj(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(str);
            for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i11);
                if ("mediation".equals(jSONObject.optString("name", ""))) {
                    uA.sP().sP(jSONObject.optString(AppMeasurementSdk.ConditionalUserProperty.VALUE, ""));
                    return;
                }
            }
        } catch (Throwable th2) {
            com.bytedance.sdk.component.utils.sU.sP("InitHelper", th2.getMessage());
        }
    }

    public static Handler TKC() {
        return new Handler(Looper.getMainLooper());
    }

    public static Handler sP() {
        if (Jcg == null || !Jcg.isAlive()) {
            synchronized (sef.class) {
                try {
                    if (Jcg == null || !Jcg.isAlive()) {
                        Jcg = com.bytedance.sdk.component.utils.Dq.Sj("csj_init_handle", -1);
                        Dq = new Handler(Jcg.getLooper());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } else if (Dq == null) {
            synchronized (sef.class) {
                try {
                    if (Dq == null) {
                        Dq = new Handler(Jcg.getLooper());
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
        return Dq;
    }

    public static void vS() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime - TKC <= 10000) {
            return;
        }
        TKC = jElapsedRealtime;
        com.bytedance.sdk.openadsdk.utils.JcM.Sj(new com.bytedance.sdk.component.Dq.Dq("onSharedPreferenceChanged") { // from class: com.bytedance.sdk.openadsdk.core.sef.2
            @Override // java.lang.Runnable
            public void run() {
                String strTKC = com.bytedance.sdk.openadsdk.core.settings.Fmk.TKC(dNu.Sj());
                if (TextUtils.equals(strTKC, com.bytedance.sdk.openadsdk.core.settings.Fmk.EjP)) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().Sj(6, true);
                com.bytedance.sdk.openadsdk.core.settings.Fmk.EjP = strTKC;
            }
        });
    }
}
