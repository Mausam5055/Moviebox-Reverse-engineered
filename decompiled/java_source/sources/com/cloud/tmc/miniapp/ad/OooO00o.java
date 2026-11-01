package com.cloud.tmc.miniapp.ad;

import com.cloud.tmc.ad.bean.AdClickBean;
import com.cloud.tmc.ad.bean.AdShowBean;
import com.cloud.tmc.ad.bean.DownUpPointBean;
import com.cloud.tmc.ad.p000interface.AdEventListener;
import com.cloud.tmc.ad.p000interface.AdFillingEventListener;
import com.cloud.tmc.ad.p000interface.AdShowEventListener;
import com.cloud.tmc.integration.structure.App;
import com.cloud.tmc.miniapp.ad.interstitial.AdBaseDialog;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class OooO00o implements AdEventListener {
    public final /* synthetic */ AdManager OooO00o;
    public final /* synthetic */ App OooO0O0;

    public OooO00o(AdManager adManager, App app) {
        this.OooO00o = adManager;
        this.OooO0O0 = app;
    }

    @Override // com.cloud.tmc.ad.p000interface.AdEventListener
    public void click(String triggerId, DownUpPointBean pointBean, String str) {
        ConcurrentHashMap<String, AdShowEventListener> concurrentHashMap;
        AdShowEventListener adShowEventListener;
        Intrinsics.h(triggerId, "triggerId");
        Intrinsics.h(pointBean, "pointBean");
        AdManager.OooO00o oooO00o = (AdManager.OooO00o) this.OooO00o.OooO00o.get(this.OooO0O0.getAppId());
        if (oooO00o == null || (concurrentHashMap = oooO00o.OooO0o) == null || (adShowEventListener = concurrentHashMap.get(triggerId)) == null) {
            return;
        }
        adShowEventListener.click(triggerId, pointBean, str);
    }

    @Override // com.cloud.tmc.ad.p000interface.AdEventListener
    public void clickHomePage(String triggerId) {
        ConcurrentHashMap<String, AdShowEventListener> concurrentHashMap;
        AdShowEventListener adShowEventListener;
        Intrinsics.h(triggerId, "triggerId");
        AdEventListener.DefaultImpls.clickHomePage(this, triggerId);
        AdManager.OooO00o oooO00o = (AdManager.OooO00o) this.OooO00o.OooO00o.get(this.OooO0O0.getAppId());
        if (oooO00o == null || (concurrentHashMap = oooO00o.OooO0o) == null || (adShowEventListener = concurrentHashMap.get(triggerId)) == null) {
            return;
        }
        adShowEventListener.clickHomePage(triggerId);
    }

    @Override // com.cloud.tmc.ad.p000interface.AdEventListener
    public void clickPersonalization(String triggerId) {
        ConcurrentHashMap<String, AdShowEventListener> concurrentHashMap;
        AdShowEventListener adShowEventListener;
        Intrinsics.h(triggerId, "triggerId");
        AdEventListener.DefaultImpls.clickPersonalization(this, triggerId);
        AdManager.OooO00o oooO00o = (AdManager.OooO00o) this.OooO00o.OooO00o.get(this.OooO0O0.getAppId());
        if (oooO00o == null || (concurrentHashMap = oooO00o.OooO0o) == null || (adShowEventListener = concurrentHashMap.get(triggerId)) == null) {
            return;
        }
        adShowEventListener.clickPersonalization(triggerId);
    }

    @Override // com.cloud.tmc.ad.p000interface.AdEventListener
    public void closeAd(String triggerId, AdClickBean adClickBean) {
        ConcurrentHashMap<String, AdShowEventListener> concurrentHashMap;
        AdShowEventListener adShowEventListener;
        Intrinsics.h(triggerId, "triggerId");
        Intrinsics.h(adClickBean, "adClickBean");
        AdManager.OooO00o oooO00o = (AdManager.OooO00o) this.OooO00o.OooO00o.get(this.OooO0O0.getAppId());
        if (oooO00o == null || (concurrentHashMap = oooO00o.OooO0o) == null || (adShowEventListener = concurrentHashMap.get(triggerId)) == null) {
            return;
        }
        adShowEventListener.closeAd(triggerId, adClickBean);
    }

    @Override // com.cloud.tmc.ad.p000interface.AdEventListener
    public void fillingResult(String triggerId, boolean z10) {
        ConcurrentHashMap<String, AdFillingEventListener> concurrentHashMap;
        ConcurrentHashMap<String, AdFillingEventListener> concurrentHashMap2;
        AdFillingEventListener adFillingEventListener;
        Intrinsics.h(triggerId, "triggerId");
        if (!z10) {
            this.OooO00o.OooO00o(triggerId, this.OooO0O0, "");
            return;
        }
        AdManager.OooO00o oooO00o = (AdManager.OooO00o) this.OooO00o.OooO00o.get(this.OooO0O0.getAppId());
        if (oooO00o != null && (concurrentHashMap2 = oooO00o.OooO0o0) != null && (adFillingEventListener = concurrentHashMap2.get(triggerId)) != null) {
            adFillingEventListener.fillingResult(triggerId, true);
        }
        AdManager.OooO00o oooO00o2 = (AdManager.OooO00o) this.OooO00o.OooO00o.get(this.OooO0O0.getAppId());
        if (oooO00o2 == null || (concurrentHashMap = oooO00o2.OooO0o0) == null) {
            return;
        }
        concurrentHashMap.remove(triggerId);
    }

    @Override // com.cloud.tmc.ad.p000interface.AdEventListener
    public void showResult(String triggerId, boolean z10, AdShowBean adShowBean) {
        AdBaseDialog adBaseDialog;
        Intrinsics.h(triggerId, "triggerId");
        Intrinsics.h(adShowBean, "adShowBean");
        if (!z10) {
            this.OooO00o.OooO0O0(triggerId, this.OooO0O0, "");
            return;
        }
        AdManager.OooO00o oooO00o = (AdManager.OooO00o) this.OooO00o.OooO00o.get(this.OooO0O0.getAppId());
        if (oooO00o != null) {
            AdManager adManager = this.OooO00o;
            App app = this.OooO0O0;
            oooO00o.OooO0oO.add(triggerId);
            AdShowEventListener adShowEventListener = oooO00o.OooO0o.get(triggerId);
            if (adShowEventListener != null) {
                adShowEventListener.showResult(triggerId, true, adShowBean);
            }
            AdBaseDialog adBaseDialog2 = oooO00o.OooO0O0.get(triggerId);
            if (((adBaseDialog2 == null || !adBaseDialog2.OooO0o0) && ((adBaseDialog = oooO00o.OooO0OO.get(triggerId)) == null || !adBaseDialog.OooO0o0)) || adShowBean.getShowReportTimeType() != 3) {
                return;
            }
            adManager.OooO00o(triggerId, app);
        }
    }
}
