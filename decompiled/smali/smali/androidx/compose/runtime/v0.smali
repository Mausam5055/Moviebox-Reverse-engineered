.class public abstract Landroidx/compose/runtime/v0;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/u0;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/u0;->Z0:Landroidx/compose/runtime/u0$b;

    invoke-interface {p0, v0}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/u0;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "A MonotonicFrameClock is not available in this CoroutineContext. Callers should supply an appropriate MonotonicFrameClock using withContext."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/v0;->a(Lkotlin/coroutines/CoroutineContext;)Landroidx/compose/runtime/u0;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroidx/compose/runtime/u0;->l(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
