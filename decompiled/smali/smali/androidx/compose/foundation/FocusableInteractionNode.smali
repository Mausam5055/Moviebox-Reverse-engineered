.class final Landroidx/compose/foundation/FocusableInteractionNode;
.super Landroidx/compose/ui/f$c;


# instance fields
.field private n:Lp/i;

.field private o:Lp/b;

.field private final p:Z


# direct methods
.method public constructor <init>(Lp/i;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->n:Lp/i;

    return-void
.end method

.method private final D1()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/FocusableInteractionNode;->n:Lp/i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->o:Lp/b;

    if-eqz v1, :cond_0

    new-instance v2, Lp/c;

    invoke-direct {v2, v1}, Lp/c;-><init>(Lp/b;)V

    invoke-interface {v0, v2}, Lp/i;->a(Lp/f;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/FocusableInteractionNode;->o:Lp/b;

    return-void
.end method

.method private final E1(Lp/i;Lp/f;)V
    .locals 8

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->d1()Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/n0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/t1;->l1:Lkotlinx/coroutines/t1$b;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/t1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Landroidx/compose/foundation/FocusableInteractionNode$emitWithFallback$handler$1;

    invoke-direct {v2, p1, p2}, Landroidx/compose/foundation/FocusableInteractionNode$emitWithFallback$handler$1;-><init>(Lp/i;Lp/f;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/t1;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/a1;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->d1()Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Landroidx/compose/foundation/FocusableInteractionNode$emitWithFallback$1;

    invoke-direct {v5, p1, p2, v0, v1}, Landroidx/compose/foundation/FocusableInteractionNode$emitWithFallback$1;-><init>(Lp/i;Lp/f;Lkotlinx/coroutines/a1;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_1

    :cond_1
    invoke-interface {p1, p2}, Lp/i;->a(Lp/f;)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public final F1(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/FocusableInteractionNode;->n:Lp/i;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->o:Lp/b;

    if-eqz p1, :cond_0

    new-instance v2, Lp/c;

    invoke-direct {v2, p1}, Lp/c;-><init>(Lp/b;)V

    invoke-direct {p0, v0, v2}, Landroidx/compose/foundation/FocusableInteractionNode;->E1(Lp/i;Lp/f;)V

    iput-object v1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->o:Lp/b;

    :cond_0
    new-instance p1, Lp/b;

    invoke-direct {p1}, Lp/b;-><init>()V

    invoke-direct {p0, v0, p1}, Landroidx/compose/foundation/FocusableInteractionNode;->E1(Lp/i;Lp/f;)V

    iput-object p1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->o:Lp/b;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->o:Lp/b;

    if-eqz p1, :cond_2

    new-instance v2, Lp/c;

    invoke-direct {v2, p1}, Lp/c;-><init>(Lp/b;)V

    invoke-direct {p0, v0, v2}, Landroidx/compose/foundation/FocusableInteractionNode;->E1(Lp/i;Lp/f;)V

    iput-object v1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->o:Lp/b;

    :cond_2
    :goto_0
    return-void
.end method

.method public final G1(Lp/i;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/FocusableInteractionNode;->n:Lp/i;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/FocusableInteractionNode;->D1()V

    iput-object p1, p0, Landroidx/compose/foundation/FocusableInteractionNode;->n:Lp/i;

    :cond_0
    return-void
.end method

.method public i1()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/FocusableInteractionNode;->p:Z

    return v0
.end method
