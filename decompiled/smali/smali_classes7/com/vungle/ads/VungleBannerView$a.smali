.class public final Lcom/vungle/ads/VungleBannerView$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vungle/ads/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/VungleBannerView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/VungleBannerView;


# direct methods
.method constructor <init>(Lcom/vungle/ads/VungleBannerView;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/VungleBannerView$a;->this$0:Lcom/vungle/ads/VungleBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/vungle/ads/BaseAd;)V
    .locals 1

    const-string v0, "baseAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView$a;->this$0:Lcom/vungle/ads/VungleBannerView;

    invoke-virtual {v0}, Lcom/vungle/ads/VungleBannerView;->getAdListener()Lcom/vungle/ads/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/vungle/ads/g;->onAdClicked(Lcom/vungle/ads/BaseAd;)V

    :cond_0
    return-void
.end method

.method public onAdEnd(Lcom/vungle/ads/BaseAd;)V
    .locals 1

    const-string v0, "baseAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView$a;->this$0:Lcom/vungle/ads/VungleBannerView;

    invoke-virtual {v0}, Lcom/vungle/ads/VungleBannerView;->getAdListener()Lcom/vungle/ads/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/vungle/ads/g;->onAdEnd(Lcom/vungle/ads/BaseAd;)V

    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V
    .locals 1

    const-string v0, "baseAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView$a;->this$0:Lcom/vungle/ads/VungleBannerView;

    invoke-virtual {v0}, Lcom/vungle/ads/VungleBannerView;->getAdListener()Lcom/vungle/ads/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/vungle/ads/g;->onAdFailedToLoad(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    :cond_0
    return-void
.end method

.method public onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V
    .locals 1

    const-string v0, "baseAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adError"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView$a;->this$0:Lcom/vungle/ads/VungleBannerView;

    invoke-virtual {v0}, Lcom/vungle/ads/VungleBannerView;->getAdListener()Lcom/vungle/ads/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/vungle/ads/g;->onAdFailedToPlay(Lcom/vungle/ads/BaseAd;Lcom/vungle/ads/VungleError;)V

    :cond_0
    return-void
.end method

.method public onAdImpression(Lcom/vungle/ads/BaseAd;)V
    .locals 1

    const-string v0, "baseAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView$a;->this$0:Lcom/vungle/ads/VungleBannerView;

    invoke-virtual {v0}, Lcom/vungle/ads/VungleBannerView;->getAdListener()Lcom/vungle/ads/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/vungle/ads/g;->onAdImpression(Lcom/vungle/ads/BaseAd;)V

    :cond_0
    return-void
.end method

.method public onAdLeftApplication(Lcom/vungle/ads/BaseAd;)V
    .locals 1

    const-string v0, "baseAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView$a;->this$0:Lcom/vungle/ads/VungleBannerView;

    invoke-virtual {v0}, Lcom/vungle/ads/VungleBannerView;->getAdListener()Lcom/vungle/ads/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/vungle/ads/g;->onAdLeftApplication(Lcom/vungle/ads/BaseAd;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/vungle/ads/BaseAd;)V
    .locals 1

    const-string v0, "baseAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView$a;->this$0:Lcom/vungle/ads/VungleBannerView;

    invoke-static {v0, p1}, Lcom/vungle/ads/VungleBannerView;->access$onBannerAdLoaded(Lcom/vungle/ads/VungleBannerView;Lcom/vungle/ads/BaseAd;)V

    return-void
.end method

.method public onAdStart(Lcom/vungle/ads/BaseAd;)V
    .locals 1

    const-string v0, "baseAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/VungleBannerView$a;->this$0:Lcom/vungle/ads/VungleBannerView;

    invoke-virtual {v0}, Lcom/vungle/ads/VungleBannerView;->getAdListener()Lcom/vungle/ads/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/vungle/ads/g;->onAdStart(Lcom/vungle/ads/BaseAd;)V

    :cond_0
    return-void
.end method
