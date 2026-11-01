.class abstract synthetic Lkotlinx/coroutines/flow/o;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/b;
    .locals 8

    new-instance v7, Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lkotlinx/coroutines/flow/CallbackFlowBuilder;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method

.method public static final b(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/b;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/flow/b1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/flow/b1;-><init>(Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method

.method public static final c(Ljava/lang/Object;)Lkotlinx/coroutines/flow/b;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/flow/o$a;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/flow/o$a;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
