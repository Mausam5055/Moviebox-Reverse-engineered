.class public abstract Lkotlinx/coroutines/channels/e;
.super Lkotlinx/coroutines/a;

# interfaces
.implements Lkotlinx/coroutines/channels/d;


# instance fields
.field private final a:Lkotlinx/coroutines/channels/d;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/d;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lkotlinx/coroutines/a;-><init>(Lkotlin/coroutines/CoroutineContext;ZZ)V

    iput-object p2, p0, Lkotlinx/coroutines/channels/e;->a:Lkotlinx/coroutines/channels/d;

    return-void
.end method


# virtual methods
.method public final X()Lkotlinx/coroutines/channels/d;
    .locals 0

    return-object p0
.end method

.method protected final Y()Lkotlinx/coroutines/channels/d;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/e;->a:Lkotlinx/coroutines/channels/d;

    return-object v0
.end method

.method public a(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/e;->a:Lkotlinx/coroutines/channels/d;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/r;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/e;->a:Lkotlinx/coroutines/channels/d;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/r;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic cancel()V
    .locals 3

    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/t1;)V

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/e;->cancelInternal(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final cancel(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/t1;)V

    :cond_1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/e;->cancelInternal(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic cancel(Ljava/lang/Throwable;)Z
    .locals 2

    new-instance p1, Lkotlinx/coroutines/JobCancellationException;

    invoke-static {p0}, Lkotlinx/coroutines/JobSupport;->access$cancellationExceptionMessage(Lkotlinx/coroutines/JobSupport;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/t1;)V

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/e;->cancelInternal(Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public cancelInternal(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, v0}, Lkotlinx/coroutines/JobSupport;->toCancellationException$default(Lkotlinx/coroutines/JobSupport;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/coroutines/channels/e;->a:Lkotlinx/coroutines/channels/d;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/q;->cancel(Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->cancelCoroutine(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/e;->a:Lkotlinx/coroutines/channels/d;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/q;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/e;->a:Lkotlinx/coroutines/channels/d;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/q;->f(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    return-object p1
.end method

.method public g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/e;->a:Lkotlinx/coroutines/channels/d;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/q;->g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Lkotlinx/coroutines/channels/f;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/e;->a:Lkotlinx/coroutines/channels/d;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/q;->iterator()Lkotlinx/coroutines/channels/f;

    move-result-object v0

    return-object v0
.end method

.method public j(Ljava/lang/Throwable;)Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/e;->a:Lkotlinx/coroutines/channels/d;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/r;->j(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public p(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/e;->a:Lkotlinx/coroutines/channels/d;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/channels/r;->p(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/e;->a:Lkotlinx/coroutines/channels/d;

    invoke-interface {v0}, Lkotlinx/coroutines/channels/r;->q()Z

    move-result v0

    return v0
.end method
