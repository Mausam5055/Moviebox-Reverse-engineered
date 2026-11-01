.class public final Lcom/hisavana/vungle/excuter/VungleInterstitial;
.super Lcom/hisavana/common/base/BaseInterstitial;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\rJ\u0019\u0010\u0011\u001a\u00020\u000b2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\rR\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/hisavana/vungle/excuter/VungleInterstitial;",
        "Lcom/hisavana/common/base/BaseInterstitial;",
        "Landroid/content/Context;",
        "context",
        "Lcom/hisavana/common/bean/Network;",
        "network",
        "<init>",
        "(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V",
        "",
        "isLoaded",
        "()Z",
        "",
        "initInterstitial",
        "()V",
        "onInterstitialStartLoad",
        "Landroid/app/Activity;",
        "activity",
        "onInterstitialShow",
        "(Landroid/app/Activity;)V",
        "destroyAd",
        "Lcom/vungle/ads/n;",
        "d",
        "Lcom/vungle/ads/n;",
        "interstitialAd",
        "e",
        "Z",
        "isAdLoaded",
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
.field private d:Lcom/vungle/ads/n;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "network"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/hisavana/common/base/BaseInterstitial;-><init>(Landroid/content/Context;Lcom/hisavana/common/bean/Network;)V

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/vungle/excuter/VungleInterstitial;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/hisavana/vungle/excuter/VungleInterstitial;->b(Lcom/hisavana/vungle/excuter/VungleInterstitial;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$adClosed(Lcom/hisavana/vungle/excuter/VungleInterstitial;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->adClosed()V

    return-void
.end method

.method public static final synthetic access$adFailedToLoad(Lcom/hisavana/vungle/excuter/VungleInterstitial;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static final synthetic access$onAdShowError(Lcom/hisavana/vungle/excuter/VungleInterstitial;Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public static final synthetic access$setAdLoaded$p(Lcom/hisavana/vungle/excuter/VungleInterstitial;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hisavana/vungle/excuter/VungleInterstitial;->e:Z

    return-void
.end method

.method private static final b(Lcom/hisavana/vungle/excuter/VungleInterstitial;Z)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/hisavana/vungle/excuter/VungleInterstitial;->d:Lcom/vungle/ads/n;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-static {p0, p1, v0, p1}, Lcom/vungle/ads/a$a;->load$default(Lcom/vungle/ads/a;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SOURCE_INIT_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

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
.method public destroyAd()V
    .locals 3

    invoke-super {p0}, Lcom/hisavana/common/base/BaseInterstitial;->destroyAd()V

    iget-object v0, p0, Lcom/hisavana/vungle/excuter/VungleInterstitial;->d:Lcom/vungle/ads/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/vungle/ads/BaseAd;->setAdListener(Lcom/vungle/ads/h;)V

    :cond_0
    iput-object v1, p0, Lcom/hisavana/vungle/excuter/VungleInterstitial;->d:Lcom/vungle/ads/n;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hisavana/common/base/BaseAd;->isLoaded:Z

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Vungle_Log"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected initInterstitial()V
    .locals 4

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPlacementId(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "getContext(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hisavana/common/base/BaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/vungle/ads/b;

    invoke-direct {v1}, Lcom/vungle/ads/b;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/vungle/ads/b;->setAdOrientation(I)V

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance v3, Lcom/vungle/ads/n;

    invoke-direct {v3, v0, v2, v1}, Lcom/vungle/ads/n;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/b;)V

    new-instance v0, Lcom/hisavana/vungle/excuter/VungleInterstitial$initInterstitial$2$1;

    invoke-direct {v0, p0}, Lcom/hisavana/vungle/excuter/VungleInterstitial$initInterstitial$2$1;-><init>(Lcom/hisavana/vungle/excuter/VungleInterstitial;)V

    invoke-virtual {v3, v0}, Lcom/vungle/ads/BaseAd;->setAdListener(Lcom/vungle/ads/h;)V

    iput-object v3, p0, Lcom/hisavana/vungle/excuter/VungleInterstitial;->d:Lcom/vungle/ads/n;

    return-void
.end method

.method public isLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hisavana/vungle/excuter/VungleInterstitial;->e:Z

    return v0
.end method

.method protected onInterstitialShow(Landroid/app/Activity;)V
    .locals 2

    iget-object p1, p0, Lcom/hisavana/vungle/excuter/VungleInterstitial;->d:Lcom/vungle/ads/n;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vungle/ads/BaseAd;->canPlayAd()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/hisavana/vungle/excuter/VungleInterstitial;->d:Lcom/vungle/ads/n;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/vungle/ads/k$a;->play$default(Lcom/vungle/ads/k;Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_SHOW_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, p1}, Lcom/hisavana/common/base/BaseAd;->onAdShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onInterstitialStartLoad()V
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

    new-instance v2, Lee/b;

    invoke-direct {v2, p0}, Lee/b;-><init>(Lcom/hisavana/vungle/excuter/VungleInterstitial;)V

    invoke-virtual {v0, v1, v2}, Lcom/hisavana/vungle/check/ExistsCheck$Companion;->initVungle(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    :goto_0
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_REQUEST_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lcom/hisavana/common/base/BaseAd;->adFailedToLoad(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method
