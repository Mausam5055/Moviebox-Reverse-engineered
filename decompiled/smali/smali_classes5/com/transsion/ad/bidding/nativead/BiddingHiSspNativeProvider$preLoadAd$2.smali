.class final Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->q(Ljava/lang/String;ILjava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.ad.bidding.nativead.BiddingHiSspNativeProvider$preLoadAd$2"
    f = "BiddingHiSspNativeProvider.kt"
    l = {
        0x105
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

.field final synthetic $reqCount:I

.field final synthetic $sceneId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;Ljava/util/Map;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$sceneId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    iput-object p3, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$ctxMap:Ljava/util/Map;

    iput p4, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$reqCount:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;

    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$sceneId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    iget-object v3, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$ctxMap:Ljava/util/Map;

    iget v4, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$reqCount:I

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;-><init>(Ljava/lang/String;Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;Ljava/util/Map;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v1, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->a:Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;

    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$sceneId:Ljava/lang/String;

    sget-object v3, Lcom/transsion/ad/strategy/d;->a:Lcom/transsion/ad/strategy/d;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/transsion/ad/strategy/d;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    iput v2, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->label:I

    const/4 v4, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, p1

    move-object v6, p0

    invoke-static/range {v1 .. v8}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->i(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    sget-object v0, Loi/a;->a:Loi/a;

    iget-object v1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    invoke-static {v1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->d(Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    invoke-static {v2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->d(Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$sceneId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$ctxMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    move-object v7, p1

    check-cast v7, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/transsion/ad/monopoly/model/AdPlans;

    invoke-virtual {v9}, Lcom/transsion/ad/monopoly/model/AdPlans;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> sceneId = "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " preload --> ctxMap: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", \u53ef\u7528\u5e7f\u544a\u8ba1\u5212\uff1a"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Loi/a;->o(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_4
    instance-of p1, v7, Ljava/util/Collection;

    if-eqz p1, :cond_5

    move-object p1, v7

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ad/monopoly/model/AdPlans;

    sget-object v1, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->a:Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;

    invoke-virtual {v1, v0}, Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager;->e(Lcom/transsion/ad/monopoly/model/AdPlans;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$reqCount:I

    iget-object v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    invoke-static {v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->c(Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;)I

    move-result v0

    if-le p1, v0, :cond_7

    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    iget v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$reqCount:I

    invoke-static {p1, v0}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->g(Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;I)V

    :cond_7
    sget-object v1, Loi/a;->a:Loi/a;

    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    invoke-static {p1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->d(Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;)Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->$reqCount:I

    iget-object v2, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    invoke-static {v2}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->f(Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> preLoadAd("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") --> "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v2, "ad_n"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Loi/a;->o(Loi/a;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/nativead/BiddingHiSspNativeProvider;->n()V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_8
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
