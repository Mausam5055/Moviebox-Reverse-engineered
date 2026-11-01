package com.bytedance.sdk.openadsdk.EjP.Sj;

/* JADX INFO: loaded from: classes2.dex */
public class Sj {
    public static final sP Sj = new sP(0);
    public static final sP sP = new sP(1);
    public static final sP TKC = new sP(2);
    public static final sP EjP = new sP(0);
    public static final sP HiB = new sP(1);
    public static final sP vS = new sP(2);

    public static void Sj() {
        try {
            sP sPVar = Sj;
            if (sPVar.Jcg.get()) {
                com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("tt_sdk_event_net_ad", "tt_sdk_event_net_ad", sPVar.Sj().toString());
            }
            sP sPVar2 = sP;
            if (sPVar2.Jcg.get()) {
                com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("tt_sdk_event_net_state", "tt_sdk_event_net_state", sPVar2.Sj().toString());
            }
            sP sPVar3 = TKC;
            if (sPVar3.Jcg.get()) {
                com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("tt_sdk_event_net_trail", "tt_sdk_event_net_trail", sPVar3.Sj().toString());
            }
            sP sPVar4 = EjP;
            if (sPVar4.Jcg.get()) {
                com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("tt_sdk_event_db_ad", "tt_sdk_event_db_ad", sPVar4.sP().toString());
            }
            sP sPVar5 = HiB;
            if (sPVar5.Jcg.get()) {
                com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("tt_sdk_event_db_state", "tt_sdk_event_db_state", sPVar5.sP().toString());
            }
            sP sPVar6 = vS;
            if (sPVar6.Jcg.get()) {
                com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("tt_sdk_event_db_trail", "tt_sdk_event_db_trail", sPVar6.sP().toString());
            }
        } catch (Throwable unused) {
        }
    }

    public static void Sj(sP sPVar) {
        try {
            sPVar.Jcg.getAndSet(true);
            sPVar.HiB.incrementAndGet();
        } catch (Throwable unused) {
        }
    }

    public static void Sj(sP sPVar, boolean z10) {
        try {
            sPVar.Jcg.getAndSet(true);
            if (z10) {
                sPVar.Sj.incrementAndGet();
            } else {
                sPVar.sP.incrementAndGet();
            }
        } catch (Throwable unused) {
        }
    }

    public static void Sj(sP sPVar, boolean z10, int i11, long j11) {
        try {
            sPVar.Jcg.getAndSet(true);
            if (z10) {
                sPVar.Sj.incrementAndGet();
                sPVar.TKC.addAndGet(j11);
                return;
            }
            sPVar.sP.incrementAndGet();
            Integer num = sPVar.vS.get(Integer.valueOf(i11));
            if (num != null) {
                sPVar.vS.put(Integer.valueOf(i11), Integer.valueOf(num.intValue() + 1));
            } else {
                sPVar.vS.put(Integer.valueOf(i11), 1);
            }
        } catch (Throwable unused) {
        }
    }

    public static void sP() {
        try {
            com.bytedance.sdk.openadsdk.Zq.TKC.sP("net_upload_monitor", com.bytedance.sdk.openadsdk.multipro.EjP.Sj.sP("tt_sdk_event_net_ad", "tt_sdk_event_net_ad", ""));
            com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("tt_sdk_event_net_ad");
            com.bytedance.sdk.openadsdk.Zq.TKC.sP("net_upload_monitor", com.bytedance.sdk.openadsdk.multipro.EjP.Sj.sP("tt_sdk_event_net_state", "tt_sdk_event_net_state", ""));
            com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("tt_sdk_event_net_state");
            com.bytedance.sdk.openadsdk.Zq.TKC.sP("net_upload_monitor", com.bytedance.sdk.openadsdk.multipro.EjP.Sj.sP("tt_sdk_event_net_trail", "tt_sdk_event_net_trail", ""));
            com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("tt_sdk_event_net_trail");
            com.bytedance.sdk.openadsdk.Zq.TKC.sP("db_upload_monitor", com.bytedance.sdk.openadsdk.multipro.EjP.Sj.sP("tt_sdk_event_db_ad", "tt_sdk_event_db_ad", ""));
            com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("tt_sdk_event_db_ad");
            com.bytedance.sdk.openadsdk.Zq.TKC.sP("db_upload_monitor", com.bytedance.sdk.openadsdk.multipro.EjP.Sj.sP("tt_sdk_event_db_state", "tt_sdk_event_db_state", ""));
            com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("tt_sdk_event_db_state");
            com.bytedance.sdk.openadsdk.Zq.TKC.sP("db_upload_monitor", com.bytedance.sdk.openadsdk.multipro.EjP.Sj.sP("tt_sdk_event_db_trail", "tt_sdk_event_db_trail", ""));
            com.bytedance.sdk.openadsdk.multipro.EjP.Sj.Sj("tt_sdk_event_db_trail");
        } catch (Throwable unused) {
        }
    }
}
