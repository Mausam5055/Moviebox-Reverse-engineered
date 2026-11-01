.class public final Lcom/vungle/ads/internal/a;
.super Lcom/vungle/ads/internal/AdInternal;


# instance fields
.field private final adSize:Lcom/vungle/ads/y;

.field private updatedAdSize:Lcom/vungle/ads/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/y;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/vungle/ads/internal/AdInternal;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/vungle/ads/internal/a;->adSize:Lcom/vungle/ads/y;

    return-void
.end method


# virtual methods
.method public adLoadedAndUpdateConfigure$vungle_ads_release(Lcom/vungle/ads/internal/model/AdPayload;)V
    .locals 4

    const-string v0, "advertisement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/vungle/ads/internal/AdInternal;->adLoadedAndUpdateConfigure$vungle_ads_release(Lcom/vungle/ads/internal/model/AdPayload;)V

    iget-object v0, p0, Lcom/vungle/ads/internal/a;->adSize:Lcom/vungle/ads/y;

    invoke-virtual {v0}, Lcom/vungle/ads/y;->isAdaptiveWidth$vungle_ads_release()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vungle/ads/internal/a;->adSize:Lcom/vungle/ads/y;

    invoke-virtual {v0}, Lcom/vungle/ads/y;->isAdaptiveHeight$vungle_ads_release()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    sget-object v0, Lcom/vungle/ads/internal/util/w;->INSTANCE:Lcom/vungle/ads/internal/util/w;

    invoke-virtual {p0}, Lcom/vungle/ads/internal/AdInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/w;->getDeviceWidthAndHeightWithOrientation(Landroid/content/Context;I)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/vungle/ads/internal/a;->adSize:Lcom/vungle/ads/y;

    invoke-virtual {v2}, Lcom/vungle/ads/y;->isAdaptiveWidth$vungle_ads_release()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/AdPayload;->adWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/vungle/ads/internal/a;->adSize:Lcom/vungle/ads/y;

    invoke-virtual {v2}, Lcom/vungle/ads/y;->getWidth()I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/vungle/ads/internal/a;->adSize:Lcom/vungle/ads/y;

    invoke-virtual {v3}, Lcom/vungle/ads/y;->isAdaptiveHeight$vungle_ads_release()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/AdPayload;->adHeight()I

    move-result p1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/vungle/ads/internal/a;->adSize:Lcom/vungle/ads/y;

    invoke-virtual {p1}, Lcom/vungle/ads/y;->getHeight()I

    move-result p1

    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/vungle/ads/internal/a;->adSize:Lcom/vungle/ads/y;

    invoke-virtual {v0}, Lcom/vungle/ads/y;->isAdaptiveHeight$vungle_ads_release()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vungle/ads/internal/a;->adSize:Lcom/vungle/ads/y;

    invoke-virtual {v0}, Lcom/vungle/ads/y;->getHeight()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/vungle/ads/internal/a;->adSize:Lcom/vungle/ads/y;

    invoke-virtual {v0}, Lcom/vungle/ads/y;->getHeight()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_3
    new-instance v0, Lcom/vungle/ads/y;

    invoke-direct {v0, v1, p1}, Lcom/vungle/ads/y;-><init>(II)V

    iput-object v0, p0, Lcom/vungle/ads/internal/a;->updatedAdSize:Lcom/vungle/ads/y;

    :cond_4
    return-void
.end method

.method public getAdSizeForAdRequest()Lcom/vungle/ads/y;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/a;->adSize:Lcom/vungle/ads/y;

    return-object v0
.end method

.method public final getUpdatedAdSize$vungle_ads_release()Lcom/vungle/ads/y;
    .locals 1

    iget-object v0, p0, Lcom/vungle/ads/internal/a;->updatedAdSize:Lcom/vungle/ads/y;

    return-object v0
.end method

.method public isValidAdSize(Lcom/vungle/ads/y;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vungle/ads/y;->isValidSize$vungle_ads_release()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isValidAdTypeForPlacement(Lcom/vungle/ads/internal/model/g;)Z
    .locals 1

    const-string v0, "placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/g;->isBanner()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/g;->isMREC()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/g;->isInline()Z

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

.method public final setUpdatedAdSize$vungle_ads_release(Lcom/vungle/ads/y;)V
    .locals 0

    iput-object p1, p0, Lcom/vungle/ads/internal/a;->updatedAdSize:Lcom/vungle/ads/y;

    return-void
.end method

.method public final wrapCallback$vungle_ads_release(Lcom/vungle/ads/internal/presenter/b;)Lcom/vungle/ads/internal/presenter/c;
    .locals 1

    const-string v0, "adPlayCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vungle/ads/internal/a$a;

    invoke-direct {v0, p1, p0}, Lcom/vungle/ads/internal/a$a;-><init>(Lcom/vungle/ads/internal/presenter/b;Lcom/vungle/ads/internal/a;)V

    return-object v0
.end method
