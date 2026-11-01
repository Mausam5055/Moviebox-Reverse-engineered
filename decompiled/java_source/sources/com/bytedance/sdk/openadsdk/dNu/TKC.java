package com.bytedance.sdk.openadsdk.dNu;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.bytedance.sdk.component.utils.Dq;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.sef;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.miniutils.constant.TimeConstants;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class TKC {
    private static volatile Handler EjP;
    private static volatile Sj Sj;
    private static volatile HandlerThread TKC = Dq.Sj("pag__bus_monitor", 0);
    private static Boolean sP;

    /* JADX INFO: Access modifiers changed from: private */
    public static Handler HiB() {
        if (TKC == null || !TKC.isAlive()) {
            synchronized (sef.class) {
                try {
                    if (TKC == null || !TKC.isAlive()) {
                        TKC = Dq.Sj("csj_init_handle", -1);
                        EjP = new Handler(TKC.getLooper());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        } else if (EjP == null) {
            synchronized (sef.class) {
                try {
                    if (EjP == null) {
                        EjP = new Handler(TKC.getLooper());
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
        return EjP;
    }

    public static Sj Sj() {
        if (Sj == null) {
            synchronized (TKC.class) {
                try {
                    if (Sj == null) {
                        Sj = Sj.Sj(new sP() { // from class: com.bytedance.sdk.openadsdk.dNu.TKC.1
                            @Override // com.bytedance.sdk.openadsdk.dNu.sP
                            public Context getContext() {
                                return dNu.Sj();
                            }

                            @Override // com.bytedance.sdk.openadsdk.dNu.sP
                            public Handler getHandler() {
                                return TKC.HiB();
                            }

                            @Override // com.bytedance.sdk.openadsdk.dNu.sP
                            public int getOnceLogCount() {
                                int iSj = com.bytedance.sdk.openadsdk.dx.Sj.Sj("bus_monitor_config", "once_count", 10);
                                if (iSj > 100 || iSj < 5) {
                                    return 10;
                                }
                                return iSj;
                            }

                            @Override // com.bytedance.sdk.openadsdk.dNu.sP
                            public int getOnceLogInterval() {
                                int iSj = com.bytedance.sdk.openadsdk.dx.Sj.Sj("bus_monitor_config", "once_interval", 10000);
                                if (iSj < 10000) {
                                    return 10000;
                                }
                                return iSj;
                            }

                            @Override // com.bytedance.sdk.openadsdk.dNu.sP
                            public HandlerThread getSafeHandlerThread(String str, int i11) {
                                return Dq.Sj(str, i11);
                            }

                            @Override // com.bytedance.sdk.openadsdk.dNu.sP
                            public int getUploadIntervalTime() {
                                int iSj = com.bytedance.sdk.openadsdk.dx.Sj.Sj("bus_monitor_config", "interval", 43200000);
                                return iSj < 3600000 ? TimeConstants.DAY : iSj;
                            }

                            @Override // com.bytedance.sdk.openadsdk.dNu.sP
                            public boolean isMonitorOpen() {
                                if (TKC.sP != null) {
                                    return TKC.sP.booleanValue();
                                }
                                Boolean unused = TKC.sP = Boolean.valueOf(com.bytedance.sdk.openadsdk.dx.Sj.Sj("bus_monitor_config", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, 0) == 1);
                                return TKC.sP.booleanValue();
                            }

                            @Override // com.bytedance.sdk.openadsdk.dNu.sP
                            public void onMonitorUpload(List<com.bytedance.sdk.openadsdk.dNu.sP.Sj> list) {
                                if (list == null || list.isEmpty()) {
                                    return;
                                }
                                for (final com.bytedance.sdk.openadsdk.dNu.sP.Sj sj2 : list) {
                                    com.bytedance.sdk.openadsdk.Zq.TKC.Sj();
                                    com.bytedance.sdk.openadsdk.Zq.TKC.Sj("bus_monitor", false, new com.bytedance.sdk.openadsdk.Zq.sP() { // from class: com.bytedance.sdk.openadsdk.dNu.TKC.1.1
                                        @Override // com.bytedance.sdk.openadsdk.Zq.sP
                                        public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                                            JSONObject jSONObject = new JSONObject();
                                            try {
                                                jSONObject.put("sdk_version", sj2.sP());
                                                jSONObject.put(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, sj2.TKC());
                                                jSONObject.put("start_count", sj2.EjP());
                                                jSONObject.put("success_count", sj2.HiB());
                                                jSONObject.put("fail_count", sj2.vS());
                                                jSONObject.put("rit", sj2.Jcg());
                                                jSONObject.put("tag", sj2.Dq());
                                                jSONObject.put("label", sj2.uA());
                                                jSONObject.put("mediation", sj2.Ym());
                                                jSONObject.put("is_init", sj2.aa());
                                                jSONObject.put("extra", sj2.Fmk());
                                                return com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj("bus_monitor").sP(jSONObject.toString());
                                            } catch (Exception e11) {
                                                sU.Sj("BusMonitorUtils", "onMonitorUpload: ", e11);
                                                return null;
                                            }
                                        }
                                    });
                                }
                            }
                        });
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    public static void Sj(EjP ejP) {
        Sj().Sj(new HiB(ejP, 1, 0, 0));
    }

    public static void TKC(EjP ejP) {
        Sj().Sj(new HiB(ejP, 0, 0, 1));
    }

    public static void sP() {
        Sj().Sj(true);
    }

    public static void sP(EjP ejP) {
        Sj().Sj(new HiB(ejP, 0, 1, 0));
    }
}
