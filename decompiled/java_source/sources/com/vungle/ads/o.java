package com.vungle.ads;

/* JADX INFO: loaded from: classes7.dex */
public interface o extends l {
    @Override // com.vungle.ads.l, com.vungle.ads.h
    /* synthetic */ void onAdClicked(BaseAd baseAd);

    @Override // com.vungle.ads.l, com.vungle.ads.h
    /* synthetic */ void onAdEnd(BaseAd baseAd);

    @Override // com.vungle.ads.l, com.vungle.ads.h
    /* synthetic */ void onAdFailedToLoad(BaseAd baseAd, VungleError vungleError);

    @Override // com.vungle.ads.l, com.vungle.ads.h
    /* synthetic */ void onAdFailedToPlay(BaseAd baseAd, VungleError vungleError);

    @Override // com.vungle.ads.l, com.vungle.ads.h
    /* synthetic */ void onAdImpression(BaseAd baseAd);

    @Override // com.vungle.ads.l, com.vungle.ads.h
    /* synthetic */ void onAdLeftApplication(BaseAd baseAd);

    @Override // com.vungle.ads.l, com.vungle.ads.h
    /* synthetic */ void onAdLoaded(BaseAd baseAd);

    @Override // com.vungle.ads.l, com.vungle.ads.h
    /* synthetic */ void onAdStart(BaseAd baseAd);
}
