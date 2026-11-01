package com.bytedance.sdk.openadsdk.component.reward;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.TzV;
import com.bytedance.sdk.component.utils.wE;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdLoadListener;
import com.bytedance.sdk.openadsdk.core.RiZ;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.ib;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.core.model.uP;
import com.bytedance.sdk.openadsdk.utils.WMZ;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;
import v5.b;

/* JADX INFO: loaded from: classes2.dex */
public class HiB {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile HiB Sj;
    private com.bytedance.sdk.component.Dq.Dq HiB;
    private final Context sP;
    private final AtomicBoolean TKC = new AtomicBoolean(false);
    private final List<TKC> EjP = Collections.synchronizedList(new ArrayList());
    private final wE.Sj vS = new wE.Sj() { // from class: com.bytedance.sdk.openadsdk.component.reward.HiB.7
        @Override // com.bytedance.sdk.component.utils.wE.Sj
        public void Sj(Context context, Intent intent, boolean z10, int i11) {
            if (z10) {
                if (HiB.this.HiB == null) {
                    HiB hiB = HiB.this;
                    hiB.HiB = new com.bytedance.sdk.openadsdk.component.reward.sP("fsv net connect task", hiB.EjP);
                }
                com.bytedance.sdk.component.utils.uA.Sj().post(HiB.this.HiB);
            }
        }
    };

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.component.reward.HiB$6, reason: invalid class name */
    class AnonymousClass6 implements com.bytedance.sdk.openadsdk.common.Sj.InterfaceC0247Sj<Object> {
        final /* synthetic */ com.bytedance.sdk.openadsdk.core.model.Sj EjP;
        final /* synthetic */ sP HiB;
        final /* synthetic */ boolean Sj;
        final /* synthetic */ AdSlot TKC;
        final /* synthetic */ sef sP;
        final /* synthetic */ boolean vS;

        AnonymousClass6(boolean z10, sef sefVar, AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.Sj sj2, sP sPVar, boolean z11) {
            this.Sj = z10;
            this.sP = sefVar;
            this.TKC = adSlot;
            this.EjP = sj2;
            this.HiB = sPVar;
            this.vS = z11;
        }

        @Override // com.bytedance.sdk.openadsdk.common.Sj.InterfaceC0247Sj
        public void Sj(boolean z10, Object obj) {
            if (z10) {
                this.sP.sP();
            }
            if (this.Sj) {
                if (z10) {
                    EjP.Sj(HiB.this.sP).Sj(this.TKC, this.EjP);
                }
            } else {
                if (z10) {
                    if (this.HiB != null) {
                        if (this.vS || dNu.EjP().TzV() == 1) {
                            this.HiB.onAdLoaded(this.sP.Sj());
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (this.HiB != null) {
                    if (this.vS || dNu.EjP().TzV() == 1) {
                        this.HiB.onError(-1, "");
                    }
                }
            }
        }
    }

    private static class Sj implements PAGInterstitialAdLoadListener {
        private final PAGInterstitialAdLoadListener EjP;
        private final boolean HiB;
        private final Context Sj;
        private final com.bytedance.sdk.openadsdk.core.model.Sj TKC;
        private final AdSlot sP;

        public Sj(Context context, AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.Sj sj2, PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener, boolean z10) {
            this.Sj = context;
            this.sP = adSlot;
            this.TKC = sj2;
            this.EjP = pAGInterstitialAdLoadListener;
            this.HiB = z10;
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public void onAdLoaded(PAGInterstitialAd pAGInterstitialAd) {
            HiB.Sj(this.Sj).Sj(this.sP, this.TKC, this.EjP, pAGInterstitialAd, this.HiB);
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.vS
        public void onError(int i11, String str) {
            PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener = this.EjP;
            if (pAGInterstitialAdLoadListener != null) {
                pAGInterstitialAdLoadListener.onError(i11, str);
            }
        }
    }

    private static class TKC extends com.bytedance.sdk.component.Dq.Dq {
        final sU Sj;
        final com.bytedance.sdk.openadsdk.core.model.Sj TKC;
        final AdSlot sP;

        /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.component.reward.HiB$TKC$2, reason: invalid class name */
        class AnonymousClass2 implements com.bytedance.sdk.openadsdk.common.Sj.InterfaceC0247Sj<Object> {
            AnonymousClass2() {
            }

            @Override // com.bytedance.sdk.openadsdk.common.Sj.InterfaceC0247Sj
            public void Sj(boolean z10, Object obj) {
                if (z10) {
                    EjP ejPSj = EjP.Sj(dNu.Sj());
                    TKC tkc = TKC.this;
                    ejPSj.Sj(tkc.sP, tkc.TKC);
                }
            }
        }

        TKC(sU sUVar, AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.Sj sj2) {
            super("Fullscreen Task");
            this.Sj = sUVar;
            this.sP = adSlot;
            this.TKC = sj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            sU sUVar = this.Sj;
            if (sUVar == null || sUVar.UHs() == null) {
                return;
            }
            com.bytedance.sdk.openadsdk.core.aa.Sj.sP sPVarSj = sU.Sj(CacheDirFactory.getICacheDir(this.Sj.Gn()).Sj(), this.Sj);
            sPVarSj.Sj("material_meta", this.Sj);
            sPVarSj.Sj("ad_slot", this.sP);
            com.bytedance.sdk.openadsdk.core.aa.HiB.Sj.Sj(sPVarSj, new b() { // from class: com.bytedance.sdk.openadsdk.component.reward.HiB.TKC.1
                @Override // v5.a.InterfaceC0945a
                public void Sj(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc, int i11) {
                    EjP ejPSj = EjP.Sj(dNu.Sj());
                    TKC tkc2 = TKC.this;
                    ejPSj.Sj(tkc2.sP, tkc2.TKC);
                }

                @Override // v5.a.InterfaceC0945a
                public void Sj(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc, int i11, String str) {
                }
            });
        }
    }

    private static class sP implements PAGInterstitialAdLoadListener {
        private final com.bytedance.sdk.openadsdk.core.model.Sj EjP;
        private final PAGInterstitialAdLoadListener Sj;
        private final AtomicInteger TKC;
        private final AtomicBoolean sP;

        private sP(PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener, com.bytedance.sdk.openadsdk.core.model.Sj sj2) {
            this.sP = new AtomicBoolean(false);
            this.Sj = pAGInterstitialAdLoadListener;
            this.EjP = sj2;
            this.TKC = new AtomicInteger(Sj());
        }

        private int Sj() {
            if (!this.EjP.HiB()) {
                return 0;
            }
            int i11 = 0;
            for (int i12 = 0; i12 < this.EjP.EjP().size(); i12++) {
                sU sUVar = this.EjP.EjP().get(i12);
                if (sUVar != null && !uP.TKC(sUVar) && sUVar.UHs() != null) {
                    i11++;
                }
            }
            return i11;
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
        /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
        public void onAdLoaded(PAGInterstitialAd pAGInterstitialAd) {
            this.TKC.decrementAndGet();
            if (this.Sj == null || !this.sP.compareAndSet(false, true)) {
                return;
            }
            this.Sj.onAdLoaded(pAGInterstitialAd);
        }

        @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.vS
        public void onError(int i11, String str) {
            if (this.TKC.decrementAndGet() > 0 || !this.sP.compareAndSet(false, true)) {
                return;
            }
            this.Sj.onError(i11, str);
            com.bytedance.sdk.openadsdk.Zq.TKC.Sj("choose_ad_load_error", false, new com.bytedance.sdk.openadsdk.Zq.sP() { // from class: com.bytedance.sdk.openadsdk.component.reward.HiB.sP.1
                @Override // com.bytedance.sdk.openadsdk.Zq.sP
                @Nullable
                public com.bytedance.sdk.openadsdk.Zq.Sj.TKC getLogStats() throws Exception {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("req_id", sP.this.EjP.sP());
                    return com.bytedance.sdk.openadsdk.Zq.Sj.EjP.sP().Sj("choose_ad_load_error").sP(jSONObject.toString());
                }
            });
        }
    }

    private HiB(Context context) {
        this.sP = context == null ? dNu.Sj() : context.getApplicationContext();
        TKC();
    }

    private void EjP() {
        if (this.TKC.get()) {
            this.TKC.set(false);
            try {
                wE.Sj(this.vS);
            } catch (Exception unused) {
            }
        }
    }

    public static HiB Sj(Context context) {
        if (Sj == null) {
            synchronized (HiB.class) {
                try {
                    if (Sj == null) {
                        Sj = new HiB(context);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(AdSlot adSlot, com.bytedance.sdk.openadsdk.core.model.Sj sj2, PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener, PAGInterstitialAd pAGInterstitialAd, boolean z10) {
        if (pAGInterstitialAdLoadListener != null) {
            pAGInterstitialAdLoadListener.onAdLoaded(pAGInterstitialAd);
        }
        int iSP = sP();
        if (!z10) {
            if (iSP == 2) {
                EjP.Sj(this.sP).Sj(adSlot, sj2);
                sP(adSlot);
                return;
            }
            return;
        }
        if (iSP == 2) {
            sP(adSlot);
        } else if (iSP == 1) {
            EjP.Sj(this.sP).Sj(adSlot.getCodeId(), (sU) null);
        }
    }

    private void Sj(final AdSlot adSlot, final boolean z10, final WMZ wmz, final PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener) {
        final long jCurrentTimeMillis = System.currentTimeMillis();
        ib ibVar = new ib();
        ibVar.TKC = z10 ? 2 : 1;
        if (dNu.EjP().aa(adSlot.getCodeId()) || adSlot.getExpressViewAcceptedWidth() > 0.0f || adSlot.isExpressAd()) {
            ibVar.Dq = 2;
        }
        dNu.TKC().Sj(adSlot, ibVar, 8, new RiZ.Sj() { // from class: com.bytedance.sdk.openadsdk.component.reward.HiB.3
            @Override // com.bytedance.sdk.openadsdk.core.RiZ.Sj
            public void Sj(int i11, String str) {
                PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener2;
                if (z10 || (pAGInterstitialAdLoadListener2 = pAGInterstitialAdLoadListener) == null) {
                    return;
                }
                pAGInterstitialAdLoadListener2.onError(i11, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.RiZ.Sj
            public void Sj(com.bytedance.sdk.openadsdk.core.model.Sj sj2, com.bytedance.sdk.openadsdk.core.model.TKC tkc) {
                PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener2;
                if (sj2.EjP() == null || sj2.EjP().isEmpty()) {
                    if (z10 || (pAGInterstitialAdLoadListener2 = pAGInterstitialAdLoadListener) == null) {
                        return;
                    }
                    pAGInterstitialAdLoadListener2.onError(-3, com.bytedance.sdk.openadsdk.core.Dq.Sj(-3));
                    tkc.Sj(-3);
                    com.bytedance.sdk.openadsdk.core.model.TKC.Sj(tkc);
                    return;
                }
                sef sefVar = new sef(HiB.this.sP, sj2);
                if (!z10) {
                    if (!TextUtils.isEmpty(adSlot.getBidAdm())) {
                        com.bytedance.sdk.openadsdk.sU.Sj.EjP.Sj().Sj(sj2.EjP().isEmpty() ? null : sj2.EjP().get(0));
                        com.bytedance.sdk.openadsdk.Zq.TKC.Sj(sj2.vS(), System.currentTimeMillis() - jCurrentTimeMillis);
                    }
                    if (!sj2.Jcg() && pAGInterstitialAdLoadListener != null && dNu.EjP().TzV() == 0) {
                        HiB.this.Sj(adSlot, sj2, pAGInterstitialAdLoadListener, sefVar.Sj(), false);
                    }
                }
                com.bytedance.sdk.openadsdk.Fmk.Sj.Sj().Sj(sj2.vS());
                sP sPVar = new sP(new Sj(HiB.this.sP, adSlot, sj2, pAGInterstitialAdLoadListener, false), sj2);
                for (int i11 = 0; i11 < sj2.EjP().size(); i11++) {
                    HiB.this.Sj(sj2, sj2.EjP().get(i11), sefVar, adSlot, z10, wmz, sPVar, sj2.Jcg());
                    if (sj2.aa()) {
                        return;
                    }
                }
            }
        });
    }

    private void Sj(TKC tkc) {
        if (tkc == null) {
            return;
        }
        if (this.EjP.size() > 0) {
            this.EjP.remove(0);
        }
        this.EjP.add(tkc);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Sj(final com.bytedance.sdk.openadsdk.core.model.Sj sj2, sU sUVar, final sef sefVar, final AdSlot adSlot, final boolean z10, WMZ wmz, final sP sPVar, final boolean z11) {
        com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj().Sj(sUVar, new com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.InterfaceC0273Sj() { // from class: com.bytedance.sdk.openadsdk.component.reward.HiB.4
        });
        boolean z12 = true;
        if (z10 && !uP.TKC(sUVar) && sU.HiB(sUVar) && dNu.EjP().ley(adSlot.getCodeId()).EjP == 1 && !TzV.EjP(this.sP)) {
            Sj(new TKC(sUVar, adSlot, sj2));
            return;
        }
        boolean z13 = false;
        if (sPVar == null || (!z11 && dNu.EjP().TzV() != 1)) {
            z12 = false;
        }
        if (uP.TKC(sUVar)) {
            if (z10) {
                EjP.Sj(this.sP).Sj(adSlot, sj2);
            }
        } else if (sU.HiB(sUVar)) {
            if (sUVar.UHs() != null) {
                com.bytedance.sdk.openadsdk.core.aa.Sj.sP sPVarSj = sU.Sj(CacheDirFactory.getICacheDir(sUVar.Gn()).Sj(), sUVar);
                sPVarSj.Sj("material_meta", sUVar);
                sPVarSj.Sj("ad_slot", adSlot);
                com.bytedance.sdk.openadsdk.core.aa.HiB.Sj.Sj(sPVarSj, new b() { // from class: com.bytedance.sdk.openadsdk.component.reward.HiB.5
                    @Override // v5.a.InterfaceC0945a
                    public void Sj(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc, int i11) {
                        sefVar.sP();
                        if (z10) {
                            EjP.Sj(HiB.this.sP).Sj(adSlot, sj2);
                        } else if (sPVar != null) {
                            if (z11 || dNu.EjP().TzV() == 1) {
                                sPVar.onAdLoaded(sefVar.Sj());
                            }
                        }
                    }

                    @Override // v5.a.InterfaceC0945a
                    public void Sj(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc, int i11, String str) {
                        if (sPVar != null) {
                            if (z11 || dNu.EjP().TzV() == 1) {
                                sPVar.onError(i11, str);
                            }
                        }
                    }
                });
            } else {
                z13 = z12;
            }
            z12 = z13;
        } else if (z10) {
            EjP.Sj(this.sP).Sj(adSlot, sj2);
        }
        if (z12) {
            sPVar.onAdLoaded(sefVar.Sj());
        }
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0011  */
    private void Sj(sU sUVar, AdSlot adSlot, final sP sPVar, WMZ wmz, final sef sefVar, final boolean z10) {
        boolean z11;
        boolean z12 = false;
        if (sPVar != null) {
            z11 = true;
            if (!z10 && dNu.EjP().TzV() != 1) {
                z11 = false;
            }
        } else {
            z11 = false;
        }
        if (uP.TKC(sUVar) || !sU.HiB(sUVar)) {
            z12 = z11;
        } else {
            sUVar.UHs();
            com.bytedance.sdk.openadsdk.core.aa.Sj.sP sPVarSj = sU.Sj(CacheDirFactory.getICacheDir(sUVar.Gn()).Sj(), sUVar);
            sPVarSj.Sj("material_meta", sUVar);
            sPVarSj.Sj("ad_slot", adSlot);
            com.bytedance.sdk.openadsdk.core.aa.HiB.Sj.Sj(sPVarSj, new b() { // from class: com.bytedance.sdk.openadsdk.component.reward.HiB.2
                @Override // v5.a.InterfaceC0945a
                public void Sj(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc, int i11) {
                    if (sPVar != null) {
                        if (z10 || dNu.EjP().TzV() == 1) {
                            sPVar.onAdLoaded(sefVar.Sj());
                        }
                    }
                }

                @Override // v5.a.InterfaceC0945a
                public void Sj(com.bykv.vk.openvk.Sj.Sj.Sj.TKC.TKC tkc, int i11, String str) {
                    if (sPVar != null) {
                        if (z10 || dNu.EjP().TzV() == 1) {
                            sPVar.onError(i11, str);
                        }
                    }
                }
            });
        }
        if (z12) {
            sPVar.onAdLoaded(sefVar.Sj());
        }
    }

    private void TKC() {
        if (this.TKC.get()) {
            return;
        }
        this.TKC.set(true);
        wE.Sj(this.vS, this.sP);
    }

    public static int sP() {
        return com.bytedance.sdk.openadsdk.dx.Sj.Sj("ivrv_load_ad_cache_strategy", 0);
    }

    private void sP(AdSlot adSlot) {
        if (sP() != 2) {
            return;
        }
        EjP.Sj(this.sP).Sj(adSlot.getCodeId());
    }

    private void sP(AdSlot adSlot, PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener) {
        com.bytedance.sdk.openadsdk.core.model.Sj Sj2;
        WMZ wmzSP = WMZ.sP();
        if (!TextUtils.isEmpty(adSlot.getBidAdm()) || (Sj2 = EjP.Sj(this.sP).Sj(adSlot.getCodeId(), true)) == null || !Sj2.HiB()) {
            Sj(adSlot, false, wmzSP, pAGInterstitialAdLoadListener);
            return;
        }
        sU sUVarVS = Sj2.vS();
        for (sU sUVar : Sj2.EjP()) {
            if (sUVar.xD() == null) {
                sUVar.Sj(adSlot);
            }
        }
        sef sefVar = new sef(this.sP, Sj2);
        if (!Sj2.Jcg() && !uP.TKC(sUVarVS)) {
            sefVar.sP();
        }
        if (pAGInterstitialAdLoadListener != null) {
            if (!Sj2.Jcg() && dNu.EjP().TzV() == 0) {
                Sj(adSlot, Sj2, pAGInterstitialAdLoadListener, sefVar.Sj(), true);
            }
            sP sPVar = new sP(new Sj(this.sP, adSlot, Sj2, pAGInterstitialAdLoadListener, true), Sj2);
            for (int i11 = 0; i11 < Sj2.EjP().size(); i11++) {
                Sj(Sj2.EjP().get(i11), adSlot, sPVar, wmzSP, sefVar, Sj2.Jcg());
                if (Sj2.aa()) {
                    break;
                }
            }
        }
        for (int i12 = 0; i12 < Sj2.EjP().size(); i12++) {
            com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.Sj().Sj(Sj2.EjP().get(i12), new com.bytedance.sdk.openadsdk.core.aa.TKC.Sj.InterfaceC0273Sj() { // from class: com.bytedance.sdk.openadsdk.component.reward.HiB.1
            });
        }
    }

    public void Sj() {
        try {
            EjP.Sj(this.sP).Sj();
        } catch (Throwable unused) {
        }
    }

    public void Sj(AdSlot adSlot) {
        if (adSlot == null || TextUtils.isEmpty(adSlot.getCodeId()) || !TextUtils.isEmpty(adSlot.getBidAdm()) || EjP.Sj(this.sP).Sj(adSlot.getCodeId(), false) != null) {
            return;
        }
        Sj(adSlot, true, WMZ.sP(), null);
    }

    public void Sj(AdSlot adSlot, PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener) {
        sP(adSlot, pAGInterstitialAdLoadListener);
    }

    public void Sj(String str, sU sUVar) {
        EjP.Sj(this.sP).Sj(str, sUVar);
    }

    protected void finalize() throws Throwable {
        super.finalize();
        if (this.HiB != null) {
            try {
                com.bytedance.sdk.component.utils.uA.Sj().removeCallbacks(this.HiB);
            } catch (Exception unused) {
            }
            this.HiB = null;
        }
        EjP();
    }
}
