.class abstract synthetic Lkotlinx/coroutines/flow/FlowKt__ShareKt;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lkotlinx/coroutines/flow/x0;)Lkotlinx/coroutines/flow/c1;
    .locals 2

    new-instance v0, Lkotlinx/coroutines/flow/z0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/flow/z0;-><init>(Lkotlinx/coroutines/flow/c1;Lkotlinx/coroutines/t1;)V

    return-object v0
.end method

.method public static final b(Lkotlinx/coroutines/flow/y0;)Lkotlinx/coroutines/flow/i1;
    .locals 2

    new-instance v0, Lkotlinx/coroutines/flow/a1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/flow/a1;-><init>(Lkotlinx/coroutines/flow/i1;Lkotlinx/coroutines/t1;)V

    return-object v0
.end method

.method private static final c(Lkotlinx/coroutines/flow/b;I)Lkotlinx/coroutines/flow/f1;
    .locals 7

    sget-object v0, Lkotlinx/coroutines/channels/d;->m1:Lkotlinx/coroutines/channels/d$a;

    invoke-virtual {v0}, Lkotlinx/coroutines/channels/d$a;->a()I

    move-result v0

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v0

    sub-int/2addr v0, p1

    instance-of v1, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/internal/ChannelFlow;->k()Lkotlinx/coroutines/flow/b;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance p0, Lkotlinx/coroutines/flow/f1;

    iget v3, v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;->b:I

    const/4 v4, -0x3

    if-eq v3, v4, :cond_0

    const/4 v4, -0x2

    if-eq v3, v4, :cond_0

    if-eqz v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;->c:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v5, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    if-nez v3, :cond_3

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_3
    :goto_0
    iget-object p1, v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;->c:Lkotlinx/coroutines/channels/BufferOverflow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/internal/ChannelFlow;->a:Lkotlin/coroutines/CoroutineContext;

    invoke-direct {p0, v2, v0, p1, v1}, Lkotlinx/coroutines/flow/f1;-><init>(Lkotlinx/coroutines/flow/b;ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/coroutines/CoroutineContext;)V

    return-object p0

    :cond_4
    new-instance p1, Lkotlinx/coroutines/flow/f1;

    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-direct {p1, p0, v0, v1, v2}, Lkotlinx/coroutines/flow/f1;-><init>(Lkotlinx/coroutines/flow/b;ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/coroutines/CoroutineContext;)V

    return-object p1
.end method

.method private static final d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/b;Lkotlinx/coroutines/flow/x0;Lkotlinx/coroutines/flow/g1;Ljava/lang/Object;)Lkotlinx/coroutines/t1;
    .locals 8

    sget-object v0, Lkotlinx/coroutines/flow/g1;->a:Lkotlinx/coroutines/flow/g1$a;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/g1$a;->c()Lkotlinx/coroutines/flow/g1;

    move-result-object v0

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/CoroutineStart;->DEFAULT:Lkotlinx/coroutines/CoroutineStart;

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlinx/coroutines/CoroutineStart;->UNDISPATCHED:Lkotlinx/coroutines/CoroutineStart;

    :goto_0
    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lkotlinx/coroutines/flow/FlowKt__ShareKt$launchSharing$1;-><init>(Lkotlinx/coroutines/flow/g1;Lkotlinx/coroutines/flow/b;Lkotlinx/coroutines/flow/x0;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, p1, v0, v7}, Lkotlinx/coroutines/i;->c(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/t1;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Lkotlinx/coroutines/flow/b;Lkotlinx/coroutines/n0;Lkotlinx/coroutines/flow/g1;Ljava/lang/Object;)Lkotlinx/coroutines/flow/i1;
    .locals 7

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt__ShareKt;->c(Lkotlinx/coroutines/flow/b;I)Lkotlinx/coroutines/flow/f1;

    move-result-object p0

    invoke-static {p3}, Lkotlinx/coroutines/flow/j1;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/y0;

    move-result-object v6

    iget-object v1, p0, Lkotlinx/coroutines/flow/f1;->d:Lkotlin/coroutines/CoroutineContext;

    iget-object v2, p0, Lkotlinx/coroutines/flow/f1;->a:Lkotlinx/coroutines/flow/b;

    move-object v0, p1

    move-object v3, v6

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/flow/FlowKt__ShareKt;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/flow/b;Lkotlinx/coroutines/flow/x0;Lkotlinx/coroutines/flow/g1;Ljava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p0

    new-instance p1, Lkotlinx/coroutines/flow/a1;

    invoke-direct {p1, v6, p0}, Lkotlinx/coroutines/flow/a1;-><init>(Lkotlinx/coroutines/flow/i1;Lkotlinx/coroutines/t1;)V

    return-object p1
.end method
