package com.cloud.hisavana.sdk.data.bean.inapp;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultDataDTO {
    private List<DefaultAdDTO> bannerAds;
    private List<DefaultAdDTO> iconAds;
    private List<DefaultAdDTO> interstitialAds;
    private List<DefaultAdDTO> nativeAds;
    private List<PsAppInfo> psAppInfoList;
    private List<DefaultAdDTO> rewardedAds;
    private List<DefaultAdDTO> splashAds;
    private Long version;
    private String zipUrl;

    public int describeContents() {
        return 0;
    }

    public List<DefaultAdDTO> getBannerAds() {
        return this.bannerAds;
    }

    public List<DefaultAdDTO> getIconAds() {
        return this.iconAds;
    }

    public List<DefaultAdDTO> getInterstitialAds() {
        return this.interstitialAds;
    }

    public List<DefaultAdDTO> getNativeAds() {
        return this.nativeAds;
    }

    public List<PsAppInfo> getPsAppInfoList() {
        return this.psAppInfoList;
    }

    public List<DefaultAdDTO> getRewardedAds() {
        return this.rewardedAds;
    }

    public List<DefaultAdDTO> getSplashAds() {
        return this.splashAds;
    }

    public Long getVersion() {
        Long l11 = this.version;
        return Long.valueOf(l11 == null ? 0L : l11.longValue());
    }

    public void setVersion(Long l11) {
        this.version = l11;
    }
}
