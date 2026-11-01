.class public final Landroidx/lifecycle/e0;
.super Lkotlinx/coroutines/i0;


# instance fields
.field public final a:Landroidx/lifecycle/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkotlinx/coroutines/i0;-><init>()V

    new-instance v0, Landroidx/lifecycle/i;

    invoke-direct {v0}, Landroidx/lifecycle/i;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/e0;->a:Landroidx/lifecycle/i;

    return-void
.end method


# virtual methods
.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/e0;->a:Landroidx/lifecycle/i;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/i;->c(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    return-void
.end method

.method public isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/i0;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Landroidx/lifecycle/e0;->a:Landroidx/lifecycle/i;

    invoke-virtual {p1}, Landroidx/lifecycle/i;->b()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method
