.class public final Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;
.super Lcom/transsion/ad/bidding/base/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;
    }
.end annotation


# static fields
.field public static final j:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;

.field private static final k:Lkotlin/Lazy;


# instance fields
.field private final d:Ljava/util/concurrent/ConcurrentLinkedDeque;

.field private final e:Ljava/util/concurrent/ConcurrentSkipListSet;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/hisavana/mediation/ad/TNativeAd;

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->j:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$a;

    new-instance v0, Lcom/transsion/ad/bidding/nativead/b;

    invoke-direct {v0}, Lcom/transsion/ad/bidding/nativead/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->k:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/x;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->d:Ljava/util/concurrent/ConcurrentLinkedDeque;

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    new-instance v1, Lcom/transsion/ad/bidding/nativead/a;

    invoke-direct {v1}, Lcom/transsion/ad/bidding/nativead/a;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->e:Ljava/util/concurrent/ConcurrentSkipListSet;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic a(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/TAdNativeInfo;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->t(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/TAdNativeInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic b()Ljava/util/Map;
    .locals 1

    invoke-static {}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->s()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic c(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->getClassTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->k:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;)Lcom/hisavana/mediation/ad/TNativeAd;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->h:Lcom/hisavana/mediation/ad/TNativeAd;

    return-object p0
.end method

.method private final getClassTag()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final h()V
    .locals 5

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->h:Lcom/hisavana/mediation/ad/TNativeAd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/hisavana/mediation/ad/TNativeAd;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->n()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/hisavana/mediation/ad/TNativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->h:Lcom/hisavana/mediation/ad/TNativeAd;

    new-instance v1, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;

    invoke-direct {v1}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;-><init>()V

    invoke-virtual {v1, p0}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->setAdditionalListener(Lcom/hisavana/common/interfacz/TAdditionalListener;)Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hisavana/common/bean/TAdRequestBody$AdRequestBodyBuild;->build()Lcom/hisavana/common/bean/TAdRequestBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lce/b;->setRequestBody(Lcom/hisavana/common/bean/TAdRequestBody;)V

    sget-object v0, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->getClassTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->n()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "============= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> loadAd() --> mPlacementId = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> create TNativeAd() =================== "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const-string v4, "ad_n"

    invoke-virtual {v0, v4, v1, v2, v3}, Loi/a;->n(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_0
    return-void
.end method

.method private final m()Lcom/hisavana/common/bean/TAdNativeInfo;
    .locals 3

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->e:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->e:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/common/bean/TAdNativeInfo;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/hisavana/common/interfacz/ICacheAd;->isExpired()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdNativeInfo;->release()V

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->m()Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private final p()Z
    .locals 7

    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/a;->m(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->e:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    sget-object v3, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->getClassTag()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->e:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> isUpperLimit() --- \u8fbe\u5230\u9608\u503c\u4e86 --> nativeInfoList.size = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -- cacheUpperLimit = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x5

    const-string v5, "ad_n"

    invoke-virtual {v3, v5, v0, v4, v2}, Loi/a;->n(Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_1
    return v1
.end method

.method public static synthetic r(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->q(Ljava/lang/String;)V

    return-void
.end method

.method private static final s()Ljava/util/Map;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method private static final t(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/TAdNativeInfo;)I
    .locals 4

    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v0

    invoke-interface {p0}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getAdId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getAdId(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static synthetic v(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->u(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final w(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    invoke-virtual {v0, p1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "preload"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final g(Ldi/a;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->d:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->h()V

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->h:Lcom/hisavana/mediation/ad/TNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lce/b;->hasAd()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->q(Ljava/lang/String;)V

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 7

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$enterScene$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$enterScene$1;-><init>(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final k()Lcom/hisavana/common/bean/TAdNativeInfo;
    .locals 2

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->h:Lcom/hisavana/mediation/ad/TNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/mediation/ad/TNativeAd;->getNativeAdInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->e:Ljava/util/concurrent/ConcurrentSkipListSet;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->m()Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->p()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\u540c\u6b65\u83b7\u53d6\u5e7f\u544a\uff0c\u7ee7\u7eed\u88c5\u586b\u7f13\u5b58\u6c60"

    invoke-virtual {p0, v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->q(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public final l()Lcom/hisavana/mediation/ad/TNativeAd;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->h:Lcom/hisavana/mediation/ad/TNativeAd;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->e:Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 2

    const-string v0, "additionalInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->d:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldi/a;

    invoke-virtual {v1, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 9

    const-string v0, "additionalInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v2, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->getClassTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->n()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> onLoadFailure() --> placementId = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> errorMessage = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v3, "ad_n"

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Loi/a;->o(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->d:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldi/a;

    invoke-virtual {v1, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 2

    const-string v0, "additionalInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->h:Lcom/hisavana/mediation/ad/TNativeAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/mediation/ad/TNativeAd;->getNativeAdInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->e:Ljava/util/concurrent/ConcurrentSkipListSet;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->p()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u7f13\u5b58\u6c60\u6ca1\u6709\u8fbe\u5230\u9608\u503c\uff0c\u7ee7\u7eed\u8bf7\u6c42"

    invoke-virtual {p0, v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->q(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->d:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldi/a;

    invoke-virtual {v1, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 2

    const-string v0, "additionalInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->d:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldi/a;

    invoke-virtual {v1, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 4

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/ad/hi/HiSavanaAdManager;->a:Lcom/transsion/ad/hi/HiSavanaAdManager;

    invoke-virtual {v0}, Lcom/transsion/ad/hi/HiSavanaAdManager;->i()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->getClassTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> loadAd("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") --> \u5e7f\u544aSDK\u6ca1\u6709\u521d\u59cb\u5316"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x6

    const/4 v2, 0x0

    const-string v3, "ad_n"

    invoke-virtual {v0, v3, p1, v1, v2}, Loi/a;->n(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->h()V

    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->h:Lcom/hisavana/mediation/ad/TNativeAd;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lce/b;->loadAd()V

    :cond_2
    return-void
.end method

.method public final u(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;

    iget v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;

    invoke-direct {v0, p0, p3}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;-><init>(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/util/Map;

    iget-object p1, v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->w(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    sget-object p2, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->getClassTag()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " --> sceneId = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> \u9884\u8bf7\u6c42\u5f00\u5173\u5173\u95ed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x3

    const-string v0, "ad_n"

    invoke-virtual {p2, v0, p1, p3, v3}, Loi/a;->n(Ljava/lang/String;Ljava/lang/String;IZ)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_3
    sget-object p3, Lcom/transsion/ad/hi/HiSavanaAdManager;->a:Lcom/transsion/ad/hi/HiSavanaAdManager;

    invoke-virtual {p3}, Lcom/transsion/ad/hi/HiSavanaAdManager;->i()Z

    move-result p3

    if-nez p3, :cond_4

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_4
    sget-object p3, Lcom/transsion/ad/scene/SceneInterceptManager;->a:Lcom/transsion/ad/scene/SceneInterceptManager;

    iput-object p1, v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$1;->label:I

    invoke-virtual {p3, p1, v0}, Lcom/transsion/ad/scene/SceneInterceptManager;->a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p3, Lkotlin/Pair;

    invoke-virtual {p3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_6
    sget-object p3, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p3, p1, v3, v0, v1}, Lcom/transsion/ad/scene/c;->b(Lcom/transsion/ad/scene/c;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_7
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->o()Z

    move-result p3

    if-eqz p3, :cond_8

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_8
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;

    invoke-direct {v5, p1, p0, p2, v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;-><init>(Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final x(Ldi/a;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->d:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final y(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->g:Ljava/lang/String;

    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->f:Ljava/lang/String;

    return-void
.end method
