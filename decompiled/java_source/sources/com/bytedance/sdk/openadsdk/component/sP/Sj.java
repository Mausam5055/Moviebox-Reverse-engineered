package com.bytedance.sdk.openadsdk.component.sP;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.Sj.sP.Sj.TKC;
import com.bytedance.sdk.openadsdk.Sj.sP.sP;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdLoadListener;
import com.bytedance.sdk.openadsdk.common.vS;
import com.bytedance.sdk.openadsdk.core.Dq;
import com.bytedance.sdk.openadsdk.core.RiZ;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.core.model.ib;
import com.bytedance.sdk.openadsdk.core.model.sU;
import com.bytedance.sdk.openadsdk.oem.IPMiBroadcastReceiver;
import com.bytedance.sdk.openadsdk.utils.WMZ;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class Sj {
    private static volatile Sj Sj;
    private final RiZ sP = dNu.TKC();

    private Sj() {
    }

    public static Sj Sj() {
        if (Sj == null) {
            synchronized (Sj.class) {
                try {
                    if (Sj == null) {
                        Sj = new Sj();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return Sj;
    }

    public void Sj(final Context context, final AdSlot adSlot, final vS vSVar) {
        final WMZ wmzSP = WMZ.sP();
        this.sP.Sj(adSlot, new ib(), 5, new RiZ.Sj() { // from class: com.bytedance.sdk.openadsdk.component.sP.Sj.1
            private PAGNativeAd Sj(Context context2, sU sUVar, AdSlot adSlot2) {
                if (sUVar.ley() != 2) {
                    return new sP(context2, sUVar, 5, adSlot2);
                }
                return sUVar.UHs() != null ? new com.bytedance.sdk.openadsdk.Sj.sP.Sj.sP(context2, sUVar, adSlot2) : new TKC(context2, sUVar, adSlot2);
            }

            @Override // com.bytedance.sdk.openadsdk.core.RiZ.Sj
            public void Sj(int i11, String str) {
                vSVar.onError(i11, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.RiZ.Sj
            public void Sj(com.bytedance.sdk.openadsdk.core.model.Sj sj2, com.bytedance.sdk.openadsdk.core.model.TKC tkc) {
                if (sj2.EjP() == null || sj2.EjP().isEmpty()) {
                    vSVar.onError(-3, Dq.Sj(-3));
                    tkc.Sj(-3);
                    com.bytedance.sdk.openadsdk.core.model.TKC.Sj(tkc);
                    return;
                }
                List<sU> listEjP = sj2.EjP();
                ArrayList arrayList = new ArrayList(listEjP.size());
                for (sU sUVar : listEjP) {
                    if (sU.HiB(sUVar) || (sUVar != null && sUVar.AVc())) {
                        PAGNativeAd pAGNativeAdSj = Sj(context, sUVar, adSlot);
                        if (vSVar instanceof PAGNativeAdLoadListener) {
                            arrayList.add(pAGNativeAdSj);
                        }
                    }
                    if (sU.HiB(sUVar) && sUVar.UHs() != null && sUVar.UHs().x() != null) {
                        if (dNu.EjP().HiB(String.valueOf(sUVar.If())) && dNu.EjP().UHs()) {
                            if (sUVar.UHs() != null) {
                                sUVar.UHs().L(1);
                            }
                            if (sUVar.GJs() != null) {
                                sUVar.GJs().L(1);
                            }
                            com.bytedance.sdk.openadsdk.core.aa.Sj.sP sPVarSj = sU.Sj(CacheDirFactory.getICacheDir(sUVar.Gn()).TKC(), sUVar);
                            sPVarSj.Sj("material_meta", sUVar);
                            sPVarSj.Sj("ad_slot", adSlot);
                            com.bytedance.sdk.openadsdk.core.aa.HiB.Sj.Sj(sPVarSj, null);
                        }
                        IPMiBroadcastReceiver.Sj(context, sUVar);
                    }
                }
                if (!(vSVar instanceof PAGNativeAdLoadListener) || arrayList.isEmpty()) {
                    vSVar.onError(-4, Dq.Sj(-4));
                    tkc.Sj(-4);
                    com.bytedance.sdk.openadsdk.core.model.TKC.Sj(tkc);
                    return;
                }
                AdSlot adSlot2 = adSlot;
                if (adSlot2 != null && !TextUtils.isEmpty(adSlot2.getBidAdm())) {
                    com.bytedance.sdk.openadsdk.Zq.TKC.Sj(listEjP.get(0), wmzSP.EjP());
                }
                vS vSVar2 = vSVar;
                if (vSVar2 instanceof PAGNativeAdLoadListener) {
                    ((PAGNativeAdLoadListener) vSVar2).onAdLoaded(arrayList.get(0));
                }
                if (tkc.HiB() == null || tkc.HiB().isEmpty()) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.model.TKC.Sj(tkc);
            }
        });
    }
}
