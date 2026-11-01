.class final Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/base/AbsAdBidding;->t0(ZILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.ad.bidding.base.AbsAdBidding$innerLoadAd$2"
    f = "AbsAdBidding.kt"
    l = {
        0x332,
        0x36f
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $fetchCount:I

.field final synthetic $onlyHi:Z

.field J$0:J

.field label:I

.field final synthetic this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;


# direct methods
.method constructor <init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;ZILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/ad/bidding/base/AbsAdBidding;",
            "ZI",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    iput-boolean p2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->$onlyHi:Z

    iput p3, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->$fetchCount:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/ad/bidding/base/AbsAdBidding;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->d(Lcom/transsion/ad/bidding/base/AbsAdBidding;)V

    return-void
.end method

.method private static final d(Lcom/transsion/ad/bidding/base/AbsAdBidding;)V
    .locals 6

    invoke-static {p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->L(Lcom/transsion/ad/bidding/base/AbsAdBidding;)Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2$2$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2$2$1;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    iget-boolean v1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->$onlyHi:Z

    iget v2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->$fetchCount:I

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;ZILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-wide v1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->J$0:J

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    iput-wide v4, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->J$0:J

    iput v2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->label:I

    invoke-virtual {p1, p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->b0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-wide v1, v4

    :goto_0
    check-cast p1, Ljava/util/List;

    iget-object v4, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "innerLoadAd() --> \u83b7\u53d6\u8ba1\u5212\u8017\u65f6 = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " --> availablePlanList = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v5, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/16 v2, 0x44d

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string v1, "there are currently no plans available"

    invoke-direct {v0, v2, v1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_4
    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    invoke-static {v1, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->P(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/util/List;)Z

    move-result v1

    iget-object v4, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    iget-boolean v5, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->$onlyHi:Z

    if-eqz v5, :cond_7

    check-cast p1, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/transsion/ad/monopoly/model/AdPlans;

    invoke-virtual {v7}, Lcom/transsion/ad/monopoly/model/AdPlans;->getAdSource()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->AD_PLAN_AD_SOURCE_HI:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    invoke-virtual {v8}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    :cond_7
    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->Q(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/util/List;)V

    iget-object v5, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    invoke-virtual {v5}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    invoke-virtual {v4}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->g0()Ljava/util/Map;

    move-result-object v4

    iget-object v6, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    invoke-static {v6}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->J(Lcom/transsion/ad/bidding/base/AbsAdBidding;)Ljava/util/List;

    move-result-object v6

    const/4 v12, 0x0

    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2

    :cond_8
    move-object v6, v12

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "innerLoadAd() --> \u5f00\u59cb\u52a0\u8f7d\u5e7f\u544a --> sceneId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> ctxMap = "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " --> \u53ef\u7528\u5e7f\u544a\u8ba1\u5212 availablePlanList?.size = "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " --> hasHiAdPlan = "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v6, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    iget v4, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->$fetchCount:I

    invoke-static {p1, v4}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->R(Lcom/transsion/ad/bidding/base/AbsAdBidding;I)V

    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    invoke-static {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->N(Lcom/transsion/ad/bidding/base/AbsAdBidding;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v1, :cond_9

    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    invoke-static {v2, p1, v4, v3, v12}, Lcom/transsion/ad/scene/c;->b(Lcom/transsion/ad/scene/c;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    invoke-virtual {v2, p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->x0(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    iget-boolean p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->$onlyHi:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    new-instance v0, Lcom/hisavana/common/bean/TAdErrorCode;

    const-string v1, "onlyHi == true \uff0c\u4f46\u662f\u6ca1\u6709Hi\u5e7f\u544a\u8ba1\u5212\uff0c\u4e0d\u5c55\u793a\u5e7f\u544a"

    invoke-direct {v0, v2, v1}, Lcom/hisavana/common/bean/TAdErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->i(Lcom/hisavana/common/bean/TAdErrorCode;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_a
    :goto_3
    if-eqz v1, :cond_b

    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    invoke-static {p1}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->O(Lcom/transsion/ad/bidding/base/AbsAdBidding;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    new-instance v1, Lcom/transsion/ad/bidding/base/k;

    invoke-direct {v1, v0}, Lcom/transsion/ad/bidding/base/k;-><init>(Lcom/transsion/ad/bidding/base/AbsAdBidding;)V

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    invoke-static {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->M(Lcom/transsion/ad/bidding/base/AbsAdBidding;)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_5

    :cond_b
    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsAdBidding;

    iput v3, p0, Lcom/transsion/ad/bidding/base/AbsAdBidding$innerLoadAd$2;->label:I

    const-string v1, "\u4ec5\u6709\u5305\u65ad\uff0c\u76f4\u63a5\u5f00\u59cb\u7ade\u4ef7"

    invoke-static {p1, v1, p0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->I(Lcom/transsion/ad/bidding/base/AbsAdBidding;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c

    return-object v0

    :cond_c
    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_5
    return-object p1
.end method
