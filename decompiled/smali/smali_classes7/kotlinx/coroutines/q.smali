.class public abstract Lkotlinx/coroutines/q;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lkotlinx/coroutines/n;Lkotlinx/coroutines/a1;)V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/b1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/b1;-><init>(Lkotlinx/coroutines/a1;)V

    invoke-static {p0, v0}, Lkotlinx/coroutines/q;->c(Lkotlinx/coroutines/n;Lkotlinx/coroutines/m;)V

    return-void
.end method

.method public static final b(Lkotlin/coroutines/Continuation;)Lkotlinx/coroutines/CancellableContinuationImpl;
    .locals 2

    instance-of v0, p0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    if-nez v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    return-object v0

    :cond_0
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/DispatchedContinuation;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/DispatchedContinuation;->claimReusableCancellableContinuation$kotlinx_coroutines_core()Lkotlinx/coroutines/CancellableContinuationImpl;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resetStateReusable()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    return-object v0
.end method

.method public static final c(Lkotlinx/coroutines/n;Lkotlinx/coroutines/m;)V
    .locals 1

    instance-of v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->invokeOnCancellationInternal$kotlinx_coroutines_core(Lkotlinx/coroutines/m;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "third-party implementation of CancellableContinuation is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
