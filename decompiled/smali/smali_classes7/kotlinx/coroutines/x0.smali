.class final Lkotlinx/coroutines/x0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Lkotlinx/coroutines/i0;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/i0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/x0;->a:Lkotlinx/coroutines/i0;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/x0;->a:Lkotlinx/coroutines/i0;

    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/i0;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/x0;->a:Lkotlinx/coroutines/i0;

    invoke-virtual {v0, v1, p1}, Lkotlinx/coroutines/i0;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/x0;->a:Lkotlinx/coroutines/i0;

    invoke-virtual {v0}, Lkotlinx/coroutines/i0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
