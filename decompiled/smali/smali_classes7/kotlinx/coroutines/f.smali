.class public abstract Lkotlinx/coroutines/f;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/e;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlinx/coroutines/r0;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lkotlinx/coroutines/r0;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/e;-><init>([Lkotlinx/coroutines/r0;)V

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/e;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
