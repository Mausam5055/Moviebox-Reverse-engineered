package com.bytedance.sdk.openadsdk.component.reward;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.activity.TTAdActivity;
import com.bytedance.sdk.openadsdk.activity.TTRewardExpressVideoActivity;
import com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdInteractionCallback;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdInteractionListener;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.kF;
import com.bytedance.sdk.openadsdk.core.model.TzV;
import com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.JcM;
import com.bytedance.sdk.openadsdk.utils.LqL;
import com.bytedance.sdk.openadsdk.utils.ib;
import f6.a;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class Dq extends PAGRewardedAd {
    private boolean Dq;
    private com.bytedance.sdk.openadsdk.Sj.HiB.Sj EjP;
    private boolean HiB;
    private final Context Sj;
    private final AdSlot TKC;
    private final com.bytedance.sdk.openadsdk.core.model.Sj sP;
    private boolean uA;
    private final AtomicBoolean vS = new AtomicBoolean(false);
    private final String Jcg = ib.Sj();

    Dq(Context context, com.bytedance.sdk.openadsdk.core.model.Sj sj2, AdSlot adSlot) {
        this.Sj = context;
        this.sP = sj2;
        this.TKC = adSlot;
    }

    private void Sj(final int i11) {
        if (com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
            JcM.TKC(new com.bytedance.sdk.component.Dq.Dq("Reward_registerMultiProcessListener") { // from class: com.bytedance.sdk.openadsdk.component.reward.Dq.3
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.multipro.aidl.Sj Sj = com.bytedance.sdk.openadsdk.multipro.aidl.Sj.Sj();
                    if (i11 != 0 || Dq.this.EjP == null) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.multipro.aidl.sP.EjP ejP = new com.bytedance.sdk.openadsdk.multipro.aidl.sP.EjP(Dq.this.EjP);
                    IListenerManager iListenerManagerAsInterface = IListenerManager.Stub.asInterface(Sj.Sj(0));
                    if (iListenerManagerAsInterface != null) {
                        try {
                            iListenerManagerAsInterface.registerRewardVideoListener(Dq.this.Jcg, ejP);
                        } catch (RemoteException e11) {
                            sU.sP("TTRewardVideoAdImpl", e11.getMessage());
                        }
                    }
                }
            }, 5);
        }
    }

    public static boolean Sj(com.bytedance.sdk.openadsdk.core.model.Sj sj2) {
        com.bytedance.sdk.openadsdk.core.model.sU sUVarVS;
        if (sj2 == null || (sUVarVS = sj2.vS()) == null || TzV.TKC(sUVarVS)) {
            return false;
        }
        if (sUVarVS.tR()) {
            return true;
        }
        try {
            String strSj = com.bytedance.sdk.openadsdk.dx.Sj.Sj("rviv_new_arch", (String) null);
            if (TextUtils.isEmpty(strSj)) {
                return false;
            }
            JSONArray jSONArray = new JSONArray(strSj);
            for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                if (sUVarVS.dx() == jSONArray.getInt(i11)) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private static boolean Sj(com.bytedance.sdk.openadsdk.core.model.sU sUVar) {
        if (sUVar == null) {
            return false;
        }
        int iDx = sUVar.dx();
        return (sUVar.ley() != 2 || iDx == 5 || iDx == 33 || iDx == 6 || iDx == 19 || iDx == 12) ? false : true;
    }

    public void Sj() {
        if (this.vS.get()) {
            return;
        }
        this.HiB = true;
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
            sU.sP("TTRewardVideoAdImpl", th2.getMessage());
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

    @Override // com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd
    public void setAdInteractionCallback(PAGRewardedAdInteractionCallback pAGRewardedAdInteractionCallback) {
        this.EjP = new uA(pAGRewardedAdInteractionCallback);
        Sj(0);
    }

    @Override // com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd
    public void setAdInteractionListener(PAGRewardedAdInteractionListener pAGRewardedAdInteractionListener) {
        this.EjP = new uA(pAGRewardedAdInteractionListener);
        Sj(0);
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:51:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:54:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:57:0x0101  */
    /* JADX WARN: Code duplicated, block: B:65:? A[RETURN, SYNTHETIC] */
    @Override // com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd
    public void show(@Nullable Activity activity) {
        Intent intent;
        Intent intent2;
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
            throw new IllegalStateException("Cannot be called in a child thread —— TTRewardVideoAd.showRewardVideoAd");
        }
        List<com.bytedance.sdk.openadsdk.core.model.sU> listEjP = this.sP.EjP();
        if (listEjP != null) {
            Iterator<com.bytedance.sdk.openadsdk.core.model.sU> it = listEjP.iterator();
            while (it.hasNext()) {
                IPMiBroadcastReceiver.Sj(this.Sj, it.next());
            }
        }
        if (this.vS.compareAndSet(false, true)) {
            if (sUVarVS == null || sUVarVS.UHs() == null) {
                com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVarVS, "fullscreen_interstitial_ad", "materialMeta error ");
                return;
            }
            Context contextSj = activity == null ? this.Sj : activity;
            if (contextSj == null) {
                contextSj = dNu.Sj();
            }
            if (com.bytedance.sdk.openadsdk.core.settings.Fmk.gq().eI() && Sj(this.sP)) {
                intent = new Intent(contextSj, (Class<?>) TTAdActivity.class);
            } else {
                if (zJcg || Sj(sUVarVS)) {
                    Intent intent3 = new Intent(contextSj, (Class<?>) TTRewardExpressVideoActivity.class);
                    intent2 = intent3;
                    com.bytedance.sdk.openadsdk.component.reward.Sj.sP.Sj(intent2, activity, this.HiB, this.sP, this.Jcg);
                    intent2.putExtra("media_extra", this.TKC.getMediaExtra());
                    intent2.putExtra("user_id", this.TKC.getUserID());
                    intent2.putExtra("start_show_time", SystemClock.elapsedRealtime());
                    if (!com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                        kF.Sj().Sj(this.EjP);
                        this.EjP = null;
                    }
                    if (com.bytedance.sdk.openadsdk.dx.Sj.Sj("start_activity_async", 0) == 1) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10) {
                        com.bytedance.sdk.openadsdk.dNu.TKC.Sj(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.component.reward.Dq.1
                            @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                            public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                com.bytedance.sdk.openadsdk.dNu.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                sj3.sP("start_activity");
                                sj3.EjP("rewarded_video");
                                return sj3;
                            }
                        });
                    }
                    final long jElapsedRealtime = SystemClock.elapsedRealtime();
                    com.bytedance.sdk.component.utils.sP.Sj(contextSj, intent2, new com.bytedance.sdk.component.utils.sP.InterfaceC0229sP() { // from class: com.bytedance.sdk.openadsdk.component.reward.Dq.2
                        @Override // com.bytedance.sdk.component.utils.sP.InterfaceC0229sP
                        public void Sj() {
                            if (z10) {
                                com.bytedance.sdk.openadsdk.dNu.TKC.sP(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.component.reward.Dq.2.1
                                    @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                                    public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                        com.bytedance.sdk.openadsdk.dNu.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                        sj3.sP("start_activity");
                                        sj3.EjP("rewarded_video");
                                        return sj3;
                                    }
                                });
                                final long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
                                com.bytedance.sdk.openadsdk.Zq.TKC.Sj("start_activity_action", false, new com.bytedance.sdk.openadsdk.Zq.sP() { // from class: com.bytedance.sdk.openadsdk.component.reward.Dq.2.2
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
                            com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVarVS, "fullscreen_interstitial_ad", "activity start  fail ");
                            if (z10) {
                                com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.component.reward.Dq.2.3
                                    @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                                    public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                        com.bytedance.sdk.openadsdk.dNu.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                        sj3.sP("start_activity");
                                        sj3.EjP("rewarded_video");
                                        return sj3;
                                    }
                                });
                            }
                        }
                    }, true);
                    if (zJcg) {
                    }
                    Sj.Sj(this.sP.vS(), this.HiB, true);
                }
                intent = new Intent(contextSj, (Class<?>) TTRewardVideoActivity.class);
            }
            intent2 = intent;
            com.bytedance.sdk.openadsdk.component.reward.Sj.sP.Sj(intent2, activity, this.HiB, this.sP, this.Jcg);
            intent2.putExtra("media_extra", this.TKC.getMediaExtra());
            intent2.putExtra("user_id", this.TKC.getUserID());
            intent2.putExtra("start_show_time", SystemClock.elapsedRealtime());
            if (!com.bytedance.sdk.openadsdk.multipro.sP.TKC()) {
                kF.Sj().Sj(this.EjP);
                this.EjP = null;
            }
            if (com.bytedance.sdk.openadsdk.dx.Sj.Sj("start_activity_async", 0) == 1) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                com.bytedance.sdk.openadsdk.dNu.TKC.Sj(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.component.reward.Dq.1
                    @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                    public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                        com.bytedance.sdk.openadsdk.dNu.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                        sj3.sP("start_activity");
                        sj3.EjP("rewarded_video");
                        return sj3;
                    }
                });
            }
            final long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            com.bytedance.sdk.component.utils.sP.Sj(contextSj, intent2, new com.bytedance.sdk.component.utils.sP.InterfaceC0229sP() { // from class: com.bytedance.sdk.openadsdk.component.reward.Dq.2
                @Override // com.bytedance.sdk.component.utils.sP.InterfaceC0229sP
                public void Sj() {
                    if (z10) {
                        com.bytedance.sdk.openadsdk.dNu.TKC.sP(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.component.reward.Dq.2.1
                            @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                            public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                com.bytedance.sdk.openadsdk.dNu.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                sj3.sP("start_activity");
                                sj3.EjP("rewarded_video");
                                return sj3;
                            }
                        });
                        final long jElapsedRealtime3 = SystemClock.elapsedRealtime() - jElapsedRealtime2;
                        com.bytedance.sdk.openadsdk.Zq.TKC.Sj("start_activity_action", false, new com.bytedance.sdk.openadsdk.Zq.sP() { // from class: com.bytedance.sdk.openadsdk.component.reward.Dq.2.2
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
                    com.bytedance.sdk.openadsdk.EjP.TKC.Sj(sUVarVS, "fullscreen_interstitial_ad", "activity start  fail ");
                    if (z10) {
                        com.bytedance.sdk.openadsdk.dNu.TKC.TKC(new com.bytedance.sdk.openadsdk.dNu.EjP() { // from class: com.bytedance.sdk.openadsdk.component.reward.Dq.2.3
                            @Override // com.bytedance.sdk.openadsdk.dNu.EjP
                            public com.bytedance.sdk.openadsdk.dNu.sP.Sj generatorModel() {
                                com.bytedance.sdk.openadsdk.dNu.sP.Sj sj3 = new com.bytedance.sdk.openadsdk.dNu.sP.Sj();
                                sj3.sP("start_activity");
                                sj3.EjP("rewarded_video");
                                return sj3;
                            }
                        });
                    }
                }
            }, true);
            if (zJcg) {
                Sj.Sj(this.sP.vS(), this.HiB, true);
            }
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
