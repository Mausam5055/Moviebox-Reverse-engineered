package com.bytedance.sdk.openadsdk.HiB;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.component.Dq.Dq;
import com.bytedance.sdk.component.utils.ley;
import com.bytedance.sdk.component.utils.sU;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.Sj.HiB.sP;
import com.bytedance.sdk.openadsdk.Sj.sP.HiB;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdLoadListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerRequest;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerSize;
import com.bytedance.sdk.openadsdk.api.factory.IADLoader;
import com.bytedance.sdk.openadsdk.api.factory.IADTypeLoaderFactory;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdLoadListener;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialRequest;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdLoadListener;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeRequest;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdLoadListener;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenRequest;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdLoadListener;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedRequest;
import com.bytedance.sdk.openadsdk.core.Dq.Jcg;
import com.bytedance.sdk.openadsdk.core.dNu;
import com.bytedance.sdk.openadsdk.utils.FPG;
import com.bytedance.sdk.openadsdk.utils.Mts;
import com.cloud.tmc.integration.ui.p001native.NativeImgComponent;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class Sj implements IADTypeLoaderFactory {
    @Override // com.bytedance.sdk.openadsdk.api.factory.IADTypeLoaderFactory
    public IADLoader<PAGBannerRequest, PAGBannerAdLoadListener> createBannerAdLoader() {
        return new IADLoader<PAGBannerRequest, PAGBannerAdLoadListener>() { // from class: com.bytedance.sdk.openadsdk.HiB.Sj.2
            @Override // com.bytedance.sdk.openadsdk.api.factory.IADLoader
            /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
            public void loadAd(String str, final PAGBannerRequest pAGBannerRequest, PAGBannerAdLoadListener pAGBannerAdLoadListener) {
                if (com.bytedance.sdk.openadsdk.Sj.Sj.Sj(str, pAGBannerRequest, pAGBannerAdLoadListener)) {
                    return;
                }
                AdSlot.Builder codeId = new AdSlot.Builder().setCodeId(str);
                com.bytedance.sdk.openadsdk.Sj.Sj.Sj(codeId, pAGBannerRequest);
                if (!TextUtils.isEmpty(pAGBannerRequest.getAdString())) {
                    codeId.withBid(pAGBannerRequest.getAdString());
                }
                final PAGBannerSize adSize = pAGBannerRequest.getAdSize();
                if (adSize != null) {
                    if (adSize.getType() == 3) {
                        codeId.setExpressViewAcceptedSize(adSize.getWidth(), adSize.getMaxHeight());
                    } else {
                        codeId.setExpressViewAcceptedSize(adSize.getWidth(), adSize.getHeight());
                    }
                    codeId.setBannerType(adSize.getType());
                }
                final AdSlot adSlotBuild = codeId.setRequestExtraMap(pAGBannerRequest.getExtraInfo()).build();
                final com.bytedance.sdk.openadsdk.Sj.Sj.Sj sj2 = new com.bytedance.sdk.openadsdk.Sj.Sj.Sj(pAGBannerAdLoadListener);
                com.bytedance.sdk.openadsdk.Sj.Sj.Sj(new Dq("loadBannerExpressAd") { // from class: com.bytedance.sdk.openadsdk.HiB.Sj.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!dNu.EjP().Zq() && Mts.zR()) {
                            sj2.onError(-18, "Blind mode does not allow requesting ads");
                            return;
                        }
                        if (com.bytedance.sdk.openadsdk.Sj.Sj.Sj(sj2)) {
                            return;
                        }
                        PAGBannerSize pAGBannerSize = adSize;
                        if (pAGBannerSize != null && ((pAGBannerSize.getType() == 2 || adSize.getType() == 3) && TextUtils.isEmpty(pAGBannerRequest.getAdString()))) {
                            int iEjP = FPG.EjP(dNu.Sj());
                            int iVS = FPG.vS(dNu.Sj());
                            int height = adSize.getType() == 2 ? adSize.getHeight() : adSize.getMaxHeight();
                            if (adSize.getWidth() > iEjP || adSize.getWidth() <= 0 || height > iVS || height < 0) {
                                sj2.onError(-19, "The banner size invalid width=" + adSize.getWidth() + ",height=" + height);
                                return;
                            }
                        }
                        AdSlot adSlot = adSlotBuild;
                        if (adSlot == null) {
                            sj2.onError(-4, "adslot is null");
                            return;
                        }
                        adSlot.setNativeAdType(1);
                        adSlotBuild.setDurationSlotType(1);
                        Jcg.Sj(dNu.Sj()).Sj(adSlotBuild, 1, sj2, 5000);
                    }
                }, sj2, adSlotBuild);
            }
        };
    }

    @Override // com.bytedance.sdk.openadsdk.api.factory.IADTypeLoaderFactory
    public IADLoader<PAGInterstitialRequest, PAGInterstitialAdLoadListener> createInterstitialAdLoader() {
        return new IADLoader<PAGInterstitialRequest, PAGInterstitialAdLoadListener>() { // from class: com.bytedance.sdk.openadsdk.HiB.Sj.5
            @Override // com.bytedance.sdk.openadsdk.api.factory.IADLoader
            /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
            public void loadAd(String str, PAGInterstitialRequest pAGInterstitialRequest, PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener) {
                if (com.bytedance.sdk.openadsdk.Sj.Sj.Sj(str, pAGInterstitialRequest, pAGInterstitialAdLoadListener)) {
                    return;
                }
                AdSlot.Builder codeId = new AdSlot.Builder().setRequestExtraMap(pAGInterstitialRequest.getExtraInfo()).setCodeId(str);
                com.bytedance.sdk.openadsdk.Sj.Sj.Sj(codeId, pAGInterstitialRequest);
                if (!TextUtils.isEmpty(pAGInterstitialRequest.getAdString())) {
                    codeId.withBid(pAGInterstitialRequest.getAdString());
                }
                final AdSlot adSlotBuild = codeId.build();
                final com.bytedance.sdk.openadsdk.Sj.TKC.Sj sj2 = new com.bytedance.sdk.openadsdk.Sj.TKC.Sj(pAGInterstitialAdLoadListener);
                com.bytedance.sdk.openadsdk.Sj.Sj.Sj(new Dq("loadInterstitialAd") { // from class: com.bytedance.sdk.openadsdk.HiB.Sj.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!dNu.EjP().Zq() && Mts.zR()) {
                            sj2.onError(-18, "Blind mode does not allow requesting ads");
                            return;
                        }
                        if (com.bytedance.sdk.openadsdk.Sj.Sj.Sj(sj2)) {
                            return;
                        }
                        if (adSlotBuild == null) {
                            sj2.onError(-4, "adslot is null");
                            return;
                        }
                        try {
                            Method methodSj = ley.Sj("com.bytedance.sdk.openadsdk.TTC3Proxy", "loadFull", Context.class, AdSlot.class, PAGInterstitialAdLoadListener.class);
                            if (methodSj != null) {
                                methodSj.invoke(null, dNu.Sj(), adSlotBuild, sj2);
                            }
                        } catch (Throwable unused) {
                        }
                    }
                }, sj2, adSlotBuild);
            }
        };
    }

    @Override // com.bytedance.sdk.openadsdk.api.factory.IADTypeLoaderFactory
    public IADLoader<PAGNativeRequest, PAGNativeAdLoadListener> createNativeAdLoader() {
        return new IADLoader<PAGNativeRequest, PAGNativeAdLoadListener>() { // from class: com.bytedance.sdk.openadsdk.HiB.Sj.3
            @Override // com.bytedance.sdk.openadsdk.api.factory.IADLoader
            /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
            public void loadAd(String str, PAGNativeRequest pAGNativeRequest, PAGNativeAdLoadListener pAGNativeAdLoadListener) {
                if (com.bytedance.sdk.openadsdk.Sj.Sj.Sj(str, pAGNativeRequest, pAGNativeAdLoadListener)) {
                    return;
                }
                final HiB hiB = new HiB(pAGNativeAdLoadListener);
                AdSlot.Builder builderWithBid = new AdSlot.Builder().setCodeId(str).withBid(pAGNativeRequest != null ? pAGNativeRequest.getAdString() : null);
                com.bytedance.sdk.openadsdk.Sj.Sj.Sj(builderWithBid, pAGNativeRequest);
                final AdSlot adSlotBuild = builderWithBid.setRequestExtraMap(pAGNativeRequest.getExtraInfo()).build();
                com.bytedance.sdk.openadsdk.Sj.Sj.Sj(new Dq("loadFeedAd") { // from class: com.bytedance.sdk.openadsdk.HiB.Sj.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!dNu.EjP().Zq() && Mts.zR()) {
                            hiB.onError(-18, "Blind mode does not allow requesting ads");
                            return;
                        }
                        if (com.bytedance.sdk.openadsdk.Sj.Sj.Sj(hiB)) {
                            return;
                        }
                        if (adSlotBuild == null) {
                            hiB.onError(-4, "adslot is null");
                            return;
                        }
                        try {
                            Method methodSj = ley.Sj("com.bytedance.sdk.openadsdk.TTC5Proxy", "loadFeed", Context.class, AdSlot.class, PAGNativeAdLoadListener.class);
                            if (methodSj != null) {
                                methodSj.invoke(null, dNu.Sj(), adSlotBuild, hiB);
                            }
                        } catch (Throwable unused) {
                        }
                    }
                }, hiB, adSlotBuild);
            }
        };
    }

    @Override // com.bytedance.sdk.openadsdk.api.factory.IADTypeLoaderFactory
    public IADLoader<PAGAppOpenRequest, PAGAppOpenAdLoadListener> createOpenAdLoader() {
        return new IADLoader<PAGAppOpenRequest, PAGAppOpenAdLoadListener>() { // from class: com.bytedance.sdk.openadsdk.HiB.Sj.1
            private int sP;

            @Override // com.bytedance.sdk.openadsdk.api.factory.IADLoader
            /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
            public void loadAd(String str, PAGAppOpenRequest pAGAppOpenRequest, PAGAppOpenAdLoadListener pAGAppOpenAdLoadListener) {
                if (com.bytedance.sdk.openadsdk.Sj.Sj.Sj(str, pAGAppOpenRequest, pAGAppOpenAdLoadListener)) {
                    return;
                }
                AdSlot.Builder builder = new AdSlot.Builder();
                com.bytedance.sdk.openadsdk.Sj.Sj.Sj(builder, pAGAppOpenRequest);
                if (!TextUtils.isEmpty(pAGAppOpenRequest.getAdString())) {
                    builder.withBid(pAGAppOpenRequest.getAdString());
                }
                final AdSlot adSlotBuild = builder.setCodeId(str).setRequestExtraMap(pAGAppOpenRequest.getExtraInfo()).build();
                this.sP = pAGAppOpenRequest.getTimeout();
                final com.bytedance.sdk.openadsdk.Sj.EjP.Sj sj2 = new com.bytedance.sdk.openadsdk.Sj.EjP.Sj(pAGAppOpenAdLoadListener);
                com.bytedance.sdk.openadsdk.Sj.Sj.Sj(new Dq("loadSplashAd") { // from class: com.bytedance.sdk.openadsdk.HiB.Sj.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (!dNu.EjP().Zq() && Mts.zR()) {
                                sj2.onError(-18, "Blind mode does not allow requesting ads");
                                return;
                            }
                            if (com.bytedance.sdk.openadsdk.Sj.Sj.Sj(sj2)) {
                                return;
                            }
                            if (adSlotBuild == null) {
                                sj2.onError(-4, "adslot is null");
                                return;
                            }
                            Method methodSj = ley.Sj("com.bytedance.sdk.openadsdk.TTC2Proxy", NativeImgComponent.EVENT_LOAD, Context.class, AdSlot.class, PAGAppOpenAdLoadListener.class, Integer.TYPE);
                            if (methodSj != null) {
                                methodSj.invoke(null, dNu.Sj(), adSlotBuild, sj2, Integer.valueOf(AnonymousClass1.this.sP));
                            }
                        } catch (Throwable th2) {
                            sU.Sj("ADNFactory", "open component maybe not exist, please check", th2);
                        }
                    }
                }, sj2, adSlotBuild);
            }
        };
    }

    @Override // com.bytedance.sdk.openadsdk.api.factory.IADTypeLoaderFactory
    public IADLoader<PAGRewardedRequest, PAGRewardedAdLoadListener> createRewardAdLoader() {
        return new IADLoader<PAGRewardedRequest, PAGRewardedAdLoadListener>() { // from class: com.bytedance.sdk.openadsdk.HiB.Sj.4
            @Override // com.bytedance.sdk.openadsdk.api.factory.IADLoader
            /* JADX INFO: renamed from: Sj, reason: merged with bridge method [inline-methods] */
            public void loadAd(String str, PAGRewardedRequest pAGRewardedRequest, PAGRewardedAdLoadListener pAGRewardedAdLoadListener) {
                if (com.bytedance.sdk.openadsdk.Sj.Sj.Sj(str, pAGRewardedRequest, pAGRewardedAdLoadListener)) {
                    return;
                }
                AdSlot.Builder codeId = new AdSlot.Builder().setCodeId(str);
                if (!TextUtils.isEmpty(pAGRewardedRequest.getAdString())) {
                    codeId.withBid(pAGRewardedRequest.getAdString());
                }
                com.bytedance.sdk.openadsdk.Sj.Sj.Sj(codeId, pAGRewardedRequest);
                final AdSlot adSlotBuild = codeId.setRequestExtraMap(pAGRewardedRequest.getExtraInfo()).build();
                final sP sPVar = new sP(pAGRewardedAdLoadListener);
                com.bytedance.sdk.openadsdk.Sj.Sj.Sj(new Dq("loadRewardVideoAd") { // from class: com.bytedance.sdk.openadsdk.HiB.Sj.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!dNu.EjP().Zq() && Mts.zR()) {
                            sPVar.onError(-18, "Blind mode does not allow requesting ads");
                            return;
                        }
                        if (com.bytedance.sdk.openadsdk.Sj.Sj.Sj(sPVar)) {
                            return;
                        }
                        if (adSlotBuild == null) {
                            sPVar.onError(-4, "adslot is null");
                            return;
                        }
                        try {
                            Method methodSj = ley.Sj("com.bytedance.sdk.openadsdk.TTC3Proxy", "loadReward", Context.class, AdSlot.class, PAGRewardedAdLoadListener.class);
                            if (methodSj != null) {
                                methodSj.invoke(null, dNu.Sj(), adSlotBuild, sPVar);
                            }
                        } catch (Throwable unused) {
                        }
                    }
                }, sPVar, adSlotBuild);
            }
        };
    }
}
