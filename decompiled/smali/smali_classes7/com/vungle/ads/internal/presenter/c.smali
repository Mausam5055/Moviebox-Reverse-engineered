.class public Lcom/vungle/ads/internal/presenter/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vungle/ads/internal/presenter/b;


# instance fields
.field private final adPlayCallback:Lcom/vungle/ads/internal/presenter/b;


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/presenter/b;)V
    .locals 1

    const-string v0, "adPlayCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/internal/presenter/c;->adPlayCallback:Lcom/vungle/ads/internal/presenter/b;

    return-void
.end method


# virtual methods
.method public onAdClick(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/c;->adPlayCallback:Lcom/vungle/ads/internal/presenter/b;

    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onAdClick(Ljava/lang/String;)V

    return-void
.end method

.method public onAdEnd(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/c;->adPlayCallback:Lcom/vungle/ads/internal/presenter/b;

    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onAdEnd(Ljava/lang/String;)V

    return-void
.end method

.method public onAdImpression(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/c;->adPlayCallback:Lcom/vungle/ads/internal/presenter/b;

    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onAdImpression(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLeftApplication(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/c;->adPlayCallback:Lcom/vungle/ads/internal/presenter/b;

    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onAdLeftApplication(Ljava/lang/String;)V

    return-void
.end method

.method public onAdRewarded(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/c;->adPlayCallback:Lcom/vungle/ads/internal/presenter/b;

    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onAdRewarded(Ljava/lang/String;)V

    return-void
.end method

.method public onAdStart(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/c;->adPlayCallback:Lcom/vungle/ads/internal/presenter/b;

    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onAdStart(Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Lcom/vungle/ads/VungleError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/presenter/c;->adPlayCallback:Lcom/vungle/ads/internal/presenter/b;

    invoke-interface {v0, p1}, Lcom/vungle/ads/internal/presenter/b;->onFailure(Lcom/vungle/ads/VungleError;)V

    return-void
.end method
