.class final Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avery/subtitle/SubtitleLoader;->e(Ljava/lang/String;Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;)V
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.avery.subtitle.SubtitleLoader$loadFromLocalAsync$1"
    f = "SubtitleLoader.kt"
    l = {
        0x4b,
        0x50
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $callback:Lcom/avery/subtitle/SubtitleLoader$a;

.field final synthetic $localSubtitlePath:Ljava/lang/String;

.field final synthetic $unicode:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/avery/subtitle/SubtitleLoader$a;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;->$localSubtitlePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;->$unicode:Ljava/lang/String;

    iput-object p3, p0, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;->$callback:Lcom/avery/subtitle/SubtitleLoader$a;

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

    new-instance p1, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;

    iget-object v0, p0, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;->$localSubtitlePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;->$unicode:Ljava/lang/String;

    iget-object v2, p0, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;->$callback:Lcom/avery/subtitle/SubtitleLoader$a;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/avery/subtitle/SubtitleLoader$a;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lcom/avery/subtitle/SubtitleLoader;->a:Lcom/avery/subtitle/SubtitleLoader;

    iget-object v1, p0, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;->$localSubtitlePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;->$unicode:Ljava/lang/String;

    invoke-static {p1, v1, v5}, Lcom/avery/subtitle/SubtitleLoader;->a(Lcom/avery/subtitle/SubtitleLoader;Ljava/lang/String;Ljava/lang/String;)Lk5/d;

    move-result-object p1

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    new-instance v5, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1$1;

    iget-object v6, p0, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;->$callback:Lcom/avery/subtitle/SubtitleLoader$a;

    invoke-direct {v5, v6, p1, v2}, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1$1;-><init>(Lcom/avery/subtitle/SubtitleLoader$a;Lk5/d;Lkotlin/coroutines/Continuation;)V

    iput v4, p0, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;->label:I

    invoke-static {v1, v5, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_3

    return-object v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v1

    new-instance v4, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1$2;

    iget-object v5, p0, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;->$callback:Lcom/avery/subtitle/SubtitleLoader$a;

    invoke-direct {v4, v5, p1, v2}, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1$2;-><init>(Lcom/avery/subtitle/SubtitleLoader$a;Ljava/lang/Exception;Lkotlin/coroutines/Continuation;)V

    iput v3, p0, Lcom/avery/subtitle/SubtitleLoader$loadFromLocalAsync$1;->label:I

    invoke-static {v1, v4, p0}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
