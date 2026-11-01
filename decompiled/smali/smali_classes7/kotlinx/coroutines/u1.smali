.class public Lkotlinx/coroutines/u1;
.super Lkotlinx/coroutines/JobSupport;

# interfaces
.implements Lkotlinx/coroutines/z;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/t1;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;-><init>(Z)V

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->initParentJob(Lkotlinx/coroutines/t1;)V

    invoke-direct {p0}, Lkotlinx/coroutines/u1;->X()Z

    move-result p1

    iput-boolean p1, p0, Lkotlinx/coroutines/u1;->a:Z

    return-void
.end method

.method private final X()Z
    .locals 4

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->getParentHandle$kotlinx_coroutines_core()Lkotlinx/coroutines/t;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/u;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/u;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lkotlinx/coroutines/w1;->t()Lkotlinx/coroutines/JobSupport;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->getHandlesException$kotlinx_coroutines_core()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport;->getParentHandle$kotlinx_coroutines_core()Lkotlinx/coroutines/t;

    move-result-object v0

    instance-of v3, v0, Lkotlinx/coroutines/u;

    if-eqz v3, :cond_3

    check-cast v0, Lkotlinx/coroutines/u;

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lkotlinx/coroutines/w1;->t()Lkotlinx/coroutines/JobSupport;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_4
    :goto_2
    return v1
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)Z
    .locals 4

    new-instance v0, Lkotlinx/coroutines/b0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Lkotlinx/coroutines/b0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->makeCompleting$kotlinx_coroutines_core(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getHandlesException$kotlinx_coroutines_core()Z
    .locals 1

    iget-boolean v0, p0, Lkotlinx/coroutines/u1;->a:Z

    return v0
.end method

.method public getOnCancelComplete$kotlinx_coroutines_core()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
