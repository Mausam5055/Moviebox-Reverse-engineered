.class public final Lcom/vungle/ads/u;
.super Lcom/vungle/ads/BaseFullscreenAd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/ads/BaseFullscreenAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/b;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    new-instance p3, Lcom/vungle/ads/b;

    invoke-direct {p3}, Lcom/vungle/ads/b;-><init>()V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/ads/u;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/b;)V

    return-void
.end method

.method private final getRewardedAdInternal()Lcom/vungle/ads/internal/g;
    .locals 2

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.vungle.ads.internal.RewardedAdInternal"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/vungle/ads/internal/g;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/AdInternal;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vungle/ads/u;->constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/g;

    move-result-object p1

    return-object p1
.end method

.method public constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/g;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/internal/g;

    invoke-direct {v0, p1}, Lcom/vungle/ads/internal/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final setAlertBodyText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bodyText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vungle/ads/u;->getRewardedAdInternal()Lcom/vungle/ads/internal/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/g;->setAlertBodyText$vungle_ads_release(Ljava/lang/String;)V

    return-void
.end method

.method public final setAlertCloseButtonText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "closeButtonText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vungle/ads/u;->getRewardedAdInternal()Lcom/vungle/ads/internal/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/g;->setAlertCloseButtonText$vungle_ads_release(Ljava/lang/String;)V

    return-void
.end method

.method public final setAlertContinueButtonText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "continueButtonText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vungle/ads/u;->getRewardedAdInternal()Lcom/vungle/ads/internal/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/g;->setAlertContinueButtonText$vungle_ads_release(Ljava/lang/String;)V

    return-void
.end method

.method public final setAlertTitleText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "titleText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vungle/ads/u;->getRewardedAdInternal()Lcom/vungle/ads/internal/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/g;->setAlertTitleText$vungle_ads_release(Ljava/lang/String;)V

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vungle/ads/u;->getRewardedAdInternal()Lcom/vungle/ads/internal/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/g;->setUserId$vungle_ads_release(Ljava/lang/String;)V

    return-void
.end method
