.class public final Lcom/vungle/ads/internal/BannerAdImpl;
.super Lcom/vungle/ads/BaseAd;


# instance fields
.field private final adPlayCallback:Lcom/vungle/ads/internal/presenter/c;

.field private final adSize:Lcom/vungle/ads/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/y;Lcom/vungle/ads/b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSize"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p4}, Lcom/vungle/ads/BaseAd;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/b;)V

    iput-object p3, p0, Lcom/vungle/ads/internal/BannerAdImpl;->adSize:Lcom/vungle/ads/y;

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.vungle.ads.internal.BannerAdInternal"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/vungle/ads/internal/a;

    new-instance p2, Lcom/vungle/ads/internal/BannerAdImpl$adPlayCallback$1;

    invoke-direct {p2, p0}, Lcom/vungle/ads/internal/BannerAdImpl$adPlayCallback$1;-><init>(Lcom/vungle/ads/internal/BannerAdImpl;)V

    invoke-virtual {p1, p2}, Lcom/vungle/ads/internal/a;->wrapCallback$vungle_ads_release(Lcom/vungle/ads/internal/presenter/b;)Lcom/vungle/ads/internal/presenter/c;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/ads/internal/BannerAdImpl;->adPlayCallback:Lcom/vungle/ads/internal/presenter/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/AdInternal;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/BannerAdImpl;->constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/a;

    move-result-object p1

    return-object p1
.end method

.method public constructAdInternal$vungle_ads_release(Landroid/content/Context;)Lcom/vungle/ads/internal/a;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/internal/a;

    iget-object v1, p0, Lcom/vungle/ads/internal/BannerAdImpl;->adSize:Lcom/vungle/ads/y;

    invoke-direct {v0, p1, v1}, Lcom/vungle/ads/internal/a;-><init>(Landroid/content/Context;Lcom/vungle/ads/y;)V

    return-object v0
.end method

.method public final getAdPlayCallback$vungle_ads_release()Lcom/vungle/ads/internal/presenter/c;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/BannerAdImpl;->adPlayCallback:Lcom/vungle/ads/internal/presenter/c;

    return-object v0
.end method

.method public final getAdViewSize()Lcom/vungle/ads/y;
    .locals 2

    invoke-virtual {p0}, Lcom/vungle/ads/BaseAd;->getAdInternal$vungle_ads_release()Lcom/vungle/ads/internal/AdInternal;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.vungle.ads.internal.BannerAdInternal"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/vungle/ads/internal/a;

    invoke-virtual {v0}, Lcom/vungle/ads/internal/a;->getUpdatedAdSize$vungle_ads_release()Lcom/vungle/ads/y;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vungle/ads/internal/BannerAdImpl;->adSize:Lcom/vungle/ads/y;

    :cond_0
    return-object v0
.end method
