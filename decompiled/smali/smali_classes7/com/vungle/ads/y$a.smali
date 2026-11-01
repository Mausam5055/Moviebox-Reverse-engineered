.class public final Lcom/vungle/ads/y$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/vungle/ads/y$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdSizeWithWidth(Landroid/content/Context;I)Lcom/vungle/ads/y;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/internal/util/w;->INSTANCE:Lcom/vungle/ads/internal/util/w;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vungle/ads/internal/util/w;->getDeviceWidthAndHeightWithOrientation(Landroid/content/Context;I)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-gez p2, :cond_0

    move p2, v1

    :cond_0
    new-instance v0, Lcom/vungle/ads/y;

    invoke-direct {v0, p2, p1}, Lcom/vungle/ads/y;-><init>(II)V

    invoke-virtual {v0}, Lcom/vungle/ads/y;->getWidth()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    invoke-virtual {v0, p2}, Lcom/vungle/ads/y;->setAdaptiveWidth$vungle_ads_release(Z)V

    :cond_1
    invoke-virtual {v0, p2}, Lcom/vungle/ads/y;->setAdaptiveHeight$vungle_ads_release(Z)V

    return-object v0
.end method

.method public final getAdSizeWithWidthAndHeight(II)Lcom/vungle/ads/y;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move p1, v0

    :cond_0
    if-gez p2, :cond_1

    move p2, v0

    :cond_1
    new-instance v0, Lcom/vungle/ads/y;

    invoke-direct {v0, p1, p2}, Lcom/vungle/ads/y;-><init>(II)V

    invoke-virtual {v0}, Lcom/vungle/ads/y;->getWidth()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_2

    invoke-virtual {v0, p2}, Lcom/vungle/ads/y;->setAdaptiveWidth$vungle_ads_release(Z)V

    :cond_2
    invoke-virtual {v0}, Lcom/vungle/ads/y;->getHeight()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0, p2}, Lcom/vungle/ads/y;->setAdaptiveHeight$vungle_ads_release(Z)V

    :cond_3
    return-object v0
.end method

.method public final getValidAdSizeFromSize(IILjava/lang/String;)Lcom/vungle/ads/y;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "placementId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/ads/internal/ConfigManager;->INSTANCE:Lcom/vungle/ads/internal/ConfigManager;

    invoke-virtual {v0, p3}, Lcom/vungle/ads/internal/ConfigManager;->getPlacement(Ljava/lang/String;)Lcom/vungle/ads/internal/model/g;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/vungle/ads/internal/model/g;->isInline()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    sget-object p3, Lcom/vungle/ads/y;->Companion:Lcom/vungle/ads/y$a;

    invoke-virtual {p3, p1, p2}, Lcom/vungle/ads/y$a;->getAdSizeWithWidthAndHeight(II)Lcom/vungle/ads/y;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p3, Lcom/vungle/ads/y;->MREC:Lcom/vungle/ads/y;

    invoke-virtual {p3}, Lcom/vungle/ads/y;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_2

    invoke-virtual {p3}, Lcom/vungle/ads/y;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_2

    return-object p3

    :cond_2
    sget-object p3, Lcom/vungle/ads/y;->BANNER_LEADERBOARD:Lcom/vungle/ads/y;

    invoke-virtual {p3}, Lcom/vungle/ads/y;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_3

    invoke-virtual {p3}, Lcom/vungle/ads/y;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_3

    return-object p3

    :cond_3
    sget-object p3, Lcom/vungle/ads/y;->BANNER:Lcom/vungle/ads/y;

    invoke-virtual {p3}, Lcom/vungle/ads/y;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_4

    invoke-virtual {p3}, Lcom/vungle/ads/y;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_4

    return-object p3

    :cond_4
    sget-object p3, Lcom/vungle/ads/y;->BANNER_SHORT:Lcom/vungle/ads/y;

    invoke-virtual {p3}, Lcom/vungle/ads/y;->getWidth()I

    move-result v0

    if-lt p1, v0, :cond_5

    invoke-virtual {p3}, Lcom/vungle/ads/y;->getHeight()I

    move-result v0

    if-lt p2, v0, :cond_5

    return-object p3

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/vungle/ads/y$a;->getAdSizeWithWidthAndHeight(II)Lcom/vungle/ads/y;

    move-result-object p1

    return-object p1
.end method
