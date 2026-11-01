.class public final Lcom/vungle/ads/internal/e;
.super Lcom/vungle/ads/internal/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/c;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public isValidAdTypeForPlacement(Lcom/vungle/ads/internal/model/g;)Z
    .locals 1

    const-string v0, "placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/g;->isInterstitial()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/g;->isAppOpen()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
