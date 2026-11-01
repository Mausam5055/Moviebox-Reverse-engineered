.class final Lkotlinx/coroutines/flow/a1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/flow/i1;
.implements Lkotlinx/coroutines/flow/b;
.implements Lkotlinx/coroutines/flow/internal/j;


# instance fields
.field private final synthetic a:Lkotlinx/coroutines/flow/i1;

.field private final b:Lkotlinx/coroutines/t1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/i1;Lkotlinx/coroutines/t1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/flow/a1;->a:Lkotlinx/coroutines/flow/i1;

    iput-object p2, p0, Lkotlinx/coroutines/flow/a1;->b:Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/flow/a1;->a:Lkotlinx/coroutines/flow/i1;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/flow/c1;->a(Lkotlinx/coroutines/flow/c;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/b;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/j1;->d(Lkotlinx/coroutines/flow/i1;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/b;

    move-result-object p1

    return-object p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/flow/a1;->a:Lkotlinx/coroutines/flow/i1;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/i1;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
