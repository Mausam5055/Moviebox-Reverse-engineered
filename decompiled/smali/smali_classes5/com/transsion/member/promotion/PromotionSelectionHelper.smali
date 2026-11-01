.class public final Lcom/transsion/member/promotion/PromotionSelectionHelper;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/member/promotion/PromotionSelectionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/member/promotion/PromotionSelectionHelper;

    invoke-direct {v0}, Lcom/transsion/member/promotion/PromotionSelectionHelper;-><init>()V

    sput-object v0, Lcom/transsion/member/promotion/PromotionSelectionHelper;->a:Lcom/transsion/member/promotion/PromotionSelectionHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lkotlin/Pair;
    .locals 3

    const-string v0, "matchedPairs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Lcom/transsion/member/promotion/PromotionSelectionHelper$findBestNonExpiredPair$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/transsion/member/promotion/PromotionSelectionHelper$findBestNonExpiredPair$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlin/Pair;

    sget-object v2, Lcom/transsion/member/promotion/PromotionSelectionHelper;->a:Lcom/transsion/member/promotion/PromotionSelectionHelper;

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/memberapi/SkuPromotionItem;

    invoke-virtual {v2, v1}, Lcom/transsion/member/promotion/PromotionSelectionHelper;->b(Lcom/transsion/memberapi/SkuPromotionItem;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lkotlin/Pair;

    return-object v0
.end method

.method public final b(Lcom/transsion/memberapi/SkuPromotionItem;)Z
    .locals 10

    const-string v0, "promotionItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/member/promotion/m;->a:Lcom/transsion/member/promotion/m;

    invoke-virtual {v0}, Lcom/transsion/member/promotion/m;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-gtz v4, :cond_0

    return v5

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuPromotionItem;->getPromotionContent()Lcom/transsion/memberapi/SkuPromotionContent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/memberapi/SkuPromotionContent;->getCountdownHours()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, v5}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result p1

    goto :goto_0

    :cond_1
    const/16 p1, 0xc

    :goto_0
    int-to-long v6, p1

    const-wide/32 v8, 0x36ee80

    mul-long/2addr v6, v8

    add-long/2addr v0, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v0, v6

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->g(JJ)J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5
.end method
