.class final Lp/j;
.super Ljava/lang/Object;

# interfaces
.implements Lp/i;


# instance fields
.field private final a:Lkotlinx/coroutines/flow/x0;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v3, v4, v0, v1, v2}, Lkotlinx/coroutines/flow/d1;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/x0;

    move-result-object v0

    iput-object v0, p0, Lp/j;->a:Lkotlinx/coroutines/flow/x0;

    return-void
.end method


# virtual methods
.method public a(Lp/f;)Z
    .locals 1

    invoke-virtual {p0}, Lp/j;->d()Lkotlinx/coroutines/flow/x0;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/x0;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b()Lkotlinx/coroutines/flow/b;
    .locals 1

    invoke-virtual {p0}, Lp/j;->d()Lkotlinx/coroutines/flow/x0;

    move-result-object v0

    return-object v0
.end method

.method public c(Lp/f;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lp/j;->d()Lkotlinx/coroutines/flow/x0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/flow/x0;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public d()Lkotlinx/coroutines/flow/x0;
    .locals 1

    iget-object v0, p0, Lp/j;->a:Lkotlinx/coroutines/flow/x0;

    return-object v0
.end method
