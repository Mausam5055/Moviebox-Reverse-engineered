.class public final Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;
.super Lcom/cloud/hisavana/sdk/api/listener/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;

.field private static final i:Lkotlin/Lazy;


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Lz6/d;

.field private d:Ljava/lang/String;

.field private final e:Ljava/util/concurrent/ConcurrentLinkedDeque;

.field private final f:Ljava/util/concurrent/ConcurrentSkipListSet;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->h:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$a;

    new-instance v0, Lcom/transsion/ad/bidding/nativead/d;

    invoke-direct {v0}, Lcom/transsion/ad/bidding/nativead/d;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->i:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->e:Ljava/util/concurrent/ConcurrentLinkedDeque;

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    new-instance v1, Lcom/transsion/ad/bidding/nativead/c;

    invoke-direct {v1}, Lcom/transsion/ad/bidding/nativead/c;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    const/4 v0, 0x3

    iput v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->g:I

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->p(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic b()Ljava/util/Map;
    .locals 1

    invoke-static {}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->o()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;)I
    .locals 0

    iget p0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->g:I

    return p0
.end method

.method public static final synthetic d(Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->i:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic f(Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->g:I

    return-void
.end method

.method private final j()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private final m()Z
    .locals 8

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    move-result v0

    iget v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->g:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    move-result v3

    iget v4, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->g:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> isUpperLimit() --- \u8fbe\u5230\u9608\u503c\u4e86 --> nativeInfoList.size = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -- cacheUpperLimit = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v2, "ad_n"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Loi/a;->o(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_1
    return v0
.end method

.method private static final o()Ljava/util/Map;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method private static final p(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)I
    .locals 4

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdCreateId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdCreateId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v0, :cond_5

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getBidPrice()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getBidPrice()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdCreateId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdCreateId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAdCreateId(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getImgUrl(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getBidPrice()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getBidPrice()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-eqz p0, :cond_6

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final h(Lcom/cloud/hisavana/sdk/api/listener/d;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->e:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final i(IZ)Ljava/util/List;
    .locals 4

    iget v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->g:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->g:I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    iget-object v3, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->c:Lz6/d;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Lz6/d;->v(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->destroy()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    move-result p2

    if-ge p2, p1, :cond_3

    move-object p2, v0

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_5

    iget-object v2, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentSkipListSet;->pollFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    if-eqz v2, :cond_4

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_6

    move-object v0, p1

    :cond_6
    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->n()V

    return-object v0
.end method

.method public final k()Lz6/d;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->c:Lz6/d;

    return-object v0
.end method

.method public final n()V
    .locals 9

    sget-object v0, Lcom/transsion/ad/hi/HiSavanaAdManager;->a:Lcom/transsion/ad/hi/HiSavanaAdManager;

    invoke-virtual {v0}, Lcom/transsion/ad/hi/HiSavanaAdManager;->i()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> loadAd() --> \u5e7f\u544aSDK\u6ca1\u6709\u521d\u59cb\u5316"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v2, "ad_n"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Loi/a;->o(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->c:Lz6/d;

    if-nez v0, :cond_4

    new-instance v0, Lz6/d;

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lz6/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->c:Lz6/d;

    invoke-virtual {v0, p0}, Lz6/a;->p(Lcom/cloud/hisavana/sdk/api/listener/d;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->c:Lz6/d;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->g:I

    invoke-virtual {v0, v1}, Lz6/d;->A(I)V

    :cond_3
    sget-object v2, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->l()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "============= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> loadAd() --> mPlacementId = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> create TNativeAd() ============= "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v3, "ad_n"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Loi/a;->o(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->c:Lz6/d;

    if-eqz v0, :cond_5

    iget v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->g:I

    invoke-virtual {v0, v1}, Lz6/d;->A(I)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->c:Lz6/d;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lz6/d;->w()V

    :cond_6
    return-void
.end method

.method public onAdActivate(Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdActivate(Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;)V

    sget-object v0, Lcom/transsion/ad/ps/installed/AppInstallManager;->a:Lcom/transsion/ad/ps/installed/AppInstallManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/AdActiveInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "ew\u6ca1\u6709\u4f20\u9012\u8fc7\u6765\u5305\u540d"

    :cond_1
    invoke-virtual {v0, p1}, Lcom/transsion/ad/ps/installed/AppInstallManager;->a(Ljava/lang/String;)Lcom/transsion/ad/db/pslink/AppInstalledBean;

    move-result-object p1

    const-string v1, "EW"

    invoke-virtual {p1, v1}, Lcom/transsion/ad/db/pslink/AppInstalledBean;->setSource(Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Lcom/transsion/ad/ps/installed/AppInstallManager;->e(Landroid/content/Context;Lcom/transsion/ad/db/pslink/AppInstalledBean;)V

    return-void
.end method

.method public onAdLoaded(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->l()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> onError() --> placementId = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> errorMessage = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ad_n"

    const/4 v3, 0x6

    invoke-virtual {v0, v2, p1, v3, v1}, Loi/a;->n(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public onNativeAdClick(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->e:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/api/listener/d;

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onNativeAdClick(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNativeAdShow(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->e:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/api/listener/d;

    invoke-virtual {v1, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onNativeAdShow(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q(Ljava/lang/String;ILjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    move-object v6, p0

    move-object v0, p1

    move-object/from16 v1, p4

    instance-of v2, v1, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;

    iget v3, v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;

    invoke-direct {v2, p0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;-><init>(Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget v0, v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;->I$0:I

    iget-object v3, v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    iget-object v2, v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v4, v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v1, Lcom/transsion/ad/hi/HiSavanaAdManager;->a:Lcom/transsion/ad/hi/HiSavanaAdManager;

    invoke-virtual {v1}, Lcom/transsion/ad/hi/HiSavanaAdManager;->i()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_3
    sget-object v1, Lcom/transsion/ad/scene/SceneInterceptManager;->a:Lcom/transsion/ad/scene/SceneInterceptManager;

    iput-object v0, v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;->L$0:Ljava/lang/Object;

    move-object/from16 v4, p3

    iput-object v4, v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;->L$1:Ljava/lang/Object;

    move v7, p2

    iput v7, v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;->I$0:I

    iput v5, v2, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$1;->label:I

    invoke-virtual {v1, p1, v2}, Lcom/transsion/ad/scene/SceneInterceptManager;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    return-object v3

    :cond_4
    move-object v2, v0

    move-object v3, v4

    move v4, v7

    :goto_1
    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_5
    sget-object v0, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v2, v7, v1, v5}, Lcom/transsion/ad/scene/c;->b(Lcom/transsion/ad/scene/c;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_6
    iget-object v0, v6, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->f:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_7
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v7

    new-instance v10, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;

    const/4 v5, 0x0

    move-object v0, v10

    move-object v1, v2

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;-><init>(Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;Ljava/util/Map;ILkotlin/coroutines/Continuation;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final r(Lcom/cloud/hisavana/sdk/api/listener/d;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->e:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final s(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->d:Ljava/lang/String;

    return-void
.end method
