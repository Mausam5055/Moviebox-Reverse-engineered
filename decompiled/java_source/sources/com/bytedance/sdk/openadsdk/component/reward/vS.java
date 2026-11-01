package com.bytedance.sdk.openadsdk.component.reward;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.os.SystemClock;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.activity.TTAdActivity;
import com.bytedance.sdk.openadsdk.activity.TTFullScreenExpressVideoActivity;
import com.bytedance.sdk.openadsdk.activity.TTFullScreenVideoActivity;
import com.bytedance.sdk.openadsdk.activity.TTInterstitialActivity;
import com.bytedance.sdk.openadsdk.activity.TTInterstitialExpressActivity;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdInteractionCallback;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdInteractionListener;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.kF;
import com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.LqL;
import com.bytedance.sdk.openadsdk.utils.ib;
import f6.a;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
class vS extends PAGInterstitialAd {
    private boolean Dq;
    private final Context Sj;
    private com.bytedance.sdk.openadsdk.Sj.TKC.sP TKC;
    private final com.bytedance.sdk.openadsdk.core.model.Sj sP;
    private boolean uA;
    private final AtomicBoolean HiB = new AtomicBoolean(false);
    private boolean vS = false;
    private boolean EjP = false;
    private final String Jcg = ib.Sj();

    vS(Context context, com.bytedance.sdk.openadsdk.core.model.Sj sj2) {
        this.Sj = context;
        this.sP = sj2;
    }

    private void Sj(final int i11) {
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            JcM.TKC(new com.bytedance.sdk.component.Dq.Dq("FullScreen_registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.component.reward.vS.3
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.multipro.aidl.Sj Sj = com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj();
                    if (i11 != 1 || vS.this.TKC == null) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.multipro.aidl.sP.TKC tkc = new com.bytedance.sdk.openadsdk.multipro.aidl.sP.TKC(vS.this.TKC);
                    IListenerManager iListenerManagerAsInterface = IListenerManager.Stub.asInterface(Sj.Sj(1));
                    if (iListenerManagerAsInterface != null) {
                        try {
                            iListenerManagerAsInterface.registerFullVideoListener(vS.this.Jcg, tkc);
                        } catch (RemoteException e11) {
                            sU.sP("TTFullScreenVideoAdImpl", e11.getMessage());
                        }
                    }
                }
            }, 5);
        }
    }

    private static boolean Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        if (sUVar == null) {
            return false;
        }
        int iDx = sUVar.dx();
        return (sUVar.ley() != 2 || iDx == 5 || iDx == 33 || iDx == 6 || iDx == 19 || iDx == 12) ? false : true;
    }

    public void Sj() {
        if (this.HiB.get()) {
            return;
        }
        this.EjP = true;
    }

    public void Sj(boolean z10) {
        this.vS = z10;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Object getExtraInfo(String str) {
        com.bytedance.sdk.openadsdk.core.model.Sj sj2 = this.sP;
        if (sj2 == null || sj2.vS() == null || this.sP.vS().QZ() == null) {
            return null;
        }
        try {
            return this.sP.vS().QZ().get(str);
        } catch (Throwable th2) {
            sU.sP("TTFullScreenVideoAdImpl", th2.getMessage());
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PangleAd
    public Map<String, Object> getMediaExtraInfo() {
        com.bytedance.sdk.openadsdk.core.model.Sj sj2 = this.sP;
        if (sj2 == null || sj2.vS() == null) {
            return null;
        }
        return this.sP.vS().QZ();
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void loss(Double d11, String str, String str2) {
        if (this.uA) {
            return;
        }
        LqL.Sj(this.sP.vS(), d11, str, str2);
        this.uA = true;
    }

    @Override // com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd
    public void setAdInteractionCallback(PAGInterstitialAdInteractionCallback pAGInterstitialAdInteractionCallback) {
        this.TKC = new com.bytedance.sdk.openadsdk.component.TKC.Sj(pAGInterstitialAdInteractionCallback);
        Sj(1);
    }

    @Override // com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd
    public void setAdInteractionListener(PAGInterstitialAdInteractionListener pAGInterstitialAdInteractionListener) {
        this.TKC = new com.bytedance.sdk.openadsdk.component.TKC.Sj(pAGInterstitialAdInteractionListener);
        Sj(1);
    }

    /* JADX WARN: Code duplicated, block: B:57:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:60:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:61:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:63:0x0101  */
    /* JADX WARN: Code duplicated, block: B:66:0x0119  */
    /* JADX WARN: Code duplicated, block: B:74:? A[RETURN, SYNTHETIC] */
    @Override // com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd
    public void show(Activity activity) {
        Intent intent;
        Intent intent2;
        Intent intent3;
        final boolean z10;
        if (activity != null && activity.isFinishing()) {
            activity = null;
        }
        com.bytedance.sdk.openadsdk.core.model.Sj sj2 = this.sP;
        if (sj2 == null || !sj2.HiB()) {
            return;
        }
        boolean zJcg = this.sP.Jcg();
        final com.bytedance.sdk.openadsdk.core.model.sU sUVarVS = this.sP.vS();
        if (!a.x()) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVarVS, "fullscreen_interstitial_ad", "showFullScreenVideoAd error2: not main looper");
            throw new IllegalStateException("Cannot be called in a child thread —— TTFullScreenVideoAd.showFullScreenVideoAd");
        }
        List<com.bytedance.sdk.openadsdk.core.model.sU> listEjP = this.sP.EjP();
        if (listEjP != null) {
            Iterator<com.bytedance.sdk.openadsdk.core.model.sU> it = listEjP.iterator();
            while (it.hasNext()) {
                IPMiBroadcastReceiver.Sj(this.Sj, it.next());
            }
        }
        if (this.HiB.get()) {
            return;
        }
        this.HiB.set(true);
        if (sUVarVS == null || (sUVarVS.UHs() == null && sUVarVS.Bml() == null)) {
            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVarVS, "fullscreen_interstitial_ad", "materialMeta error ");
            return;
        }
        Context contextSj = activity == null ? this.Sj : activity;
        if (contextSj == null) {
            contextSj = dNu.Sj();
        }
        if (!com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().eI() || !Dq.Sj(this.sP)) {
            if (zJcg) {
                intent2 = new Intent(contextSj, (Class<?>) TTFullScreenExpressVideoActivity.class);
            } else if (!Sj(sUVarVS)) {
                intent = com.bytedance.sdk.openadsdk.component.reward.sP.uA.Sj(sUVarVS) ? new Intent(contextSj, (Class<?>) TTInterstitialActivity.class) : new Intent(contextSj, (Class<?>) TTFullScreenVideoActivity.class);
            } else if (com.bytedance.sdk.openadsdk.component.reward.sP.uA.Sj(sUVarVS)) {
                intent = new Intent(contextSj, (Class<?>) TTInterstitialExpressActivity.class);
            } else {
                intent2 = new Intent(contextSj, (Class<?>) TTFullScreenExpressVideoActivity.class);
            }
            intent3 = intent2;
            intent3.putExtra("start_show_time", SystemClock.elapsedRealtime());
            com.bytedance.sdk.openadsdk.component.reward.Sj.sP.Sj(intent3, activity, this.EjP, this.sP, this.Jcg);
            intent3.putExtra("is_verity_playable", this.vS);
            if (!com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                kF.Sj().Sj(this.TKC);
                this.TKC = null;
            }
            if (com.bytedance.sdk.openadsdk.dx.Sj.Sj("start_activity_async", 0) == 1) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                com.bytedance.sdk.openadsdk.dNu.TKC.Sj(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.component.reward.vS.1
                    @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                    public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                        com.bytedance.sdk.openadsdk.dNu.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                        sj3.sP("start_activity");
                        sj3.EjP("fullscreen_interstitial_ad");
                        return sj3;
                    }
                });
            }
            final long jElapsedRealtime = SystemClock.elapsedRealtime();
            com.bytedance.sdk.component.utils.sP.Sj(contextSj, intent3, new com.bytedance.sdk.component.utils.sP.InterfaceC0229sP() { // from class: com.bytedance.sdk.openadsdk.component.reward.vS.2
                @Override // com.bytedance.sdk.component.utils.sP.InterfaceC0229sP
                public void Sj() {
                    if (vS.this.vS) {
                        try {
                            com.bytedance.sdk.openadsdk.Zq.TKC.Sj().Sj(sUVarVS.UHs().z());
                        } catch (Throwable unused) {
                        }
                    }
                    if (z10) {
                        com.bytedance.sdk.openadsdk.dNu.TKC.sP(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.component.reward.vS.2.1
                            @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                            public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                com.bytedance.sdk.openadsdk.dNu.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                sj3.sP("start_activity");
                                sj3.EjP("fullscreen_interstitial_ad");
                                return sj3;
                            }
                        });
                        final long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                        com.bytedance.sdk.openadsdk.Zq.TKC.Sj("start_activity_action", false, new com.bytedance.sdk.openadsdk.Zq.sP() { // from class: com.bytedance.sdk.openadsdk.component.reward.vS.2.2
                            @Override // com.bytedance.sdk.openadsdk.Zq.sP
                            public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                                JSONObject jSONObject = new JSONObject();
                                jSONObject.put("duration", jElapsedRealtime2);
                                return com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj("start_activity_action").sP(jSONObject.toString());
                            }
                        });
                    }
                }

                @Override // com.bytedance.sdk.component.utils.sP.InterfaceC0229sP
                public void Sj(Throwable th2) {
                    if (vS.this.vS) {
                        try {
                            com.bytedance.sdk.openadsdk.Zq.TKC.Sj().Sj(sUVarVS.UHs().z(), -1, th2 != null ? th2.getMessage() : "playable tool error open");
                        } catch (Throwable unused) {
                        }
                    }
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVarVS, "fullscreen_interstitial_ad", "activity start  fail ");
                    if (z10) {
                        com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.component.reward.vS.2.3
                            @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                            public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                com.bytedance.sdk.openadsdk.dNu.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                sj3.sP("start_activity");
                                sj3.EjP("fullscreen_interstitial_ad");
                                return sj3;
                            }
                        });
                    }
                }
            }, true);
            if (zJcg) {
            }
            Sj.Sj(this.sP.vS(), this.EjP, false);
        }
        intent = new Intent(contextSj, (Class<?>) TTAdActivity.class);
        intent3 = intent;
        intent3.putExtra("start_show_time", SystemClock.elapsedRealtime());
        com.bytedance.sdk.openadsdk.component.reward.Sj.sP.Sj(intent3, activity, this.EjP, this.sP, this.Jcg);
        intent3.putExtra("is_verity_playable", this.vS);
        if (!com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            kF.Sj().Sj(this.TKC);
            this.TKC = null;
        }
        if (com.bytedance.sdk.openadsdk.dx.Sj.Sj("start_activity_async", 0) == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            com.bytedance.sdk.openadsdk.dNu.TKC.Sj(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.component.reward.vS.1
                @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                    com.bytedance.sdk.openadsdk.dNu.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                    sj3.sP("start_activity");
                    sj3.EjP("fullscreen_interstitial_ad");
                    return sj3;
                }
            });
        }
        final long jElapsedRealtime2 = SystemClock.elapsedRealtime();
        com.bytedance.sdk.component.utils.sP.Sj(contextSj, intent3, new com.bytedance.sdk.component.utils.sP.InterfaceC0229sP() { // from class: com.bytedance.sdk.openadsdk.component.reward.vS.2
            @Override // com.bytedance.sdk.component.utils.sP.InterfaceC0229sP
            public void Sj() {
                if (vS.this.vS) {
                    try {
                        com.bytedance.sdk.openadsdk.Zq.TKC.Sj().Sj(sUVarVS.UHs().z());
                    } catch (Throwable unused) {
                    }
                }
                if (z10) {
                    com.bytedance.sdk.openadsdk.dNu.TKC.sP(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.component.reward.vS.2.1
                        @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                        public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                            com.bytedance.sdk.openadsdk.dNu.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                            sj3.sP("start_activity");
                            sj3.EjP("fullscreen_interstitial_ad");
                            return sj3;
                        }
                    });
                    final long jElapsedRealtime3 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                    com.bytedance.sdk.openadsdk.Zq.TKC.Sj("start_activity_action", false, new com.bytedance.sdk.openadsdk.Zq.sP() { // from class: com.bytedance.sdk.openadsdk.component.reward.vS.2.2
                        @Override // com.bytedance.sdk.openadsdk.Zq.sP
                        public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("duration", jElapsedRealtime3);
                            return com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj("start_activity_action").sP(jSONObject.toString());
                        }
                    });
                }
            }

            @Override // com.bytedance.sdk.component.utils.sP.InterfaceC0229sP
            public void Sj(Throwable th2) {
                if (vS.this.vS) {
                    try {
                        com.bytedance.sdk.openadsdk.Zq.TKC.Sj().Sj(sUVarVS.UHs().z(), -1, th2 != null ? th2.getMessage() : "playable tool error open");
                    } catch (Throwable unused) {
                    }
                }
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVarVS, "fullscreen_interstitial_ad", "activity start  fail ");
                if (z10) {
                    com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.component.reward.vS.2.3
                        @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                        public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                            com.bytedance.sdk.openadsdk.dNu.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                            sj3.sP("start_activity");
                            sj3.EjP("fullscreen_interstitial_ad");
                            return sj3;
                        }
                    });
                }
            }
        }, true);
        if (zJcg) {
            Sj.Sj(this.sP.vS(), this.EjP, false);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGClientBidding
    public void win(Double d11) {
        if (this.Dq) {
            return;
        }
        LqL.Sj(this.sP.vS(), d11);
        this.Dq = true;
    }
}
