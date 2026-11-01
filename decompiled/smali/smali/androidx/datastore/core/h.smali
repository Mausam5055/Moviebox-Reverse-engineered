.class public final Landroidx/datastore/core/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lkotlinx/coroutines/flow/y0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/datastore/core/u;->b:Landroidx/datastore/core/u;

    const-string v1, "null cannot be cast to non-null type androidx.datastore.core.State<T of androidx.datastore.core.DataStoreInMemoryCache>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/j1;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/y0;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/core/h;->a:Lkotlinx/coroutines/flow/y0;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/datastore/core/r;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/core/h;->a:Lkotlinx/coroutines/flow/y0;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/y0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/core/r;

    return-object v0
.end method

.method public final b()Lkotlinx/coroutines/flow/b;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/core/h;->a:Lkotlinx/coroutines/flow/y0;

    return-object v0
.end method

.method public final c(Landroidx/datastore/core/r;)Landroidx/datastore/core/r;
    .locals 5

    const-string v0, "newState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/datastore/core/h;->a:Lkotlinx/coroutines/flow/y0;

    :cond_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/y0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/datastore/core/r;

    instance-of v3, v2, Landroidx/datastore/core/o;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v3, Landroidx/datastore/core/u;->b:Landroidx/datastore/core/u;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    instance-of v3, v2, Landroidx/datastore/core/d;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroidx/datastore/core/r;->a()I

    move-result v3

    invoke-virtual {v2}, Landroidx/datastore/core/r;->a()I

    move-result v4

    if-le v3, v4, :cond_4

    :goto_1
    move-object v2, p1

    goto :goto_2

    :cond_3
    instance-of v3, v2, Landroidx/datastore/core/i;

    if-eqz v3, :cond_5

    :cond_4
    :goto_2
    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/y0;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
