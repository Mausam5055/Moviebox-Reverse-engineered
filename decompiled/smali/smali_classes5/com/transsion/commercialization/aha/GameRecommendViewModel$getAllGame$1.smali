.class final Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/aha/GameRecommendViewModel;->i()V
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
    c = "com.transsion.commercialization.aha.GameRecommendViewModel$getAllGame$1"
    f = "GameRecommendViewModel.kt"
    l = {
        0x25
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/transsion/commercialization/aha/GameRecommendViewModel;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/aha/GameRecommendViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/commercialization/aha/GameRecommendViewModel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;->this$0:Lcom/transsion/commercialization/aha/GameRecommendViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;

    iget-object v0, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;->this$0:Lcom/transsion/commercialization/aha/GameRecommendViewModel;

    invoke-direct {p1, v0, p2}, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;-><init>(Lcom/transsion/commercialization/aha/GameRecommendViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/commercialization/aha/GameRecommendViewModel;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;->this$0:Lcom/transsion/commercialization/aha/GameRecommendViewModel;

    :try_start_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->f(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)Lcom/transsion/commercialization/aha/g;

    move-result-object v1

    sget-object v3, Lcom/transsion/commercialization/aha/g;->a:Lcom/transsion/commercialization/aha/g$a;

    invoke-virtual {v3}, Lcom/transsion/commercialization/aha/g$a;->a()Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lbh/b;->a:Lbh/b$a;

    new-instance v5, Lcom/transsion/commercialization/aha/AhaGameRequest;

    new-instance v6, Lcom/transsion/commercialization/aha/AhaGameQuery;

    invoke-static {p1}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->e(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)I

    move-result v7

    const/16 v8, 0xa

    invoke-direct {v6, v7, v8}, Lcom/transsion/commercialization/aha/AhaGameQuery;-><init>(II)V

    invoke-direct {v5, v6}, Lcom/transsion/commercialization/aha/AhaGameRequest;-><init>(Lcom/transsion/commercialization/aha/AhaGameQuery;)V

    invoke-virtual {v4, v5}, Lbh/b$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v4

    iput-object p1, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;->label:I

    invoke-interface {v1, v3, v4, p0}, Lcom/transsion/commercialization/aha/g;->a(Ljava/util/Map;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Lcom/transsion/bean/AhaGameResponse;

    invoke-virtual {p1}, Lcom/transsion/bean/AhaGameResponse;->getCode()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_4

    invoke-static {v0}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->e(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->g(Lcom/transsion/commercialization/aha/GameRecommendViewModel;I)V

    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->c(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)Landroidx/lifecycle/b0;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-static {v0}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->d(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->d(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> getAllGame() --> postAhaGameRecommendList = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    iget-object v0, p0, Lcom/transsion/commercialization/aha/GameRecommendViewModel$getAllGame$1;->this$0:Lcom/transsion/commercialization/aha/GameRecommendViewModel;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    sget-object v1, Llg/a;->a:Llg/a$a;

    invoke-static {v0}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->d(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->d(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> getAllGame() --> \u52a0\u8f7d\u5931\u8d25\u4e86 it = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/transsion/commercialization/aha/GameRecommendViewModel;->c(Lcom/transsion/commercialization/aha/GameRecommendViewModel;)Landroidx/lifecycle/b0;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->n(Ljava/lang/Object;)V

    :goto_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
