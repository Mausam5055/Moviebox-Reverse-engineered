.class public abstract Lcom/vungle/ads/internal/c;
.super Lcom/vungle/ads/internal/AdInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/AdInternal;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getAdSizeForAdRequest()Lcom/vungle/ads/y;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isValidAdSize(Lcom/vungle/ads/y;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
