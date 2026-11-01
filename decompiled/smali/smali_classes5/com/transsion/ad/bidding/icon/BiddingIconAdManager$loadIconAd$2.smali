.class final Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->R(Ljava/lang/String;ZILdi/a;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.ad.bidding.icon.BiddingIconAdManager$loadIconAd$2"
    f = "BiddingIconAdManager.kt"
    l = {
        0x170,
        0x182
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $ctxMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isFilteringInstalled:Z

.field final synthetic $listener:Ldi/a;

.field final synthetic $sceneId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Ldi/a;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;",
            "Ldi/a;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$sceneId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$ctxMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->this$0:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    iput-object p4, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$listener:Ldi/a;

    iput-boolean p5, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$isFilteringInstalled:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;

    iget-object v1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$sceneId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$ctxMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->this$0:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    iget-object v4, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$listener:Ldi/a;

    iget-boolean v5, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$isFilteringInstalled:Z

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Ldi/a;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    iget-object v4, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$sceneId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$ctxMap:Ljava/util/Map;

    if-nez v1, :cond_3

    sget-object v1, Lcom/transsion/ad/strategy/d;->a:Lcom/transsion/ad/strategy/d;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/transsion/ad/strategy/d;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    :cond_3
    move-object v5, v1

    const/4 v1, 0x0

    new-array v7, v1, [Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    iput v3, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->label:I

    const/4 v6, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v3, p1

    move-object v8, p0

    invoke-static/range {v3 .. v10}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->i(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_0
    check-cast p1, Ljava/util/List;

    sget-object v3, Loi/a;->a:Loi/a;

    iget-object v1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->this$0:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    invoke-static {v1}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->B(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->this$0:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    invoke-virtual {v4}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->getSceneId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$ctxMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    move-object v7, p1

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/transsion/ad/monopoly/model/AdPlans;

    invoke-virtual {v9}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> sceneId = "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> ctxMap: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", \u53ef\u7528\u5e7f\u544a\u8ba1\u5212\uff1a"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " --> "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Loi/a;->i(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object p1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->this$0:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    iget-object v0, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$listener:Ldi/a;

    invoke-static {p1}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->B(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$sceneId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> there are currently no plans available"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->D(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Ldi/a;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_6
    iget-object v1, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->this$0:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    iget-object v3, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$sceneId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->$isFilteringInstalled:Z

    iput v2, p0, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager$loadIconAd$2;->label:I

    invoke-static {v1, v3, v4, p1, p0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->C(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Ljava/lang/String;ZLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
