package com.bytedance.sdk.openadsdk.utils;

import android.os.Looper;
import android.text.TextUtils;
import com.cloud.tmc.ad.utils.CommonLogUtil;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.gms.location.DeviceOrientationRequest;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class JcM {
    private static volatile com.bytedance.sdk.component.Dq.TKC.vS Dq;
    private static volatile com.bytedance.sdk.component.Dq.TKC.vS EjP;
    private static volatile com.bytedance.sdk.component.Dq.TKC.vS HiB;
    private static volatile com.bytedance.sdk.component.Dq.TKC.vS Jcg;
    private static volatile ThreadPoolExecutor Sj;
    private static volatile com.bytedance.sdk.component.Dq.TKC.vS TEQ;
    private static volatile com.bytedance.sdk.component.Dq.TKC.vS TKC;
    private static volatile com.bytedance.sdk.component.Dq.TKC.vS Ym;
    private static volatile boolean sP;
    private static volatile com.bytedance.sdk.component.Dq.TKC.vS uA;
    private static volatile com.bytedance.sdk.component.Dq.TKC.vS vS;

    static {
        com.bytedance.sdk.component.Dq.TKC.TKC.Sj(new com.bytedance.sdk.component.Dq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.utils.JcM.1
            @Override // com.bytedance.sdk.component.Dq.TKC.Sj
            public void Sj(com.bytedance.sdk.component.Dq.TKC.vS vSVar, com.bytedance.sdk.component.Dq.TKC.sP sPVar) {
                sPVar.sP();
                new RuntimeException();
            }
        });
        com.bytedance.sdk.component.Dq.TKC.TKC.Sj(new com.bytedance.sdk.component.Dq.TKC.HiB() { // from class: com.bytedance.sdk.openadsdk.utils.JcM.3
            @Override // com.bytedance.sdk.component.Dq.TKC.HiB
            public void Sj(final com.bytedance.sdk.component.Dq.TKC.vS vSVar) {
                if (Yf.Sj || vSVar == null) {
                    return;
                }
                try {
                    LinkedHashMap<String, com.bytedance.sdk.component.Dq.TKC.Sj.Sj> linkedHashMapSj = vSVar.Sj();
                    if (linkedHashMapSj == null || linkedHashMapSj.size() <= 0) {
                        return;
                    }
                    Iterator<Map.Entry<String, com.bytedance.sdk.component.Dq.TKC.Sj.Sj>> it = linkedHashMapSj.entrySet().iterator();
                    while (it.hasNext()) {
                        final com.bytedance.sdk.component.Dq.TKC.Sj.Sj value = it.next().getValue();
                        if (value != null) {
                            com.bytedance.sdk.openadsdk.Zq.TKC.Sj();
                            com.bytedance.sdk.openadsdk.Zq.TKC.Sj("pag_thread_pool_state", false, new com.bytedance.sdk.openadsdk.Zq.sP() { // from class: com.bytedance.sdk.openadsdk.utils.JcM.3.1
                                @Override // com.bytedance.sdk.openadsdk.Zq.sP
                                public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                                    JSONObject jSONObject = new JSONObject();
                                    try {
                                        jSONObject.put("name", value.Sj());
                                        jSONObject.put("times", value.sP());
                                        jSONObject.put("runMaxTime", value.vS());
                                        jSONObject.put("waitMaxTime", value.HiB());
                                        long jSP = value.sP() == 0 ? 1 : value.sP();
                                        jSONObject.put("avgRunTime", value.EjP() / jSP);
                                        jSONObject.put("avgWaitTime", value.TKC() / jSP);
                                        jSONObject.put("poolType", vSVar.sP());
                                    } catch (Exception e11) {
                                        com.bytedance.sdk.component.utils.sU.Sj("ThreadUtils", "run: ", e11);
                                    }
                                    return com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj("pag_thread_pool_state").sP(jSONObject.toString());
                                }
                            });
                        }
                    }
                } catch (Throwable th2) {
                    th2.getMessage();
                }
            }
        });
        Sj = null;
        sP = false;
    }

    public static ExecutorService Dq() {
        return aa() ? TzV() : com.bytedance.sdk.component.Dq.vS.TKC();
    }

    public static ExecutorService EjP() {
        return aa() ? Zq() : com.bytedance.sdk.component.Dq.vS.EjP();
    }

    public static void EjP(final com.bytedance.sdk.component.Dq.Dq dq2) {
        if (dq2 == null || Yf.Sj) {
            return;
        }
        if (aa()) {
            sef().execute(new com.bytedance.sdk.component.Dq.TKC.sP(dq2.getName()) { // from class: com.bytedance.sdk.openadsdk.utils.JcM.9
                @Override // java.lang.Runnable
                public void run() {
                    dq2.run();
                }
            });
        } else {
            com.bytedance.sdk.component.Dq.vS.HiB(dq2);
        }
    }

    private static ThreadPoolExecutor Fmk() {
        int iXu;
        if (Sj == null) {
            synchronized (JcM.class) {
                try {
                    if (Sj == null) {
                        if (com.bytedance.sdk.openadsdk.core.settings.Fmk.TX()) {
                            iXu = com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().xu();
                            sP = true;
                        } else {
                            iXu = 4;
                        }
                        Sj = new ThreadPoolExecutor(iXu, Integer.MAX_VALUE, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    public static ExecutorService HiB() {
        return aa() ? uA() : com.bytedance.sdk.component.Dq.vS.sP();
    }

    public static void HiB(final com.bytedance.sdk.component.Dq.Dq dq2) {
        if (Yf.Sj) {
            return;
        }
        if (aa()) {
            sef().execute(new com.bytedance.sdk.component.Dq.TKC.sP(dq2.getName(), dq2) { // from class: com.bytedance.sdk.openadsdk.utils.JcM.2
                @Override // java.lang.Runnable
                public void run() {
                    dq2.run();
                }
            });
            return;
        }
        ThreadPoolExecutor threadPoolExecutorFmk = Fmk();
        threadPoolExecutorFmk.execute(dq2);
        if (sP || !com.bytedance.sdk.openadsdk.core.settings.Fmk.TX()) {
            return;
        }
        sP = true;
        threadPoolExecutorFmk.setCorePoolSize(com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().xu());
    }

    public static boolean Jcg() {
        String str = aa() ? "pag_log" : "csj_log";
        String name = Thread.currentThread().getName();
        if (TextUtils.isEmpty(name)) {
            return false;
        }
        return name.startsWith(str);
    }

    private static com.bytedance.sdk.component.Dq.TKC.vS RiZ() {
        com.bytedance.sdk.component.Dq.TKC.vS vSVar;
        com.bytedance.sdk.component.Dq.TKC.vS vSVar2 = Ym;
        if (!Sj(vSVar2)) {
            return vSVar2;
        }
        synchronized (JcM.class) {
            try {
                if (Sj(Ym)) {
                    try {
                        Ym = Sj("imgdisk", Ym);
                    } catch (Throwable th2) {
                        th2.getMessage();
                    }
                }
                vSVar = Ym;
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return vSVar;
    }

    private static com.bytedance.sdk.component.Dq.TKC.vS.Sj Sj(String str) {
        com.bytedance.sdk.component.Dq.TKC.vS.Sj sjSP = sP(str);
        try {
            if (com.bytedance.sdk.openadsdk.core.settings.Fmk.TX()) {
                sjSP.sP(true);
                JSONObject jSONObjectHcZ = com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().HcZ();
                JSONObject jSONObjectOptJSONObject = jSONObjectHcZ != null ? jSONObjectHcZ.optJSONObject(str) : null;
                if (jSONObjectOptJSONObject != null) {
                    sjSP.sP(true);
                    if (jSONObjectOptJSONObject.has("coreSize")) {
                        sjSP.Sj(jSONObjectOptJSONObject.optInt("coreSize"));
                    }
                    if (jSONObjectOptJSONObject.has("maxSize")) {
                        sjSP.sP(jSONObjectOptJSONObject.optInt("maxSize"));
                    }
                    if (jSONObjectOptJSONObject.has("createSize")) {
                        sjSP.TKC(jSONObjectOptJSONObject.optInt("createSize"));
                    }
                    if (jSONObjectOptJSONObject.has("keepAlive")) {
                        sjSP.Sj(jSONObjectOptJSONObject.optInt("keepAlive"));
                    }
                    if (jSONObjectOptJSONObject.has("allowCoreTimeOut")) {
                        sjSP.Sj(jSONObjectOptJSONObject.optBoolean("allowCoreTimeOut"));
                    }
                    if (jSONObjectOptJSONObject.has("reportLogThreshold")) {
                        sjSP.HiB(jSONObjectOptJSONObject.optInt("reportLogThreshold"));
                    }
                    if (jSONObjectOptJSONObject.has("logTaskCount")) {
                        sjSP.EjP(jSONObjectOptJSONObject.optInt("logTaskCount"));
                    }
                }
            }
        } catch (Throwable th2) {
            th2.getMessage();
        }
        return sjSP;
    }

    private static com.bytedance.sdk.component.Dq.TKC.vS Sj(String str, com.bytedance.sdk.component.Dq.TKC.vS vSVar) {
        com.bytedance.sdk.component.Dq.TKC.vS.Sj Sj2 = Sj(str);
        if (vSVar == null) {
            return Sj2.Sj();
        }
        vSVar.Sj(Sj2);
        return vSVar;
    }

    public static ScheduledExecutorService Sj() {
        return com.bytedance.sdk.component.Dq.vS.vS();
    }

    public static void Sj(final com.bytedance.sdk.component.Dq.Dq dq2) {
        if (Yf.Sj) {
            return;
        }
        if (aa()) {
            uA().execute(new com.bytedance.sdk.component.Dq.TKC.sP(dq2.getName()) { // from class: com.bytedance.sdk.openadsdk.utils.JcM.4
                @Override // java.lang.Runnable
                public void run() {
                    dq2.run();
                }
            });
        } else {
            com.bytedance.sdk.component.Dq.vS.Sj(dq2);
        }
    }

    public static void Sj(final com.bytedance.sdk.component.Dq.Dq dq2, int i11) {
        if (dq2 == null || Yf.Sj) {
            return;
        }
        if (!aa()) {
            com.bytedance.sdk.component.Dq.vS.Sj(dq2, 5, i11);
            return;
        }
        com.bytedance.sdk.component.Dq.TKC.sP sPVar = new com.bytedance.sdk.component.Dq.TKC.sP(dq2.getName()) { // from class: com.bytedance.sdk.openadsdk.utils.JcM.6
            @Override // java.lang.Runnable
            public void run() {
                dq2.run();
            }
        };
        sPVar.Sj(i11);
        TzV().execute(sPVar);
    }

    public static void Sj(com.bytedance.sdk.component.Dq.TKC.sP sPVar) {
        Ym().execute(sPVar);
    }

    public static void Sj(Runnable runnable) {
        if (runnable == null || Yf.Sj) {
            return;
        }
        if (vS()) {
            runnable.run();
        } else {
            com.bytedance.sdk.openadsdk.core.sef.TKC().post(runnable);
        }
    }

    private static boolean Sj(com.bytedance.sdk.component.Dq.TKC.vS vSVar) {
        if (vSVar != null) {
            return !vSVar.TKC() && com.bytedance.sdk.openadsdk.core.settings.Fmk.TX();
        }
        return true;
    }

    public static com.bytedance.sdk.component.Dq.TKC.vS TEQ() {
        com.bytedance.sdk.component.Dq.TKC.vS vSVar;
        com.bytedance.sdk.component.Dq.TKC.vS vSVar2 = uA;
        if (!Sj(vSVar2)) {
            return vSVar2;
        }
        synchronized (JcM.class) {
            try {
                if (Sj(uA)) {
                    try {
                        uA = Sj("express", uA);
                    } catch (Throwable th2) {
                        th2.getMessage();
                    }
                }
                vSVar = uA;
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return vSVar;
    }

    public static ExecutorService TKC() {
        return aa() ? RiZ() : com.bytedance.sdk.component.Dq.vS.TKC();
    }

    public static void TKC(final com.bytedance.sdk.component.Dq.Dq dq2) {
        if (dq2 == null || Yf.Sj) {
            return;
        }
        if (aa()) {
            Zq().execute(new com.bytedance.sdk.component.Dq.TKC.sP(dq2.getName()) { // from class: com.bytedance.sdk.openadsdk.utils.JcM.7
                @Override // java.lang.Runnable
                public void run() {
                    dq2.run();
                }
            });
        } else {
            com.bytedance.sdk.component.Dq.vS.TKC(dq2);
        }
    }

    public static void TKC(final com.bytedance.sdk.component.Dq.Dq dq2, int i11) {
        if (dq2 == null || Yf.Sj) {
            return;
        }
        if (aa()) {
            uvD().execute(new com.bytedance.sdk.component.Dq.TKC.sP(dq2.getName()) { // from class: com.bytedance.sdk.openadsdk.utils.JcM.10
                @Override // java.lang.Runnable
                public void run() {
                    dq2.run();
                }
            });
        } else {
            com.bytedance.sdk.component.Dq.vS.TKC(dq2, i11);
        }
    }

    private static com.bytedance.sdk.component.Dq.TKC.vS TzV() {
        com.bytedance.sdk.component.Dq.TKC.vS vSVar;
        com.bytedance.sdk.component.Dq.TKC.vS vSVar2 = Jcg;
        if (!Sj(vSVar2)) {
            return vSVar2;
        }
        synchronized (JcM.class) {
            try {
                if (Sj(Jcg)) {
                    try {
                        Jcg = Sj("io", Jcg);
                    } catch (Throwable th2) {
                        th2.getMessage();
                    }
                }
                vSVar = Jcg;
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return vSVar;
    }

    public static com.bytedance.sdk.component.Dq.TKC.vS Ym() {
        com.bytedance.sdk.component.Dq.TKC.vS vSVar;
        com.bytedance.sdk.component.Dq.TKC.vS vSVar2 = TEQ;
        if (!Sj(vSVar2)) {
            return vSVar2;
        }
        synchronized (JcM.class) {
            try {
                if (Sj(TEQ)) {
                    try {
                        TEQ = Sj("net", TEQ);
                    } catch (Throwable th2) {
                        th2.getMessage();
                    }
                }
                vSVar = TEQ;
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return vSVar;
    }

    private static com.bytedance.sdk.component.Dq.TKC.vS Zq() {
        com.bytedance.sdk.component.Dq.TKC.vS vSVar;
        com.bytedance.sdk.component.Dq.TKC.vS vSVar2 = EjP;
        if (!Sj(vSVar2)) {
            return vSVar2;
        }
        synchronized (JcM.class) {
            try {
                if (Sj(EjP)) {
                    try {
                        EjP = Sj("log", EjP);
                    } catch (Throwable th2) {
                        th2.getMessage();
                    }
                }
                vSVar = EjP;
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return vSVar;
    }

    public static boolean aa() {
        if (com.bytedance.sdk.openadsdk.core.settings.Fmk.TX()) {
            return com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().aZ();
        }
        return true;
    }

    private static com.bytedance.sdk.component.Dq.TKC.vS dNu() {
        com.bytedance.sdk.component.Dq.TKC.vS vSVar;
        com.bytedance.sdk.component.Dq.TKC.vS vSVar2 = Dq;
        if (!Sj(vSVar2)) {
            return vSVar2;
        }
        synchronized (JcM.class) {
            try {
                if (Sj(Dq)) {
                    try {
                        Dq = Sj("image", Dq);
                    } catch (Throwable th2) {
                        th2.getMessage();
                    }
                }
                vSVar = Dq;
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return vSVar;
    }

    private static com.bytedance.sdk.component.Dq.TKC.vS.Sj sP(String str) {
        if (TextUtils.isEmpty(str)) {
            str = TmcConstants.ROUTE_UNKNOWN;
        }
        com.bytedance.sdk.component.Dq.TKC.vS.Sj sj2 = new com.bytedance.sdk.component.Dq.TKC.vS.Sj();
        str.hashCode();
        switch (str) {
            case "express":
                return sj2.Sj(str).Sj(2).sP(4).TKC(0).Sj(10000L).Sj(true).HiB(-1).EjP(10).sP(false);
            case "ad":
                return sj2.Sj(str).Sj(4).sP(4).TKC(0).Sj(DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT).Sj(true).HiB(-1).EjP(10).sP(false);
            case "io":
                return sj2.Sj(str).Sj(4).sP(10).TKC(0).Sj(DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT).Sj(true).HiB(-1).EjP(10).sP(false);
            case "log":
                return sj2.Sj(str).Sj(4).sP(6).TKC(2).Sj(DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT).Sj(true).HiB(-1).EjP(10).sP(false);
            case "net":
                return sj2.Sj(str).Sj(10).sP(10).TKC(0).Sj(10000L).Sj(true).HiB(-1).EjP(10).sP(false);
            case "aidl":
                return sj2.Sj(str).Sj(2).sP(4).TKC(0).Sj(10000L).Sj(true).HiB(-1).EjP(10).sP(false);
            case "cache":
                return sj2.Sj(str).Sj(0).sP(0).TKC(0).Sj(5000L).Sj(true).HiB(-1).EjP(20).sP(false);
            case "image":
                return sj2.Sj(str).Sj(3).sP(3).TKC(0).Sj(DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT).Sj(true).HiB(-1).EjP(10).sP(false);
            case "monitor":
                return sj2.Sj(str).Sj(2).sP(2).TKC(0).Sj(10000L).Sj(true).HiB(-1).EjP(10).sP(false);
            case "imgdisk":
                return sj2.Sj(str).Sj(1).sP(2).TKC(3).Sj(10000L).Sj(true).HiB(-1).EjP(10).sP(false);
            default:
                return sj2.Sj(str).Sj(8).sP(16).TKC(2).Sj(DeviceOrientationRequest.OUTPUT_PERIOD_DEFAULT).Sj(true).HiB(-1).EjP(10).sP(false);
        }
    }

    public static ExecutorService sP() {
        return aa() ? dNu() : com.bytedance.sdk.component.Dq.vS.TEQ();
    }

    public static void sP(final com.bytedance.sdk.component.Dq.Dq dq2) {
        if (Yf.Sj) {
            return;
        }
        if (aa()) {
            TzV().execute(new com.bytedance.sdk.component.Dq.TKC.sP(dq2.getName()) { // from class: com.bytedance.sdk.openadsdk.utils.JcM.5
                @Override // java.lang.Runnable
                public void run() {
                    dq2.run();
                }
            });
        } else {
            com.bytedance.sdk.component.Dq.vS.sP(dq2);
        }
    }

    public static void sP(final com.bytedance.sdk.component.Dq.Dq dq2, int i11) {
        if (dq2 == null || Yf.Sj) {
            return;
        }
        if (!aa()) {
            com.bytedance.sdk.component.Dq.vS.sP(dq2, i11);
            return;
        }
        com.bytedance.sdk.component.Dq.TKC.sP sPVar = new com.bytedance.sdk.component.Dq.TKC.sP(dq2.getName()) { // from class: com.bytedance.sdk.openadsdk.utils.JcM.8
            @Override // java.lang.Runnable
            public void run() {
                dq2.run();
            }
        };
        sPVar.Sj(i11);
        Zq().execute(sPVar);
    }

    public static void sP(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.sef.TKC().removeCallbacks(runnable);
    }

    private static ThreadPoolExecutor sef() {
        com.bytedance.sdk.component.Dq.TKC.vS vSVar;
        com.bytedance.sdk.component.Dq.TKC.vS vSVar2 = TKC;
        if (!Sj(vSVar2)) {
            return vSVar2;
        }
        synchronized (JcM.class) {
            try {
                if (Sj(TKC)) {
                    try {
                        TKC = Sj(CommonLogUtil.TAG_AD, TKC);
                    } catch (Throwable th2) {
                        th2.getMessage();
                    }
                }
                vSVar = TKC;
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return vSVar;
    }

    public static com.bytedance.sdk.component.Dq.TKC.vS uA() {
        com.bytedance.sdk.component.Dq.TKC.vS vSVar;
        com.bytedance.sdk.component.Dq.TKC.vS vSVar2 = vS;
        if (!Sj(vSVar2)) {
            return vSVar2;
        }
        synchronized (JcM.class) {
            try {
                if (Sj(vS)) {
                    try {
                        vS = Sj("cache", vS);
                    } catch (Throwable th2) {
                        th2.getMessage();
                    }
                }
                vSVar = vS;
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return vSVar;
    }

    private static com.bytedance.sdk.component.Dq.TKC.vS uvD() {
        com.bytedance.sdk.component.Dq.TKC.vS vSVar;
        com.bytedance.sdk.component.Dq.TKC.vS vSVar2 = HiB;
        if (!Sj(vSVar2)) {
            return vSVar2;
        }
        synchronized (JcM.class) {
            try {
                if (Sj(HiB)) {
                    try {
                        HiB = Sj("aidl", HiB);
                    } catch (Throwable th2) {
                        th2.getMessage();
                    }
                }
                vSVar = HiB;
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return vSVar;
    }

    public static boolean vS() {
        return Looper.getMainLooper() == Looper.myLooper();
    }
}
