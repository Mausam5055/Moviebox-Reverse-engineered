package com.vungle.ads;

/* JADX INFO: loaded from: classes7.dex */
public interface h {
    void onAdClicked(BaseAd baseAd);

    void onAdEnd(BaseAd baseAd);

    void onAdFailedToLoad(BaseAd baseAd, VungleError vungleError);

    void onAdFailedToPlay(BaseAd baseAd, VungleError vungleError);

    void onAdImpression(BaseAd baseAd);

    void onAdLeftApplication(BaseAd baseAd);

    void onAdLoaded(BaseAd baseAd);

    void onAdStart(BaseAd baseAd);
}
