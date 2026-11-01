.class final Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->m(Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.ad.bidding.base.AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2"
    f = "AbsBiddingInterceptHiSavanaAdManager.kt"
    l = {
        0xf3
    }
    m = "invokeSuspend"
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

.field final synthetic this$0:Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Lkotlin/coroutines/Continuation;)V
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
            "Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->$sceneId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->$ctxMap:Ljava/util/Map;

    iput-object p3, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

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

    new-instance p1, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->$sceneId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->$ctxMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->label:I

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

    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->$sceneId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->$ctxMap:Ljava/util/Map;

    if-nez v3, :cond_2

    sget-object v3, Lcom/transsion/ad/strategy/d;->a:Lcom/transsion/ad/strategy/d;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/transsion/ad/strategy/d;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    :cond_2
    const/4 v4, 0x0

    new-array v5, v4, [Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;

    iput v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->label:I

    const/4 v4, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, p1

    move-object v6, p0

    invoke-static/range {v1 .. v8}, Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;->i(Lcom/transsion/ad/monopoly/manager/AdPlansStorageManager;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Lcom/transsion/ad/monopoly/plan/AdPlanSourceManager$AdPlanEnum;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->getClassTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->$sceneId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->$ctxMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> sceneId = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " preload --> ctxMap: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", \u53ef\u7528\u5e7f\u544a\u8ba1\u5212\uff1a"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_4
    iget-object v0, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

    invoke-static {v0, p1}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->a(Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->i()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preLoadAd() --> hiId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Loi/b$a;->c(Loi/b;ILjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2;->this$0:Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/AbsBiddingInterceptHiSavanaAdManager;->e()Lce/b;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lce/b;->preload()V

    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
