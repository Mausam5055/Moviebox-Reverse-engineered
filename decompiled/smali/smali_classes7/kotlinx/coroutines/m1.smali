.class public abstract Lkotlinx/coroutines/m1;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lkotlinx/coroutines/i0;)Ljava/util/concurrent/Executor;
    .locals 1

    instance-of v0, p0, Lkotlinx/coroutines/k1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/k1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lkotlinx/coroutines/k1;->d()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lkotlinx/coroutines/x0;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/x0;-><init>(Lkotlinx/coroutines/i0;)V

    :cond_2
    return-object v0
.end method

.method public static final b(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/i0;
    .locals 1

    instance-of v0, p0, Lkotlinx/coroutines/x0;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/x0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lkotlinx/coroutines/x0;->a:Lkotlinx/coroutines/i0;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lkotlinx/coroutines/l1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/l1;-><init>(Ljava/util/concurrent/Executor;)V

    :cond_2
    return-object v0
.end method

.method public static final c(Ljava/util/concurrent/ExecutorService;)Lkotlinx/coroutines/k1;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/l1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/l1;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
