package com.vungle.ads;

import android.content.Context;
import com.vungle.ads.internal.AdInternal;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class u extends BaseFullscreenAd {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(Context context, String placementId, b adConfig) {
        super(context, placementId, adConfig);
        Intrinsics.h(context, "context");
        Intrinsics.h(placementId, "placementId");
        Intrinsics.h(adConfig, "adConfig");
    }

    public /* synthetic */ u(Context context, String str, b bVar, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, (i11 & 4) != 0 ? new b() : bVar);
    }

    private final com.vungle.ads.internal.g getRewardedAdInternal() {
        AdInternal adInternal$vungle_ads_release = getAdInternal$vungle_ads_release();
        Intrinsics.f(adInternal$vungle_ads_release, "null cannot be cast to non-null type com.vungle.ads.internal.RewardedAdInternal");
        return (com.vungle.ads.internal.g) adInternal$vungle_ads_release;
    }

    @Override // com.vungle.ads.BaseAd
    public com.vungle.ads.internal.g constructAdInternal$vungle_ads_release(Context context) {
        Intrinsics.h(context, "context");
        return new com.vungle.ads.internal.g(context);
    }

    public final void setAlertBodyText(String bodyText) {
        Intrinsics.h(bodyText, "bodyText");
        getRewardedAdInternal().setAlertBodyText$vungle_ads_release(bodyText);
    }

    public final void setAlertCloseButtonText(String closeButtonText) {
        Intrinsics.h(closeButtonText, "closeButtonText");
        getRewardedAdInternal().setAlertCloseButtonText$vungle_ads_release(closeButtonText);
    }

    public final void setAlertContinueButtonText(String continueButtonText) {
        Intrinsics.h(continueButtonText, "continueButtonText");
        getRewardedAdInternal().setAlertContinueButtonText$vungle_ads_release(continueButtonText);
    }

    public final void setAlertTitleText(String titleText) {
        Intrinsics.h(titleText, "titleText");
        getRewardedAdInternal().setAlertTitleText$vungle_ads_release(titleText);
    }

    public final void setUserId(String userId) {
        Intrinsics.h(userId, "userId");
        getRewardedAdInternal().setUserId$vungle_ads_release(userId);
    }
}
