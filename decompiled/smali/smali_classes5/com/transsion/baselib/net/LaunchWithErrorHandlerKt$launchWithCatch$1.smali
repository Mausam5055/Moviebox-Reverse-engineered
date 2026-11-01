.class final Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt;->b(Landroidx/lifecycle/t0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/t1;
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
    c = "com.transsion.baselib.net.LaunchWithErrorHandlerKt$launchWithCatch$1"
    f = "LaunchWithErrorHandler.kt"
    l = {
        0x1c,
        0x1e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
.end field

.field final synthetic $onError:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Throwable;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $stack:[Ljava/lang/StackTraceElement;

.field final synthetic $this_launchWithCatch:Landroidx/lifecycle/t0;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;[Ljava/lang/StackTraceElement;Landroidx/lifecycle/t0;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/n0;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Throwable;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/StackTraceElement;",
            "Landroidx/lifecycle/t0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->$block:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->$onError:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->$stack:[Ljava/lang/StackTraceElement;

    iput-object p4, p0, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->$this_launchWithCatch:Landroidx/lifecycle/t0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v6, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;

    iget-object v1, p0, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->$block:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->$onError:Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->$stack:[Ljava/lang/StackTraceElement;

    iget-object v4, p0, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->$this_launchWithCatch:Landroidx/lifecycle/t0;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;[Ljava/lang/StackTraceElement;Landroidx/lifecycle/t0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v6, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

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
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/n0;

    :try_start_1
    iget-object v1, p0, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->$block:Lkotlin/jvm/functions/Function2;

    iput v3, p0, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->label:I

    invoke-interface {v1, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_6

    return-object v0

    :goto_0
    iget-object v1, p0, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->$onError:Lkotlin/jvm/functions/Function2;

    if-eqz v1, :cond_4

    iput-object p1, p0, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->label:I

    invoke-interface {v1, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, p1

    :goto_1
    move-object p1, v0

    :cond_4
    iget-object v0, p0, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->$stack:[Ljava/lang/StackTraceElement;

    array-length v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_5

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->$stack:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "$"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt$launchWithCatch$1;->$this_launchWithCatch:Landroidx/lifecycle/t0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/transsion/baselib/net/LaunchWithErrorHandlerKt;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
