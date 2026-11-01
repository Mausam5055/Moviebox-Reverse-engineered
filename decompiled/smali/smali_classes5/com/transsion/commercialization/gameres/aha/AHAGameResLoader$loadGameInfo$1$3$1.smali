.class final Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3;->a(Lcom/transsion/commercialization/gameres/aha/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.transsion.commercialization.gameres.aha.AHAGameResLoader$loadGameInfo$1$3$1"
    f = "AHAGameResLoader.kt"
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

.field final synthetic $response:Lcom/transsion/commercialization/gameres/aha/c;

.field label:I

.field final synthetic this$0:Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;


# direct methods
.method constructor <init>(Lcom/transsion/commercialization/gameres/aha/c;Lkotlin/jvm/functions/Function1;Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/commercialization/gameres/aha/c;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$response:Lcom/transsion/commercialization/gameres/aha/c;

    iput-object p2, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$callback:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->this$0:Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;

    iput-object p4, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$pageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$itemId:Ljava/lang/String;

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

    new-instance p1, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;

    iget-object v1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$response:Lcom/transsion/commercialization/gameres/aha/c;

    iget-object v2, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$callback:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->this$0:Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;

    iget-object v4, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$pageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$itemId:Ljava/lang/String;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;-><init>(Lcom/transsion/commercialization/gameres/aha/c;Lkotlin/jvm/functions/Function1;Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    iget v0, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$response:Lcom/transsion/commercialization/gameres/aha/c;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AHAGameRes getGameInfo, success:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "GameResLoader"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$callback:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->this$0:Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;

    iget-object v1, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$pageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$itemId:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader$loadGameInfo$1$3$1;->$response:Lcom/transsion/commercialization/gameres/aha/c;

    invoke-virtual {v0, v2, v3, v4}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;->d(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/commercialization/gameres/aha/c;)Lmk/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/commercialization/gameres/aha/AHAGameResLoader;->e(Landroid/content/Context;Lmk/a;)Lcom/transsion/commercialization/gameres/GameResView;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
