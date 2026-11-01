package com.bytedance.sdk.openadsdk.core.Dq;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Handler;
import android.os.Looper;
import android.os.MessageQueue;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.JcM;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class aa {
    private static String Sj;
    private static String sP;

    public static void Sj() {
        com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().Sj(new com.bytedance.sdk.component.adexpress.Sj.Sj.sP() { // from class: com.bytedance.sdk.openadsdk.core.Dq.aa.1
            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.sP
            public int Sj(String str, ContentValues contentValues, String str2, String[] strArr) {
                return com.bytedance.sdk.openadsdk.multipro.Sj.Sj.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj(), str, contentValues, str2, strArr);
            }

            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.sP
            public int Sj(String str, String str2, String[] strArr) {
                return com.bytedance.sdk.openadsdk.multipro.Sj.Sj.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj(), str, str2, strArr);
            }

            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.sP
            public Cursor Sj(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
                return new com.bytedance.sdk.openadsdk.multipro.aidl.TKC(com.bytedance.sdk.openadsdk.multipro.Sj.Sj.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj(), str, strArr, str2, strArr2, str3, str4, str5));
            }

            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.sP
            public void Sj(String str, ContentValues contentValues) {
                com.bytedance.sdk.openadsdk.multipro.Sj.Sj.Sj(com.bytedance.sdk.openadsdk.core.dNu.Sj(), str, contentValues);
            }
        });
        com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().Sj(new com.bytedance.sdk.component.adexpress.Sj.Sj.TKC() { // from class: com.bytedance.sdk.openadsdk.core.Dq.aa.2

            /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.Dq.aa$2$1, reason: invalid class name */
            class AnonymousClass1 implements Runnable {
                final /* synthetic */ MessageQueue[] Sj;
                final /* synthetic */ int TKC;
                final /* synthetic */ int sP;

                AnonymousClass1(MessageQueue[] messageQueueArr, int i11, int i12) {
                    this.Sj = messageQueueArr;
                    this.sP = i11;
                    this.TKC = i12;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.Sj[0] = Looper.myQueue();
                    Sj(this.Sj[0], this.sP, this.TKC);
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void Sj(final MessageQueue messageQueue, final int i11) {
                if (messageQueue == null || i11 <= 0) {
                    return;
                }
                messageQueue.addIdleHandler(new MessageQueue.IdleHandler() { // from class: com.bytedance.sdk.openadsdk.core.Dq.aa.2.3
                    @Override // android.os.MessageQueue.IdleHandler
                    public boolean queueIdle() {
                        new com.bytedance.sdk.openadsdk.core.widget.Sj.sP(i11, true, messageQueue).sP();
                        return false;
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void Sj(final MessageQueue messageQueue, final int i11, final int i12) {
                if (messageQueue != null) {
                    final int iSj = com.bytedance.sdk.openadsdk.dx.Sj.Sj("ad_load_and_render_opt", "w_p_delay", 500);
                    Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.Dq.aa.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            sP(messageQueue, i11);
                            Sj(messageQueue, i12);
                        }
                    };
                    if (iSj > 0) {
                        com.bytedance.sdk.openadsdk.core.sef.TKC().postDelayed(runnable, iSj);
                    } else {
                        runnable.run();
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void sP(final MessageQueue messageQueue, final int i11) {
                if (messageQueue == null || i11 <= 0) {
                    return;
                }
                messageQueue.addIdleHandler(new MessageQueue.IdleHandler() { // from class: com.bytedance.sdk.openadsdk.core.Dq.aa.2.4
                    @Override // android.os.MessageQueue.IdleHandler
                    public boolean queueIdle() {
                        new com.bytedance.sdk.openadsdk.core.widget.Sj.sP(i11, false, messageQueue).sP();
                        return false;
                    }
                });
            }

            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.TKC
            public String Dq() {
                return com.bytedance.sdk.openadsdk.core.uA.sP().EjP();
            }

            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.TKC
            public void EjP() {
                int iDwU = com.bytedance.sdk.openadsdk.core.dNu.EjP().dwU();
                int iSdp = com.bytedance.sdk.openadsdk.core.dNu.EjP().sdp();
                if (iDwU == 0 && iSdp == 0) {
                    return;
                }
                com.bytedance.sdk.component.adexpress.HiB.HiB.Sj().Sj(iDwU);
                com.bytedance.sdk.component.adexpress.HiB.HiB.Sj().sP(iSdp);
                int iVS = com.bytedance.sdk.openadsdk.dx.Sj.vS();
                int iHiB = com.bytedance.sdk.openadsdk.dx.Sj.HiB();
                if (iVS == 0 && iHiB == 0) {
                    return;
                }
                Sj(com.bytedance.sdk.openadsdk.core.sef.TKC().getLooper().getQueue(), iHiB, iVS);
            }

            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.TKC
            public ExecutorService Fmk() {
                if (JcM.aa()) {
                    return JcM.HiB();
                }
                return null;
            }

            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.TKC
            public com.bytedance.sdk.component.adexpress.Sj.TKC.Sj HiB() {
                return com.bytedance.sdk.openadsdk.core.dNu.TKC().Sj();
            }

            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.TKC
            public com.bytedance.sdk.component.Jcg.sP.sP Jcg() {
                com.bytedance.sdk.component.Jcg.sP.sP sPVarTKC = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().TKC();
                sPVarTKC.Sj(8);
                sPVarTKC.Sj("express_get");
                return sPVarTKC;
            }

            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.TKC
            public int Sj() {
                if (com.bytedance.sdk.openadsdk.core.dNu.EjP() == null) {
                    return 0;
                }
                return com.bytedance.sdk.openadsdk.core.dNu.EjP().EjP();
            }

            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.TKC
            public int TEQ() {
                return com.bytedance.sdk.openadsdk.core.dNu.EjP().dwU();
            }

            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.TKC
            public Handler TKC() {
                return com.bytedance.sdk.openadsdk.core.sef.TKC();
            }

            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.TKC
            public int TzV() {
                return com.bytedance.sdk.openadsdk.dx.Sj.Sj("gaussian_blur_type", 0);
            }

            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.TKC
            public int Ym() {
                return com.bytedance.sdk.openadsdk.core.dNu.EjP().sdp();
            }

            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.TKC
            public int Zq() {
                return FPG.TKC(com.bytedance.sdk.openadsdk.core.dNu.Sj());
            }

            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.TKC
            public int aa() {
                return 0;
            }

            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.TKC
            public boolean dNu() {
                return com.bytedance.sdk.openadsdk.dx.Sj.Sj("destroy_render_script", true);
            }

            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.TKC
            public Context sP() {
                return com.bytedance.sdk.openadsdk.core.dNu.Sj();
            }

            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.TKC
            public ExecutorService sef() {
                if (JcM.aa()) {
                    return JcM.TEQ();
                }
                return null;
            }

            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.TKC
            public int uA() {
                return 1;
            }

            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.TKC
            public int uvD() {
                return FPG.HiB(com.bytedance.sdk.openadsdk.core.dNu.Sj());
            }

            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.TKC
            public com.bytedance.sdk.component.Jcg.sP.Sj vS() {
                com.bytedance.sdk.component.Jcg.sP.Sj sjEjP = com.bytedance.sdk.openadsdk.TzV.sP.Sj().sP().EjP();
                sjEjP.Sj(8);
                sjEjP.Sj("express_down");
                return sjEjP;
            }
        });
        com.bytedance.sdk.component.adexpress.Sj.Sj.Sj.Sj().Sj(new com.bytedance.sdk.component.adexpress.Sj.Sj.EjP() { // from class: com.bytedance.sdk.openadsdk.core.Dq.aa.3
            @Override // com.bytedance.sdk.component.adexpress.Sj.Sj.EjP
            public void Sj(int i11) {
                com.bytedance.sdk.openadsdk.Zq.TKC.Sj().Sj(com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().sP(i11).vS(com.bytedance.sdk.openadsdk.core.Dq.Sj(i11)));
            }
        });
        com.bytedance.sdk.component.uA.Sj.Sj.Sj().Sj(new com.bytedance.sdk.component.uA.Sj.sP() { // from class: com.bytedance.sdk.openadsdk.core.Dq.aa.4
            @Override // com.bytedance.sdk.component.uA.Sj.sP
            public void Sj(com.bytedance.sdk.component.uA.sP.Sj sj2, String str, final String str2, final JSONObject jSONObject) {
                if (sj2 != null) {
                    com.bytedance.sdk.openadsdk.core.model.sU sUVarVS = com.bytedance.sdk.openadsdk.core.model.sU.vS();
                    sUVarVS.dx(sj2.Sj());
                    sUVarVS.sU(sj2.sP());
                    sUVarVS.TzV(sj2.TKC());
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj(System.currentTimeMillis(), sUVarVS, str, str2, new com.bytedance.sdk.openadsdk.Zq.TKC.Sj() { // from class: com.bytedance.sdk.openadsdk.core.Dq.aa.4.1
                        @Override // com.bytedance.sdk.openadsdk.Zq.TKC.Sj
                        public JSONObject Sj() {
                            return jSONObject;
                        }
                    });
                }
            }

            @Override // com.bytedance.sdk.component.uA.Sj.sP
            public void Sj(com.bytedance.sdk.component.uA.sP.Sj sj2, String str, String str2, JSONObject jSONObject, long j11) {
                com.bytedance.sdk.openadsdk.core.model.sU sUVarVS = com.bytedance.sdk.openadsdk.core.model.sU.vS();
                sUVarVS.dx(sj2.Sj());
                sUVarVS.sU(sj2.sP());
                sUVarVS.TzV(sj2.TKC());
                com.bytedance.sdk.openadsdk.EjP.TKC.sP(sUVarVS, str, str2, jSONObject, j11);
            }

            @Override // com.bytedance.sdk.component.uA.Sj.sP
            public void Sj(String str, String str2, JSONObject jSONObject) {
                com.bytedance.sdk.openadsdk.EjP.TKC.TKC(com.bytedance.sdk.openadsdk.utils.sP.Sj(), str, str2, jSONObject);
            }
        });
    }

    public static String TKC() {
        Map<String, com.bytedance.sdk.component.adexpress.Sj.TKC.Sj> mapSj;
        com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sj2;
        String strTKC;
        if (sP == null) {
            sP = com.bytedance.sdk.openadsdk.multipro.EjP.EjP.sP("tt_sp", "js_render_v3_ver", "");
        }
        com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sjSP = com.bytedance.sdk.component.adexpress.Sj.sP.Dq.sP();
        if (sjSP != null && (mapSj = sjSP.Sj()) != null && (sj2 = mapSj.get("v3")) != null && (strTKC = sj2.TKC()) != null && !strTKC.equals(sP)) {
            sP = strTKC;
            com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("tt_sp", "js_render_v3_ver", strTKC);
        }
        return sP;
    }

    @NonNull
    public static String sP() {
        String strTKC;
        if (Sj == null) {
            Sj = com.bytedance.sdk.openadsdk.multipro.EjP.EjP.sP("tt_sp", "js_render_ver", "");
        }
        com.bytedance.sdk.component.adexpress.Sj.TKC.Sj sjSP = com.bytedance.sdk.component.adexpress.Sj.sP.Dq.sP();
        if (sjSP != null && (strTKC = sjSP.TKC()) != null && !strTKC.equals(Sj)) {
            Sj = strTKC;
            com.bytedance.sdk.openadsdk.multipro.EjP.EjP.Sj("tt_sp", "js_render_ver", strTKC);
        }
        return Sj;
    }
}
