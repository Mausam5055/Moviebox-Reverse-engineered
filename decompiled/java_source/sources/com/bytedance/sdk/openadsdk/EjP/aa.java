package com.bytedance.sdk.openadsdk.EjP;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.model.sU;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class aa {
    private static volatile aa Sj;
    private final Executor EjP = Executors.newCachedThreadPool();
    private sP HiB = sP.Sj();
    private final Handler TKC;
    private HandlerThread sP;
    private Map<String, Object> vS;

    private static class Sj implements Serializable, Runnable {
        public String EjP;
        public Map<String, Object> HiB;
        public sU TKC;
        public final AtomicInteger Sj = new AtomicInteger(0);
        public final AtomicBoolean sP = new AtomicBoolean(false);
        private final long vS = SystemClock.elapsedRealtime();

        public Sj(sU sUVar, String str, Map<String, Object> map) {
            this.TKC = sUVar;
            this.EjP = str;
            this.HiB = map;
        }

        public static Sj Sj(sU sUVar, String str, Map<String, Object> map) {
            return new Sj(sUVar, str, map);
        }

        public int Sj() {
            return this.Sj.get();
        }

        public Sj Sj(boolean z10) {
            this.sP.set(z10);
            return this;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.TKC == null || TextUtils.isEmpty(this.EjP)) {
                return;
            }
            String str = this.sP.get() ? "dpl_success" : "dpl_failed";
            if (this.HiB == null) {
                this.HiB = new HashMap();
            }
            sU sUVar = this.TKC;
            if (sUVar != null && sUVar.AE() == 0) {
                Map<String, Object> map = this.HiB;
                sU sUVar2 = this.TKC;
                map.put("auto_click", Boolean.valueOf((sUVar2 == null || sUVar2.Dq()) ? false : true));
            }
            this.HiB.put("lifeCycleInit", Boolean.valueOf(com.bytedance.sdk.openadsdk.core.Zq.Sj().TKC()));
            this.HiB.put("duration", Long.valueOf(SystemClock.elapsedRealtime() - this.vS));
            TKC.Sj(this.TKC, this.EjP, str, this.HiB);
        }

        public void sP() {
            this.Sj.incrementAndGet();
        }
    }

    private static class sP {
        public int Sj = 300;
        public int sP = 6000;

        private sP() {
        }

        public static sP Sj() {
            return new sP();
        }
    }

    private aa() {
        if (this.sP == null) {
            this.sP = com.bytedance.sdk.component.utils.Dq.Sj("OpenAppSuccEvent_HandlerThread", 10);
        }
        this.TKC = new Handler(this.sP.getLooper(), new Handler.Callback() { // from class: com.bytedance.sdk.openadsdk.EjP.aa.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (message.what != 100) {
                    return true;
                }
                Object obj = message.obj;
                Sj sj2 = (obj == null || !(obj instanceof Sj)) ? null : (Sj) obj;
                if (sj2 == null) {
                    return true;
                }
                aa.this.sP(sj2);
                return true;
            }
        });
    }

    public static aa Sj() {
        if (Sj == null) {
            synchronized (aa.class) {
                try {
                    if (Sj == null) {
                        Sj = new aa();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    private void Sj(Sj sj2) {
        if (sj2 == null) {
            return;
        }
        sj2.sP();
        int iSj = sj2.Sj();
        sP sPVar = this.HiB;
        if (iSj * sPVar.Sj > sPVar.sP) {
            TKC(sj2.Sj(false));
            return;
        }
        Message messageObtainMessage = this.TKC.obtainMessage();
        messageObtainMessage.what = 100;
        messageObtainMessage.obj = sj2;
        this.TKC.sendMessageDelayed(messageObtainMessage, this.HiB.Sj);
    }

    private void TKC(Sj sj2) {
        if (sj2 == null) {
            return;
        }
        this.EjP.execute(sj2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sP(Sj sj2) {
        if (sj2 == null) {
            return;
        }
        boolean zEjP = com.bytedance.sdk.openadsdk.core.Zq.Sj().EjP();
        boolean zSj = com.bytedance.sdk.openadsdk.core.Zq.Sj().Sj(true);
        if (!zEjP && zSj) {
            Sj(sj2);
            return;
        }
        if (sj2.HiB == null) {
            sj2.HiB = new HashMap();
        }
        sj2.HiB.put("is_background", Boolean.valueOf(zEjP));
        sj2.HiB.put("has_focus", Boolean.valueOf(zSj));
        TKC(sj2.Sj(true));
    }

    public aa Sj(Map<String, Object> map) {
        this.vS = map;
        return Sj();
    }

    public void Sj(sU sUVar, String str) {
        Message messageObtainMessage = this.TKC.obtainMessage();
        messageObtainMessage.what = 100;
        messageObtainMessage.obj = Sj.Sj(sUVar, str, this.vS);
        messageObtainMessage.sendToTarget();
    }
}
