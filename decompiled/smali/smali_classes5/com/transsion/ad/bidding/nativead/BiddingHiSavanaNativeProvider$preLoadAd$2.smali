.class final Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->u(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.ad.bidding.nativead.BiddingHiSavanaNativeProvider$preLoadAd$2"
    f = "BiddingHiSavanaNativeProvider.kt"
    l = {
        0xf7
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

.field final synthetic $sceneId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->$sceneId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    iput-object p3, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->$ctxMap:Ljava/util/Map;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->$sceneId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    iget-object v2, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->$ctxMap:Ljava/util/Map;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;-><init>(Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;Ljava/util/Map;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v4, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    iget-object v5, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->$sceneId:Ljava/lang/String;

    sget-object p1, Lcom/transsion/ad/strategy/d;->a:Lcom/transsion/ad/strategy/d;

    invoke-virtual {p1, v2}, Lcom/transsion/ad/strategy/d;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    const/4 p1, 0x0

    new-array v8, p1, [Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    iput v3, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->label:I

    const/4 v7, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v9, p0

    invoke-static/range {v4 .. v11}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->i(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    sget-object v4, Loi/a;->a:Loi/a;

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    invoke-static {v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->c(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    invoke-static {v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->c(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->$sceneId:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->$ctxMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    move-object v11, p1

    check-cast v11, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v11, v9}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/transsion/ad/monopoly/model/AdPlans;

    invoke-virtual {v10}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> sceneId = "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " preload --> ctxMap: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", \u53ef\u7528\u5e7f\u544a\u8ba1\u5212\uff1a"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " --> "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Loi/a;->o(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_4
    instance-of p1, v11, Ljava/util/Collection;

    if-eqz p1, :cond_5

    move-object p1, v11

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ad/monopoly/model/AdPlans;

    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    invoke-virtual {v1, v0}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->e(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v4, Loi/a;->a:Loi/a;

    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    invoke-static {p1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->c(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    invoke-static {v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->e(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> preLoadAd() --> "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v5, "ad_n"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Loi/a;->o(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;

    invoke-static {p1, v2, v3, v2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;->r(Lcom/transsion/ad/bidding/nativead/BiddingHiSavanaNativeProvider;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
