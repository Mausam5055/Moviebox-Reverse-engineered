.class public final Lcom/vungle/ads/fpd/MedianHomeValueUSD$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/fpd/MedianHomeValueUSD;
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

    invoke-direct {p0}, Lcom/vungle/ads/fpd/MedianHomeValueUSD$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromPrice$vungle_ads_release(I)Lcom/vungle/ads/fpd/MedianHomeValueUSD;
    .locals 6

    invoke-static {}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->values()[Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->getRange()Lkotlin/ranges/IntRange;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->f()I

    move-result v5

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->h()I

    move-result v4

    if-gt p1, v4, :cond_0

    if-gt v5, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    sget-object v3, Lcom/vungle/ads/fpd/MedianHomeValueUSD;->UNDER_100K:Lcom/vungle/ads/fpd/MedianHomeValueUSD;

    :cond_2
    return-object v3
.end method
