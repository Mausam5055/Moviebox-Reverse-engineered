.class abstract synthetic Lkotlinx/coroutines/JobKt__JobKt;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lkotlinx/coroutines/t1;)Lkotlinx/coroutines/z;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/u1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/u1;-><init>(Lkotlinx/coroutines/t1;)V

    return-object v0
.end method

.method public static synthetic b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/z;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/v1;->a(Lkotlinx/coroutines/t1;)Lkotlinx/coroutines/z;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/t1;->l1:Lkotlinx/coroutines/t1$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/t1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlinx/coroutines/t1;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public static final d(Lkotlinx/coroutines/t1;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1, p2}, Lkotlinx/coroutines/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlinx/coroutines/t1;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static synthetic e(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/v1;->c(Lkotlin/coroutines/CoroutineContext;Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static synthetic f(Lkotlinx/coroutines/t1;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/v1;->d(Lkotlinx/coroutines/t1;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final g(Lkotlinx/coroutines/t1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lkotlinx/coroutines/t1$a;->b(Lkotlinx/coroutines/t1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-interface {p0, p1}, Lkotlinx/coroutines/t1;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public static final h(Lkotlinx/coroutines/t1;Lkotlinx/coroutines/a1;)Lkotlinx/coroutines/a1;
    .locals 3

    new-instance v0, Lkotlinx/coroutines/c1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/c1;-><init>(Lkotlinx/coroutines/a1;)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, p1, v1}, Lkotlinx/coroutines/v1;->m(Lkotlinx/coroutines/t1;ZLkotlinx/coroutines/w1;ILjava/lang/Object;)Lkotlinx/coroutines/a1;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Lkotlin/coroutines/CoroutineContext;)V
    .locals 1

    sget-object v0, Lkotlinx/coroutines/t1;->l1:Lkotlinx/coroutines/t1$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/t1;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlinx/coroutines/v1;->j(Lkotlinx/coroutines/t1;)V

    :cond_0
    return-void
.end method

.method public static final j(Lkotlinx/coroutines/t1;)V
    .locals 1

    invoke-interface {p0}, Lkotlinx/coroutines/t1;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lkotlinx/coroutines/t1;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0
.end method

.method public static final k(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/t1;
    .locals 3

    sget-object v0, Lkotlinx/coroutines/t1;->l1:Lkotlinx/coroutines/t1$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/t1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current context doesn\'t contain Job in it: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final l(Lkotlinx/coroutines/t1;ZLkotlinx/coroutines/w1;)Lkotlinx/coroutines/a1;
    .locals 2

    instance-of v0, p0, Lkotlinx/coroutines/JobSupport;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/JobSupport;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/JobSupport;->invokeOnCompletionInternal$kotlinx_coroutines_core(ZLkotlinx/coroutines/w1;)Lkotlinx/coroutines/a1;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lkotlinx/coroutines/w1;->u()Z

    move-result v0

    new-instance v1, Lkotlinx/coroutines/JobKt__JobKt$invokeOnCompletion$1;

    invoke-direct {v1, p2}, Lkotlinx/coroutines/JobKt__JobKt$invokeOnCompletion$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0, p1, v1}, Lkotlinx/coroutines/t1;->invokeOnCompletion(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/a1;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic m(Lkotlinx/coroutines/t1;ZLkotlinx/coroutines/w1;ILjava/lang/Object;)Lkotlinx/coroutines/a1;
    .locals 0

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p1, p4

    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/v1;->l(Lkotlinx/coroutines/t1;ZLkotlinx/coroutines/w1;)Lkotlinx/coroutines/a1;

    move-result-object p0

    return-object p0
.end method

.method public static final n(Lkotlin/coroutines/CoroutineContext;)Z
    .locals 1

    sget-object v0, Lkotlinx/coroutines/t1;->l1:Lkotlinx/coroutines/t1$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/t1;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/coroutines/t1;->isActive()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
