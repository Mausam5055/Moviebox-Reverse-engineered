.class public abstract Lkotlinx/coroutines/y;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lkotlinx/coroutines/t1;)Lkotlinx/coroutines/w;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/x;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/x;-><init>(Lkotlinx/coroutines/t1;)V

    return-object v0
.end method

.method public static synthetic b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/w;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/y;->a(Lkotlinx/coroutines/t1;)Lkotlinx/coroutines/w;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lkotlinx/coroutines/w;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Lkotlinx/coroutines/w;->n(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Lkotlinx/coroutines/w;->b(Ljava/lang/Throwable;)Z

    move-result p0

    :goto_0
    return p0
.end method
