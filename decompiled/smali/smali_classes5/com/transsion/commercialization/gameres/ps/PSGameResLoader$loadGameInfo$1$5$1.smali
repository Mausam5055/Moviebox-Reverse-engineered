.class final Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.commercialization.gameres.ps.PSGameResLoader$loadGameInfo$1$5$1"
    f = "PSGameResLoader.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $itemId:Ljava/lang/String;

.field final synthetic $pageName:Ljava/lang/String;

.field final synthetic $response:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/ad/ps/model/RecommendInfo;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;


# direct methods
.method constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/ad/ps/model/RecommendInfo;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$response:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$callback:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->this$0:Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;

    iput-object p4, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$pageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$itemId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
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

    new-instance p1, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;

    iget-object v1, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$response:Ljava/util/List;

    iget-object v2, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$callback:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->this$0:Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;

    iget-object v4, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$pageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$itemId:Ljava/lang/String;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$response:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$response:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/ps/model/RecommendInfo;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getExists()Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$response:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/ad/ps/model/RecommendInfo;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$callback:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->this$0:Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;

    iget-object v2, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$pageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$itemId:Ljava/lang/String;

    sget-object v5, Llg/a;->a:Llg/a$a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PSGameRes getGameInfo, success:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "GameResLoader"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v1, v3, v4, p1}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;->d(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/ps/model/RecommendInfo;)Lmk/a;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader;->e(Landroid/content/Context;Lmk/a;)Lcom/transsion/commercialization/gameres/GameResView;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/transsion/commercialization/gameres/ps/PSGameResLoader$loadGameInfo$1$5$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
