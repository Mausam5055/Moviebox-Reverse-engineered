.class public abstract Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;
.super Lcom/transsion/ad/bidding/base/x;

# interfaces
.implements Loi/b;


# instance fields
.field private d:Ldi/a;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Lcom/hisavana/common/bean/AdditionalInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/x;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Ljava/util/List;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->k(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private final k(Ljava/util/List;)Z
    .locals 3

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ad/monopoly/model/AdPlans;

    sget-object v2, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    invoke-virtual {v2, v0}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->e(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private final n(Ljava/lang/String;)Z
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

.method private final t()Ljava/lang/Integer;
    .locals 3

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->f()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->e()Lce/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lce/b;->hasAd()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->l()V

    return-void
.end method

.method public final c(Ldi/a;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Ldi/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->p(Ldi/a;)Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v1, 0x3

    const-string v2, "destroy() --> \u79fb\u9664\u76d1\u542c"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 7

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$enterScene$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$enterScene$1;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public abstract e()Lce/b;
.end method

.method public abstract f()I
.end method

.method public final g()Lcom/hisavana/common/bean/AdditionalInfo;
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->e()Lce/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lce/b;->hasAd()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->f()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->t()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->h:Lcom/hisavana/common/bean/AdditionalInfo;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->e()Lce/b;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Lce/b;->getTopPrice(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_1
    invoke-virtual {v2, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setEcpm(Ljava/lang/Double;)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->h:Lcom/hisavana/common/bean/AdditionalInfo;

    return-object v0
.end method

.method public getClassTag()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Loi/b$a;->a(Loi/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final h()Ldi/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Ldi/a;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->e()Lce/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lce/b;->hasAd()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final l()V
    .locals 4

    sget-object v0, Lcom/transsion/ad/hi/HiSavanaAdManager;->a:Lcom/transsion/ad/hi/HiSavanaAdManager;

    invoke-virtual {v0}, Lcom/transsion/ad/hi/HiSavanaAdManager;->i()Z

    move-result v0

    const/16 v1, 0x67

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->f()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Ldi/a;

    if-eqz v0, :cond_0

    new-instance v2, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string v3, "\u5e7f\u544aSDK\u6ca1\u6709\u521d\u59cb\u5316"

    invoke-direct {v2, v1, v3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/hisavana/common/bean/AdditionalInfo;

    invoke-direct {v1}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Ldi/a;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string v3, "\u5f53\u524d\u6b63\u5728\u5c55\u793aHi\u5e7f\u544a"

    invoke-direct {v2, v1, v3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/hisavana/common/bean/AdditionalInfo;

    invoke-direct {v1}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->e()Lce/b;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Ldi/a;

    if-eqz v0, :cond_4

    new-instance v2, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string v3, "getAdInstance() == null"

    invoke-direct {v2, v1, v3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/hisavana/common/bean/AdditionalInfo;

    invoke-direct {v1}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->e()Lce/b;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lce/b;->loadAd()V

    :cond_6
    return-void
.end method

.method public final m(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;

    iget v1, v0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;

    invoke-direct {v0, p0, p3}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;-><init>(Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/util/Map;

    iget-object p1, v0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;->L$0:Ljava/lang/Object;

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

    invoke-direct {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->n(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->getClassTag()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --> sceneId = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> \u9884\u8bf7\u6c42\u5f00\u5173\u5173\u95ed"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Loi/b;->getLogTag()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p0, p3, p1, p2, v3}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->onLog(ILjava/lang/String;Ljava/lang/String;Z)V

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

    iput-object p1, v0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$1;->label:I

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
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->e()Lce/b;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lce/b;->hasAd()Z

    move-result p3

    if-ne p3, v4, :cond_8

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_8
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;

    invoke-direct {v5, p1, p2, p0, v1}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public abstract o()V
.end method

.method public onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 1

    const-string v0, "additionalInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Ldi/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void
.end method

.method public onClosed(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClosed(I)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Ldi/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClosed(I)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Ldi/a;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->o()V

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->f()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->l()V

    return-void
.end method

.method public onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 2

    const-string v0, "additionalInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Ldi/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void
.end method

.method public onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 1

    const-string v0, "additionalInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->h:Lcom/hisavana/common/bean/AdditionalInfo;

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Ldi/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void
.end method

.method public onLog(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Loi/b$a;->b(Loi/b;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onRewarded()V
    .locals 1

    invoke-super {p0}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onRewarded()V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Ldi/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onRewarded()V

    :cond_0
    return-void
.end method

.method public onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 2

    const-string v0, "additionalInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Ldi/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->h:Lcom/hisavana/common/bean/AdditionalInfo;

    return-void
.end method

.method public onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 2

    const-string v0, "additionalInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Ldi/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void
.end method

.method public final p(Ldi/a;)Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Ldi/a;

    return-object p0
.end method

.method public final q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->e:Ljava/lang/String;

    return-void
.end method

.method public abstract r(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V
.end method

.method public final s(Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    const-string v0, "sceneId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x67

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Ldi/a;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string p3, "activity is null"

    invoke-direct {p2, v0, p3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    new-instance p3, Lcom/hisavana/common/bean/AdditionalInfo;

    invoke-direct {p3}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    invoke-virtual {p1, p2, p3}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Ldi/a;

    if-eqz p1, :cond_2

    new-instance p2, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string p3, "\u5f53\u524d\u6b63\u5728\u5c55\u793aHi\u5e7f\u544a"

    invoke-direct {p2, v0, p3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    new-instance p3, Lcom/hisavana/common/bean/AdditionalInfo;

    invoke-direct {p3}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    invoke-virtual {p1, p2, p3}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->f()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->f:Ljava/util/Map;

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->r(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->e()Lce/b;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lce/b;->hasAd()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->f:Ljava/util/Map;

    invoke-virtual {p0, p1, p3, p2, v0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->r(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->d:Ldi/a;

    if-eqz p1, :cond_6

    new-instance p2, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string p3, "\u5f53\u524d\u8fd8\u6ca1\u6709\u5e7f\u544a"

    invoke-direct {p2, v0, p3}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    new-instance p3, Lcom/hisavana/common/bean/AdditionalInfo;

    invoke-direct {p3}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    invoke-virtual {p1, p2, p3}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_6
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->p(Ldi/a;)Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->l()V

    :goto_0
    return-void
.end method
