.class public final Lcom/hisavana/vungle/excuter/VungleInline;
.super Lcom/hisavana/common/base/BaseBanner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hisavana/common/base/BaseBanner<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0011\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u000eH\u0014\u00a2\u0006\u0004\u0008\u0012\u0010\u0010R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/hisavana/vungle/excuter/VungleInline;",
        "Lcom/hisavana/common/base/BaseBanner;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "Lcom/hisavana/common/bean/Network;",
        "network",
        "",
        "bannerSize",
        "<init>",
        "(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V",
        "Lcom/vungle/ads/VungleBannerView;",
        "c",
        "()Lcom/vungle/ads/VungleBannerView;",
        "",
        "onBannerLoad",
        "()V",
        "showBanner",
        "onBannerDestroy",
        "d",
        "Landroid/content/Context;",
        "e",
        "I",
        "f",
        "Lcom/vungle/ads/VungleBannerView;",
        "bannerAd",
        "liftoff_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:I

.field private f:Lcom/vungle/ads/VungleBannerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseBanner;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    iput-object p1, p0, Lcom/hisavana/vungle/excuter/VungleInline;->d:Landroid/content/Context;

    iput p3, p0, Lcom/hisavana/vungle/excuter/VungleInline;->e:I

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/vungle/excuter/VungleInline;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/hisavana/vungle/excuter/VungleInline;->d(Lcom/hisavana/vungle/excuter/VungleInline;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$adFailedToLoad(Lcom/hisavana/vungle/excuter/VungleInline;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static final synthetic access$onAdShowError(Lcom/hisavana/vungle/excuter/VungleInline;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method private static final d(Lcom/hisavana/vungle/excuter/VungleInline;Z)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/hisavana/vungle/excuter/VungleInline;->f:Lcom/vungle/ads/VungleBannerView;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-static {p0, p1, v0, p1}, Lcom/vungle/ads/VungleBannerView;->load$default(Lcom/vungle/ads/VungleBannerView;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SOURCE_INIT_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method


# virtual methods
.method protected c()Lcom/vungle/ads/VungleBannerView;
    .locals 5

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPlacementId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/hisavana/vungle/excuter/VungleInline;->f:Lcom/vungle/ads/VungleBannerView;

    if-nez v0, :cond_6

    iget v0, p0, Lcom/hisavana/common/base/BaseBanner;->mBannerAdWidth:I

    if-lez v0, :cond_1

    iget v2, p0, Lcom/hisavana/common/base/BaseBanner;->mBannerAdMaxHeight:I

    if-lez v2, :cond_1

    sget-object v3, Lcom/vungle/ads/y;->Companion:Lcom/vungle/ads/y$a;

    invoke-virtual {v3, v0, v2}, Lcom/vungle/ads/y$a;->getAdSizeWithWidthAndHeight(II)Lcom/vungle/ads/y;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/hisavana/vungle/excuter/VungleInline;->e:I

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    const/16 v3, 0x140

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    sget-object v0, Lcom/vungle/ads/y;->BANNER:Lcom/vungle/ads/y;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/vungle/ads/y;->Companion:Lcom/vungle/ads/y$a;

    const/16 v2, 0x5a

    invoke-virtual {v0, v3, v2}, Lcom/vungle/ads/y$a;->getAdSizeWithWidthAndHeight(II)Lcom/vungle/ads/y;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/vungle/ads/y;->MREC:Lcom/vungle/ads/y;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/vungle/ads/y;->Companion:Lcom/vungle/ads/y$a;

    const/16 v2, 0x64

    invoke-virtual {v0, v3, v2}, Lcom/vungle/ads/y$a;->getAdSizeWithWidthAndHeight(II)Lcom/vungle/ads/y;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/vungle/ads/y;->BANNER:Lcom/vungle/ads/y;

    :goto_0
    new-instance v2, Lcom/vungle/ads/VungleBannerView;

    iget-object v3, p0, Lcom/hisavana/vungle/excuter/VungleInline;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v0}, Lcom/vungle/ads/VungleBannerView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/y;)V

    new-instance v0, Lcom/hisavana/vungle/excuter/VungleInline$getBanner$1$1;

    invoke-direct {v0, p0}, Lcom/hisavana/vungle/excuter/VungleInline$getBanner$1$1;-><init>(Lcom/hisavana/vungle/excuter/VungleInline;)V

    invoke-virtual {v2, v0}, Lcom/vungle/ads/VungleBannerView;->setAdListener(Lcom/vungle/ads/g;)V

    iput-object v2, p0, Lcom/hisavana/vungle/excuter/VungleInline;->f:Lcom/vungle/ads/VungleBannerView;

    :cond_6
    iget-object v0, p0, Lcom/hisavana/vungle/excuter/VungleInline;->f:Lcom/vungle/ads/VungleBannerView;

    return-object v0
.end method

.method public bridge synthetic getBanner()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/hisavana/vungle/excuter/VungleInline;->c()Lcom/vungle/ads/VungleBannerView;

    move-result-object v0

    return-object v0
.end method

.method protected onBannerDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/hisavana/vungle/excuter/VungleInline;->f:Lcom/vungle/ads/VungleBannerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/ads/VungleBannerView;->finishAd()V

    :cond_0
    iget-object v0, p0, Lcom/hisavana/vungle/excuter/VungleInline;->f:Lcom/vungle/ads/VungleBannerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/vungle/ads/VungleBannerView;->setAdListener(Lcom/vungle/ads/g;)V

    :cond_1
    iput-object v1, p0, Lcom/hisavana/vungle/excuter/VungleInline;->f:Lcom/vungle/ads/VungleBannerView;

    return-void
.end method

.method protected onBannerLoad()V
    .locals 3

    iget-object v0, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getCodeSeatId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hisavana/vungle/check/ExistsCheck;->Companion:Lcom/hisavana/vungle/check/ExistsCheck$Companion;

    iget-object v1, p0, Lcom/hisavana/common/base/BaseAd;->mNetwork:Lcom/hisavana/common/bean/Network;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getApplicationId(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lee/a;

    invoke-direct {v2, p0}, Lee/a;-><init>(Lcom/hisavana/vungle/excuter/VungleInline;)V

    invoke-virtual {v0, v1, v2}, Lcom/hisavana/vungle/check/ExistsCheck$Companion;->initVungle(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_REQUEST_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseBanner;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method protected showBanner()V
    .locals 0

    return-void
.end method
